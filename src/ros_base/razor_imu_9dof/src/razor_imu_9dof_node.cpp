#include "razor_imu_9dof_node.h"
#define BAUD_RATE 57600
volatile bool all_messages_received = false;
condition_variable con_variable;
mutex mx;

Razor_Imu::Razor_Imu(ros::NodeHandle &nh) : nh_(nh), imuMsg_ptr(new sensor_msgs::Imu())
{
  imu_yaw_calibration = 0.0;
  imu_synched = false;

  showDiagnostic = true;
  imu_pub_ = nh_.advertise<sensor_msgs::Imu>("imu", 10);
  diag_pub_ = nh_.advertise<diagnostic_msgs::DiagnosticArray>("diagnostics", 1);
  f = boost::bind(&Razor_Imu::reconfigureCB, this, _1, _2);
  reconfigureServer_.setCallback(f);

  imuMsg_ptr->orientation_covariance = {0.0025, 0, 0, 0, 0.0025, 0, 0, 0, 0.0025};

  /*Angular velocity covariance estimation:
      Observed gyro noise: 4 counts => 0.28 degrees/sec
      nonlinearity spec: 0.2% of full scale => 8 degrees/sec = 0.14 rad/sec
      Choosing the larger (0.14) as std dev, variance = 0.14^2 ~= 0.02*/
  imuMsg_ptr->angular_velocity_covariance = {0.02, 0, 0, 0, 0.02, 0, 0, 0, 0.02};

  /* linear acceleration covariance estimation:
      observed acceleration noise: 5 counts => 20milli-G's ~= 0.2m/s^2
      nonliniarity spec: 0.5% of full scale => 0.2m/s^2
      Choosing 0.2 as std dev, variance = 0.2^2 = 0.04 */
  imuMsg_ptr->linear_acceleration_covariance = {0.04, 0, 0, 0, 0.04, 0, 0, 0, 0.04};

  roll = 0.0;
  pitch = 0.0;
  yaw = 0.0;
  seq = 0.0;
  accel_factor = 9.806 / 256.0; // sensor reports accel as 256.0 = 1G (9.8m/s^2). Convert to m/s^2.

  diag_pub_time = ros::Time::now();
  calib_data_print = "Printing set calibration values:\r\n"; 
  getParameters();
  CommPortIsOpened();
#ifdef USE_ASYNC_COMM
  old_data_count = 0;
  SM_status_ = S_INIT;
  CB_status_ = S_IDLE;
  all_messages_received = false;
  read_line ="" ;
  hadWriteCalibrationData = false; //false
#endif
}

bool Razor_Imu::CommPortIsOpened()
{
  bool portIsOpened = false;
#ifdef USE_ASYNC_COMM
  try
  {

    imu_serial_Ptr = std::make_shared<async_comm::Serial>(port, BAUD_RATE);
    imu_serial_Ptr->register_receive_callback(boost::bind(&Razor_Imu::CommCallback, this, _1, _2));
    //imu_serial_Ptr->register_receive_callback(&CommCallback);
    for(int i = 0 ;i < PORT_OPEN_RETRY*100 ; i++)
    {
       if (imu_serial_Ptr->init()) {
         portIsOpened = true;
         break ;
       }
         ros::Duration(0.5).sleep(); 
    }
  }
  catch (const std::exception &e)
  {
    std::cerr << e.what() << port << '\n';
  }
#else
  try
  {
    imu_serial_Ptr = std::make_shared<serial::Serial>(port, BAUD_RATE, serial::Timeout::simpleTimeout(1000));
    if (imu_serial_Ptr->isOpen())
      portIsOpened = true;
  }
  catch (const serial::IOException &e)
  {
    std::cerr << e.what() << port << '\n';
  }
#endif

  if (portIsOpened == false)
    ROS_INFO("IMU port %s can't open", port.c_str());
  else
    ROS_INFO("IMU port %s is open", port.c_str());
  return portIsOpened;
}

#ifdef USE_ASYNC_COMM

void Razor_Imu::writeCalibrationData()
{
  if( hadWriteCalibrationData == true) return ;
  //stop datastream
  std::string ss = "#o0\n";
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  ros::Duration(0.01).sleep(); 
  //set output mode
  ss = "#ox\n";
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  ros::Duration(0.005).sleep(); 
  ROS_INFO("Writing calibration values to razor IMU board...");
  //set calibration values
  ss = "#caxm" + boost::lexical_cast<std::string>(accel_x_min) + "\n";
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  ros::Duration(0.005).sleep(); 
  ss = "#caxM" + boost::lexical_cast<std::string>(accel_x_max) + "\n";
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  ros::Duration(0.005).sleep(); 
  ss = "#caym" + boost::lexical_cast<std::string>(accel_y_min) + "\n";
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  ros::Duration(0.005).sleep(); 
  ss = "#cayM" + boost::lexical_cast<std::string>(accel_y_max) + "\n";
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  ros::Duration(0.005).sleep(); 
  ss = "#cazm" + boost::lexical_cast<std::string>(accel_z_min) + "\n";
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  ros::Duration(0.005).sleep(); 
  ss = "#cazM" + boost::lexical_cast<std::string>(accel_z_max) + "\n";
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  ros::Duration(0.005).sleep(); 

  if (!calibration_magn_use_extended)
  {
    ss = "#cmxm" + boost::lexical_cast<std::string>(magn_x_min) + "\n";
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = "#cmxM" + boost::lexical_cast<std::string>(magn_x_max) + "\n";
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = "#cmym" + boost::lexical_cast<std::string>(magn_y_min) + "\n";
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = "#cmyM" + boost::lexical_cast<std::string>(magn_y_max) + "\n";
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = "#cmzm" + boost::lexical_cast<std::string>(magn_z_min) + "\n";
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = "#cmzM" + boost::lexical_cast<std::string>(magn_z_max) + "\n";
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
  }
  else
  {
    ss = ("#ccx" + boost::lexical_cast<std::string>(magn_ellipsoid_center[0]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = ("#ccy" + boost::lexical_cast<std::string>(magn_ellipsoid_center[1]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = ("#ccz" + boost::lexical_cast<std::string>(magn_ellipsoid_center[2]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = ("#ctxX" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[0][0]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = ("#ctxY" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[0][1]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = ("#ctxZ" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[0][2]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = ("#ctyX" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[1][0]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = ("#ctyY" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[1][1]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = ("#ctyZ" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[1][2]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = ("#ctzX" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[2][0]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = ("#ctzY" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[2][1]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
    ss = ("#ctzZ" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[2][3]) + "\n");
    imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
    ros::Duration(0.005).sleep(); 
  }

  ss = ("#cgx" + boost::lexical_cast<std::string>(gyro_average_offset_x) + "\n");
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  ros::Duration(0.005).sleep(); 
  ss = ("#cgy" + boost::lexical_cast<std::string>(gyro_average_offset_y) + "\n");
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  ros::Duration(0.005).sleep(); 
  ss = ("#cgz" + boost::lexical_cast<std::string>(gyro_average_offset_z) + "\n");
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  ros::Duration(0.005).sleep(); 

  ss = "#p\n";
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
  hadWriteCalibrationData = true ;
  {
      std::unique_lock<std::mutex> lock(mx);
      CB_status_ = S_PARAM;
  }
  //status_ = S_PARAM;
  // ros::V_string cal = imu_serial_Ptr->readlines() ;
  //std::string calib_data_print = "Printing set calibration values:\r\n" ;
  //for(auto line : cal )
  // {
  //  calib_data_print += line ;
  //}
  //ROS_INFO("%s",calib_data_print.c_str() ) ;
}


void Razor_Imu::start_read_data()
{
  CB_status_ = S_DATA;
  {
      std::unique_lock<std::mutex> lock(mx);
      old_data_count=0;
  }
  std::string ss = "#o1\n";
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
}
void Razor_Imu::discard_old_data()
{
  CB_status_ = S_DATA;
  old_data_count = 0;
  std::string ss = "#o1\n";
  imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
}

bool Razor_Imu::SM()
{
  switch (SM_status_)
  {
  case S_INIT:
      
      writeCalibrationData();
      
    break;

  case S_PARAM_RUNNING:
      watchdog_time_ = std::chrono::high_resolution_clock::now() - start_time_;
      start_time_ = std::chrono::high_resolution_clock::now() ;
      
      if ( watchdog_time_.count() > 1000.0)
      {
          std::string ss = "#p\n";
          imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
          hadWriteCalibrationData = true ;
          {
              std::unique_lock<std::mutex> lock(mx);
              CB_status_ = S_PARAM;
              start_time_ = std::chrono::high_resolution_clock::now() ;
          }
      }    
      break ;    
  case S_PARAM_SUCCESS:
     {
      std::unique_lock<std::mutex> lock(mx);
      SM_status_ = S_START_READ_DATA ;
     }
     
     start_read_data() ;
    break;
  case S_START_READ_DATA:  
     
     
    break ;
    case S_READ_DATA_RUNNING:
      watchdog_time_ = std::chrono::high_resolution_clock::now() - start_time_;
      if ( watchdog_time_.count() > 1000.0)
      {
          start_time_ = std::chrono::high_resolution_clock::now() ;
          std::string ss = "#o0\n";
          imu_serial_Ptr->send_bytes((uint8_t *)(ss.c_str()), ss.length());
          ros::Duration(0.01).sleep(); 
          start_read_data() ;
          
      }      
        break ;
  }
}

//void Razor_Imu::parse_bytes(vector<uint8_t> &vdata)
void Razor_Imu::parse_bytes(string& vdata)
{

  if(CB_status_ == S_IDLE) return ;
  if ((old_data_count < 200) && (CB_status_ == S_DATA))
  {
    {
      std::unique_lock<std::mutex> lock(mx);
      old_data_count++;
    }
    //ROS_INFO("old_data_count=== %s ", boost::lexical_cast<std::string>(old_data_count).c_str() );
    return;
  }

  //auto stringsStream = rxcpp::observable<>::from(vdata).map([](vector<uint8_t> v) {
    auto stringsStream = rxcpp::observable<>::from(vdata).map([](string& s ) {
                                                         //string s(v.begin(), v.end());
                                                         regex delim(R"/(\n)/");
                                                         sregex_token_iterator cursor(s.begin(), s.end(), delim, {-1, 0});
                                                         sregex_token_iterator end;
                                                         vector<string> splits(cursor, end);
                                                         return iterate(move(splits));
                                                       })
                           .concat();
  // group strings by line
  int group = 0;
  auto linewindows = stringsStream.group_by(
      [=](string &s) mutable {
        return s.back() == '\n' ? group++ : group;
      },
      [](string &s) { return move(s); });
  // reduce the strings for a line into one string
  auto lines = linewindows.map([](grouped_observable<int, string> w) {
                            return w.sum();
                          })
                   .merge();

  
  switch (CB_status_)
  {
  case S_PARAM:

    lines.take_while([](string &line){ return (line.find("#") == std::string::npos); }).map([&](string &line) {
           calib_data_print += line;
           start_time_  = std::chrono::high_resolution_clock::now(); 
           SM_status_ = S_PARAM_RUNNING;
           if(line.find("GYRO_AVERAGE_OFFSET_Z:") != std::string::npos)
                return true ;
           else
                return false ;      
         })
        .subscribe([&](bool isEnding) {

          if(isEnding)
          {
            ROS_INFO("%s", calib_data_print.c_str());
            SM_status_ = S_PARAM_SUCCESS;
            
          }
         });

    break;
  
  case S_DATA:
    lines.take_while([](string &line){
        return ((line.find("#YPRAG=") != std::string::npos)) ;
    }). map([&](string &line)
          {
              start_time_  = std::chrono::high_resolution_clock::now();  
              SM_status_ = S_READ_DATA_RUNNING ;
              return (parse_process_data(line)) ;
     
         })
        .subscribe([&](shared_ptr<sensor_msgs::Imu> msg) {
           imu_pub_.publish(*(msg.get()) );
           
        });
    break;
  }
}

void Razor_Imu::CommCallback(const uint8_t *buf, size_t len)
{
  vector<uint8_t> vdata(buf, buf + len);
  std::string str(vdata.begin(),vdata.end());
  read_line += str ; 
  if(vdata.back() == '\n')
  {
      parse_bytes(read_line);
      read_line = "" ;
  }
}

#else
void Razor_Imu::discard_old_data()
{
  //start datastream
  imu_serial_Ptr->write("#o1\n");
  for (int i = 0; i < 200; i++)
  {
    imu_serial_Ptr->readline();
  }
}
bool Razor_Imu::imuIsSync()
{
  bool isSynched = false;
  imu_serial_Ptr->write("#o0\n");
  for (int i = 0; i < SYNCH_RETRY; i++)
  {
    imu_serial_Ptr->write("#s\n");
    if (imu_serial_Ptr->waitReadable())
    {
      std::string sync_ = imu_serial_Ptr->readline(PACKET_LEN, "\n");
      if (sync_ == "#SYNCH\n")
      {
        isSynched = true;
        break;
      }
      else
      {
        ros::Duration(0.5).sleep();
      }
    }
  }
  return isSynched;
}

void Razor_Imu::writeCalibrationData()
{
  //stop datastream
  imu_serial_Ptr->write("#o0\n");
  //set output mode
  imu_serial_Ptr->write("#ox\n");

  ROS_INFO("Writing calibration values to razor IMU board...");
  //set calibration values
  imu_serial_Ptr->write("#caxm" + boost::lexical_cast<std::string>(accel_x_min) + "\n");
  imu_serial_Ptr->write("#caxM" + boost::lexical_cast<std::string>(accel_x_max) + "\n");
  imu_serial_Ptr->write("#caym" + boost::lexical_cast<std::string>(accel_y_min) + "\n");
  imu_serial_Ptr->write("#cayM" + boost::lexical_cast<std::string>(accel_y_max) + "\n");
  imu_serial_Ptr->write("#cazm" + boost::lexical_cast<std::string>(accel_z_min) + "\n");
  imu_serial_Ptr->write("#cazM" + boost::lexical_cast<std::string>(accel_z_max) + "\n");
  if (!calibration_magn_use_extended)
  {
    imu_serial_Ptr->write("#cmxm" + boost::lexical_cast<std::string>(magn_x_min) + "\n");
    imu_serial_Ptr->write("#cmxM" + boost::lexical_cast<std::string>(magn_x_max) + "\n");
    imu_serial_Ptr->write("#cmym" + boost::lexical_cast<std::string>(magn_y_min) + "\n");
    imu_serial_Ptr->write("#cmyM" + boost::lexical_cast<std::string>(magn_y_max) + "\n");
    imu_serial_Ptr->write("#cmzm" + boost::lexical_cast<std::string>(magn_z_min) + "\n");
    imu_serial_Ptr->write("#cmzM" + boost::lexical_cast<std::string>(magn_z_max) + "\n");
  }
  else
  {
    imu_serial_Ptr->write("#ccx" + boost::lexical_cast<std::string>(magn_ellipsoid_center[0]) + "\n");
    imu_serial_Ptr->write("#ccy" + boost::lexical_cast<std::string>(magn_ellipsoid_center[1]) + "\n");
    imu_serial_Ptr->write("#ccz" + boost::lexical_cast<std::string>(magn_ellipsoid_center[2]) + "\n");
    imu_serial_Ptr->write("#ctxX" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[0][0]) + "\n");
    imu_serial_Ptr->write("#ctxY" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[0][1]) + "\n");
    imu_serial_Ptr->write("#ctxZ" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[0][2]) + "\n");
    imu_serial_Ptr->write("#ctyX" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[1][0]) + "\n");
    imu_serial_Ptr->write("#ctyY" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[1][1]) + "\n");
    imu_serial_Ptr->write("#ctyZ" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[1][2]) + "\n");
    imu_serial_Ptr->write("#ctzX" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[2][0]) + "\n");
    imu_serial_Ptr->write("#ctzY" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[2][1]) + "\n");
    imu_serial_Ptr->write("#ctzZ" + boost::lexical_cast<std::string>(magn_ellipsoid_transform[2][3]) + "\n");
  }
  imu_serial_Ptr->write("#cgx" + boost::lexical_cast<std::string>(gyro_average_offset_x) + "\n");
  imu_serial_Ptr->write("#cgy" + boost::lexical_cast<std::string>(gyro_average_offset_y) + "\n");
  imu_serial_Ptr->write("#cgz" + boost::lexical_cast<std::string>(gyro_average_offset_z) + "\n");

  imu_serial_Ptr->flushInput();
  imu_serial_Ptr->write("#p\n");
  ros::V_string cal = imu_serial_Ptr->readlines();
  std::string calib_data_print = "Printing set calibration values:\r\n";
  for (auto line : cal)
  {
    calib_data_print += line;
  }
  ROS_INFO("%s", calib_data_print.c_str());
}

string Razor_Imu::ReadLine()
{
  return imu_serial_Ptr->readline(PACKET_LEN, "\n");
}

#endif
shared_ptr<sensor_msgs::Imu> Razor_Imu::parse_process_data(string &line)
{
  //std::string line = imu_serial_Ptr->readline();
  //if(line == "PASS") return nullptr;
  std::size_t found = line.find("#YPRAG=");
  if (found != std::string::npos)
  {
    line = line.replace(found, sizeof("#YPRAG="), "");
    std::vector<std::string> words;
    boost::split(words, line, boost::is_any_of(","));
    if (words.size() > 2)
    {
      float yaw_deg = -(::atof(words[0].c_str()));
      yaw_deg = yaw_deg + imu_yaw_calibration;
      if (yaw_deg > 180.0)
        yaw_deg = yaw_deg - 360.0;
      if (yaw_deg < -180.0)
        yaw_deg = yaw_deg + 360.0;
      yaw = yaw_deg * degrees2rad;
      //in AHRS firmware y axis points right, in ROS y axis points left (see REP 103)
      pitch = -(::atof(words[1].c_str())) * degrees2rad;
      roll = (::atof(words[2].c_str())) * degrees2rad;

      // Publish message
      // AHRS firmware accelerations are negated
      // This means y and z are correct for ROS, but x needs reversing
      imuMsg_ptr->linear_acceleration.x = -(::atof(words[3].c_str())) * accel_factor;
      imuMsg_ptr->linear_acceleration.y = (::atof(words[4].c_str())) * accel_factor;
      imuMsg_ptr->linear_acceleration.z = (::atof(words[5].c_str())) * accel_factor;

      imuMsg_ptr->angular_velocity.x = (::atof(words[6].c_str()));
      //in AHRS firmware y axis points right, in ROS y axis points left (see REP 103)
      imuMsg_ptr->angular_velocity.y = -(::atof(words[7].c_str()));
      //in AHRS firmware z axis points down, in ROS z axis points up (see REP 103)
      if (fabs(::atof(words[8].c_str()))<=0.02)
        imuMsg_ptr->angular_velocity.z = 0;
      else
	imuMsg_ptr->angular_velocity.z = (::atof(words[8].c_str()));

      tf::Quaternion q;
      q.setRPY(roll, pitch, yaw);

      imuMsg_ptr->orientation.x = q.getX();
      imuMsg_ptr->orientation.y = q.getY();
      imuMsg_ptr->orientation.z = q.getZ();
      imuMsg_ptr->orientation.w = q.getW();
      imuMsg_ptr->header.stamp = ros::Time::now();
      imuMsg_ptr->header.frame_id = frame_id;
      imuMsg_ptr->header.seq = seq;
      seq += 1;

      //imu_pub_.publish(*imuMsg_ptr);

      if ((diag_pub_time < ros::Time::now()) && (showDiagnostic))
      {
        diag_pub_time += ros::Duration(10.0);
        diagnostic_msgs::DiagnosticArray diag_arr;
        diag_arr.header.stamp = ros::Time::now();
        diag_arr.header.frame_id = "1";
        diagnostic_msgs::DiagnosticStatus diag_msg;
        diag_msg.name = "Razor_Imu";
        diag_msg.level = diagnostic_msgs::DiagnosticStatus::OK;
        diag_msg.message = "'Received AHRS measurement";
        diagnostic_msgs::KeyValue kv1, kv2, kv3, kv4;
        kv1.key = "roll (deg)";
        kv1.value = boost::lexical_cast<std::string>((roll * (180.0 / M_PI)));
        diag_msg.values.push_back(kv1);
        kv2.key = "pitch (deg)";
        kv2.value = boost::lexical_cast<std::string>((pitch * (180.0 / M_PI)));
        diag_msg.values.push_back(kv2);
        kv3.key = "yaw (deg)";
        kv3.value = boost::lexical_cast<std::string>((yaw * (180.0 / M_PI)));
        diag_msg.values.push_back(kv3);
        kv4.key = "sequence number";
        kv4.value = boost::lexical_cast<std::string>((seq * (180.0 / M_PI)));
        diag_msg.values.push_back(kv4);
        diag_arr.status.push_back(diag_msg);
        diag_pub_.publish(diag_arr);
      }
    }
  }
  return imuMsg_ptr;
}
void Razor_Imu::CloseCommPort()
{

  imu_serial_Ptr->close();
}

void Razor_Imu::getParameters()
{
  const std::string default_port = "/dev/ttyUSB0";
  const std::string default_frame_id = "base_imu_link";
  ros::NodeHandle pnh_("~");
  pnh_.param<std::string>("port", port, default_port);
  pnh_.param<std::string>("frame_id", frame_id, default_frame_id);
  //accelerometer
  pnh_.param<float>("accel_x_min", accel_x_min, -250.0);
  pnh_.param<float>("accel_x_max", accel_x_max, 250.0);
  pnh_.param<float>("accel_y_min", accel_y_min, -250.0);
  pnh_.param<float>("accel_y_max", accel_y_max, 250.0);
  pnh_.param<float>("accel_z_min", accel_z_min, -250.0);
  pnh_.param<float>("accel_z_max", accel_z_max, 250.0);

  // magnetometer
  pnh_.param<float>("magn_x_min", magn_x_min, -600.0);
  pnh_.param<float>("magn_x_max", magn_x_max, 600.0);
  pnh_.param<float>("magn_y_min", magn_y_min, -600.0);
  pnh_.param<float>("magn_y_max", magn_y_max, 600.0);
  pnh_.param<float>("magn_z_min", magn_z_min, -600.0);
  pnh_.param<float>("magn_z_max", magn_z_max, 600.0);

  //gyroscope
  pnh_.param<float>("gyro_average_offset_x", gyro_average_offset_x, 0.0);
  pnh_.param<float>("gyro_average_offset_y", gyro_average_offset_y, 0.0);
  pnh_.param<float>("gyro_average_offset_z", gyro_average_offset_z, 0.0);

  pnh_.param<bool>("calibration_magn_use_extended", calibration_magn_use_extended, false);

  if (!pnh_.getParam("magn_ellipsoid_center", magn_ellipsoid_center))
  {
    for (int i = 0; i < 3; i++)
      magn_ellipsoid_center[i] = 0.0;
  }

  //ROS_INFO("#ctyX=%s", boost::lexical_cast<std::string>(magn_ellipsoid_center[1]).c_str()) ;

  XmlRpc::XmlRpcValue met_xmlrpc;

  if (!pnh_.getParam("magn_ellipsoid_transform", met_xmlrpc))
  {
    for (int i = 0; i < 3; i++)
    {
      for (int j = 0; j < 3; i++)
      {
        magn_ellipsoid_transform[i][j] = 0.0;
      }
    }
  }
  else
  {
    for (int i = 0; i < met_xmlrpc.size(); ++i)
    {
      XmlRpc::XmlRpcValue &xyz_xml = met_xmlrpc[i];
      magn_ellipsoid_transform[i][0] = getNumberFromXMLRPC(xyz_xml[0]);
      magn_ellipsoid_transform[i][1] = getNumberFromXMLRPC(xyz_xml[1]);
      magn_ellipsoid_transform[i][2] = getNumberFromXMLRPC(xyz_xml[2]);
    }
  }
  pnh_.param<float>("imu_yaw_calibration", imu_yaw_calibration, 0.0);
}

double Razor_Imu::getNumberFromXMLRPC(XmlRpc::XmlRpcValue &value)
{
  if (value.getType() == XmlRpc::XmlRpcValue::TypeInt)
  {
    return static_cast<double>(static_cast<int>(value));
  }
  else if (value.getType() == XmlRpc::XmlRpcValue::TypeDouble)
  {
    return static_cast<double>(value);
  }
}

void Razor_Imu::reconfigureCB(razor_imu_9dof::imuConfig &config, uint32_t level)
{
  imu_yaw_calibration = config.yaw_calibration;
}

void Razor_Imu::PublishIMUmsg(sensor_msgs::Imu &msg)
{
  imu_pub_.publish(msg);
  return;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "imu_node");

  ros::NodeHandle nh;
  ros::Rate loop_rate(20);
  Razor_Imu imu(nh);
  ros::Duration(1.0).sleep() ;
#ifdef USE_ASYNC_COMM

  while (ros::ok())
  {
    ros::spinOnce();
    imu.SM();
    loop_rate.sleep();
  }

#else
  if (!imu.imuIsSync())
  {
    imu.CloseCommPort();
    ros::shutdown();
    return 0;
  }

  imu.writeCalibrationData();
  imu.discard_old_data();
  while (ros::ok())
  {
    string line = imu.ReadLine();
    imu.PublishIMUmsg(*(imu.parse_process_data(line).get()));
    ros::spinOnce();
    loop_rate.sleep();
  }
#endif

  imu.CloseCommPort();

  return 0;
}

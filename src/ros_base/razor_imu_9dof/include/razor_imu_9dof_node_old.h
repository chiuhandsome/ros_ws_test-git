#ifndef RAZOR_IMU_9DOF_NODE_H
#define RAZOR_IMU_9DOF_NODE


#include <ros/ros.h>
#include <sensor_msgs/Imu.h>

#include <tf/LinearMath/Quaternion.h>

#include <string>
#include <diagnostic_msgs/DiagnosticArray.h>
#include <diagnostic_msgs/DiagnosticStatus.h>
#include <diagnostic_msgs/KeyValue.h>


#include <dynamic_reconfigure/server.h>
#include "razor_imu_9dof/imuConfig.h"
#include <math.h>
#include <boost/algorithm/string/classification.hpp>
#include <boost/algorithm/string/split.hpp>

#include "rxcpp/rx.hpp" 
using namespace rxcpp;
using namespace rxcpp::sources;
using namespace rxcpp::util;


#include <regex>

using namespace std;


#define USE_ASYNC_COMM

#ifdef USE_ASYNC_COMM 
#include <async_comm/serial.h>
#include <condition_variable>
#include <mutex>
#else
#include <serial/serial.h>
#endif


#define PACKET_LEN 128
#define SYNCH_RETRY 100
#define PORT_OPEN_RETRY 10
#define degrees2rad  M_PI/180.0

typedef enum {S_IDLE,S_INIT,S_PARAM,S_PARAM_SUCCESS,S_SYNCH,S_SYNCH_SUCCESS,S_SYNCH_FAIL,S_START_READ_DATA,S_DATA} Comm_Status ;

class Razor_Imu
{
public:
   Razor_Imu(ros::NodeHandle& nh);
   ~Razor_Imu(){};
   void reconfigureCB(razor_imu_9dof::imuConfig& config, uint32_t level);
   shared_ptr<sensor_msgs::Imu> parse_process_data(string& line) ;
   double getNumberFromXMLRPC(XmlRpc::XmlRpcValue& value) ;
   void getParameters() ;
   void writeCalibrationData() ;
   bool imuIsSync() ;
   bool CommPortIsOpened() ;
   void discard_old_data() ;
   void CloseCommPort() ;
   void PublishIMUmsg( sensor_msgs::Imu& msg) ;
#ifdef USE_ASYNC_COMM   
   void CommCallback(const uint8_t* buf, size_t len) ;
   //void parse_bytes(vector<uint8_t>& vdata) ;
   void parse_bytes(string& vdata) ;
   bool SM() ;
   //mutex mutex; //!< mutex for synchronization between the main thread and callback thread
   //condition_variable condition_variable; //!< condition variable used to suspend main thread until all messages have been received back
   //volatile bool all_messages_received = false; //!< flag for whether all messages have been received back
   volatile Comm_Status CB_status_ ;
   volatile Comm_Status SM_status_ ;
#else
   string ReadLine() ;
#endif   
private:
   ros::NodeHandle nh_ ;
   float imu_yaw_calibration ; 
   ros::Publisher imu_pub_;
   ros::Publisher diag_pub_;

   ros::Time diag_pub_time ;
   dynamic_reconfigure::Server<razor_imu_9dof::imuConfig> reconfigureServer_;
   dynamic_reconfigure::Server<razor_imu_9dof::imuConfig>::CallbackType f;
   shared_ptr<sensor_msgs::Imu> imuMsg_ptr ;
   string port ;
   string frame_id ;
   string info_str ;
   string calib_data_print ; 
   string read_line ; 
#ifdef USE_ASYNC_COMM
   void start_read_data() ;
   shared_ptr<async_comm::Serial> imu_serial_Ptr ;
   int old_data_count ; 
   bool hadWriteCalibrationData ;
#else   
   shared_ptr<serial::Serial> imu_serial_Ptr ; 
#endif    
   
   bool imu_synched  ;
   bool showDiagnostic ;
   double roll , pitch ,yaw ,seq , accel_factor ;
   uint8_t r_buffer[PACKET_LEN];
   uint8_t w_buffer[PACKET_LEN];
//accelerometer
float accel_x_min ;
float accel_x_max ;
float accel_y_min ;
float accel_y_max ;
float accel_z_min ;
float accel_z_max ;

// magnetometer
float magn_x_min ;
float magn_x_max ;
float magn_y_min ;
float magn_y_max ;
float magn_z_min ;
float magn_z_max ;
bool calibration_magn_use_extended ;

 
vector<float> magn_ellipsoid_center ; 
float magn_ellipsoid_transform[3][3] ;

// gyroscope
float gyro_average_offset_x ;
float gyro_average_offset_y ;
float gyro_average_offset_z ;   
};

#endif

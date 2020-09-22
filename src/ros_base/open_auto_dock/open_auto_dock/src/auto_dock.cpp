
#include <open_auto_dock/auto_dock.h>
// test
// STL Includes.
#include <math.h>
#include <algorithm>
#include <glog/logging.h>

// ROS Includes.
#include <angles/angles.h>
//-----------------------------------------------------------------------------
//-- AutoDock 建構函式含 load parameter -----
AutoDocking::AutoDocking() :
  dock_(nh_, "dock", boost::bind(&AutoDocking::dockCallback, this, _1), false),
  undock_(nh_, "undock", boost::bind(&AutoDocking::undockCallback, this, _1), false),
  controller_(nh_),
  perception_(nh_),
  aborting_(false),
  num_of_retries_(NUM_OF_RETRIES_),
  cancel_docking_(true)
{
  // Load ros parameters
  Load_CntParameter() ;

  // Start action server thread    
  dock_.start();
  undock_.start();
  //srv_ = nh_.advertiseService("save_dock",&AutoDocking::dynamic_param,this);
}
//-----------------------------------------------------------------------------
//-- AutoDock 解構函式 ---------------
AutoDocking::~AutoDocking()
{
}
//-----------------------------------------------------------------------------
//-- AutoDock 參數讀入（由 server parameter） ---------------
void AutoDocking::Load_CntParameter()
{
    ros::NodeHandle pnh("~");
    if(!pnh.getParam("abort_distance_", abort_distance_))
        abort_distance_ = 0.4 ;
    if(!pnh.getParam("abort_threshold_", abort_threshold_))
        abort_threshold_ = 0.02 ;
    if(!pnh.getParam("abort_angle_", abort_angle_))
        abort_angle_ = 0.087 ;
    if(!pnh.getParam("NUM_OF_RETRIES_", NUM_OF_RETRIES_))
        NUM_OF_RETRIES_ = 5 ;
    if(!pnh.getParam("DOCK_CONNECTOR_CLEARANCE_DISTANCE_", DOCK_CONNECTOR_CLEARANCE_DISTANCE_))
        DOCK_CONNECTOR_CLEARANCE_DISTANCE_ = 0.2 ;
    if(!pnh.getParam("DOCKED_DISTANCE_THRESHOLD_", DOCKED_DISTANCE_THRESHOLD_))
        DOCKED_DISTANCE_THRESHOLD_ = 0.7 ;
    if(!pnh.getParam("auto_backup_dist_factor", auto_backup_dist_factor))
        auto_backup_dist_factor = 0.9 ;
    if(!pnh.getParam("auto_dock_timeout", auto_dock_timeout))
        auto_dock_timeout = 120.0 ;
    if(!pnh.getParam("auto_undock_timeout", auto_undock_timeout))
        auto_undock_timeout = 20.0 ;
    //if(!pnh.getParam("predockflag", predockflag))
    //    predockflag = 1 ;
    if(!pnh.getParam("shift_x", shift_x))
        shift_x = DOCKED_DISTANCE_THRESHOLD_+0.1 ;
    if(!pnh.getParam("shift_y", shift_y))
        shift_y = -0.205 ;
    if(!pnh.getParam("shift_mark", shift_mark))
        shift_mark = -0.1325 ;
    if(!pnh.getParam("rate", rate))
        rate = 6.0 ;
    if(!pnh.getParam("reverse", reverse))
        reverse = -1 ;
    if(!pnh.getParam("predock_threshold", predock_threshold))
        predock_threshold = 0.10 ;
    if(!pnh.getParam("undock_rotate", undock_rotate))
        undock_rotate = 3.14 ;
    //ROS_INFO("shift_x[%.2f]shift_y[%.2f]rate[%.2f]reverse[%d]back[%.3f]",shift_x,shift_y,rate,reverse,DOCK_CONNECTOR_CLEARANCE_DISTANCE_);
}

/*bool AutoDocking::dynamic_param(SRV_PAR::Request &req,SRV_PAR::Response &res){
  std::vector<float> data(5,0);
  std::string namec(req.parameter+"_cloud");
  std::string named(req.parameter+"_dock");
  if(req.command == 1 || req.command==2){//Save/New_ToDatabase
    data.at(0)=perception_.dock_left;
    data.at(1)=perception_.dock_middle;
    data.at(2)=perception_.dock_right;
    data.at(3)=perception_.dock_bottom;
    data.at(4)=perception_.dock_depth;
    res.result = call_database(1,namec,data);
    if(res.result){
      data.at(0)=shift_x;
      data.at(1)=shift_y;
      data.at(2)=DOCKED_DISTANCE_THRESHOLD_;
      data.at(3)=reverse;
      data.at(4)=perception_.para_split_threshold;
      res.result = call_database(1,named,data);
    }
  }else if(req.command == 3){//DelectToDatabase
    res.result = call_database(3,namec,data);
    if(res.result)
      res.result = call_database(3,named,data);
  }else{//SearchToDatabase
    res.result = call_database(4,namec,data);
    if(res.result)
      perception_.create_dynamic_cloud(data.at(0),data.at(1),data.at(2),data.at(3),data.at(4),0.001);
    else
      ROS_WARN("database key[%s] not found",namec.c_str());

    if(res.result){
      res.result = call_database(4,named,data);
      //ROS_INFO("dock param[%.2f %.2f %.2f %.2f]",data.at(0),data.at(1),data.at(2),data.at(3));
      if(res.result){
        shift_x = data.at(0);
        shift_y = data.at(1);
        DOCKED_DISTANCE_THRESHOLD_ = data.at(2);
        if(reverse != (int)data.at(3)){
          reverse = (int)data.at(3);
          controller_.reverse = reverse;
          std::string lidar_name = (reverse == 1)?"/scan":"/scan1";
          perception_.set_lidar_name(lidar_name);
        }
        perception_.para_split_threshold = data.at(4);
        ROS_INFO("dock param[%.2f %.2f %.2f %d %.4f]",shift_x,shift_y,DOCKED_DISTANCE_THRESHOLD_,reverse,perception_.para_split_threshold);
      }else
        ROS_WARN("database key[%s] not found",named.c_str());
    }
  }
  return true;
}*/
/*bool AutoDocking::call_database(int cmd_id,std::string key,std::vector<float> &data) {
	std::string srv_name("/database_Cloud");
	SRV_DB cmd;
	cmd.request.cmd_id = cmd_id;
	cmd.request.index_name = "key";
	cmd.request.parameter = key;
	cmd.request.data.key = key;
	cmd.request.data.left = data.at(0);
	cmd.request.data.middle = data.at(1);
	cmd.request.data.right = data.at(2);
	cmd.request.data.bottom = data.at(3);
	cmd.request.data.depth = data.at(4);
	if(!ros::service::waitForService(srv_name,ros::Duration(5.0))){
		ROS_INFO("%s timeout",srv_name.c_str());
	}else if(ros::service::call(srv_name,cmd)){
		data.at(0) = cmd.response.data.left ;
		data.at(1) = cmd.response.data.middle ;
		data.at(2) = cmd.response.data.right ;
		data.at(3) = cmd.response.data.bottom ;
		data.at(4) = cmd.response.data.depth ;
		ROS_INFO("%s[%d %s]%d",srv_name.c_str(),cmd.request.cmd_id,cmd.request.parameter.c_str(),cmd.response.result);
		return cmd.response.result;
	}else{
		ROS_INFO("%s[%d %s]false",srv_name.c_str(),cmd.request.cmd_id,cmd.request.parameter.c_str());
	}
	return false;
}*/
//-----------------------------------------------------------------------------
//-- dock_ server 接收到 goal 時所要執的 callback function ---------------
//-- 1.重置所有相關的控制旗標 --
//-- 2.goal->use_move_base 旗標 - 預留和 move_base 指定座標的功能
//-- 3.初始控制參數設定 ros::Rate/Start perception/timeout
//-- 4.由 perception 取得一個 pose - base_link （持續等待，直到取得或不可繼續 dock 的異常）
//-- 5.robot Pre-orient
//--   （1）計算 yaw 角度（弳度），不合法的值 return false，
//--   （2）合法，且繼續 dock的條件成立，則求其 backup_limit_（目前距離 × 0.9）
//--       並執行旋轉 -yaw 的角度，使車頭朝 dock 的位置
//-- 6.如果 continueDocking(result) 條件成立，
//--   （1）aborting_ 條件成立 ： 表要重新 進行 dock,executeBackupSequence(r);
//--    (2) aborting_ 條件不成立 ：
//--        （a) isApproachBad(correction_angle_)成立，停止，如果retry 〉0，aborting_=true
//--        （b) isApproachBad(correction_angle_)不成立，
//--             執行 controller_.approach(feedback.dock_pose);及 checkDockChargingConditions();
//--             (dock 位置正確，且充電條件到達)
//--   （3) 取得 feedback command 及 publish feedback
//-- 7.停止 control_及 perception_,以確保下次開始的狀態
void AutoDocking::dockCallback(const open_auto_dock_msgs::DockGoalConstPtr& goal)
{
  ROS_INFO("Receieve Docking goal ");
  open_auto_dock_msgs::DockFeedback feedback;
  open_auto_dock_msgs::DockResult result;

  // Reset flags.
  result.docked = false;
  feedback.docked = false ;
  aborting_ = false;
  //charging_timeout_set_ = false;
  cancel_docking_ = false;
  predockflag = true ;
  bdockfinishflag = false ;

  // Not currently supporting move_base option
  if (goal->use_move_base)
  {
    dock_.setAborted(result);
    ROS_ERROR("Docking failure: use_move_base not yet supported");
    return;
  }

  // Object for controlling loop rate.
  //ros::Rate r(50.0);
  ros::Rate r(rate); //10
  ros::Duration d(1.0); //sleep 1.0 sec

  // Start perception
  perception_.start(goal->dock_pose);

  // For timeout calculation
  initDockTimeout();
  // Get initial dock pose.
  controller_.turn = true;
  // Pre-dock
  //ROS_INFO("predockflag[%u,%.2f],reverse[%i]",predockflag,shift_x,reverse);
  while (ros::ok() && continueDocking(result,feedback) && predockflag)  {
    if (perception_.getPose(feedback.dock_pose)) {
      shiftGoal(feedback.dock_pose,shift_x,0);
      controller_.approach(feedback.dock_pose);
      predockConditions(shift_x,0);
    }
    r.sleep();
  }
  controller_.stop();
  d.sleep();


  //Pre-orign
  geometry_msgs::PoseStamped dock_pose_base_link;
  while (!perception_.getPose(dock_pose_base_link))
  //while (!perception_.getPose(dock_pose_base_link, "laser"))
  {
    // Wait for perception to get its first pose estimate.
    if (!continueDocking(result,feedback))
    {
      ROS_INFO("Docking failed: Initial dock not found.");
      //ROS_DEBUG_NAMED("autodock_dock_callback","Docking failed: Initial dock not found.");
      break;
    }
  }
  shiftGoal(dock_pose_base_link,0,0);
  double dock_yaw = angles::normalize_angle(tf::getYaw(dock_pose_base_link.pose.orientation));
  double yaw1 = atan2(dock_pose_base_link.pose.position.y,dock_pose_base_link.pose.position.x);
  //ROS_INFO("dock_yaw[%.2f],atan(y/x)[%.2f]",dock_yaw,yaw1);
  if (!std::isfinite(dock_yaw))
  {
    ROS_INFO("Dock yaw is invalid.");
    ROS_ERROR_STREAM_NAMED("auto_dock", "Dock yaw is invalid.");
    cancel_docking_ = true;
  }
  else if (ros::ok() && continueDocking(result,feedback))
  {
    // Set backup limit to be the initial dock range.
    backup_limit_ = sqrt(pow(dock_pose_base_link.pose.position.x, 2) + pow(dock_pose_base_link.pose.position.y, 2));
    // Shorten up the range a bit.
    backup_limit_ *= auto_backup_dist_factor ;//0.9;

    // Preorient the robot towards the dock.
    //ROS_INFO("run pre-orient[%.2f]",yaw1);
    while (!controller_.backup(0.0, yaw1) && //dock_yaw yaw1
           continueDocking(result,feedback)             &&
           ros::ok()
           )
    {
      ROS_DEBUG("continueDocking(result):%d",(int)continueDocking(result,feedback));
      r.sleep();  // Sleep the rate control object.
    }
  }
  //ROS_INFO("pre-orient finish");
  // Make sure controller is ready
  controller_.stop();
  d.sleep();
  //bdockfinishflag = true;  //only pre orien ##############

  //check pre-orient position
  perception_.getPose(dock_pose_base_link);
  shiftGoal(dock_pose_base_link,shift_x,0);
  double yaw = tf::getYaw(dock_pose_base_link.pose.orientation);
  //ROS_INFO("pre-dock finish[%.3f,%.3f,%.3f]",dock_pose_base_link.pose.position.x,dock_pose_base_link.pose.position.y,yaw);
  if (fabs(dock_pose_base_link.pose.position.y) > abort_threshold_ || fabs(yaw) > abort_angle_){
    cancel_docking_ = true;
    ROS_WARN("pre-dock failed[%.3f,%.3f,%.3f]",dock_pose_base_link.pose.position.x,
    dock_pose_base_link.pose.position.y,yaw);
    LOG(WARNING) <<"pre-dock[false] y:" <<dock_pose_base_link.pose.position.y<<" theta:"<<yaw ;
  }else{
    ROS_INFO("pre-dock finish[%.3f,%.3f,%.3f]",dock_pose_base_link.pose.position.x,
    dock_pose_base_link.pose.position.y,yaw);
    // LOG(INFO) <<"pre-dock[true] y:" <<dock_pose_base_link.pose.position.y<<" theta:"<<yaw ;
  }

  controller_.turn = false;
  // Control
  while (ros::ok() && continueDocking(result,feedback) )
  {
    // Update perception
    if (perception_.getPose(feedback.dock_pose))  //add define frame 2019.01.31
    //if (perception_.getPose(feedback.dock_pose,"laser"))  //add define frame 2019.01.31
    {
      shiftGoal(feedback.dock_pose,0,0);
      if (aborting_)
      {
        // Backup.
        ROS_INFO("executeBackupSequence");
        executeBackupSequence(r);
        // Reset abort flag.
        aborting_ = false;

        // Decrement the number of retries.
        num_of_retries_--;
      }
      else
      {
        // Check to see if we are on target and compute yaw correction angle.
        if (isApproachBad(correction_angle_))
        {
          // Not on target, abort, abort, abort!
          controller_.stop();
          aborting_ = true;
        }
        else
        {
          // Update control
          //ROS_INFO("controller_.approach");
          controller_.approach(feedback.dock_pose);
          // Are we on the dock? Check charging timeout.
          //checkDockChargingConditions();
          checkDockFinishConditions();
        }
      }

      // Feedback is mainly for our debugging
      controller_.getCommand(feedback.command);
      dock_.publishFeedback(feedback);
    }

    // Sleep the rate control object.
    r.sleep();
  }
  //record fianl position
  ros::Duration(1.0).sleep();
  checkDockFinishConditions();
  // Make sure we stop things before we are done.
  controller_.stop();
  perception_.stop();
}

/**
 * @brief Method that checks success or failure of docking.
 * @param result Dock result message used to set the dock action server state.
 * @return True if we have neither succeeded nor failed to dock.
 */
//-----------------------------------------------------------------------------
//-- Dock 的狀態檢查
//-- 1.charging_ ： dock 設為完成狀態 dock_.setSucceeded(result);
//-- 2.動作或取消命令 ： dock 設為中斷狀態 dock_.setAborted(result);
//-- 3.有其他命令將其停止 ：dock 設為被搶佔狀態 dock_.setPreempted(result);
//-- 其他均為可繼續執行 dock 的動作
bool AutoDocking::continueDocking(open_auto_dock_msgs::DockResult& result,
                                  open_auto_dock_msgs::DockFeedback& feedback)
{
  // If charging, stop and return success.
  /*if (charging_ && bdockfinishflag)
  {
    result.docked = true;
    feedback.docked = true ;
    dock_.setSucceeded(result);

    return false;
  }
  else*/ if(bdockfinishflag){  //定位完成
    result.docked = true;
    feedback.docked = true ;
    dock_.setSucceeded(result);
    //ROS_INFO("wait for charge response[%u]",charging_);
    //ROS_DEBUG_NAMED("autodock_dock_callback","Docking success: Robot has docked");
    return false;
  }
  else if (cancel_docking_)
  {
    dock_.setAborted(result);
    ROS_INFO("Docking failed: bad pose cancel_docking");
    return false;
  }
  // Timeout on time or retries.
  else if (isDockingTimedOut() )
  {
    dock_.setAborted(result);
    ROS_WARN("Docking failed: timed out");
    return false;
  }
  // Something is stopping us.
  else if (dock_.isPreemptRequested())
  {
    dock_.setPreempted(result);
    ROS_WARN("Docking failure: preempted");
    return false;
  }

  return true;
}

/**
 * @brief Method to see if the robot seems to be docked but not charging.
 *        If the robot does seem to be docked and not charging, try will
 *        timeout and set abort condition.
 */
//-----------------------------------------------------------------------------
//-- Dock Charging 的條件檢查
//-- 1. 若車子未進到 DOCKED_DISTANCE_THRESHOLD_的位置，不需對充電 timeout 做檢查
//-- 2. 車子開始進入檢查區域，設置檢查旗標，若5秒仍未完成，設置 aborting_ 旗標（車子 backup）
/*void AutoDocking::checkDockChargingConditions()
{
  // Grab the dock pose in the base_link so we can evaluate it wrt the robot.
  geometry_msgs::PoseStamped dock_pose_base_link;
  perception_.getPose(dock_pose_base_link, "base_link");
  //perception_.getPose(dock_pose_base_link, "laser");

  // Are we close enough to be docked?
  if (dock_pose_base_link.pose.position.x < DOCKED_DISTANCE_THRESHOLD_)
  {
    if (!charging_timeout_set_)
    {
      deadline_not_charging_ = ros::Time::now() + ros::Duration(5.0);
      charging_timeout_set_ = true;
    }
    else if (ros::Time::now() > deadline_not_charging_)
    {
      // Reset charging timeout flag.
      charging_timeout_set_ = false;
      // Reset correction angle since it was probably fine.
      correction_angle_ = 0.0;
      // Reset since we don't seem to be charging.
      aborting_ = true;
    }
  }
  else
  {
    // If we back up enough, reset the charging timeout flag.
    charging_timeout_set_ = false;
  }
}
*/
void AutoDocking::checkDockFinishConditions()
{
  // Grab the dock pose in the base_link so we can evaluate it wrt the robot.
  geometry_msgs::PoseStamped dock_pose_base_link;
  perception_.getPose(dock_pose_base_link);
  shiftGoal(dock_pose_base_link,0,0);
  //perception_.getPose(dock_pose_base_link, "laser");
  //ROS_DEBUG("bdockfinishflag:dock_pose_base_link.pose.position.x[%f],DOCKED_DISTANCE_THRESHOLD_[%f]",dock_pose_base_link.pose.position.x,DOCKED_DISTANCE_THRESHOLD_);
  /*
  if (fabs(dock_pose_base_link.pose.position.y) > abort_threshold_ ){
    cancel_docking_ = true;
    double yaw = tf::getYaw(dock_pose_base_link.pose.orientation);
    ROS_WARN("dock Y over %.3f m fail[%.3f,%.3f,%.3f,%.3f]",abort_threshold_,dock_pose_base_link.pose.position.x,dock_pose_base_link.pose.position.y,yaw,dock_pose_base_link.pose.position.y+0.4*tan(yaw));
  }else{*/
    bdockfinishflag = (fabs(dock_pose_base_link.pose.position.x) < DOCKED_DISTANCE_THRESHOLD_) ;
    if (bdockfinishflag){
      double yaw = tf::getYaw(dock_pose_base_link.pose.orientation);
      ROS_INFO("dock finished[%.3f,%.3f,%.3f]",dock_pose_base_link.pose.position.x-DOCKED_DISTANCE_THRESHOLD_,dock_pose_base_link.pose.position.y,yaw);
      //ROS_INFO("%.3f",dock_pose_base_link.pose.orientation.y);      
      LOG(INFO) << "dock finished: " <<dock_pose_base_link.pose.position.y<<" , "<<yaw;
    }
  //}
}
/**
 * @brief Method sets the docking deadline and number of retries.
 */
//-----------------------------------------------------------------------------
//-- Dock timeout 控制參數初始設定 deadline_docking_ 及 num_of_retries_ --
void AutoDocking::initDockTimeout()
{
  deadline_docking_ = ros::Time::now() + ros::Duration(auto_dock_timeout);//120000000.0);//ros::Duration(120.0);
  num_of_retries_ = NUM_OF_RETRIES_;
}

/**
 * @brief Method checks to see if we have run out of time or retries.
 * @return True if we are out of time or tries.
 */
//-----------------------------------------------------------------------------
//-- Dock timeout 檢查  --
bool AutoDocking::isDockingTimedOut()
{
  // Have we exceeded our deadline or tries?
  if (ros::Time::now() > deadline_docking_ || !num_of_retries_)
  {
    return true;
  }
  return false;
}

/**
 * @brief Method to back the robot up under the abort conditon.
 *        Once complete, the method resets the abort flag.
 *        Robot will backup slightly, straighten out, backup a good distance,
 *        and then reorient. Method is blocking.
 * @param r Rate object to control execution loop.
 */
//-----------------------------------------------------------------------------
//-- 車體後退的執行程序 -------------
//-- 1. lockout 充電器 1 秒
//-- 2. 車體以直行方式脫離充電站， correction_angle_ = 0 （timeout 檢查）
//-- 3. 車體計算重新dock的開始位置，並將車驅動到那個位置（timeout 檢查）
void AutoDocking::executeBackupSequence(ros::Rate& r)
{
  // Disable charging for a second.
  //lockoutCharger(1);

  // Get off of the dock. Try to straighten out.
  while (!controller_.backup(DOCK_CONNECTOR_CLEARANCE_DISTANCE_, correction_angle_))
  {
    if (isDockingTimedOut())
    {
      return;
    }
    r.sleep();  // Sleep the rate control object.
  }
  // Move to recovery pose.
  while (!controller_.backup(backupDistance(), 0.0))
  {
    if (isDockingTimedOut())
    {
      return;
    }
    r.sleep();
  }
}

/**
 * @brief Method to compute the distance the robot should backup when attemping a docking
 *        correction. Method uses a number of state variables in the class to compute
 *        distance. TODO(enhancement): Should these be parameterized instead?
 * @return Distance for robot to backup in meters.
 */
//-----------------------------------------------------------------------------
//-- 車體後退的距離計算 （距離會正比於 yaw 的補正角度及 retry 次數）
//-- 1. 決定要後退的距離 distance *= 1.5*fabs(correction_angle_);（需參數化）
//-- 2. 依 num_of_retries_ 來決定retry_constant的比例，並將其值限制在 1-2 之間
//--    distance *= retry_constant;
//-- 3. 將 backup_limit_ 的上限定在 1.0 m
//-- 4. 將 distance 定在 0.2 ~ 1 m 之間
double AutoDocking::backupDistance()
{
  // Initialized to 1.0 meter as our basic backup amount.
  double distance = 1.0; //1.0

  // Distance should be proportional to the amount of yaw correction.
  // The constants are purely arbitrary because they seemed good at the time.
  // distance *= 3.5*fabs(correction_angle_);
  distance *= 1.5*fabs(correction_angle_);
  // We should backup more the more times we try. This function should range from 1 to 2.
  // num_of_retries is initially equal to NUM_OF_RETRIES and decrements as the robot retries.
  double retry_constant = 2 - static_cast<float>(num_of_retries_)/NUM_OF_RETRIES_;
  retry_constant = std::max(1.0, std::min(2.0, retry_constant));
  distance *= retry_constant;

  // Cap the backup limit to 1 meter, just in case.
  backup_limit_ = std::min(1.0, backup_limit_);
  // Threshold distance.
  distance = std::max(0.2, std::min(backup_limit_, distance));

  return distance;
}

/**
 * @brief Method to check approach abort conditions. If we are close to the dock
 *        but the robot is too far off side-to-side or at a bad angle, it should
 *        abort. Method also returns through the parameter the orientation of the
 *        dock wrt the robot for use in correction behaviors.
 * @param dock_yaw Yaw angle of the dock wrt the robot in radians.
 * @return True if the robot should abort the approach.
 */
//-----------------------------------------------------------------------------
//-- isApproachBad 的判斷條件 ---
//-- 向 perception_ 取目前位姿,並計算 yaw 的角度 （弳度）
//-- 若車的前方距離己介在 abort_distance_ 及 DOCKED_DISTANCE_THRESHOLD_ 之間
//-- 但左右偏移值大於 abort_threshold_ 或 yaw 的角度大於 abort_angle_
bool AutoDocking::isApproachBad(double & dock_yaw)
{
  // Grab the dock pose in the base_link so we can evaluate it wrt the robot.
  geometry_msgs::PoseStamped dock_pose_base_link;
  perception_.getPose(dock_pose_base_link);
  //perception_.getPose(dock_pose_base_link, "laser");

  dock_yaw = angles::normalize_angle(tf::getYaw(dock_pose_base_link.pose.orientation));
  if(dock_yaw > 0) dock_yaw = 3.14159 - dock_yaw ;
  else dock_yaw = -(3.14159 + dock_yaw) ;

  // If we are close to the dock but not quite docked, check other approach parameters.
  if (dock_pose_base_link.pose.position.x < abort_distance_ &&
      dock_pose_base_link.pose.position.x > DOCKED_DISTANCE_THRESHOLD_
      )
  {
    // Check to see if we are too far side-to-side or at a bad angle.
    if (fabs(dock_pose_base_link.pose.position.y)  > abort_threshold_ || fabs(dock_yaw)> abort_angle_       )
    {
      // Things are bad, abort.
      ROS_INFO("Things are bad, abort.");
      return true;
    }
  }
  // Everything is ok.
  //ROS_INFO("Everything is ok.");
  return false;
}

void AutoDocking::shiftGoal(geometry_msgs::PoseStamped& pose,double x,double y){
  std::complex<double> z0 = std::complex<double>(pose.pose.position.x*reverse,pose.pose.position.y*reverse);
  double yaw0 = tf::getYaw(pose.pose.orientation);
  double yaw1; //forward
  if (fabs(yaw0-arg(z0)) < M_PI_2 ){ //same direction is right
    yaw1 = yaw0;
  }else{ //wrong direction
    yaw1 = angles::normalize_angle(yaw0 - M_PI);
  }
  std::complex<double> z1 = z0 + std::polar(-x,yaw1) + std::polar(y-shift_y+shift_mark,yaw1+M_PI_2);
  pose.pose.position.x = real(z1);
  pose.pose.position.y = imag(z1);
  pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw1);
  //ROS_INFO("shift goal (%.2f,%.2f,%.2f)->(%.2f,%.2f,%.2f)",real(z0),imag(z0),yaw0,real(z1),imag(z1),yaw1);
}

void AutoDocking::predockConditions(double x,double y){
  geometry_msgs::PoseStamped dock_pose_base_link;
  perception_.getPose(dock_pose_base_link);
  shiftGoal(dock_pose_base_link,x,y);
  predockflag = fabs(dock_pose_base_link.pose.position.x) > predock_threshold ; //0.04
  /*
  if(predockflag==0){
    double yaw = tf::getYaw(dock_pose_base_link.pose.orientation);
    ROS_INFO("predock finished[%.3f,%.3f,%.3f]",dock_pose_base_link.pose.position.x,dock_pose_base_link.pose.position.y,yaw);
  }*/
}

void AutoDocking::undockCallback(const open_auto_dock_msgs::UndockGoalConstPtr& goal)
{

  ROS_INFO("undockCallback");
  // Disable the charger for just a little bit longer than the undock procedure might take.
  //lockoutCharger(6);

  open_auto_dock_msgs::UndockFeedback feedback;
  open_auto_dock_msgs::UndockResult result;
  result.undocked = false;
  feedback.undocked = false;
  // Distances to backup/turn
  double backup = DOCK_CONNECTOR_CLEARANCE_DISTANCE_;
  double turn = goal->rotate_in_place ? undock_rotate : 0.0; //3.14
  if (reverse == -1){ turn = 0; }

  // Make sure controller is ready
  controller_.stop();

  // Timeout for undocking
  ros::Time timeout = ros::Time::now() + ros::Duration(auto_undock_timeout);

  // Control
  ros::Rate r(rate); //50
  while (ros::ok())
  {
    if (undock_.isPreemptRequested())
    {
      controller_.stop();
      undock_.setPreempted(result);
      ROS_WARN_NAMED("autodock_undock_callback", "Undocking preempted");
      return;
    }

    // Update control
    if (controller_.backup(backup, turn))
    {
      // Odom says we have undocked
      result.undocked = true;
      feedback.undocked = true;
      controller_.stop();
      undock_.setSucceeded(result);
      // Command the charger to turn back on.
      //lockoutCharger(0);
      ROS_DEBUG_NAMED("autodock_undock_callback", "Robot has undocked");
      return;
    }

    // Feedback is mainly for our debugging
    undock_.publishFeedback(feedback);

    // Timeout
    if (ros::Time::now() > timeout)
    {
      controller_.stop();
      undock_.setAborted(result);
      // Command the charger to turn back on.
      //lockoutCharger(0);
      ROS_WARN_NAMED("autodock_undock_callback", "Undocking failed: timed out");
      return;
    }

    r.sleep();
  }

  controller_.stop();
  undock_.setAborted(result);
  // Command the charger to turn back on.
  //lockoutCharger(0);
  ROS_WARN_NAMED("autodock_undock_callback", "Undocking failed: ROS no longer OK");
}

//-----------------------------------------------------------------------------
//-- auto_dock enter_point ---------------
int main(int argc, char** argv)
{
  FLAGS_log_dir="/home/hyc/logmsg";//宣告路徑
  google::InitGoogleLogging(argv[0]);
  ros::init(argc, argv, "auto_dock");
  AutoDocking auto_dock;
  ros::spin();
  google::ShutdownGoogleLogging();
  return 0;
}
//-----------------------------------------------------------------------------

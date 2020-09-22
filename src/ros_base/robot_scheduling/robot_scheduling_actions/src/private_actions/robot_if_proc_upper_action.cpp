#include <private_actions/robot_if_proc_upper_action.h>
#include <ros_utility_tools/ros_tools.h>
#include <tf2/utils.h>
#include <tf/transform_listener.h>
//-----------------------------------------------------------------------------
robot_if_proc_upper_action::robot_if_proc_upper_action(ros::NodeHandle nh,std::string name_as) : nh_(nh), 
                        if_proc_upper_as(nh_,name_as, boost::bind(&robot_if_proc_upper_action::if_proc_upper_CB, this, _1), false)
{ 
    ROS_INFO("if_proc_upper_as.start()");
    if_proc_upper_as.start();
    //---------------------
    b_use_tf2 = true ;
    //---------------------
    pubRobot_Info = nh_.advertise<robot_scheduling_msgs::robot_info>("hyc_robot_info", 10);
    pubRobot_state = nh_.advertise<robot_scheduling_msgs::robot_state>("hyc_robot_state", 10);
    begin_Time_Info = ros::Time::now() ;
    begin_Time_state = ros::Time::now() ;
    ros::Duration(0.1).sleep();  
    //---------------------
    if_topic_destory = false;
	if_topic_pass = false;
    if_topic_thread = std::unique_ptr<std::thread>( new std::thread( std::bind(&robot_if_proc_upper_action::if_topic_ThreadEntry, this)));
    //--------------------
    /*sub_robot_pose = std::make_shared<geometry_msgs::PoseWithCovarianceStamped>(); */ 
    sub_robot_pose.header.frame_id = "map";
    sub_robot_pose.header.stamp = ros::Time::now();
    // set x,y coord
    sub_robot_pose.pose.pose.position.x = 0;
    sub_robot_pose.pose.pose.position.y = 0;
    sub_robot_pose.pose.pose.position.z = 0.0;
    // set theta
    tf::Quaternion quat;
    quat.setRPY(0.0, 0.0, 0.0);
    tf::quaternionTFToMsg(quat, sub_robot_pose.pose.pose.orientation);
    sub_robot_pose.pose.covariance[6*0+0] = 0.5 * 0.5;
    sub_robot_pose.pose.covariance[6*1+1] = 0.5 * 0.5;
    sub_robot_pose.pose.covariance[6*5+5] = M_PI/12.0 * M_PI/12.0;

    if(!b_use_tf2)
        sub_odom_pose = nh_.subscribe<nav_msgs::Odometry>("odom", 1, &robot_if_proc_upper_action::sub_odom_pose_CB, this);
}    
//-----------------------------------------------------------------------------
robot_if_proc_upper_action::~robot_if_proc_upper_action()
{
    if (if_topic_thread->joinable()){
        std::lock_guard<std::mutex> lock(if_topic_mtx);
        if_topic_destory = true;
        if_topic_cv.notify_one();
    }    
}
//--------------------------------------------------------------------------------	
void robot_if_proc_upper_action::sub_odom_pose_CB(const nav_msgs::OdometryConstPtr& odom)
{
    //if(sub_robot_pose == NULL)
    //    sub_robot_pose = std::make_shared<geometry_msgs::PoseWithCovarianceStamped>();  

    sub_robot_pose.header = odom->header;
    sub_robot_pose.pose.pose = odom->pose.pose;
    sub_robot_pose.pose.covariance = odom->pose.covariance;
}
//-------------------------------------------------------		
/*runmode_type robot_if_proc_upper_action::sys_runmode_type_decise()
{
    runmode_type run_type = runmode_none ;
    runstatus_type sys_status = parameter_->get_system_status() ;  
    manualstatus_type m_type = parameter_->get_manual_status();
    remotestatus_type r_type = parameter_->get_remote_status();
    if(sys_status == runstatus_standby){
        run_type = runmode_ready ;  
        parameter_->set_manual_runmode_type(run_type) ; 
        parameter_->set_remote_runmode_type(run_type) ; 
        parameter_->set_manual_status(manualstatus_none);
        parameter_->set_remote_status(remotestatus_none);

    }
    else if(sys_status == runstatus_manual){
        if((parameter_->get_manual_runmode_type() == runmode_running) ||
           (parameter_->get_manualparent_runmode_type() == runmode_running) )
            run_type = runmode_running;
        else
            run_type = runmode_ready;        
    }
    else if(sys_status == runstatus_remote){
        run_type = parameter_->get_remote_runmode_type() ;
    }
    else if((sys_status == runstatus_unknow) || (sys_status == runstatus_awarded) ||
            (sys_status == runstatus_pause) )
        run_type = runmode_standby ;   
    else if(sys_status == runstatus_alarm) 
        run_type = runmode_alarm ; 
    else if(sys_status == runstatus_pause) 
        run_type = runmode_pause ; 

    return run_type ;
}*/
//-----------------------------------------------------------------------------
bool robot_if_proc_upper_action::getRobot_map_PoseTransfer(std::string frame_name)
{
    if(trans_pose == nullptr)
        trans_pose = std::make_shared<tf2_ros::TransformListener>(tf2_buffer,nh_); 
    try{
        tf_geometry = tf2_buffer.lookupTransform("map" ,frame_name, ros::Time(0), ros::Duration(3));
        /*sub_robot_pose = std::make_shared<geometry_msgs::PoseWithCovarianceStamped>(); */ 
        sub_robot_pose.header.frame_id = "map";
        sub_robot_pose.header.stamp = ros::Time::now();
        // set x,y coord
        sub_robot_pose.pose.pose.position.x = tf_geometry.transform.translation.x;
        sub_robot_pose.pose.pose.position.y = tf_geometry.transform.translation.y;
        sub_robot_pose.pose.pose.position.z = 0.0;
        // set theta
        tf2::Quaternion q;
		fromMsg(tf_geometry.transform.rotation,q);
        double theta = getYaw(q) ;
        tf::Quaternion quat;
        quat.setRPY(0.0, 0.0, theta);
        tf::quaternionTFToMsg(quat, sub_robot_pose.pose.pose.orientation);
        sub_robot_pose.pose.covariance[6*0+0] = 0.5 * 0.5;
        sub_robot_pose.pose.covariance[6*1+1] = 0.5 * 0.5;
        sub_robot_pose.pose.covariance[6*5+5] = M_PI/12.0 * M_PI/12.0;
    }
    catch (tf2::TransformException &e) {
      ROS_ERROR("tf2::TransformException==>%s", e.what());
      return false;      
    }
    return true ;
}
//-----------------------------------------------------------------------------
void robot_if_proc_upper_action::Process_SendTopic() 
{
    //-- topic process ----------
    double fTime_period_Info = (ros::Time::now() - begin_Time_Info).toSec() ;
    if(fTime_period_Info >= double(1.0/robot_info_rate)){
        if(b_use_tf2)
            getRobot_map_PoseTransfer();

        robot_info_msg.header = sub_robot_pose.header ;
        robot_info_msg.robot_name = "hyc_robot_1";
        robot_info_msg.pose.pose = sub_robot_pose.pose.pose;
        robot_info_msg.pose.covariance = sub_robot_pose.pose.covariance;
        robot_info_msg.status = (int) parameter_->get_system_status();
        //robot_info_msg.mode = (int)sys_runmode_type_decise() ;
        robot_info_msg.mode = (int)parameter_->get_systme_runmode_type() ;//sys_runmode_type_decise() ;
        pubRobot_Info.publish(robot_info_msg);
        begin_Time_Info = ros::Time::now() ;
    }
    double fTime_period_State = (ros::Time::now() - begin_Time_state).toSec() ;
    if(fTime_period_State >= double(1.0/robot_state_rate)){
        robot_state_msg.robot_name = "hyc_robot_1";
        //robot_state_msg.mode = (int)sys_runmode_type_decise() ;
        robot_info_msg.mode = (int)parameter_->get_systme_runmode_type() ;
        robot_state_msg.status = (int) parameter_->get_system_status();
        pubRobot_state.publish(robot_state_msg);
        begin_Time_state = ros::Time::now() ;
    }
    //-- check buffer size ----
    //bool buffer_size = true ;  
	if_topic_pass = true ; 
	if_topic_cv.notify_one();
}
//-----------------------------------------------------------------------------
void robot_if_proc_upper_action::if_topic_ThreadEntry() 
{
	std::this_thread::sleep_for(std::chrono::milliseconds(1));
	//-- send message to stm for UDPWOrkerData including eVector_pub,eVector_cltService,eVector_srvService type
	while(true){
		std::unique_lock<std::mutex> lock(if_topic_mtx);	
		if_topic_cv.wait( lock, [&] () { return (if_topic_destory || if_topic_pass) ; } );
		if(if_topic_destory)
			break;
		else{
			//-- send topic topic logic ----	
			Process_SendTopic();
		}	
		std::this_thread::sleep_for(std::chrono::milliseconds(1)); 
	}
}
//-----------------------------------------------------------------------------
void robot_if_proc_upper_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;
    //---------------
    parameter_->get_upper_topic_rate(robot_info_rate , robot_state_rate);
    //begin_Time_Info = ros::Time::now() ;
    //begin_Time_state = ros::Time::now() ;
    //if_topic_destory = false;
	//if_topic_pass = false;
    //if_topic_thread = std::unique_ptr<std::thread>( new std::thread( std::bind(&robot_if_proc_upper_action::if_topic_ThreadEntry, this)));
    //-----------------
    if_topic_pass = true;
    if_topic_cv.notify_one(); 
}
//-----------------------------------------------------------------------------
void robot_if_proc_upper_action::set_robot_scheduling_service(robot_scheduling_service* service)
{
    service_ = service ;
}
//-----------------------------------------------------------------------------
void robot_if_proc_upper_action::if_proc_upper_CB(const robot_scheduling_msgs::robot_interface_proc_upperGoalConstPtr& goal)
{
    ROS_INFO("if_proc_upper_CB");   
    if (if_proc_upper_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("if_proc_upper_as execution preempted.");
        if_proc_upper_as.setPreempted();
        return;
    }
    else{  
        int cmd_type = goal->cmd_type ;
        bool bResult = false ;        
        //--- interface upper Process --------------------------
        if(cmd_type == robot_scheduling_msgs::robot_interface_proc_upperGoal::GET_STATUS){
            do_proc_upper_get_function(goal) ;
        }
        //--- Status_code Process ---------------------------
        else if(cmd_type == robot_scheduling_msgs::robot_interface_proc_upperGoal::SET_COMMAND){
            do_proc_upper_set_function(goal) ;
        }                
    }
}
//-----------------------------------------------------------------------------
void robot_if_proc_upper_action::do_proc_upper_get_function(const robot_scheduling_msgs::robot_interface_proc_upperGoalConstPtr& goal)
{  
    ROS_INFO("do_proc_upper_get_function");   
    int cmd_id = goal->cmd_id ;
    bool bResult = false ;
    robot_scheduling_msgs::robot_interface_proc_upperResult _result;
    //----------------------
    if(cmd_id == robot_scheduling_msgs::robot_interface_proc_upperGoal::BASE_PROC){
        if(parameter_->get_b_simulation()){
            //parameter_->set_base_ctrl_connected(true);
            _result.result = robot_scheduling_msgs::robot_interface_proc_upperResult::OK;
        }
        else{
            //-- process topic and service data --
            _result.result = robot_scheduling_msgs::robot_interface_proc_upperResult::OK;
        }         
        bResult = true ;   
    }




    /*if(cmd_id == robot_scheduling_msgs::robot_interface_proc_upperGoal::BASE_READY){
        if(parameter_->get_b_simulation()){
            //ROS_INFO("b_simulation - do_proc_upper_function");
            //parameter_->set_base_ctrl_connected(true);
            _result.result = robot_scheduling_msgs::robot_interface_proc_upperResult::OK;
        }
        else{
            //-- process topic and service data --
            _result.result = robot_scheduling_msgs::robot_interface_proc_upperResult::OK;
        }         
        bResult = true ;   
    }
    //----------------------
    else if(cmd_id == robot_scheduling_msgs::robot_interface_proc_upperGoal::STATUS ||
            cmd_id == robot_scheduling_msgs::robot_interface_proc_upperGoal::BASE_CONNECT ){
        int call_type = robot_scheduling_msgs::robot_interface_proc_upperGoal::GET_STATUS ;
        int call_id = robot_scheduling_msgs::robot_interface_proc_upperGoal::STATUS ;
        std::string call_data = "" ; 

        service_->call_service_to_base_ctrl(call_type,call_id,call_data);
        if(cmd_id == robot_scheduling_msgs::robot_interface_proc_upperGoal::BASE_CONNECT)
            _result.result = parameter_->get_base_ctrl_connected() ? robot_scheduling_msgs::robot_interface_proc_upperResult::OK :
                                                                     robot_scheduling_msgs::robot_interface_proc_upperResult::PASS;
        else{                                                             
            _result.result = robot_scheduling_msgs::robot_interface_proc_upperResult::OK ;
        }
        _result.result_state = parameter_->get_base_status_type();
        bResult = true ;     
    }*/
    //---------------------------------------------------------------------        
    if(bResult){
        if_proc_upper_as.setSucceeded(_result);      
    }
    else{
        if_proc_upper_as.setAborted(_result);      
    } 
    //--------------------------------------------------------------
}
//-----------------------------------------------------------------------------
void robot_if_proc_upper_action::do_proc_upper_set_function(const robot_scheduling_msgs::robot_interface_proc_upperGoalConstPtr& goal) 
{
    bool bResult = false ;
    robot_scheduling_msgs::robot_interface_proc_upperResult _result;

    if(parameter_->get_b_simulation()){
        ROS_INFO("b_simulation - do_proc_upper_upper_function");
        //parameter_->set_base_ctrl_connected(true);
        bResult = true ;
    }
    //---------------------------------------------------------------------        
    if(bResult){
        if_proc_upper_as.setSucceeded(_result);      
    }
    else{
        if_proc_upper_as.setAborted(_result);      
    } 
}
//--------------------------------------------------------------------------------

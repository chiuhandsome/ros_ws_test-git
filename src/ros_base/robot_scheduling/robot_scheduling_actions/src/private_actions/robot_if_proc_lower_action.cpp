#include <private_actions/robot_if_proc_lower_action.h>
#include <ros_utility_tools/ros_tools.h>
//-----------------------------------------------------------------------------
robot_if_proc_lower_action::robot_if_proc_lower_action(ros::NodeHandle nh,std::string name_as) : nh_(nh), 
                        if_proc_lower_as(nh_,name_as, boost::bind(&robot_if_proc_lower_action::if_proc_lower_CB, this, _1), false)
{ 
    ROS_INFO("if_proc_lower_as.start()");
    if_proc_lower_as.start();
    //---------------------
    if_topic_destory = false;
	if_topic_pass = false;
    if_topic_thread = std::unique_ptr<std::thread>( new std::thread( std::bind(&robot_if_proc_lower_action::if_topic_ThreadEntry, this)));
}    
//-----------------------------------------------------------------------------
robot_if_proc_lower_action::~robot_if_proc_lower_action()
{
    if (if_topic_thread->joinable()){
        std::lock_guard<std::mutex> lock(if_topic_mtx);
        if_topic_destory = true;
        if_topic_cv.notify_one();
    }    
}
//-----------------------------------------------------------------------------
void robot_if_proc_lower_action::Process_SendTopic() 
{
    //-- topic process ----------
    //-- check buffer size ----
    bool buffer_size = true ;  
	if_topic_pass = true ; 
	if_topic_cv.notify_one(); 
}
//-----------------------------------------------------------------------------
void robot_if_proc_lower_action::if_topic_ThreadEntry() 
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
void robot_if_proc_lower_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;
}
//-----------------------------------------------------------------------------
void robot_if_proc_lower_action::set_robot_scheduling_service(robot_scheduling_service* service)
{
    service_ = service ;
}
//-----------------------------------------------------------------------------
void robot_if_proc_lower_action::if_proc_lower_CB(const robot_scheduling_msgs::robot_interface_proc_lowerGoalConstPtr& goal)
{
    ROS_INFO("if_proc_lower_CB");   
    if (if_proc_lower_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("if_proc_lower_as execution preempted.");
        if_proc_lower_as.setPreempted();
        return;
    }
    else{  
        int cmd_type = goal->cmd_type ;
        bool bResult = false ;        
        //--- interface lower Process --------------------------
        if(cmd_type == robot_scheduling_msgs::robot_interface_proc_lowerGoal::GET_STATUS){
            do_proc_lower_get_function(goal) ;
        }
        //--- Status_code Process ---------------------------
        else if(cmd_type == robot_scheduling_msgs::robot_interface_proc_lowerGoal::SET_COMMAND){
            do_proc_lower_set_function(goal) ;
        }                
    }
}
//-----------------------------------------------------------------------------
void robot_if_proc_lower_action::do_proc_lower_get_function(const robot_scheduling_msgs::robot_interface_proc_lowerGoalConstPtr& goal)
{  
    int cmd_id = goal->cmd_id ;
    bool bResult = false ;
    robot_scheduling_msgs::robot_interface_proc_lowerResult _result;
    //----------------------
    if(cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::BASE_PROC){
        if(parameter_->get_b_simulation()){
            //parameter_->set_base_ctrl_connected(true);
            _result.result = robot_scheduling_msgs::robot_interface_proc_lowerResult::OK;
        }
        else{
            //-- process topic and service data --
            _result.result = robot_scheduling_msgs::robot_interface_proc_lowerResult::OK;
        }         
        bResult = true ;   
    }
    //----------------------
    else if(cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::STATUS ||
            cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::BASE_CONNECT ||
            cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::BASE_READY){

        int call_type = robot_scheduling_msgs::lower_if_command::Request::GET_STATUS ;
        int call_id = robot_scheduling_msgs::lower_if_command::Request::STATUS ;
        std::string call_data = "" ; 

        service_->call_service_to_base_ctrl(call_type,call_id,call_data);
        ROS_INFO("cmd_id==>%d",cmd_id);
        if(cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::BASE_CONNECT){
            _result.result = parameter_->get_base_ctrl_connected() ? robot_scheduling_msgs::robot_interface_proc_lowerResult::OK :
                                                                     robot_scheduling_msgs::robot_interface_proc_lowerResult::PASS;
            bResult = true ;   
        }
        else if(cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::BASE_READY){
            ROS_INFO("get_base_ctrl_ready==>%d",parameter_->get_base_ctrl_ready());
            _result.result = parameter_->get_base_ctrl_ready() ? robot_scheduling_msgs::robot_interface_proc_lowerResult::OK :
                                                                 robot_scheduling_msgs::robot_interface_proc_lowerResult::NOT_OK;
            bResult = parameter_->get_base_ctrl_ready() ;   
        }
        else if(cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::BATTERY){
            _result.result = parameter_->get_base_ctrl_ready() ? robot_scheduling_msgs::robot_interface_proc_lowerResult::OK :
                                                                     robot_scheduling_msgs::robot_interface_proc_lowerResult::PASS;
            bResult = true ;
        }
        else{                                                             
            _result.result = robot_scheduling_msgs::robot_interface_proc_lowerResult::NOT_OK ;
            bResult = false ;
        }
        _result.result_state = parameter_->get_base_status_type();
          
    }
    //---------------------------------------------------------------------        
    if(bResult){
        if_proc_lower_as.setSucceeded(_result);      
    }
    else{
        if_proc_lower_as.setAborted(_result);      
    } 
    //--------------------------------------------------------------
}
//-----------------------------------------------------------------------------
void robot_if_proc_lower_action::do_proc_lower_set_function(const robot_scheduling_msgs::robot_interface_proc_lowerGoalConstPtr& goal) 
{
    int cmd_id = goal->cmd_id ;
    bool bResult = false ;
    robot_scheduling_msgs::robot_interface_proc_lowerResult _result;

    //----------------------
    if(cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::BASE_PROC){
        if(parameter_->get_b_simulation()){
            //parameter_->set_base_ctrl_connected(true);
            _result.result = robot_scheduling_msgs::robot_interface_proc_lowerResult::OK;
        }
        else{
            //-- process topic and service data --
            _result.result = robot_scheduling_msgs::robot_interface_proc_lowerResult::OK;
        }         
        bResult = true ;   
    }
    //----------------------
    else if(cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::BASE_READY){

        int call_type = robot_scheduling_msgs::lower_if_command::Request::SET_COMMAND ;
        int call_id = robot_scheduling_msgs::lower_if_command::Request::BASE_READY ;
        std::string call_data = "" ; 

        service_->call_service_to_base_ctrl(call_type,call_id,call_data);    
        _result.result = robot_scheduling_msgs::robot_interface_proc_lowerResult::OK;
        bResult = true ; 
    }
    else if(cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::LED ||
            cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::MUSIC){
        int call_type = robot_scheduling_msgs::lower_if_command::Request::SET_COMMAND ;
        int call_id ;
        if(cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::LED)
            call_id = robot_scheduling_msgs::lower_if_command::Request::LED ;
        else if(cmd_id == robot_scheduling_msgs::robot_interface_proc_lowerGoal::MUSIC)
            call_id = robot_scheduling_msgs::lower_if_command::Request::MUSIC ;

        std::string call_data = goal->cmd_data ; 

        service_->call_service_to_base_ctrl(call_type,call_id,call_data);    
        _result.result = robot_scheduling_msgs::robot_interface_proc_lowerResult::OK;
        bResult = true ; 
    }
    //---------------------------------------------------------------------        
    if(bResult){
        if_proc_lower_as.setSucceeded(_result);      
    }
    else{
        if_proc_lower_as.setAborted(_result);      
    } 
}
//--------------------------------------------------------------------------------

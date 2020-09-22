#include <public_actions/time_wait_action.h>
#include <thread>
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
time_wait_action::time_wait_action(ros::NodeHandle nh,std::string time_wait_as_name) :
                        nh_(nh),//turn_to_name_as_(turn_to_name_as),
                        time_wait_as_(nh_,time_wait_as_name, boost::bind(&time_wait_action::time_wait_CB, this, _1), false)
{ 
    //_current_time = 0 ;
    //turn_velPub_ = nh_.advertise<geometry_msgs::Twist>("/cmd_vel",10);   
    //-------------------
    ROS_INFO("time_wait_as_.start()");
    time_wait_as_.start();
}    
//-----------------------------------------------------------------------------
time_wait_action::~time_wait_action()
{
            
}
//-----------------------------------------------------------------------------
void time_wait_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;    
}
//-----------------------------------------------------------------------------
void time_wait_action::time_wait_CB(const robot_scheduling_msgs::time_waitGoalConstPtr& goal)
{
    ROS_INFO("time_wait_CB");
    if (time_wait_as_.isPreemptRequested() || !ros::ok()){
        ROS_INFO("time_wait_as_.isPreemptRequested()");
        ROS_ERROR("time_wait_as_ execution preempted.");
        time_wait_as_.setPreempted();
        return;
    }
    else{
        float delay_time ;
        if(goal->cmd_type == robot_scheduling_msgs::time_waitGoal::NORMAL){
            delay_time = goal->cmd_time ;
            ROS_INFO("time_wait_CB Start,delay_time: %f",delay_time);
        }
        if(goal->cmd_type == robot_scheduling_msgs::time_waitGoal::PARAMETER){
            delay_time = parameter_->get_robot_wait_time() ;
            ROS_INFO("time_wait_CB Start,delay_time from parameter class: %f",delay_time); 
        }

        ros::Duration(delay_time).sleep(); 
        //std::this_thread::sleep_for(std::chrono::milliseconds(delay_time*1000)); 
        ROS_INFO("time_wait_CB end");
        
        robot_scheduling_msgs::time_waitResult _result;
        _result.result = robot_scheduling_msgs::time_waitResult::OK ;
        time_wait_as_.setSucceeded(_result);  
    }
}
//---------------------------------------------------------------------------------
//*********************************************************************************
//** time_wait_action_client                                                    **
//*********************************************************************************
//---------------------------------------------------------------------------------
time_wait_action_client::time_wait_action_client(ros::NodeHandle nh) : nh_(nh)
{ 
}  
//-----------------------------------------------------------------------------
time_wait_action_client::~time_wait_action_client()
{
        
}  
//-----------------------------------------------------------------------------
void time_wait_action_client::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;    
}
//-----------------------------------------------------------------------------
actionlib::SimpleClientGoalState time_wait_action_client::do_time_wait_ac(std::string time_wait_ac_name,std::shared_ptr<robot_scheduling_msgs::time_waitGoal> goal)
{
    if(time_wait_ac_ == NULL){
        //dock_to_ac_name = goal->dock_ac_name;
        time_wait_ac_ = std::make_shared<time_wait_ac>(time_wait_ac_name, true);
        while(!time_wait_ac_->waitForServer(ros::Duration(5.0))){
            ROS_INFO("Waiting for action server(%s) to come up",time_wait_ac_name.c_str());
        }    
    }
    //----run interrupt --------
    /*if(goal->command_type == robot_scheduling_msgs::self_turn_toGoal::TURN_INTERRUPE){
        robot_turn_ac_->cancelAllGoals();  
        return actionlib::SimpleClientGoalState::SUCCEEDED ;   
    }*/
    //-- Waiting for a correct clock－time ----
    double secs =ros::Time::now().toSec();
    while (secs==0) {  // NEEDED OTHERWISE CLOCK WILL BE 0 AND GOAL_ID IS NOT SET CORRECTLY
        ROS_ERROR_STREAM("Time is null: " << ros::Time::now());
        ros::Duration(0.1).sleep();  
        secs =ros::Time::now().toSec();
    }
    //-------------------------------------
    time_wait_ac_->sendGoal(*goal,boost::bind(&time_wait_action_client::ac_doneCb, this, _1,_2),
                                boost::bind(&time_wait_action_client::ac_activeCb, this),
                                boost::bind(&time_wait_action_client::ac_feedbackCb, this, _1));
    while (!time_wait_ac_->waitForResult(ros::Duration(0.5))) {}

    //--------------
    return time_wait_ac_->getState() ;
}
//-----------------------------------------------------------------------------
void time_wait_action_client::ac_doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::time_waitResultConstPtr& result)
{
    ROS_INFO("ac_doneCb");    
}
//-----------------------------------------------------------------------------
void time_wait_action_client::ac_activeCb()
{
    ROS_INFO("ac_activeCb");    
}
//-----------------------------------------------------------------------------
void time_wait_action_client::ac_feedbackCb(const robot_scheduling_msgs::time_waitFeedbackConstPtr &fb)
{
}

//--------------------------------------------------------------------------------

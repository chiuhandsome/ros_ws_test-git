#include <private_actions/robot_time_wait_ac.h>
//-----------------------------------------------------------------------------
robot_time_wait_ac::robot_time_wait_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                        time_wait_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
robot_time_wait_ac::~robot_time_wait_ac()
{
   
}
//-----------------------------------------------------------------------------
void robot_time_wait_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::time_waitResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void robot_time_wait_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void robot_time_wait_ac::feedbackCb(const robot_scheduling_msgs::time_waitFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int robot_time_wait_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::time_waitResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::time_waitResult::NOT_OK));

    if(just_1 || just_2){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    if(iRet == 1)
        ROS_INFO("command condition ==> %s result ==> %d  eval_state_==> %d",condition.c_str(),iRet,eval_state_);

    return iRet ;
}
//-----------------------------------------------------------------------------
void robot_time_wait_ac::do_robot_time_wait(const robot_scheduling_msgs::time_waitGoal& goal)
{
    //--- Wait for the action server
    while(!time_wait_ac_.waitForServer(ros::Duration(2.0))){
        ROS_INFO("Waiting for robot_time_wait action server to come up");
    }
    //--- sending goal ----
    time_wait_ac_.sendGoal(goal, 
                           boost::bind(&robot_time_wait_ac::doneCb, this, _1 , _2),
                           boost::bind(&robot_time_wait_ac::activeCb, this), 
                           boost::bind(&robot_time_wait_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!time_wait_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (time_wait_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(time_wait_ac_.getResult()->result == robot_scheduling_msgs::time_waitResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::time_waitResult::OK);
        }
        else if(time_wait_ac_.getResult()->result == robot_scheduling_msgs::time_waitResult::NOT_OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::time_waitResult::NOT_OK);
        }
    }
    else{   // ABORTED       
        if(time_wait_ac_.getResult()->result == robot_scheduling_msgs::time_waitResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::time_waitResult::NOT_OK);
        }
    }
}
//-----------------------------------------------------------------------------


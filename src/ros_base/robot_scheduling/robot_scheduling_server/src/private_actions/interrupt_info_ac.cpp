#include <private_actions/interrupt_info_ac.h>
//-----------------------------------------------------------------------------
interrupt_info_ac::interrupt_info_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                        interrupt_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
interrupt_info_ac::~interrupt_info_ac()
{
   
}
//-----------------------------------------------------------------------------
void interrupt_info_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::interrupt_infoResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void interrupt_info_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void interrupt_info_ac::feedbackCb(const robot_scheduling_msgs::interrupt_infoFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int interrupt_info_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    /*bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::time_waitResult::OK)));

    if(just_1 || just_2){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    if(iRet == 1)
        ROS_INFO("command condition ==> %s result ==> %d  eval_state_==> %d",condition.c_str(),iRet,eval_state_);
    */
    return iRet ;
}
//-----------------------------------------------------------------------------
void interrupt_info_ac::do_interrupt_info(const robot_scheduling_msgs::interrupt_infoGoal& goal)
{
    //--- Wait for the action server
    while(!interrupt_ac_.waitForServer(ros::Duration(2.0))){
        ROS_INFO("Waiting for robot_time_wait action server to come up");
    }
    //--- sending goal ----
    interrupt_ac_.sendGoal(goal, 
                           boost::bind(&interrupt_info_ac::doneCb, this, _1 , _2),
                           boost::bind(&interrupt_info_ac::activeCb, this), 
                           boost::bind(&interrupt_info_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!interrupt_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    /*if (interrupt_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
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
    }*/
}
//-----------------------------------------------------------------------------


#include <private_actions/robot_if_process_ac.h>
//-----------------------------------------------------------------------------
robot_if_process_ac::robot_if_process_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                        if_process_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
robot_if_process_ac::~robot_if_process_ac()
{
   
}
//-----------------------------------------------------------------------------
void robot_if_process_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::robot_interface_processResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void robot_if_process_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void robot_if_process_ac::feedbackCb(const robot_scheduling_msgs::robot_interface_processFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int robot_if_process_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_processResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_processResult::NOT_OK));

    if(just_1 || just_2 ){
        iRet = 1 ;    
        if(iRet == 1)
            ROS_INFO("[[robot_if_process_ac]] run_state condition ==> %s result ==> %d  eval_state_==> %d",condition.c_str(),iRet,eval_state_);
        eval_state_ = -1;
    }
    
    return iRet ;
}
//-----------------------------------------------------------------------------
void robot_if_process_ac::do_robot_interface_process(const robot_scheduling_msgs::robot_interface_processGoal& goal)
{
    //--- Wait for the action server
    while(!if_process_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    if_process_ac_.sendGoal(goal, 
                           boost::bind(&robot_if_process_ac::doneCb, this, _1 , _2),
                           boost::bind(&robot_if_process_ac::activeCb, this), 
                           boost::bind(&robot_if_process_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!if_process_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (if_process_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(if_process_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_processResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_processResult::OK);
        }
    }
    else{   // ABORTED       
        if(if_process_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_processResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_processResult::NOT_OK);
        }
    }
}
//-----------------------------------------------------------------------------


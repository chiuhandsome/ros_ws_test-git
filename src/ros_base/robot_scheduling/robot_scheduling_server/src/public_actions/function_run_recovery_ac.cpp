#include <public_actions/function_run_recovery_ac.h>
//-----------------------------------------------------------------------------
function_run_rcvr_ac::function_run_rcvr_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            func_run_rcvr_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
function_run_rcvr_ac::~function_run_rcvr_ac()
{
   
}
//-----------------------------------------------------------------------------
void function_run_rcvr_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::function_run_recoveryResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void function_run_rcvr_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void function_run_rcvr_ac::feedbackCb(const robot_scheduling_msgs::function_run_recoveryFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int function_run_rcvr_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::function_run_recoveryResult::OK)));        

    if(just_1){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void function_run_rcvr_ac::do_function_run_rcvr_ac(const robot_scheduling_msgs::function_run_recoveryGoal& goal)
{   
    ROS_INFO("do_pose_turn_to_rcvr_ac");
    //--- Wait for the action server
    while(!func_run_rcvr_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    func_run_rcvr_ac_.sendGoal(goal, boost::bind(&function_run_rcvr_ac::doneCb, this, _1 , _2),
                                    boost::bind(&function_run_rcvr_ac::activeCb, this), 
                                    boost::bind(&function_run_rcvr_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!func_run_rcvr_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (func_run_rcvr_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(func_run_rcvr_ac_.getResult()->result == robot_scheduling_msgs::function_run_recoveryResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::function_run_recoveryResult::OK);
        }
    }
}
//-----------------------------------------------------------------------------


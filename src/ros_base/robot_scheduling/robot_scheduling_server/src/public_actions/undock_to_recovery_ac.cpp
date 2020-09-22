#include <public_actions/undock_to_recovery_ac.h>
//-----------------------------------------------------------------------------
undock_to_rcvr_ac::undock_to_rcvr_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            undock_to_rcvr_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
undock_to_rcvr_ac::~undock_to_rcvr_ac()
{
   
}
//-----------------------------------------------------------------------------
void undock_to_rcvr_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::undock_to_recoveryResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void undock_to_rcvr_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void undock_to_rcvr_ac::feedbackCb(const robot_scheduling_msgs::undock_to_recoveryFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int undock_to_rcvr_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::undock_to_recoveryResult::OK)));        

    if(just_1){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void undock_to_rcvr_ac::do_undock_to_rcvr_ac(const robot_scheduling_msgs::undock_to_recoveryGoal& goal)
{
    //--- Wait for the action server
    while(!undock_to_rcvr_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    undock_to_rcvr_ac_.sendGoal(goal, boost::bind(&undock_to_rcvr_ac::doneCb, this, _1 , _2),
                                    boost::bind(&undock_to_rcvr_ac::activeCb, this), 
                                    boost::bind(&undock_to_rcvr_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!undock_to_rcvr_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (undock_to_rcvr_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(undock_to_rcvr_ac_.getResult()->result == robot_scheduling_msgs::undock_to_recoveryResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::undock_to_recoveryResult::OK);
        }
    }
}
//-----------------------------------------------------------------------------


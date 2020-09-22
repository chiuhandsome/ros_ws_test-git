#include <public_actions/pose_turn_to_recovery_ac.h>
//-----------------------------------------------------------------------------
pose_turn_to_rcvr_ac::pose_turn_to_rcvr_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            turn_to_rcvr_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
pose_turn_to_rcvr_ac::~pose_turn_to_rcvr_ac()
{
   
}
//-----------------------------------------------------------------------------
void pose_turn_to_rcvr_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::self_turn_to_recoveryResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void pose_turn_to_rcvr_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void pose_turn_to_rcvr_ac::feedbackCb(const robot_scheduling_msgs::self_turn_to_recoveryFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int pose_turn_to_rcvr_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::self_turn_to_recoveryResult::OK)));        

    if(just_1){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void pose_turn_to_rcvr_ac::do_pose_turn_to_rcvr_ac(const robot_scheduling_msgs::self_turn_to_recoveryGoal& goal)
{   
    ROS_INFO("do_pose_turn_to_rcvr_ac");
    //--- Wait for the action server
    while(!turn_to_rcvr_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    turn_to_rcvr_ac_.sendGoal(goal, boost::bind(&pose_turn_to_rcvr_ac::doneCb, this, _1 , _2),
                                    boost::bind(&pose_turn_to_rcvr_ac::activeCb, this), 
                                    boost::bind(&pose_turn_to_rcvr_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!turn_to_rcvr_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (turn_to_rcvr_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(turn_to_rcvr_ac_.getResult()->result == robot_scheduling_msgs::self_turn_to_recoveryResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::self_turn_to_recoveryResult::OK);
        }
    }
}
//-----------------------------------------------------------------------------


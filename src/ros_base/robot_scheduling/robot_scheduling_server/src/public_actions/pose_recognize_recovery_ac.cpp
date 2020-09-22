#include <public_actions/pose_recognize_recovery_ac.h>
//*****************************************************************************
//** class name: dock_pnp_actionclient for all dock'module                   ** 
//*****************************************************************************
//-----------------------------------------------------------------------------
pose_recognize_recovery_ac::pose_recognize_recovery_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                 recognize_recovery_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
pose_recognize_recovery_ac::~pose_recognize_recovery_ac()
{
   
}
//-----------------------------------------------------------------------------
void pose_recognize_recovery_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::pose_recognize_recoveryResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void pose_recognize_recovery_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void pose_recognize_recovery_ac::feedbackCb(const robot_scheduling_msgs::pose_recognize_recoveryFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int pose_recognize_recovery_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_recognize_recoveryResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_recognize_recoveryResult::NOT_OK));
    //bool just_3 = (condition == "timed_out") &&
    //              (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_recognize_recoveryResult::TIMED_OUT));

    if(just_1 || just_2){//} || just_3){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void pose_recognize_recovery_ac::do_pose_recognize_recovery(const robot_scheduling_msgs::pose_recognize_recoveryGoal& goal)
{
    //--- Wait for the action server
    while(!recognize_recovery_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    recognize_recovery_ac_.sendGoal(goal, 
                           boost::bind(&pose_recognize_recovery_ac::doneCb, this, _1 , _2),
                           boost::bind(&pose_recognize_recovery_ac::activeCb, this), 
                           boost::bind(&pose_recognize_recovery_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!recognize_recovery_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (recognize_recovery_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(recognize_recovery_ac_.getResult()->result == robot_scheduling_msgs::pose_recognize_recoveryResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_recognize_recoveryResult::OK);
            //parameter_->set_PoseRecognize_Recovery_state(action_result_OK);
        }
    }
    else{   // ABORTED       
        if(recognize_recovery_ac_.getResult()->result == robot_scheduling_msgs::pose_recognize_recoveryResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_recognize_recoveryResult::NOT_OK);
           //parameter_->set_PoseRecognize_Recovery_state(action_result_NOT_OK);
        }
        /*else if(recognize_recovery_ac_.getResult()->result == robot_scheduling_msgs::pose_recognize_recoveryResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_recognize_recoveryResult::TIMED_OUT);
           parameter_->set_PoseRecognize_Recovery_state(action_result_TIMED_OUT);
        }*/
    }
}
//-----------------------------------------------------------------------------


#include <private_actions/ctrl_state_recovery_ac.h>
//-----------------------------------------------------------------------------
ctrl_state_recovery_ac::ctrl_state_recovery_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            ctrl_state_rcvr_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
ctrl_state_recovery_ac::~ctrl_state_recovery_ac()
{
   
}
//-----------------------------------------------------------------------------
void ctrl_state_recovery_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::controller_state_recoveryResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void ctrl_state_recovery_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void ctrl_state_recovery_ac::feedbackCb(const robot_scheduling_msgs::controller_state_recoveryFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int ctrl_state_recovery_ac::evalCondition(std::string condition)
{  
    //ROS_INFO("ctrl_state_recovery_ac::evalCondition : %s",condition.c_str());
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::controller_state_recoveryResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::controller_state_recoveryResult::NOT_OK));
    bool just_3 = (condition == "timed_out") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::controller_state_recoveryResult::TIMED_OUT));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::controller_state_recoveryResult::OUT_OF_TIMES));

    if(just_1 || just_2 || just_3 || just_4 ){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    if(iRet == 1)
        ROS_INFO("condition ==> %s result ==> %d  eval_state_==> %d",condition.c_str(),iRet,eval_state_);
    return iRet ;
}
//-----------------------------------------------------------------------------
void ctrl_state_recovery_ac::do_ctrl_state_rcvr_ac(const robot_scheduling_msgs::controller_state_recoveryGoal& goal)
{
    //--- Wait for the action server
    while(!ctrl_state_rcvr_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    ctrl_state_rcvr_ac_.sendGoal(goal, boost::bind(&ctrl_state_recovery_ac::doneCb, this, _1 , _2),
                                    boost::bind(&ctrl_state_recovery_ac::activeCb, this), 
                                    boost::bind(&ctrl_state_recovery_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!ctrl_state_rcvr_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (ctrl_state_rcvr_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(ctrl_state_rcvr_ac_.getResult()->result == robot_scheduling_msgs::controller_state_recoveryResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::controller_state_recoveryResult::OK);
        }
    }
    else{   // ABORTED     
        if(ctrl_state_rcvr_ac_.getResult()->result == robot_scheduling_msgs::controller_state_recoveryResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::controller_state_recoveryResult::NOT_OK);
        }
        else if(ctrl_state_rcvr_ac_.getResult()->result == robot_scheduling_msgs::controller_state_recoveryResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::controller_state_recoveryResult::TIMED_OUT);
        }
        else if(ctrl_state_rcvr_ac_.getResult()->result == robot_scheduling_msgs::controller_state_recoveryResult::OUT_OF_TIMES){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::controller_state_recoveryResult::OUT_OF_TIMES);
        }
    }
}
//-----------------------------------------------------------------------------


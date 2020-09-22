#include <private_actions/power_charge_recovery_ac.h>
//-----------------------------------------------------------------------------
power_charge_rcvr_ac::power_charge_rcvr_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            power_charge_rcvr_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
power_charge_rcvr_ac::~power_charge_rcvr_ac()
{
   
}
//-----------------------------------------------------------------------------
void power_charge_rcvr_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::power_charge_recoveryResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void power_charge_rcvr_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void power_charge_rcvr_ac::feedbackCb(const robot_scheduling_msgs::power_charge_recoveryFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int power_charge_rcvr_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::power_charge_recoveryResult::OK)));        

    if(just_1){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void power_charge_rcvr_ac::do_power_charge_rcvr_ac(const robot_scheduling_msgs::power_charge_recoveryGoal& goal)
{
    //--- Wait for the action server
    while(!power_charge_rcvr_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    power_charge_rcvr_ac_.sendGoal(goal, boost::bind(&power_charge_rcvr_ac::doneCb, this, _1 , _2),
                                    boost::bind(&power_charge_rcvr_ac::activeCb, this), 
                                    boost::bind(&power_charge_rcvr_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!power_charge_rcvr_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (power_charge_rcvr_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(power_charge_rcvr_ac_.getResult()->result == robot_scheduling_msgs::power_charge_recoveryResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::power_charge_recoveryResult::OK);
        }
    }
}
//-----------------------------------------------------------------------------


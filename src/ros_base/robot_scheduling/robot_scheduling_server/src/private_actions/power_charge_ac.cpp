#include <private_actions/power_charge_ac.h>
//-----------------------------------------------------------------------------
power_charge_ac::power_charge_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            power_charge_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
power_charge_ac::~power_charge_ac()
{
   
}
//-----------------------------------------------------------------------------
void power_charge_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::power_chargeResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void power_charge_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void power_charge_ac::feedbackCb(const robot_scheduling_msgs::power_chargeFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int power_charge_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::power_chargeResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::power_chargeResult::NOT_OK));
    bool just_3 = (condition == "timed_out") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::power_chargeResult::TIMED_OUT));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::power_chargeResult::OUT_OF_TIMES));         

    if(just_1 || just_2 || just_3 || just_4){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void power_charge_ac::do_power_charge_ac(const robot_scheduling_msgs::power_chargeGoal& goal)
{
    //--- Wait for the action server
    while(!power_charge_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    power_charge_ac_.sendGoal(goal,  boost::bind(&power_charge_ac::doneCb, this, _1 , _2),
                                boost::bind(&power_charge_ac::activeCb, this), 
                                boost::bind(&power_charge_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!power_charge_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (power_charge_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(power_charge_ac_.getResult()->result == robot_scheduling_msgs::power_chargeResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::power_chargeResult::OK);
        }
    }
    else{   // ABORTED       
        if(power_charge_ac_.getResult()->result == robot_scheduling_msgs::power_chargeResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::power_chargeResult::NOT_OK);
        }
        else if(power_charge_ac_.getResult()->result == robot_scheduling_msgs::power_chargeResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::power_chargeResult::TIMED_OUT);
        }
        else if(power_charge_ac_.getResult()->result == robot_scheduling_msgs::power_chargeResult::OUT_OF_TIMES){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::power_chargeResult::OUT_OF_TIMES);
        }
    }
}
//-----------------------------------------------------------------------------


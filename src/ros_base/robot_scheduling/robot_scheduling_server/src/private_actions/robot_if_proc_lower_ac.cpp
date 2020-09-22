#include <private_actions/robot_if_proc_lower_ac.h>
//-----------------------------------------------------------------------------
robot_if_proc_lower_ac::robot_if_proc_lower_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                        if_proc_lower_ac_(ac_name,true)
{    
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
robot_if_proc_lower_ac::~robot_if_proc_lower_ac()
{
   
}
//-----------------------------------------------------------------------------
void robot_if_proc_lower_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::robot_interface_proc_lowerResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void robot_if_proc_lower_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void robot_if_proc_lower_ac::feedbackCb(const robot_scheduling_msgs::robot_interface_proc_lowerFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int robot_if_proc_lower_ac::evalCondition(std::string condition)
{  
    //ROS_INFO("condition_==> %s",condition.c_str());
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_proc_lowerResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_proc_lowerResult::NOT_OK));
    bool just_3 = ((condition == "timed_out") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_proc_lowerResult::TIMED_OUT)));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_proc_lowerResult::OUT_OF_TIMES));
    bool just_5 = (condition == "pass") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_proc_lowerResult::PASS));


    if(just_1 || just_2 || just_3 || just_4 || just_5){
        iRet = 1 ;    
        if(iRet == 1)
            ROS_INFO("[[robot_if_proc_lower_ac]] run_state condition ==> %s result ==> %d  eval_state_==> %d",condition.c_str(),iRet,eval_state_);
        eval_state_ = -1;
    }
    
    return iRet ;
}
//-----------------------------------------------------------------------------
void robot_if_proc_lower_ac::do_robot_interface_proc_lower(const robot_scheduling_msgs::robot_interface_proc_lowerGoal& goal)
{
    //--- Wait for the action server
    while(!if_proc_lower_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    ROS_INFO("do_robot_interface_proc_lower");
    //--- sending goal ----
    if_proc_lower_ac_.sendGoal(goal, 
                           boost::bind(&robot_if_proc_lower_ac::doneCb, this, _1 , _2),
                           boost::bind(&robot_if_proc_lower_ac::activeCb, this), 
                           boost::bind(&robot_if_proc_lower_ac::feedbackCb, this, _1));
    ROS_INFO("do_robot_interface_proc_lower123");
    //--- waiting for result ----
    while (!if_proc_lower_ac_.waitForResult(ros::Duration(1.0))){}
    ROS_INFO("do_robot_interface_proc_lower456");
    //--- get result (succeeded and abored )---
    if (if_proc_lower_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        ROS_INFO("SUCCEEDED");
        if(if_proc_lower_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_proc_lowerResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_proc_lowerResult::OK);
        }
        else if(if_proc_lower_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_proc_lowerResult::PASS){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_proc_lowerResult::PASS);
        }
    }
    else{   // ABORTED    
        ROS_INFO("ABORTED");   
        if(if_proc_lower_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_proc_lowerResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_proc_lowerResult::NOT_OK);
        }
        else if(if_proc_lower_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_proc_lowerResult::OUT_OF_TIMES){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_proc_lowerResult::OUT_OF_TIMES);
        }
    }
}
//-----------------------------------------------------------------------------


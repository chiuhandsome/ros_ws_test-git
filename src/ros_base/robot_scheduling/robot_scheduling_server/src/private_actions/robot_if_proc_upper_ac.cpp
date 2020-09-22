#include <private_actions/robot_if_proc_upper_ac.h>
//-----------------------------------------------------------------------------
robot_if_proc_upper_ac::robot_if_proc_upper_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                        if_proc_upper_ac_(ac_name,true)
{    
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
robot_if_proc_upper_ac::~robot_if_proc_upper_ac()
{
   
}
//-----------------------------------------------------------------------------
void robot_if_proc_upper_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::robot_interface_proc_upperResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void robot_if_proc_upper_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void robot_if_proc_upper_ac::feedbackCb(const robot_scheduling_msgs::robot_interface_proc_upperFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int robot_if_proc_upper_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_proc_upperResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_proc_upperResult::NOT_OK));
    bool just_3 = ((condition == "timed_out") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_proc_upperResult::TIMED_OUT)));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_proc_upperResult::OUT_OF_TIMES));
    bool just_5 = (condition == "pass") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_proc_upperResult::PASS));


    if(just_1 || just_2 || just_3 || just_4 || just_5){
        iRet = 1 ;    
        if(iRet == 1)
            ROS_INFO("[[robot_if_proc_upper_ac]] run_state condition ==> %s result ==> %d  eval_state_==> %d",condition.c_str(),iRet,eval_state_);
        eval_state_ = -1;
    }
    
    return iRet ;
}
//-----------------------------------------------------------------------------
void robot_if_proc_upper_ac::do_robot_interface_proc_upper(const robot_scheduling_msgs::robot_interface_proc_upperGoal& goal)
{
    //--- Wait for the action server
    while(!if_proc_upper_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    ROS_INFO("do_robot_interface_proc_upper");
    //--- sending goal ----
    if_proc_upper_ac_.sendGoal(goal, 
                           boost::bind(&robot_if_proc_upper_ac::doneCb, this, _1 , _2),
                           boost::bind(&robot_if_proc_upper_ac::activeCb, this), 
                           boost::bind(&robot_if_proc_upper_ac::feedbackCb, this, _1));
    ROS_INFO("do_robot_interface_proc_upper123");
    //--- waiting for result ----
    while (!if_proc_upper_ac_.waitForResult(ros::Duration(1.0))){}
    ROS_INFO("do_robot_interface_proc_upper456");
    //--- get result (succeeded and abored )---
    if (if_proc_upper_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        ROS_INFO("SUCCEEDED");
        if(if_proc_upper_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_proc_upperResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_proc_upperResult::OK);
        }
        else if(if_proc_upper_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_proc_upperResult::PASS){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_proc_upperResult::PASS);
        }
    }
    else{   // ABORTED    
        ROS_INFO("ABORTED");   
        if(if_proc_upper_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_proc_upperResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_proc_upperResult::NOT_OK);
        }
        else if(if_proc_upper_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_proc_upperResult::OUT_OF_TIMES){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_proc_upperResult::OUT_OF_TIMES);
        }
    }
}
//-----------------------------------------------------------------------------


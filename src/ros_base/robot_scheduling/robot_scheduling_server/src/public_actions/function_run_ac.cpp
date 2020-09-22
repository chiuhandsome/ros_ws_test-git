#include <public_actions/function_run_ac.h>
//-----------------------------------------------------------------------------
function_run_ac::function_run_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            function_run_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
function_run_ac::~function_run_ac()
{
   
}
//-----------------------------------------------------------------------------
void function_run_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::function_runResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void function_run_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void function_run_ac::feedbackCb(const robot_scheduling_msgs::function_runFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int function_run_ac::evalCondition(std::string condition)
{  
    //ROS_INFO("condition :%s",condition.c_str());
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::function_runResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::function_runResult::NOT_OK));
    bool just_3 = (condition == "timed_out") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::function_runResult::TIMED_OUT));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::function_runResult::OUT_OF_TIMES));
    bool just_5 = (condition == "not_function_id") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::function_runResult::NOT_FUNCTION_ID));  

    if(just_1 || just_2 || just_3 || just_4 || just_5){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void function_run_ac::do_function_run_ac(const robot_scheduling_msgs::function_runGoal& goal)
{
    //ROS_INFO(goal.worksheetrun_ac_name.c_str());
    //--- Wait for the action server
    while(!function_run_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    ROS_INFO(goal.cmd_data.c_str());
    function_run_ac_.sendGoal(goal,boost::bind(&function_run_ac::doneCb, this, _1 , _2),
                                 boost::bind(&function_run_ac::activeCb, this), 
                                 boost::bind(&function_run_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!function_run_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (function_run_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(function_run_ac_.getResult()->result == robot_scheduling_msgs::function_runResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::function_runResult::OK);
        }
    }
    else{   // ABORTED       
        if(function_run_ac_.getResult()->result == robot_scheduling_msgs::function_runResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::function_runResult::NOT_OK);
        }
        else if(function_run_ac_.getResult()->result == robot_scheduling_msgs::function_runResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::function_runResult::TIMED_OUT);
        }
        else if(function_run_ac_.getResult()->result == robot_scheduling_msgs::function_runResult::OUT_OF_TIMES){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::function_runResult::OUT_OF_TIMES);
        }
        else if(function_run_ac_.getResult()->result == robot_scheduling_msgs::function_runResult::NOT_FUNCTION_ID){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::function_runResult::NOT_FUNCTION_ID);
        }
    }
}
//-----------------------------------------------------------------------------


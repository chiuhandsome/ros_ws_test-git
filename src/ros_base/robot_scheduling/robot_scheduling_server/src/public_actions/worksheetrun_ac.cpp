#include <public_actions/worksheetrun_ac.h>
//-----------------------------------------------------------------------------
worksheetrun_ac::worksheetrun_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            worksheetrun_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
worksheetrun_ac::~worksheetrun_ac()
{
   
}
//-----------------------------------------------------------------------------
void worksheetrun_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::worksheetrunResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void worksheetrun_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void worksheetrun_ac::feedbackCb(const robot_scheduling_msgs::worksheetrunFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int worksheetrun_ac::evalCondition(std::string condition)
{  
    //ROS_INFO("condition :%s",condition.c_str());
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::worksheetrunResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::worksheetrunResult::NOT_OK));
    bool just_3 = (condition == "timed_out") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::worksheetrunResult::TIMED_OUT));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::worksheetrunResult::OUT_OF_TIMES));
    bool just_5 = (condition == "pass") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::worksheetrunResult::PASS));   
    bool just_6 = (condition == "not_finish") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::worksheetrunResult::NOT_FINISH));       

    if(just_1 || just_2 || just_3 || just_4 || just_5 || just_6){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void worksheetrun_ac::do_worksheetrun_ac(const robot_scheduling_msgs::worksheetrunGoal& goal)
{
    //ROS_INFO(goal.worksheetrun_ac_name.c_str());
    //--- Wait for the action server
    while(!worksheetrun_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    ROS_INFO(goal.cmd_data.c_str());
    worksheetrun_ac_.sendGoal(goal,boost::bind(&worksheetrun_ac::doneCb, this, _1 , _2),
                                 boost::bind(&worksheetrun_ac::activeCb, this), 
                                 boost::bind(&worksheetrun_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!worksheetrun_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (worksheetrun_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(worksheetrun_ac_.getResult()->result == robot_scheduling_msgs::worksheetrunResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::worksheetrunResult::OK);
        }
        else if(worksheetrun_ac_.getResult()->result == robot_scheduling_msgs::worksheetrunResult::PASS){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::worksheetrunResult::PASS);
        }
        else if(worksheetrun_ac_.getResult()->result == robot_scheduling_msgs::worksheetrunResult::NOT_FINISH){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::worksheetrunResult::NOT_FINISH);
        }
    }
    else{   // ABORTED       
        if(worksheetrun_ac_.getResult()->result == robot_scheduling_msgs::worksheetrunResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::worksheetrunResult::NOT_OK);
        }
        else if(worksheetrun_ac_.getResult()->result == robot_scheduling_msgs::worksheetrunResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::worksheetrunResult::TIMED_OUT);
        }
        else if(worksheetrun_ac_.getResult()->result == robot_scheduling_msgs::worksheetrunResult::OUT_OF_TIMES){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::worksheetrunResult::OUT_OF_TIMES);
        }
    }
}
//-----------------------------------------------------------------------------


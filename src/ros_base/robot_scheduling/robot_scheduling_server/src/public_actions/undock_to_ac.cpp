#include <public_actions/undock_to_ac.h>
//-----------------------------------------------------------------------------
undock_to_ac::undock_to_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            undock_to_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
undock_to_ac::~undock_to_ac()
{
   
}
//-----------------------------------------------------------------------------
void undock_to_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::undock_toResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void undock_to_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void undock_to_ac::feedbackCb(const robot_scheduling_msgs::undock_toFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int undock_to_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::undock_toResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::undock_toResult::NOT_OK));
    bool just_3 = (condition == "timed_out") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::undock_toResult::TIMED_OUT));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::undock_toResult::OUT_OF_TIMES));
    bool just_5 = (condition == "not_preundock_id") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::undock_toResult::NOT_PREUNDOCK_ID));              

    if(just_1 || just_2 || just_3 || just_4 || just_5){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void undock_to_ac::do_undock_to_ac(const robot_scheduling_msgs::undock_toGoal& goal)
{
   //ROS_INFO("do_undock_to_ac");
    //--- Wait for the action server
    while(!undock_to_ac_.waitForServer(ros::Duration(2.0))){
        ROS_INFO("Waiting for power_undock action server to come up");
    }
    //ROS_INFO("do_undock_to_ac222");
    //--- sending goal ----
    undock_to_ac_.sendGoal(goal,  boost::bind(&undock_to_ac::doneCb, this, _1 , _2),
                                boost::bind(&undock_to_ac::activeCb, this), 
                                boost::bind(&undock_to_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    //ROS_INFO("do_undock_to_ac333");
    while (!undock_to_ac_.waitForResult(ros::Duration(1.0))){}
    //ROS_INFO("do_undock_to_ac444");
    //--- get result (succeeded and abored )---
    if (undock_to_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        ROS_INFO("actionlib::SimpleClientGoalState::SUCCEEDED");
        if(undock_to_ac_.getResult()->result == robot_scheduling_msgs::undock_toResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::undock_toResult::OK);
        }
    }
    else{   // ABORTED       
        ROS_INFO("ABORTED");
        if(undock_to_ac_.getResult()->result == robot_scheduling_msgs::undock_toResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::undock_toResult::NOT_OK);
        }
        else if(undock_to_ac_.getResult()->result == robot_scheduling_msgs::undock_toResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::undock_toResult::TIMED_OUT);
        }
        else if(undock_to_ac_.getResult()->result == robot_scheduling_msgs::undock_toResult::OUT_OF_TIMES){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::undock_toResult::OUT_OF_TIMES);
        }
        else if(undock_to_ac_.getResult()->result == robot_scheduling_msgs::undock_toResult::NOT_PREUNDOCK_ID){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::undock_toResult::NOT_PREUNDOCK_ID);
        }
    }
}
//-----------------------------------------------------------------------------


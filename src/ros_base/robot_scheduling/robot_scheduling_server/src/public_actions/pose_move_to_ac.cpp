#include <public_actions/pose_move_to_ac.h>
//-----------------------------------------------------------------------------
pose_move_to_ac::pose_move_to_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            move_to_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
pose_move_to_ac::~pose_move_to_ac()
{
   
}
//-----------------------------------------------------------------------------
void pose_move_to_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::pose_move_toResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void pose_move_to_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void pose_move_to_ac::feedbackCb(const robot_scheduling_msgs::pose_move_toFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int pose_move_to_ac::evalCondition(std::string condition)
{  
    //ROS_INFO("Move ==>%s",condition.c_str());
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_move_toResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_move_toResult::NOT_OK));
    bool just_3 = (condition == "timed_out") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_move_toResult::TIMED_OUT));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_move_toResult::OUT_OF_TIMES));
    bool just_5 = (condition == "not_pose_id") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_move_toResult::NOT_POSE_ID));              

    if(just_1 || just_2 || just_3 || just_4 || just_5){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void pose_move_to_ac::do_pose_move_to_ac(const robot_scheduling_msgs::pose_move_toGoal& goal)
{
    //--- Wait for the action server
    while(!move_to_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    move_to_ac_.sendGoal(goal,  boost::bind(&pose_move_to_ac::doneCb, this, _1 , _2),
                                boost::bind(&pose_move_to_ac::activeCb, this), 
                                boost::bind(&pose_move_to_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!move_to_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (move_to_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(move_to_ac_.getResult()->result == robot_scheduling_msgs::pose_move_toResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_move_toResult::OK);
        }
    }
    else{   // ABORTED       
        if(move_to_ac_.getResult()->result == robot_scheduling_msgs::pose_move_toResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_move_toResult::NOT_OK);
        }
        else if(move_to_ac_.getResult()->result == robot_scheduling_msgs::pose_move_toResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_move_toResult::TIMED_OUT);
        }
        else if(move_to_ac_.getResult()->result == robot_scheduling_msgs::pose_move_toResult::OUT_OF_TIMES){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_move_toResult::OUT_OF_TIMES);
        }
        else if(move_to_ac_.getResult()->result == robot_scheduling_msgs::pose_move_toResult::NOT_POSE_ID){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_move_toResult::NOT_POSE_ID);
        }
    }
}
//-----------------------------------------------------------------------------


#include <public_actions/pose_turn_to_ac.h>
//-----------------------------------------------------------------------------
pose_turn_to_ac::pose_turn_to_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            turn_to_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
    ROS_INFO("ac_name:%s",ac_name.c_str());
}
//-----------------------------------------------------------------------------
pose_turn_to_ac::~pose_turn_to_ac()
{
   
}
//-----------------------------------------------------------------------------
void pose_turn_to_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::self_turn_toResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void pose_turn_to_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void pose_turn_to_ac::feedbackCb(const robot_scheduling_msgs::self_turn_toFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int pose_turn_to_ac::evalCondition(std::string condition)
{  
    //ROS_INFO_STREAM("pose_turn_to_ac Evaluating condition:"<< condition);
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::self_turn_toResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::self_turn_toResult::NOT_OK));
    bool just_3 = (condition == "timed_out") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::self_turn_toResult::TIMED_OUT));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::self_turn_toResult::OUT_OF_TIMES));
    bool just_5 = (condition == "not_pose_map") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::self_turn_toResult::NOT_POSE_MAP)); 
    bool just_6 = (condition == "not_paramschk_id") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::self_turn_toResult::NOT_PARAMSCHK_ID)); 
    bool just_7 = (condition == "not_pid_id") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::self_turn_toResult::NOT_PID_ID));                                

    if(just_1 || just_2 || just_3 || just_4 || just_5 || just_6 || just_7){
        iRet = 1 ;    
        eval_state_ = -1;
    }  
    //ROS_INFO("iRet:%d",iRet);
    return iRet ;
}
//-----------------------------------------------------------------------------
void pose_turn_to_ac::do_pose_turn_to_ac(const robot_scheduling_msgs::self_turn_toGoal& goal)
{
    //--- Wait for the action server
    while(!turn_to_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    turn_to_ac_.sendGoal(goal,  boost::bind(&pose_turn_to_ac::doneCb, this, _1 , _2),
                                boost::bind(&pose_turn_to_ac::activeCb, this), 
                                boost::bind(&pose_turn_to_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!turn_to_ac_.waitForResult(ros::Duration(1.0))){}
    ROS_INFO("waiting for result");
    //--- get result (succeeded and abored )---
    if (turn_to_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(turn_to_ac_.getResult()->result == robot_scheduling_msgs::self_turn_toResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::self_turn_toResult::OK);
        }
    }
    else{   // ABORTED      
        robot_scheduling_msgs::self_turn_toResultConstPtr _result = turn_to_ac_.getResult(); 
        if(_result->result == robot_scheduling_msgs::self_turn_toResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::self_turn_toResult::NOT_OK);
           ROS_INFO("robot_scheduling_msgs::self_turn_toResult::NOT_OK");
        }
        else if(_result->result == robot_scheduling_msgs::self_turn_toResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::self_turn_toResult::TIMED_OUT);
           ROS_INFO("robot_scheduling_msgs::self_turn_toResult::TIMED_OUT");
        }
        else if(_result->result == robot_scheduling_msgs::self_turn_toResult::OUT_OF_TIMES){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::self_turn_toResult::OUT_OF_TIMES);
        }
        else if(_result->result == robot_scheduling_msgs::self_turn_toResult::NOT_POSE_MAP){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::self_turn_toResult::NOT_POSE_MAP);
        }
    }
    ROS_INFO("eval_state_:%d",eval_state_);
}
//-----------------------------------------------------------------------------


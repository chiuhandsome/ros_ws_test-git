#include <public_actions/pose_recognize_ac.h>
//*****************************************************************************
//** class name: dock_pnp_actionclient for all dock'module                   ** 
//*****************************************************************************
//-----------------------------------------------------------------------------
pose_recognize_ac::pose_recognize_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            recognize_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
pose_recognize_ac::~pose_recognize_ac()
{
   
}
//-----------------------------------------------------------------------------
void pose_recognize_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::pose_recognizeResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void pose_recognize_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void pose_recognize_ac::feedbackCb(const robot_scheduling_msgs::pose_recognizeFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int pose_recognize_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_recognizeResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_recognizeResult::NOT_OK));
    bool just_3 = (condition == "timed_out") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_recognizeResult::TIMED_OUT));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::pose_recognizeResult::OUT_OF_TIMES));

    if(just_1 || just_2 || just_3 || just_4){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void pose_recognize_ac::do_pose_recognize(const robot_scheduling_msgs::pose_recognizeGoal& goal)
{
    //--- Wait for the action server
    while(!recognize_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    recognize_ac_.sendGoal(goal, 
                           boost::bind(&pose_recognize_ac::doneCb, this, _1 , _2),
                           boost::bind(&pose_recognize_ac::activeCb, this), 
                           boost::bind(&pose_recognize_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!recognize_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (recognize_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(recognize_ac_.getResult()->result == robot_scheduling_msgs::pose_recognizeResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_recognizeResult::OK);
            //parameter_->set_PoseRecognize_CurrentTime(0) ;
            //parameter_->set_PoseRecognize_Recovery_state(action_result_NONE) ;
        }
    }
    else{   // ABORTED       
        if(recognize_ac_.getResult()->result == robot_scheduling_msgs::pose_recognizeResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_recognizeResult::NOT_OK);
           //parameter_->set_PoseRecognize_CurrentTime(parameter_->get_PoseRecognize_CurrentTime()+1) ;
           //parameter_->set_PoseRecognize_Recovery_state(action_result_NOT_OK) ;
        }
        else if(recognize_ac_.getResult()->result == robot_scheduling_msgs::pose_recognizeResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_recognizeResult::TIMED_OUT);
           //parameter_->set_PoseRecognize_CurrentTime(parameter_->get_PoseRecognize_CurrentTime()+1) ;
           //parameter_->set_PoseRecognize_Recovery_state(action_result_TIMED_OUT) ;
        }
        else if(recognize_ac_.getResult()->result == robot_scheduling_msgs::pose_recognizeResult::OUT_OF_TIMES){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::pose_recognizeResult::OUT_OF_TIMES);
           //parameter_->set_PoseRecognize_Recovery_state(action_result_OUTOFTIMES) ;
        }
    }
}
//-----------------------------------------------------------------------------


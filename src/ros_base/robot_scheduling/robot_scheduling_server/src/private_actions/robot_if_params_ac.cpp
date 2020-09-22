#include <private_actions/robot_if_params_ac.h>
//-----------------------------------------------------------------------------
robot_if_params_ac::robot_if_params_ac(ros::NodeHandle& nh,std::string ac_name):nh_(nh),
                                        if_params_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
robot_if_params_ac::~robot_if_params_ac()
{
   
}
//-----------------------------------------------------------------------------
void robot_if_params_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::robot_interface_paramsResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void robot_if_params_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void robot_if_params_ac::feedbackCb(const robot_scheduling_msgs::robot_interface_paramsFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int robot_if_params_ac::evalCondition(std::string condition)
{  
    //ROS_INFO("condition==>%s",condition.c_str());
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::NOT_OK));
    bool just_3 = (condition == "pass") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::PASS));
    bool just_4 = (condition == "status") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::STATUS));
    bool just_5 = (condition == "alarm") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::ALARM));
    bool just_6 = (condition == "wait") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_WAIT));
    bool just_7 = (condition == "turn") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_TURN));
    bool just_8 = (condition == "dock") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_DOCK));
    bool just_9 = (condition == "udock") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_UNDOCK));

    if(just_1 || just_2 || just_3 || just_4 || just_5 || just_6 || just_7 || just_8 || just_9){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    if(iRet == 1)
        ROS_INFO("command condition ==> %s result ==> %d  eval_state_==> %d",condition.c_str(),iRet,eval_state_);

    return iRet ;
}
//-----------------------------------------------------------------------------
void robot_if_params_ac::do_robot_interface_params(const robot_scheduling_msgs::robot_interface_paramsGoal& goal)
{
    //--- Wait for the action server
    while(!if_params_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    if_params_ac_.sendGoal(goal, 
                           boost::bind(&robot_if_params_ac::doneCb, this, _1 , _2),
                           boost::bind(&robot_if_params_ac::activeCb, this), 
                           boost::bind(&robot_if_params_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!if_params_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (if_params_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(if_params_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_paramsResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::OK);
        }
        else if(if_params_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_paramsResult::PASS){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::PASS);
        }
        else if(if_params_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_paramsResult::STATUS){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::STATUS);
        }
        else if(if_params_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_paramsResult::ALARM){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::ALARM);
        }
        else if(if_params_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_WAIT){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_WAIT);
        }
        else if(if_params_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_TURN){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_TURN);
        }
        else if(if_params_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_DOCK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_DOCK);
        }
        else if(if_params_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_UNDOCK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_UNDOCK);
        }
    }
    else{   // ABORTED       
        if(if_params_ac_.getResult()->result == robot_scheduling_msgs::robot_interface_paramsResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_interface_paramsResult::NOT_OK);
        }
    }
}
//-----------------------------------------------------------------------------


#include <private_actions/robot_command_ac.h>
//-----------------------------------------------------------------------------
robot_command_ac::robot_command_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                        command_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
robot_command_ac::~robot_command_ac()
{
   
}
//-----------------------------------------------------------------------------
void robot_command_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::robot_commandResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void robot_command_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void robot_command_ac::feedbackCb(const robot_scheduling_msgs::robot_commandFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int robot_command_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_commandResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_commandResult::NOT_OK));
    bool just_3 = (condition == "timed_out") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_commandResult::TIMED_OUT));

    if(just_1 || just_2 || just_3){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    if(iRet == 1)
        ROS_INFO("command condition ==> %s result ==> %d  eval_state_==> %d",condition.c_str(),iRet,eval_state_);

    return iRet ;
}
//-----------------------------------------------------------------------------
void robot_command_ac::do_robot_command(const robot_scheduling_msgs::robot_commandGoal& goal)
{
    //--- Wait for the action server
    while(!command_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    command_ac_.sendGoal(goal, 
                           boost::bind(&robot_command_ac::doneCb, this, _1 , _2),
                           boost::bind(&robot_command_ac::activeCb, this), 
                           boost::bind(&robot_command_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!command_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (command_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(command_ac_.getResult()->result == robot_scheduling_msgs::robot_commandResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_commandResult::OK);
        }
        else if(command_ac_.getResult()->result == robot_scheduling_msgs::robot_commandResult::NOT_OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_commandResult::NOT_OK);
        }
    }
    else{   // ABORTED       
        if(command_ac_.getResult()->result == robot_scheduling_msgs::robot_commandResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_commandResult::NOT_OK);
        }
        else if(command_ac_.getResult()->result == robot_scheduling_msgs::robot_commandResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_commandResult::TIMED_OUT);
        }
    }
}
//-----------------------------------------------------------------------------


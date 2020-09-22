#include <public_actions/db_process_ac.h>
//-----------------------------------------------------------------------------
db_process_ac::db_process_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            db_process_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
db_process_ac::~db_process_ac()
{
   
}
//-----------------------------------------------------------------------------
void db_process_ac::set_robot_scheduling_pnp_params(robot_scheduling_pnp_params* pnp_params)
{
    _pnp_params = pnp_params ;
}
//-----------------------------------------------------------------------------
void db_process_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::db_processResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void db_process_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void db_process_ac::feedbackCb(const robot_scheduling_msgs::db_processFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int db_process_ac::evalCondition(std::string condition)
{  
    //ROS_INFO("condition :%s",condition.c_str());
    //ROS_INFO("eval_state_ :%d",eval_state_);
    int iRet = 0 ;

    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::db_processResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::db_processResult::NOT_OK));
    bool just_3 = (condition == "timed_out") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::db_processResult::TIMED_OUT));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::db_processResult::OUT_OF_TIMES));
    bool just_5 = (condition == "param_error") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::db_processResult::PARAM_ERROR));    

    //ROS_INFO("eval_state_ == static_cast<int>(robot_scheduling_msgs::db_processResult::OK) :%d",eval_state_);          

    if(just_1 || just_2 || just_3 || just_4 || just_5){
        iRet = 1 ;    
        if(iRet == 1)
            ROS_INFO("[[db_process_ac]] run_state condition ==> %s result ==> %d  eval_state_==> %d",condition.c_str(),iRet,eval_state_);
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void db_process_ac::do_db_process_ac(const robot_scheduling_msgs::db_processGoal& goal)
{
    ROS_INFO(goal.db_process_ac_name.c_str());
    //("==================================goal:%d",(int)goal.cmd_id);
    //--- Wait for the action server
    while(!db_process_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    ROS_INFO(goal.cmd_data.c_str());
    db_process_ac_.sendGoal(goal,boost::bind(&db_process_ac::doneCb, this, _1 , _2),
                                 boost::bind(&db_process_ac::activeCb, this), 
                                 boost::bind(&db_process_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!db_process_ac_.waitForResult(ros::Duration(1.0))){}
    //ROS_INFO("==================================while (!db_process_ac_.waitForResult(ros::Duration(1.0))){}");
    //--- get result (succeeded and abored )---
    if (db_process_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(db_process_ac_.getResult()->result == robot_scheduling_msgs::db_processResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::db_processResult::OK);
        }
        else if(db_process_ac_.getResult()->result == robot_scheduling_msgs::db_processResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::db_processResult::NOT_OK);
        }
    }
    else{   // ABORTED       
        if(db_process_ac_.getResult()->result == robot_scheduling_msgs::db_processResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::db_processResult::NOT_OK);
        }
        else if(db_process_ac_.getResult()->result == robot_scheduling_msgs::db_processResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::db_processResult::TIMED_OUT);
        }
        else if(db_process_ac_.getResult()->result == robot_scheduling_msgs::db_processResult::OUT_OF_TIMES){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::db_processResult::OUT_OF_TIMES);
        }
        else if(db_process_ac_.getResult()->result == robot_scheduling_msgs::db_processResult::PARAM_ERROR){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::db_processResult::PARAM_ERROR);
        }
    }
    //db_process_ac_.cancelAllGoals();
}
//-----------------------------------------------------------------------------


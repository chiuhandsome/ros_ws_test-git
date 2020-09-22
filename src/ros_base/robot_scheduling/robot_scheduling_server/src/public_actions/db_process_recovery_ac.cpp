#include <public_actions/db_process_recovery_ac.h>
//-----------------------------------------------------------------------------
db_process_rcvr_ac::db_process_rcvr_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                            db_process_rcvr_ac_(ac_name,true)
{ 
    //parameter_ = parameter ;
    //-- evalCondition state -----
    eval_state_  = -1 ;    
}
//-----------------------------------------------------------------------------
db_process_rcvr_ac::~db_process_rcvr_ac()
{
   
}
//-----------------------------------------------------------------------------
void db_process_rcvr_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::db_process_recoveryResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void db_process_rcvr_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void db_process_rcvr_ac::feedbackCb(const robot_scheduling_msgs::db_process_recoveryFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int db_process_rcvr_ac::evalCondition(std::string condition)
{  
    int iRet = 0 ;
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::db_process_recoveryResult::OK)));        

    if(just_1){
        iRet = 1 ;    
        eval_state_ = -1;
    }  

    return iRet ;
}
//-----------------------------------------------------------------------------
void db_process_rcvr_ac::do_db_process_rcvr_ac(const robot_scheduling_msgs::db_process_recoveryGoal& goal)
{
    //--- Wait for the action server
    while(!db_process_rcvr_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //--- sending goal ----
    db_process_rcvr_ac_.sendGoal(goal,boost::bind(&db_process_rcvr_ac::doneCb, this, _1 , _2),
                                      boost::bind(&db_process_rcvr_ac::activeCb, this), 
                                      boost::bind(&db_process_rcvr_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!db_process_rcvr_ac_.waitForResult(ros::Duration(1.0))){}
    //--- get result (succeeded and abored )---
    if (db_process_rcvr_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if(db_process_rcvr_ac_.getResult()->result == robot_scheduling_msgs::db_process_recoveryResult::OK){
            eval_state_ = static_cast<int>(robot_scheduling_msgs::db_process_recoveryResult::OK);
        }
    }
}
//-----------------------------------------------------------------------------


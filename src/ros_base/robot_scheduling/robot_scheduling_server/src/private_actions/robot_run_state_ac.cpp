#include <private_actions/robot_run_state_ac.h>
//-----------------------------------------------------------------------------
robot_run_state_ac::robot_run_state_ac(ros::NodeHandle& nh,std::string ac_name) :nh_(nh),
                                run_state_ac_(ac_name,true)
{ 
    ROS_INFO("robot_run_state_ac name:%s",ac_name.c_str());
    //-- evalCondition state -----
    eval_state_  = -1 ;    
    //bFinished = false ;
}
//-----------------------------------------------------------------------------
robot_run_state_ac::~robot_run_state_ac()
{
   
}
//-----------------------------------------------------------------------------
void robot_run_state_ac::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::robot_run_stateResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void robot_run_state_ac::activeCb()
{
}
//-----------------------------------------------------------------------------
void robot_run_state_ac::feedbackCb(const robot_scheduling_msgs::robot_run_stateFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
int robot_run_state_ac::evalCondition(std::string condition)
{  
    //ROS_INFO("state condition ==> %s   eval_state_==>%d",condition.c_str(),eval_state_);
    int iRet = 0 ;
    //--------------------------------------------------------
    bool just_1 = ((condition == "ok") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::OK)));
    bool just_2 = (condition == "not_ok") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::NOT_OK));
    bool just_3 = (condition == "timed_out") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::TIMED_OUT));
    bool just_4 = (condition == "out_of_times") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::OUT_OF_TIMES));
    bool just_5 = ((condition == "none") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::NONE)));
    bool just_6 = (condition == "unknow") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::UNKNOW));
    bool just_7 = (condition == "awarded") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::AWARED));
    bool just_8 = (condition == "standby") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::STANDBY));
    bool just_9 = ((condition == "manual") &&
                   (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::MANUAL)));
    bool just_10 = (condition == "remote") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::REMOTE));
    bool just_11 = (condition == "alarm") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::ALARM));
    bool just_12 = (condition == "pause") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::PAUSE));
    bool just_13 = (condition == "not_alarm") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::NOT_ALARM));   
    bool just_14 = (condition == "pass") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::PASS));    
    bool just_15 = (condition == "change") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::CHANGE));       
    bool just_16 = (condition == "not_change") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::NOT_CHANGE));  
    bool just_17 = (condition == "m_none") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_NONE));
    bool just_18 = (condition == "m_plan_to_exec") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_PLANTOEXEC));
    bool just_19 = (condition == "m_moveint") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_MOVEINT));   
    bool just_20 = (condition == "m_move") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_MOVE));    
    bool just_21 = (condition == "m_turn") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_TURN));       
    bool just_22 = (condition == "m_worksheet") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_WORKSHEET)); 

    bool just_23 = (condition == "r_none") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::R_NONE));
    bool just_24 = (condition == "r_worksheet") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::R_WORKSHEET));

    bool just_25 = (condition == "rcvr_none") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::RECR_NONE));
    bool just_26 = (condition == "rcvr_plan_to_exec") &&
                  (eval_state_ == static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::RECR_PLANTOEXEC));

    if(just_1 || just_2 || just_3 || just_4 || just_5 || just_6 ||just_7 || just_8 || just_9 ||just_10 || 
       just_11 || just_12 || just_13 || just_14 || just_15 || just_16 || just_17 || just_18 || just_19 || 
       just_20 || just_21 || just_22 || just_23 || just_24 || just_25 || just_26){
        iRet = 1 ;    
        if(iRet == 1)
            ROS_INFO("[[robot_run_state_ac]] run_state condition ==> %s result ==> %d  eval_state_==> %d",condition.c_str(),iRet,eval_state_);
        eval_state_ = -1;
    }  
    
    return iRet ;
}
//-----------------------------------------------------------------------------
void robot_run_state_ac::do_robot_run_state(const robot_scheduling_msgs::robot_run_stateGoal& goal)
{
    //--- Wait for the action server
    while(!run_state_ac_.waitForServer(ros::Duration(5.0))){
        ROS_INFO("Waiting for robot_run_state action server to come up");
    }
    //--- sending goal ----
    ROS_INFO("sendGoal");
    run_state_ac_.sendGoal(goal, 
                           boost::bind(&robot_run_state_ac::doneCb, this, _1 , _2),
                           boost::bind(&robot_run_state_ac::activeCb, this), 
                           boost::bind(&robot_run_state_ac::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!run_state_ac_.waitForResult(ros::Duration(3.0))){ROS_INFO("Waiting ....");}
    ROS_INFO("sendGoal finish");
    //--- get result (succeeded and abored )---
    ROS_INFO("goal.command==>%d",goal.command);
    if (run_state_ac_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
        if((goal.command == robot_scheduling_msgs::robot_run_stateGoal::GETALL) ||
           (goal.command == robot_scheduling_msgs::robot_run_stateGoal::PRE_GETALL)){
            //ROS_INFO("do_robot_run_state:%d",run_state_ac_.getResult()->result);
            if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::NONE){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::NONE);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::UNKNOW){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::UNKNOW);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::AWARED){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::AWARED);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::STANDBY){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::STANDBY);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::MANUAL){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::MANUAL);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::REMOTE){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::REMOTE);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::ALARM){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::ALARM);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::PAUSE){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::PAUSE);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::NOT_OK){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::NOT_OK);
            }

        }
        else if(goal.command == robot_scheduling_msgs::robot_run_stateGoal::MANU_GETALL){
            if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::M_NONE){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_NONE);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::M_PLANTOEXEC){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_PLANTOEXEC);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::M_MOVEINT){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_MOVEINT);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::M_MOVE){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_MOVE);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::M_TURN){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_TURN);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::M_WORKSHEET){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::M_WORKSHEET);
            }
        }
        else if(goal.command == robot_scheduling_msgs::robot_run_stateGoal::REMOTE_GETALL){
            if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::R_NONE){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::R_NONE);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::R_WORKSHEET){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::R_WORKSHEET);
            }
        }
        else if(goal.command == robot_scheduling_msgs::robot_run_stateGoal::ALARM_RECOVERY_GETALL){
            if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::RECR_NONE){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::RECR_NONE);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::RECR_PLANTOEXEC){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::RECR_PLANTOEXEC);
            }
        }
        else{ 
            if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::OK){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::OK);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::NOT_OK){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::NOT_OK);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::TIMED_OUT){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::TIMED_OUT);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::OUT_OF_TIMES){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::OUT_OF_TIMES);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::ALARM){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::ALARM);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::NOT_ALARM){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::NOT_ALARM);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::PASS){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::PASS);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::CHANGE){
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::CHANGE);
            }
            else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::NOT_CHANGE){
                ROS_INFO("robot_scheduling_msgs::robot_run_stateResult::NOT_CHANGE");
                eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::NOT_CHANGE);
            }
        }
    }
    else{   // ABORTED    
        ROS_INFO("goal.command123==>%d",goal.command);
        if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::NOT_OK){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::NOT_OK);
        }
        else if(run_state_ac_.getResult()->result == robot_scheduling_msgs::robot_run_stateResult::TIMED_OUT){
           eval_state_ = static_cast<int>(robot_scheduling_msgs::robot_run_stateResult::TIMED_OUT);
        }
    }
    //--------------------
    //bFinished = (eval_state_ >=0) ;
}
//-----------------------------------------------------------------------------


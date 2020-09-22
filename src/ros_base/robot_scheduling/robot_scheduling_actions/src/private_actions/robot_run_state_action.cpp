#include <private_actions/robot_run_state_action.h>
#include <thread>
#include <ros_utility_tools/ros_tools.h>
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
robot_run_state_action::robot_run_state_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as):
                        nh_(nh),//name_as_123(name_as),name_rcvr_as_(name_rcvr_as),
                        run_state_as(nh_,name_as, boost::bind(&robot_run_state_action::run_state_CB, this, _1), false),
                        ctrl_state_rcvr_as(nh_,name_rcvr_as, boost::bind(&robot_run_state_action::ctrl_state_rcvr_CB, this, _1), false),
                        db_process_ac_("robot_db_process",true)
{ 
    
    ROS_INFO("run_state_as.start()");
    run_state_as.start();
    ROS_INFO("ctrl_state_rcvr_as.start()");
    ctrl_state_rcvr_as.start();
    //-------------------
    //name_as_ = name_as ;
    //name_rcvr_as_ = name_rcvr_as ;
    _Recovery_current_time = 0 ;
}    
//-----------------------------------------------------------------------------
robot_run_state_action::~robot_run_state_action()
{
    
}
//-----------------------------------------------------------------------------
void robot_run_state_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;
}
//-----------------------------------------------------------------------------
void robot_run_state_action::set_robot_scheduling_service(robot_scheduling_service* service)
{
    scheduling_service_ = service ;
}
//-----------------------------------------------------------------------------
void robot_run_state_action::get_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    runstatus_type _status = parameter_->get_system_status(); 
    robot_scheduling_msgs::robot_run_stateResult _result;     
    if(goal->set_status == runstatus_alarm){
        _result.result = parameter_->get_system_alarm() ? robot_scheduling_msgs::robot_run_stateResult::ALARM :
                                                            robot_scheduling_msgs::robot_run_stateResult::NOT_ALARM;
    } 
    else if(goal->set_status == runstatus_basectrl){
        int call_type = robot_scheduling_msgs::lower_if_command::Request::GET_STATUS ;
        int call_id = robot_scheduling_msgs::lower_if_command::Request::STATUS ;
        std::string call_data = "" ; 
        //ROS_INFO("call_service_to_base_ctrl"); 
        scheduling_service_->call_service_to_base_ctrl(call_type,call_id,call_data);
        //ROS_INFO("call_service_to_base_ctrl finished"); 
        _result.result = parameter_->get_base_ctrl_connected() ? robot_scheduling_msgs::robot_run_stateResult::OK :
                                                                    robot_scheduling_msgs::robot_run_stateResult::PASS;
    } 
    else if(goal->set_status == runstatus_change){
        runstatus_type _status = parameter_->get_system_status();
        runstatus_type _pre_status = parameter_->get_pre_system_status(); 
        ROS_INFO("_status==>%d,_pre_status==>%d",_status,_pre_status);
        if(_status == _pre_status)
            _result.result = robot_scheduling_msgs::robot_run_stateResult::NOT_CHANGE ;  
        else 
            _result.result = robot_scheduling_msgs::robot_run_stateResult::CHANGE ;    
    } 
    else{
        //-- get running status ----                 
        _result.result = (_status == goal->set_status) ? robot_scheduling_msgs::robot_run_stateResult::OK :
                                                            robot_scheduling_msgs::robot_run_stateResult::NOT_OK;
    }
    run_state_as.setSucceeded(_result);  
}
//-----------------------------------------------------------------------------
void robot_run_state_action::getall_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    runstatus_type _status = parameter_->get_system_status(); 
    robot_scheduling_msgs::robot_run_stateResult _result;     
    if(_status == runstatus_none)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::NONE ;
    else if(_status == runstatus_unknow)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::UNKNOW ;
    else if(_status == runstatus_awarded)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::AWARED ;
    else if(_status == runstatus_standby)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::STANDBY ;
    else if(_status == runstatus_manual)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::MANUAL ;
    else if(_status == runstatus_remote)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::REMOTE ;
    else if(_status == runstatus_alarm)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::ALARM ;
    else if(_status == runstatus_pause)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::PAUSE ;
    else     
        _result.result = robot_scheduling_msgs::robot_run_stateResult::NOT_OK ;
        
    if(_result.result == robot_scheduling_msgs::robot_run_stateResult::NOT_OK)    
        run_state_as.setAborted(_result);
    else
        run_state_as.setSucceeded(_result);   
}
//-----------------------------------------------------------------------------
void robot_run_state_action::set_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    //runstatus_type _status = parameter_->get_system_status(); 
    robot_scheduling_msgs::robot_run_stateResult _result;  
    bool b_status = true ;
    runstatus_type set_status = (runstatus_type)goal->set_status ; 
    runstatus_type _status = parameter_->get_system_status();
    runstatus_type _pre_status = parameter_->get_pre_system_status(); 
    ROS_INFO("goal->set_status_code==>%s set_status==>%d",goal->set_status_code.c_str(),set_status);
    if(_status != _pre_status){
        //-- set data to operate history --
        if(db_goal == NULL)
            db_goal = std::make_shared<robot_scheduling_msgs::db_processGoal>() ;  

        db_goal->cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_SET_OPHIST ;
        db_goal->cmd_data = convert_str((int)set_status+100).substr(1,2) ;
        db_goal->db_process_ac_name = "/db_process" ;
        actionlib::SimpleClientGoalState result_ac = do_db_process_ac(*db_goal); 
        b_status = (result_ac == actionlib::SimpleClientGoalState::SUCCEEDED);     
    }
    if(b_status){
        parameter_->set_system_status(set_status);  
        ROS_INFO("goal->set_status_code==>%s set_status==>%d",goal->set_status_code.c_str(),set_status);
        if(!goal->set_status_code.empty() && set_status == runstatus_alarm){    
            std::string alarm_code = goal->set_status_code ;
            parameter_->set_system_alarm_code(alarm_code);
            //-- set data to alarm history --
            if(db_goal == NULL)
                db_goal = std::make_shared<robot_scheduling_msgs::db_processGoal>() ;

            db_goal->cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_SET_ALMHIST ;
            db_goal->cmd_data = goal->set_status_code;
            db_goal->db_process_ac_name = "/db_process" ;
            actionlib::SimpleClientGoalState result_ac = do_db_process_ac(*db_goal); 
            b_status = (result_ac == actionlib::SimpleClientGoalState::SUCCEEDED);
        }  
    }
    _result.result = b_status ? robot_scheduling_msgs::robot_run_stateResult::OK :
                                robot_scheduling_msgs::robot_run_stateResult::NOT_OK;
    run_state_as.setSucceeded(_result);    
}
//-----------------------------------------------------------------------------
void robot_run_state_action::get_pre_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    robot_scheduling_msgs::robot_run_stateResult _result;        
    runstatus_type pre_status = parameter_->get_pre_system_status(); 
    _result.result = (pre_status == goal->set_status) ? robot_scheduling_msgs::robot_run_stateResult::OK :
                                                        robot_scheduling_msgs::robot_run_stateResult::NOT_OK;
    run_state_as.setSucceeded(_result); 
}
//-----------------------------------------------------------------------------
void robot_run_state_action::getall_pre_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    runstatus_type _status = parameter_->get_pre_system_status(); 
    robot_scheduling_msgs::robot_run_stateResult _result;     
    ROS_INFO("getall_pre_system_status _status==>%d",_status);
    if(_status == runstatus_none)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::NONE ;
    else if(_status == runstatus_unknow)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::UNKNOW ;
    else if(_status == runstatus_awarded)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::AWARED ;
    else if(_status == runstatus_standby){
        ROS_INFO("getall_pre_system_status 123 _status==>%d",_status);
        _result.result = robot_scheduling_msgs::robot_run_stateResult::STANDBY ;
    }
    else if(_status == runstatus_manual)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::MANUAL ;
    else if(_status == runstatus_remote)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::REMOTE ;
    else if(_status == runstatus_alarm)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::ALARM ;
    else if(_status == runstatus_pause)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::PAUSE ;
    else     
        _result.result = robot_scheduling_msgs::robot_run_stateResult::NOT_OK ;
        
    if(_result.result == robot_scheduling_msgs::robot_run_stateResult::NOT_OK)    
        run_state_as.setAborted(_result);
    else
        run_state_as.setSucceeded(_result);   
}
//-----------------------------------------------------------------------------
void robot_run_state_action::set_pre_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    robot_scheduling_msgs::robot_run_stateResult _result;        
    runstatus_type pre_status = (runstatus_type)goal->set_status ; 
    ROS_INFO("pre_status set ==> %d",pre_status);
    parameter_->set_pre_system_status(pre_status);   
    _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;
    if(_result.result == robot_scheduling_msgs::robot_run_stateResult::NOT_OK)    
        run_state_as.setAborted(_result);
    else
        run_state_as.setSucceeded(_result);   
}
//-----------------------------------------------------------------------------
void robot_run_state_action::get_manual_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    robot_scheduling_msgs::robot_run_stateResult _result;   
    manualstatus_type _status = (manualstatus_type)goal->set_status ;  
    if(_status == manualstatus_dataproc){
        parameter_->restore_system_status();
        _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;
    }     
    else{
        manualstatus_type m_status = parameter_->get_manual_status(); 
        _result.result = (m_status == goal->set_status) ? robot_scheduling_msgs::robot_run_stateResult::OK :
                                                        robot_scheduling_msgs::robot_run_stateResult::NOT_OK;
    }
    run_state_as.setSucceeded(_result); 
}
//-----------------------------------------------------------------------------
void robot_run_state_action::getall_manual_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    manualstatus_type _status = parameter_->get_manual_status(); 
    //ROS_INFO("manualstatus_type===========>%d",(int)_status);
    robot_scheduling_msgs::robot_run_stateResult _result;     
    if(_status == manualstatus_none)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::M_NONE ;
    else if(_status == manualstatus_plantoexec)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::M_PLANTOEXEC ;
    else if(_status == manualstatus_moveint)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::M_MOVEINT ;
    else if(_status == manualstatus_move)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::M_MOVE ;
    else if(_status == manualstatus_turn)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::M_TURN ;
    else if(_status == manualstatus_worksheet)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::M_WORKSHEET ;
        
    if(_result.result == robot_scheduling_msgs::robot_run_stateResult::NOT_OK)    
        run_state_as.setAborted(_result);
    else
        run_state_as.setSucceeded(_result);  
}
//-----------------------------------------------------------------------------
void robot_run_state_action::set_manual_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    robot_scheduling_msgs::robot_run_stateResult _result;        
    manualstatus_type _status = (manualstatus_type)goal->set_status ;  
    if(_status == manualstatus_dataproc){
        parameter_->save_system_status();
    }
    else 
        parameter_->set_manual_status(_status);   

    _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;
    if(_result.result == robot_scheduling_msgs::robot_run_stateResult::NOT_OK)    
        run_state_as.setAborted(_result);
    else
        run_state_as.setSucceeded(_result);   
}
//-----------------------------------------------------------------------------
void robot_run_state_action::check_manual_start(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    robot_scheduling_msgs::robot_run_stateResult _result;     

    bool bStart = parameter_->get_ManualRun_Start();

    if(bStart){
        _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;
        parameter_->set_ManualRun_Start(false);
    }
    else
        _result.result = robot_scheduling_msgs::robot_run_stateResult::PASS ;

    run_state_as.setSucceeded(_result);   
}
//-----------------------------------------------------------------------------
void robot_run_state_action::set_manual_mode(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    robot_scheduling_msgs::robot_run_stateResult _result;   
    if(parameter_->get_system_status() == runstatus_manual){
        if(goal->set_status_code.empty())
            parameter_->set_manual_runmode_type((runmode_type)goal->set_status);
        else
            parameter_->set_manualparent_runmode_type((runmode_type)goal->set_status);
                
    }
    _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;
    run_state_as.setSucceeded(_result);   
}
//-----------------------------------------------------------------------------
void robot_run_state_action::check_remote_start(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    robot_scheduling_msgs::robot_run_stateResult _result;     


    bool bStart = parameter_->get_RemoteRun_Start();

    if(bStart){
        _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;
        if(parameter_->get_RemoteRun_cont_test())       
            parameter_->set_RemoteRun_Start(false);
    }
    else
        _result.result = robot_scheduling_msgs::robot_run_stateResult::PASS ;

    run_state_as.setSucceeded(_result);   
}
//-----------------------------------------------------------------------------
void robot_run_state_action::getall_remote_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    remotestatus_type _status = parameter_->get_remote_status(); 
    robot_scheduling_msgs::robot_run_stateResult _result;     
    if(_status == remotestatus_none)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::R_NONE ;
    else if(_status == remotestatus_worksheet)
        _result.result = robot_scheduling_msgs::robot_run_stateResult:: R_WORKSHEET ;
    /*else if(_status == remotestatus_worksheet_c_test)
        _result.result = robot_scheduling_msgs::robot_run_stateResult:: R_WORKSHEET_C_TEST ;*/
        
    if(_result.result == robot_scheduling_msgs::robot_run_stateResult::NOT_OK)    
        run_state_as.setAborted(_result);
    else
        run_state_as.setSucceeded(_result);  
}
//-----------------------------------------------------------------------------
void robot_run_state_action::set_remote_mode(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    robot_scheduling_msgs::robot_run_stateResult _result;   
    if(parameter_->get_system_status() == runstatus_remote){
        parameter_->set_remote_runmode_type((runmode_type)goal->set_status);                
    }
    _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;
    run_state_as.setSucceeded(_result);   
}
//-----------------------------------------------------------------------------
void robot_run_state_action::check_alarm_reset(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    robot_scheduling_msgs::robot_run_stateResult _result;  
    bool bReset = false ;
    if(parameter_->get_system_status() == runstatus_alarm){
        bReset = parameter_->get_Alarm_Reset();
    }
    if(bReset){    
        _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;
        parameter_->set_Alarm_Reset(false);
    }
    else
        _result.result = robot_scheduling_msgs::robot_run_stateResult::PASS ; 
    run_state_as.setSucceeded(_result);   
}
//-----------------------------------------------------------------------------
void robot_run_state_action::check_alarm_recovery(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    robot_scheduling_msgs::robot_run_stateResult _result;  
    bool bReset = false ;
    if(parameter_->get_system_status() == runstatus_pause){
        bReset = parameter_->get_Alarm_Recovery();
    }
    if(bReset){    
        _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;
        parameter_->set_Alarm_Recovery(false);
    }
    else
        _result.result = robot_scheduling_msgs::robot_run_stateResult::PASS ; 
    run_state_as.setSucceeded(_result);   
}
//-----------------------------------------------------------------------------
void robot_run_state_action::check_system_restart(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    robot_scheduling_msgs::robot_run_stateResult _result;  
    bool bReset = false ;
    if(parameter_->get_system_status() == runstatus_pause){
        bReset = parameter_->get_System_ReStart();
    }
    if(bReset){    
        _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;
        parameter_->set_System_ReStart(false);
    }
    else
        _result.result = robot_scheduling_msgs::robot_run_stateResult::PASS ; 
    run_state_as.setSucceeded(_result);   
}
//-----------------------------------------------------------------------------
void robot_run_state_action::getall_recovery_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    recoverystatus_type _status = parameter_->get_recovery_status(); 
    ROS_INFO("recoverystatus_type===========>%d",(int)_status);
    robot_scheduling_msgs::robot_run_stateResult _result;     
    if(_status == recoverystatus_none)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::RECR_NONE ;
    else if(_status == recoverystatus_plantoexec)
        _result.result = robot_scheduling_msgs::robot_run_stateResult::RECR_PLANTOEXEC ;
    //--------------------
    run_state_as.setSucceeded(_result);  
}
//-----------------------------------------------------------------------------
void robot_run_state_action::set_plantoexec_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    parameter_->set_plantoexec_run((bool)goal->set_status) ;

    robot_scheduling_msgs::robot_run_stateResult _result ;
    _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;

    run_state_as.setSucceeded(_result);  
}
//-----------------------------------------------------------------------------
void robot_run_state_action::run_state_CB(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal)
{
    ROS_INFO("run_state_CB");
    if (run_state_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("run_state_as execution preempted.");
        run_state_as.setPreempted();
        return;
    }
    else{
        robot_scheduling_msgs::robot_run_stateResult _result;        
        runstatus_type _status = parameter_->get_system_status(); 
        //ROS_INFO("goal->command==>%d",goal->command);
        //-- get running status ----
        if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::GET){  
            get_system_status(goal);
        }
        //-- getall running status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::GETALL){
            getall_system_status(goal);
        }
        //-- set running status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::SET){
            set_system_status(goal);
        }
        //-- get pre_status -----------------
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::PRE_GET){ 
            get_pre_system_status(goal);
        }
        //-- getall pre_system status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::PRE_GETALL){
            //ROS_INFO("goal->command 123==>%d",goal->command);
            getall_pre_system_status(goal);
        }
        //-- set pre_status -----------------
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::PRE_SET){  
            set_pre_system_status(goal);
        }
        //-- get manual status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::MANU_GET){  
            get_manual_status(goal);
        }
        //-- getall manual all status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::MANU_GETALL){
            getall_manual_status(goal);
        }
        //-- set manual status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::MANU_SET){
            set_manual_status(goal);
        }
        //-- set manual status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::MANU_STARTCHECK){
            check_manual_start(goal);
        }
        //-- set manual status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::MANU_MODESET){
            set_manual_mode(goal);
        }
        //-- set remote status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::REMOTE_STARTCHECK){
            //ROS_INFO("goal->command REMOTE_STARTCHECK (16)==>%d",goal->command);
            check_remote_start(goal);
        }
        //-- set remote status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::REMOTE_GETALL){
            getall_remote_status(goal);
        }
        //-- set manual status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::REMOTE_MODESET){
            set_remote_mode(goal);
        }
        //-- set alarm reset ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::ALARM_RESETCHECK){
            check_alarm_reset(goal);
        }
        //-- set alarm reset ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::ALARM_RECOVERYCHECK){
            check_alarm_recovery(goal);
        }
        //-- set alarm reset ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::SYS_RESTARTCHECK){
            check_system_restart(goal);
        }
        //-- set alarm reset ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::ALARM_RECOVERY_GETALL){
            getall_recovery_status(goal);
        }
        //-------------------------
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::PLANTOEXEC){
            set_plantoexec_status(goal); 
        }
        //-----------------------------------
        else{
            _result.result = robot_scheduling_msgs::robot_run_stateResult::TIMED_OUT ;  
            run_state_as.setAborted(_result);    
        }

    }
    /*ROS_INFO("run_state_CB");
    if (run_state_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("run_state_as execution preempted.");
        run_state_as.setPreempted();
        return;
    }
    else{
        robot_scheduling_msgs::robot_run_stateResult _result;        
        runstatus_type _status = parameter_->get_system_status(); 
        if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::GET){  
            if(goal->set_status == runstatus_alarm){
                _result.result = parameter_->get_system_alarm() ? robot_scheduling_msgs::robot_run_stateResult::ALARM :
                                                                  robot_scheduling_msgs::robot_run_stateResult::NOT_ALARM;
            } 
            else if(goal->set_status == runstatus_basectrl){
                int call_type = robot_scheduling_msgs::lower_if_command::Request::GET_STATUS ;
                int call_id = robot_scheduling_msgs::lower_if_command::Request::STATUS ;
                std::string call_data = "" ; 
                //ROS_INFO("call_service_to_base_ctrl"); 
                scheduling_service_->call_service_to_base_ctrl(call_type,call_id,call_data);
                //ROS_INFO("call_service_to_base_ctrl finished"); 
                _result.result = parameter_->get_base_ctrl_connected() ? robot_scheduling_msgs::robot_run_stateResult::OK :
                                                                         robot_scheduling_msgs::robot_run_stateResult::PASS;
            } 
            else if(goal->set_status == runstatus_change){
                runstatus_type _status = parameter_->get_system_status();
                runstatus_type _pre_status = parameter_->get_pre_system_status(); 
                ROS_INFO("_status==>%d,_pre_status==>%d",_status,_pre_status);
                if(_status == _pre_status)
                    _result.result = robot_scheduling_msgs::robot_run_stateResult::NOT_CHANGE ;  
                else 
                    _result.result = robot_scheduling_msgs::robot_run_stateResult::CHANGE ;    
            } 
            else{
                //-- get running status ----                 
                _result.result = (_status == goal->set_status) ? robot_scheduling_msgs::robot_run_stateResult::OK :
                                                                 robot_scheduling_msgs::robot_run_stateResult::NOT_OK;
            }
            run_state_as.setSucceeded(_result);  
        }
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::GETALL){
            //ROS_INFO("_status:%d",(int)_status);
            if(_status == runstatus_none)
                _result.result = robot_scheduling_msgs::robot_run_stateResult::NONE ;
            else if(_status == runstatus_unknow)
                _result.result = robot_scheduling_msgs::robot_run_stateResult::UNKNOW ;
            else if(_status == runstatus_awarded)
                _result.result = robot_scheduling_msgs::robot_run_stateResult::AWARED ;
            else if(_status == runstatus_standby)
                _result.result = robot_scheduling_msgs::robot_run_stateResult::STANDBY ;
            else if(_status == runstatus_manual)
                _result.result = robot_scheduling_msgs::robot_run_stateResult::MANUAL ;
            else if(_status == runstatus_remote)
                _result.result = robot_scheduling_msgs::robot_run_stateResult::REMOTE ;
            else if(_status == runstatus_alarm)
                _result.result = robot_scheduling_msgs::robot_run_stateResult::ALARM ;
            else if(_status == runstatus_pause)
                _result.result = robot_scheduling_msgs::robot_run_stateResult::PAUSE ;
            else     
                _result.result = robot_scheduling_msgs::robot_run_stateResult::NOT_OK ;
                
            if(_result.result == robot_scheduling_msgs::robot_run_stateResult::NOT_OK)    
                run_state_as.setAborted(_result);
            else
                run_state_as.setSucceeded(_result);   
        }
        //-- set running status ----
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::SET){
            bool b_status = true ;
            runstatus_type set_status = (runstatus_type)goal->set_status ; 
            runstatus_type _status = parameter_->get_system_status();
            runstatus_type _pre_status = parameter_->get_pre_system_status(); 
            ROS_INFO("goal->set_status_code==>%s set_status==>%d",goal->set_status_code.c_str(),set_status);
            if(_status != _pre_status){
                //-- set data to operate history --
                if(db_goal == NULL)
                    db_goal = std::make_shared<robot_scheduling_msgs::db_processGoal>() ;  

                db_goal->cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_SET_OPHIST ;
                db_goal->cmd_data = convert_str((int)set_status+100).substr(1,2) ;
                db_goal->db_process_ac_name = "/db_process" ;
                actionlib::SimpleClientGoalState result_ac = do_db_process_ac(*db_goal); 
                b_status = (result_ac == actionlib::SimpleClientGoalState::SUCCEEDED);     
            }
            if(b_status){
                parameter_->set_system_status(set_status);  
                ROS_INFO("goal->set_status_code==>%s set_status==>%d",goal->set_status_code.c_str(),set_status);
                if(!goal->set_status_code.empty() && set_status == runstatus_alarm){    
                    std::string alarm_code = goal->set_status_code ;
                    parameter_->set_system_alarm_code(alarm_code);
                    //-- set data to alarm history --
                    if(db_goal == NULL)
                        db_goal = std::make_shared<robot_scheduling_msgs::db_processGoal>() ;

                    db_goal->cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_SET_ALMHIST ;
                    db_goal->cmd_data = goal->set_status_code;
                    db_goal->db_process_ac_name = "/db_process" ;
                    actionlib::SimpleClientGoalState result_ac = do_db_process_ac(*db_goal); 
                    b_status = (result_ac == actionlib::SimpleClientGoalState::SUCCEEDED);
                }  
            }
            _result.result = b_status ? robot_scheduling_msgs::robot_run_stateResult::OK :
                                        robot_scheduling_msgs::robot_run_stateResult::NOT_OK;
            run_state_as.setSucceeded(_result); 
        }
        //-- get pre_status -----------------
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::PRE_GET){ 
            robot_scheduling_msgs::robot_run_stateResult _result;        
            runstatus_type pre_status = parameter_->get_pre_system_status(); 
            _result.result = (pre_status == goal->set_status) ? robot_scheduling_msgs::robot_run_stateResult::OK :
                                                                robot_scheduling_msgs::robot_run_stateResult::NOT_OK;
            run_state_as.setSucceeded(_result); 
        }
        //-- set pre_status -----------------
        else if(goal->command == robot_scheduling_msgs::robot_run_stateGoal::PRE_SET){  
            //ROS_INFO("obot_scheduling_msgs::robot_run_stateGoal::PRE_SET");
            runstatus_type pre_status = (runstatus_type)goal->set_status ; 
            ROS_INFO("pre_status set ==> %d",pre_status);
            parameter_->set_pre_system_status(pre_status);   
            _result.result = robot_scheduling_msgs::robot_run_stateResult::OK ;
            if(_result.result == robot_scheduling_msgs::robot_run_stateResult::NOT_OK)    
                run_state_as.setAborted(_result);
            else
                run_state_as.setSucceeded(_result);   
        }
        //-----------------------------------
        else{
            _result.result = robot_scheduling_msgs::robot_run_stateResult::TIMED_OUT ;  
            run_state_as.setAborted(_result);    
        }

    }*/
}
//-----------------------------------------------------------------------------
void robot_run_state_action::ctrl_state_rcvr_CB(const robot_scheduling_msgs::controller_state_recoveryGoalConstPtr& goal)
{
    if (ctrl_state_rcvr_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("ctrl_state_rcvr_as execution preempted.");
        ctrl_state_rcvr_as.setPreempted();
        return;
    }   
    else{
        std::shared_ptr<ac_check_params> check_params = parameter_->get_ac_check_params("car_controller");  
        int out_of_times = check_params->out_of_times ;  
        int timed_out = check_params->timeout ;

        robot_scheduling_msgs::controller_state_recoveryResult _result;   
        if(_Recovery_current_time >= out_of_times){
            _result.result = robot_scheduling_msgs::controller_state_recoveryResult::OUT_OF_TIMES ;
            _Recovery_current_time = 0 ;
            ctrl_state_rcvr_as.setAborted(_result);  
        } 
        else{
            /*robot_scheduling_msgs::action_command_cmd _cmd ;
            _cmd.request.cmd_data = "";
            _cmd.request.cmd_id = goal->current_status ;    

            //bool b_result ;
            bool b_respone = scheduling_service_->call_service_to_system(_cmd.request,_cmd.response);
            if(_cmd.response.result && b_respone){
                _result.result = robot_scheduling_msgs::controller_state_recoveryResult::OK ;
                _Recovery_current_time = 0 ;
                ctrl_state_rcvr_as.setSucceeded(_result);
            }
            else{
                if(!_cmd.response.result && b_respone)
                    _result.result = robot_scheduling_msgs::controller_state_recoveryResult::NOT_OK ;
                else
                    _result.result = robot_scheduling_msgs::controller_state_recoveryResult::TIMED_OUT ;
                _Recovery_current_time ++ ;
                ctrl_state_rcvr_as.setAborted(_result);    
            }*/
        }
    }
}
//-----------------------------------------------------------------------------
//*****************************************************************************
//-----------------------------------------------------------------------------
void robot_run_state_action::doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::db_processResultConstPtr& result)
{
}
//-----------------------------------------------------------------------------
void robot_run_state_action::activeCb()
{
}
//-----------------------------------------------------------------------------
void robot_run_state_action::feedbackCb(const robot_scheduling_msgs::db_processFeedbackConstPtr& feedback)
{
}
//-----------------------------------------------------------------------------
actionlib::SimpleClientGoalState robot_run_state_action::do_db_process_ac(const robot_scheduling_msgs::db_processGoal& goal)
{
    ROS_INFO(goal.db_process_ac_name.c_str());
    //("==================================goal:%d",(int)goal.cmd_id);
    //--- Wait for the action server
    while(!db_process_ac_.waitForServer(ros::Duration(2.0))){
        //ROS_INFO("Waiting for power_dock action server to come up");
    }
    //-- Waiting for a correct clock－time ----
    double secs =ros::Time::now().toSec();
    while (secs==0) {  // NEEDED OTHERWISE CLOCK WILL BE 0 AND GOAL_ID IS NOT SET CORRECTLY
        ROS_ERROR_STREAM("Time is null: " << ros::Time::now());
        ros::Duration(0.1).sleep();  
        secs =ros::Time::now().toSec();
    }
    //--- sending goal ----
    ROS_INFO(goal.cmd_data.c_str());
    db_process_ac_.sendGoal(goal,boost::bind(&robot_run_state_action::doneCb, this, _1 , _2),
                                 boost::bind(&robot_run_state_action::activeCb, this), 
                                 boost::bind(&robot_run_state_action::feedbackCb, this, _1));
    //--- waiting for result ----
    while (!db_process_ac_.waitForResult(ros::Duration(1.0))){}
    //--------------
    return db_process_ac_.getState() ;
}
//--------------------------------------------------------------------------------

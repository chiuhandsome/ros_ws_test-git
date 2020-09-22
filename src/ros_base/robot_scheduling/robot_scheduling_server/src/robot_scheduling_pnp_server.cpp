#include <robot_scheduling_pnp_server.h>
#include <ros_utility_tools/ros_tools.h>
#include <boost/algorithm/string/split.hpp>
#include <boost/algorithm/string/classification.hpp>
#include <thread>
//-----------------------------------------------------------------------------
robot_scheduling_pnp_server::robot_scheduling_pnp_server()  : 
                             PNPActionServer(),nh_(),
                             /*
                             ctrl_state_recovery_ac_(nh_,"robot_ctrl_state_rcvr"),
                             command_ac_(nh_,"robot_command"), 
                             */
                             robot_if_process_ac_(nh_,"robot_interface_process"),
                             robot_if_proc_lower_ac_(nh_,"robot_interface_proc_lower"),
                             robot_if_proc_upper_ac_(nh_,"robot_interface_proc_upper"),
                             run_state_ac_(nh_,"robot_run_state"),
                             db_process_ac_(nh_,"robot_db_process"),
		                     db_process_rcvr_ac_(nh_,"robot_db_process_rcvr"),  
                             recognize_ac_(nh_,"robot_initpose"), 
                             recognize_recovery_ac_(nh_,"robot_initpose_recovery"), 
                             move_to_ac_(nh_,"robot_move_to"),
                             move_to_rcvr_ac_(nh_,"robot_move_to_rcvr"),
                             robot_if_params_ac_(nh_,"robot_interface_parames"),
                             worksheetrun_ac_(nh_,"robot_worksheetrun"),
                             function_run_ac_(nh_,"robot_do_function"),
                             function_run_rcvr_ac_(nh_,"robot_do_function_rcvr"),
                             robot_time_wait_ac_(nh_,"robot_time_wait"),
                             interrupt_info_ac_(nh_,"interrupt_info"),
                             turn_to_ac_(nh_,"robot_turn_to"),
                             turn_to_rcvr_ac_(nh_,"robot_turn_to_rcvr"),
                             dock_to_ac_(nh_,"robot_dock_to"),
                             dock_to_rcvr_ac_(nh_,"robot_dock_to_rcvr"),
                             undock_to_ac_(nh_,"robot_undock_to"),
                             undock_to_rcvr_ac_(nh_,"robot_undock_to_rcvr"),
                             power_charge_ac_(nh_,"robot_power_charge"),
                             power_charge_rcvr_ac_(nh_,"robot_power_charge_rcvr"),
                             runable_(true)
{ 
    //_pnp_params = new robot_scheduling_pnp_params(nh_);
    ROS_INFO("robot_scheduling_pnp_server");
    //--- function to be executed on different places - robot_if_process_ac_ ----
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("InterfaceProc", 
                                        boost::bind(&robot_scheduling_pnp_server::interfaceProc,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("InterfaceLower", 
                                        boost::bind(&robot_scheduling_pnp_server::interfaceLower,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("InterfaceUpper", 
                                        boost::bind(&robot_scheduling_pnp_server::interfaceUpper,this, _1,_2)));    
    //--- function to be executed on different places - run_state_ac_ ----                 
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("DispatchRunStatus", 
                                        boost::bind(&robot_scheduling_pnp_server::dispatchRunStatus,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetRunStatus",  
                                        boost::bind(&robot_scheduling_pnp_server::getRunStatus,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetRunStatus",  
                                        boost::bind(&robot_scheduling_pnp_server::setRunStatus,this, _1,_2)));                                    
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetPreRunStatus",  
                                        boost::bind(&robot_scheduling_pnp_server::setPreRunStatus,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetPreChangeDisptch",  
                                        boost::bind(&robot_scheduling_pnp_server::getPreChangeDisptch,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("DispatchManualStatus", 
                                        boost::bind(&robot_scheduling_pnp_server::dispatchManualStatus,this, _1,_2)));  
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetManualStatus", 
                                        boost::bind(&robot_scheduling_pnp_server::setManualStatus,this, _1,_2)));    
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetManualStatus", 
                                        boost::bind(&robot_scheduling_pnp_server::getManualStatus,this, _1,_2)));    

    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("CheckManualRun", 
                                        boost::bind(&robot_scheduling_pnp_server::checkManualRun,this, _1,_2))); 
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetManualModeRun", 
                                        boost::bind(&robot_scheduling_pnp_server::setManualModeRun,this, _1,_2)));   
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetManualModeStop", 
                                        boost::bind(&robot_scheduling_pnp_server::setManualModeStop,this, _1,_2)));    

    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetManualModeParentRun", 
                                        boost::bind(&robot_scheduling_pnp_server::setManualModeParentRun,this, _1,_2)));   
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetManualModeParentStop", 
                                        boost::bind(&robot_scheduling_pnp_server::setManualModeParentStop,this, _1,_2)));    

    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("CheckRemoteRun", 
                                        boost::bind(&robot_scheduling_pnp_server::checkRemoteRun,this, _1,_2))); 
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("DispatchRemoteStatus", 
                                        boost::bind(&robot_scheduling_pnp_server::dispatchRemoteStatus,this, _1,_2))); 

    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetRemoteModeRun", 
                                        boost::bind(&robot_scheduling_pnp_server::setRemoteModeRun,this, _1,_2))); 
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetRemoteModeStop", 
                                        boost::bind(&robot_scheduling_pnp_server::setRemoteModeStop,this, _1,_2)));

    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetManualModeAlarm", 
                                        boost::bind(&robot_scheduling_pnp_server::setManualModeAlarm,this, _1,_2))); 

    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("CheckAlarmReset", 
                                        boost::bind(&robot_scheduling_pnp_server::checkAlarmReset,this, _1,_2)));    
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("CheckAlarmRecoveryRun", 
                                        boost::bind(&robot_scheduling_pnp_server::checkAlarmRecoveryRun,this, _1,_2)));      
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("CheckSystemReStart", 
                                        boost::bind(&robot_scheduling_pnp_server::checkSystemReStart,this, _1,_2)));    
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("DispatchAlarmRecoveryStatus", 
                                        boost::bind(&robot_scheduling_pnp_server::dispatchAlarmRecoveryStatus,this, _1,_2)));   
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetPlanToExec", 
                                        boost::bind(&robot_scheduling_pnp_server::setPlanToExec,this, _1,_2)));                                                                      
    //--- function to be executed on different places - db_process_ac_/db_process_rcvr_ac_ ----     
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetCheckParamsAll", 
                                        boost::bind(&robot_scheduling_pnp_server::getCheckParamsAll,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetCheckParamsOne", 
                                        boost::bind(&robot_scheduling_pnp_server::getCheckParamsOne,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetPoseIDAll", 
                                        boost::bind(&robot_scheduling_pnp_server::getPoseIDAll,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetPoseIDOne", 
                                        boost::bind(&robot_scheduling_pnp_server::getPoseIDOne,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetFunctionIDAll", 
                                        boost::bind(&robot_scheduling_pnp_server::getFunctionIDAll,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetFunctionIDOne", 
                                        boost::bind(&robot_scheduling_pnp_server::getFunctionIDOne,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetActionWorkSheetID", 
                                        boost::bind(&robot_scheduling_pnp_server::getActionWorkSheetID,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetAlarmHistoryCode", 
                                        boost::bind(&robot_scheduling_pnp_server::setAlarmHistoryCode,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetOperateHistoryCode", 
                                        boost::bind(&robot_scheduling_pnp_server::setOperateHistoryCode,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetAlarmCodeAll", 
                                        boost::bind(&robot_scheduling_pnp_server::getAlarmCodeAll,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetAlarmCodeOne", 
                                        boost::bind(&robot_scheduling_pnp_server::getAlarmCodeOne,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetOperateCodeAll", 
                                        boost::bind(&robot_scheduling_pnp_server::getOperateCodeAll,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetOperateCodeOne", 
                                        boost::bind(&robot_scheduling_pnp_server::getOperateCodeOne,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetPIDParamsAll", 
                                        boost::bind(&robot_scheduling_pnp_server::getPIDParamsAll,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetPIDParamsOne", 
                                        boost::bind(&robot_scheduling_pnp_server::getPIDParamsOne,this, _1,_2)));
    //--- function to be executed on different places - recognize_ac_ ----     
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("PoseRecognize", 
                                        boost::bind(&robot_scheduling_pnp_server::poseRecognize,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("PoseRecognizeRecovery", 
                                        boost::bind(&robot_scheduling_pnp_server::poseRecognizeRecovery,this, _1,_2)));
    //--- function to be executed on different places - move_to_ac_ ----
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("MoveTarget", 
                                        boost::bind(&robot_scheduling_pnp_server::moveTarget,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("MoveTargetRecovery", 
                                        boost::bind(&robot_scheduling_pnp_server::moveTargetRecovery,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("MoveStop", 
                                        boost::bind(&robot_scheduling_pnp_server::moveStop,this, _1,_2)));
    //--- function to be executed on different places - robot_if_params_ac_
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetTargetPose", 
                                        boost::bind(&robot_scheduling_pnp_server::setTargetPose,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetTargetPose", 
                                        boost::bind(&robot_scheduling_pnp_server::getTargetPose,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetFunctionID", 
                                        boost::bind(&robot_scheduling_pnp_server::setFunctionID,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("FunctionDispatch", 
                                        boost::bind(&robot_scheduling_pnp_server::functionDispatch,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("ProcessTurnAngle", 
                                        boost::bind(&robot_scheduling_pnp_server::processTurnAngle,this, _1,_2)));
    //function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetTurnRelTarget", 
    //                                    boost::bind(&robot_scheduling_pnp_server::setTurnRelTarget,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetTurnABSAngle", 
                                        boost::bind(&robot_scheduling_pnp_server::getTurnABSAngle,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetTurnRELAngle", 
                                        boost::bind(&robot_scheduling_pnp_server::setTurnRELAngle,this, _1,_2)));
    //--- function to be executed on different places - worksheetrun_ac_
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("CheckWorkSheetRun", 
                                        boost::bind(&robot_scheduling_pnp_server::checkWorkSheetRun,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("CheckWorkSheetExist", 
                                        boost::bind(&robot_scheduling_pnp_server::checkWorkSheetExist,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("CheckWorkSheetDetail", 
                                        boost::bind(&robot_scheduling_pnp_server::checkWorkSheetDetail,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("WorkSheetRun", 
                                        boost::bind(&robot_scheduling_pnp_server::workSheetRun,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("WorkSheetFinish", 
                                        boost::bind(&robot_scheduling_pnp_server::workSheetFinish,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("WorkSheetNext", 
                                        boost::bind(&robot_scheduling_pnp_server::workSheetNext,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("WorkSheetIndexSet", 
                                        boost::bind(&robot_scheduling_pnp_server::workSheetIndexSet,this, _1,_2)));

    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("WorkitemPoseRunCheck", 
                                        boost::bind(&robot_scheduling_pnp_server::workitemPoseRunCheck,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("WorkitemPostTurnCheck", 
                                        boost::bind(&robot_scheduling_pnp_server::workitemPostTurnCheck,this, _1,_2)));
    //--- function to be executed on different places - function_run_ac_                              
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("DoFunction", 
                                        boost::bind(&robot_scheduling_pnp_server::doFunction,this, _1,_2)));  
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("DoFunctionRecovery", 
                                        boost::bind(&robot_scheduling_pnp_server::doFunctionRecovery,this, _1,_2)));  
    //--- function to be executed on different places - robot_time_wait_ac_ 
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("Robottimewait", 
                                        boost::bind(&robot_scheduling_pnp_server::robottimewait,this, _1,_2)));   
    //--- function to be executed on different places - turn_to_ac_ 
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("RobotTurn", 
                                        boost::bind(&robot_scheduling_pnp_server::robotTurn,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("RobotTurnRecovery", 
                                        boost::bind(&robot_scheduling_pnp_server::robotTurnRecovery,this, _1,_2)));  
    //--- function to be executed on different places - dock_to_ac_ 
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("PowerDock", 
                                        boost::bind(&robot_scheduling_pnp_server::powerDock,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("PowerDockRecovery", 
                                        boost::bind(&robot_scheduling_pnp_server::powerDockRecovery,this, _1,_2)));    
    //--- function to be executed on different places - undock_to_ac_
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("PowerUndock", 
                                        boost::bind(&robot_scheduling_pnp_server::powerUndock,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("PowerUndockRecovery", 
                                        boost::bind(&robot_scheduling_pnp_server::powerUndockRecovery,this, _1,_2)));  
    //--- function to be executed on different places - power_charge_ac_
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("PowerCharge", 
                                        boost::bind(&robot_scheduling_pnp_server::powerCharge,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("PowerChargeRecovery", 
                                        boost::bind(&robot_scheduling_pnp_server::powerChargeRecovery,this, _1,_2)));   
    //--- function to be executed on different places - robot_time_wait_ac_
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("RobotWait", 
                                        boost::bind(&robot_scheduling_pnp_server::robotWait,this, _1,_2)));                    
    //--------------------
    //-- fuction map to map places names to c++ functions
    /*
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("ControllerStatusRecovery", 
                                        boost::bind(&robot_scheduling_pnp_server::controllerStatusRecovery,this, _1,_2)));
    //--------------------
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("CommandDispatch", 
                                        boost::bind(&robot_scheduling_pnp_server::commandDispatch,this, _1,_2)));    
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetCommandStatus", 
                                        boost::bind(&robot_scheduling_pnp_server::getCommandStatus,this, _1,_2)));        
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetCommandStatus", 
                                        boost::bind(&robot_scheduling_pnp_server::setCommandStatus,this, _1,_2)));    
    //------------------------
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("SetStatusCodeData", 
                                        boost::bind(&robot_scheduling_pnp_server::setStatusCodeData,this, _1,_2)));
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)>>("GetStatusCodeData", 
                                        boost::bind(&robot_scheduling_pnp_server::getStatusCodeData,this, _1,_2)));*/
    //--------------------
    function_map_.insert(std::pair<std::string, boost::function<void(bool*,std::string)> >("Init", 
                                        boost::bind(&robot_scheduling_pnp_server::init,this,_1,_2))); 
                                                                                                                            
}
//-----------------------------------------------------------------------------
robot_scheduling_pnp_server ::~robot_scheduling_pnp_server()
{
    //if(_pnp_params) delete _pnp_params ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::actionExecutionThread(string robotname, string action_name, string action_params, bool *run)
{
    ROS_INFO_STREAM("actionExecutionThread called " << action_name << " run is "<< *run);
    std::map<std::string, boost::function<void(bool*,std::string)> >::iterator function_map_it = function_map_.find(action_name);
    if(function_map_it == function_map_.end()){        
        ROS_ERROR_STREAM("No function " << action_name << " is defined.");
    }
    else{
        //ROS_INFO_STREAM("Find !!");
        function_map_it->second(&runable_,action_params);
    }
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::actionInterrupt(const std::string & robot,const std::string & action,const std::string & params)
{    
    /*// don't chang ----
    stringstream ssbuf;
    ssbuf << PARAM_PNPACTIONSTATUS << action;
    ros::param::set(ssbuf.str(),"interrupt");
    //------------------------------------------------------
    robot_scheduling_msgs::interrupt_infoGoal goal ;
    goal.interrupt_info = action ;
    interrupt_info_ac_.do_interrupt_info(goal);
    */
}
//-----------------------------------------------------------------------------
int robot_scheduling_pnp_server::evalCondition(string condition)
{ 
    //ROS_INFO("condition:%s",condition.c_str());
    std::this_thread::sleep_for(std::chrono::milliseconds(1)); 

    if(robot_if_process_ac_.evalCondition(condition) == 1)
        return 1 ;
    if(robot_if_proc_lower_ac_.evalCondition(condition) == 1)
        return 1 ;
    if(robot_if_proc_upper_ac_.evalCondition(condition) == 1)
        return 1 ;

    if(run_state_ac_.evalCondition(condition) == 1)
        return 1 ;

    if(db_process_ac_.evalCondition(condition) == 1)
        return 1 ;  

    if(recognize_ac_.evalCondition(condition) == 1)
        return 1 ;
    if(recognize_recovery_ac_.evalCondition(condition) == 1)
        return 1 ;    

    if(move_to_ac_.evalCondition(condition) == 1)
        return 1 ;
    if(move_to_rcvr_ac_.evalCondition(condition) == 1)
        return 1 ;

    if(robot_if_params_ac_.evalCondition(condition) == 1)
        return 1 ;

    if(worksheetrun_ac_.evalCondition(condition) == 1)
        return 1 ;  

    if(robot_time_wait_ac_.evalCondition(condition) == 1)
        return 1 ;  

    if(function_run_ac_.evalCondition(condition) == 1)
        return 1 ;   

    if(turn_to_ac_.evalCondition(condition) == 1)
        return 1 ;
    if(turn_to_rcvr_ac_.evalCondition(condition) == 1)
        return 1 ; 

    if(dock_to_ac_.evalCondition(condition) == 1)
        return 1 ;
    if(dock_to_rcvr_ac_.evalCondition(condition) == 1)
        return 1 ;   

    if(undock_to_rcvr_ac_.evalCondition(condition) == 1)
        return 1 ;
    if(turn_to_rcvr_ac_.evalCondition(condition) == 1)
        return 1 ;  

    if(power_charge_ac_.evalCondition(condition) == 1)
        return 1 ;
    if(power_charge_rcvr_ac_.evalCondition(condition) == 1)
        return 1 ;     

    std::this_thread::sleep_for(std::chrono::milliseconds(1)); 
    //if(db_process_rcvr_ac_.evalCondition(condition) == 1)
    //    return 1 ;  

    /*if(ctrl_state_recovery_ac_.evalCondition(condition) == 1)
        return 1 ;         
    if(command_ac_.evalCondition(condition) == 1)
        return 1 ; 
    */
    //--------------
    //return 0 ;   
    return PNPActionServer::evalCondition(condition);
}
//------------------------------------------------------------------------------
bool robot_scheduling_pnp_server::split_condition(std::string cond)
{
    bool bRet = true ;
    v_params_.clear();
    vector<std::string> splitted_condition;
    boost::split(splitted_condition, cond, boost::is_any_of("_"));
    int isize = splitted_condition.size() ;
    v_params_.resize(isize);
    for(int i=0;i<isize;i++){
        v_params_[i] = splitted_condition[i] ;       
    }
    return bRet ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::interfaceProc(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ;        
    //----------------------- 
    robot_scheduling_msgs::robot_interface_processGoal goal ;
    if(v_params_[0] == "lower")
        goal.cmd_type = robot_scheduling_msgs::robot_interface_processGoal::LOWER ;
    else if(v_params_[0] == "upper") 
        goal.cmd_type = robot_scheduling_msgs::robot_interface_processGoal::UPPER ;   
    robot_if_process_ac_.do_robot_interface_process(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::interfaceLower(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ;        
    //----------------------- 
    robot_scheduling_msgs::robot_interface_proc_lowerGoal goal ; 
    //---- Get Status --------------   
    if(v_params_[0] == "process"){
        goal.cmd_type = robot_scheduling_msgs::robot_interface_proc_lowerGoal::GET_STATUS ;    
        goal.cmd_id = robot_scheduling_msgs::robot_interface_proc_lowerGoal::BASE_PROC ;  
        goal.cmd_data = "" ;  
    }
    else if(v_params_[0] == "GetReady"){
        goal.cmd_type = robot_scheduling_msgs::robot_interface_proc_lowerGoal::GET_STATUS ;    
        goal.cmd_id = robot_scheduling_msgs::robot_interface_proc_lowerGoal::BASE_READY ;  
        goal.cmd_data = "" ;  
    }
    else if(v_params_[0] == "GetBattery"){
        goal.cmd_type = robot_scheduling_msgs::robot_interface_proc_lowerGoal::GET_STATUS ;    
        goal.cmd_id = robot_scheduling_msgs::robot_interface_proc_lowerGoal::BATTERY ;  
        goal.cmd_data = "" ;  
    }
    //---- Set Parameters --------------
    else if(v_params_[0] == "SetReady"){
        goal.cmd_type = robot_scheduling_msgs::robot_interface_proc_lowerGoal::SET_COMMAND ;    
        goal.cmd_id = robot_scheduling_msgs::robot_interface_proc_lowerGoal::BASE_READY ;  
        goal.cmd_data = "" ;  
    }
    else if(v_params_[0] == "SetLed"){
        goal.cmd_type = robot_scheduling_msgs::robot_interface_proc_lowerGoal::SET_COMMAND ;    
        goal.cmd_id = robot_scheduling_msgs::robot_interface_proc_lowerGoal::LED ;  
        goal.cmd_data = v_params_[1] ;  
    }
    else if(v_params_[0] == "SetMusic"){
        goal.cmd_type = robot_scheduling_msgs::robot_interface_proc_lowerGoal::SET_COMMAND ;    
        goal.cmd_id = robot_scheduling_msgs::robot_interface_proc_lowerGoal::MUSIC ;  
        goal.cmd_data = v_params_[1] ;  
    }
    
    robot_if_proc_lower_ac_.do_robot_interface_proc_lower(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::interfaceUpper(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ;        
    //----------------------- 
    robot_scheduling_msgs::robot_interface_proc_upperGoal goal ;
    goal.cmd_type = robot_scheduling_msgs::robot_interface_proc_upperGoal::GET_STATUS ;    
    if(v_params_[0] == "process")
        goal.cmd_id = robot_scheduling_msgs::robot_interface_proc_upperGoal::BASE_PROC ; 
           

    goal.cmd_data = "" ;
    robot_if_proc_upper_ac_.do_robot_interface_proc_upper(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::dispatchRunStatus(bool *run,std::string params)
{
    //ROS_INFO("<== params : %s ==>",params.c_str());    
    if(!(*run))
        return;
    //----------------------- 
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::GETALL ;
    goal.set_status = -1;
    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getRunStatus(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-----------------------   
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;

    if(v_params_.size() == 0)
        return ;    
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::GET ;
    //---------
    if(v_params_[0] == "None") 
        goal.set_status = (int)runstatus_none ; 
    else if(v_params_[0] == "Unknow") 
        goal.set_status = (int)runstatus_unknow ; 
    else if(v_params_[0] == "Awarded") 
        goal.set_status = (int)runstatus_awarded ; 
    else if(v_params_[0] == "Standby") 
        goal.set_status = (int)runstatus_standby ; 
    else if(v_params_[0] == "Manual") 
        goal.set_status = (int)runstatus_manual ; 
    else if(v_params_[0] == "Remote") 
        goal.set_status = (int)runstatus_remote ; 
    else if(v_params_[0] == "Alarm") 
        goal.set_status = (int)runstatus_alarm ; 
    else if(v_params_[0] == "Pause") 
        goal.set_status = (int)runstatus_pause ; 
    else if(v_params_[0] == "End") 
        goal.set_status = (int)runstatus_end ; 
    //----------------
    else if(v_params_[0] == "BaseController") 
        goal.set_status = (int)runstatus_basectrl ; 
    else if(v_params_[0] == "Change") 
        goal.set_status = (int)runstatus_change ; 

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setRunStatus(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-----------------------   
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;

    if(v_params_.size() == 0)
        return ;    
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::SET ;
    //---------
    if(v_params_[0] == "None") 
        goal.set_status = (int)runstatus_none ; 
    else if(v_params_[0] == "Unknow") 
        goal.set_status = (int)runstatus_unknow ; 
    else if(v_params_[0] == "Awarded") 
        goal.set_status = (int)runstatus_awarded ; 
    else if(v_params_[0] == "Standby") 
        goal.set_status = (int)runstatus_standby ; 
    else if(v_params_[0] == "Manual") 
        goal.set_status = (int)runstatus_manual ; 
    else if(v_params_[0] == "Remote") 
        goal.set_status = (int)runstatus_remote ; 
    else if(v_params_[0] == "Alarm"){ 
        goal.set_status = (int)runstatus_alarm ; 
        goal.set_status_code = v_params_[1] ; 
    }
    else if(v_params_[0] == "Pause") 
        goal.set_status = (int)runstatus_pause ; 
    else if(v_params_[0] == "End") 
        goal.set_status = (int)runstatus_end ; 
    //----------------
    else if(v_params_[0] == "BaseController") 
        goal.set_status = (int)runstatus_basectrl ; 
    else if(v_params_[0] == "Change") 
        goal.set_status = (int)runstatus_change ; 

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setPreRunStatus(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-----------------------   
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;

    if(v_params_.size() == 0)
        return ;    
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::PRE_SET ;
    //---------
    if(v_params_[0] == "None") 
        goal.set_status = (int)runstatus_none ; 
    else if(v_params_[0] == "Unknow") 
        goal.set_status = (int)runstatus_unknow ; 
    else if(v_params_[0] == "Awarded") 
        goal.set_status = (int)runstatus_awarded ; 
    else if(v_params_[0] == "Standby") 
        goal.set_status = (int)runstatus_standby ; 
    else if(v_params_[0] == "Manual") 
        goal.set_status = (int)runstatus_manual ; 
    else if(v_params_[0] == "Remote") 
        goal.set_status = (int)runstatus_remote ; 
    else if(v_params_[0] == "Alarm") 
        goal.set_status = (int)runstatus_alarm ; 
    else if(v_params_[0] == "Pause") 
        goal.set_status = (int)runstatus_pause ; 
    else if(v_params_[0] == "End") 
        goal.set_status = (int)runstatus_end ; 
    //----------------
    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getPreChangeDisptch(bool *run,std::string params)
{ 
   //ROS_INFO("<== params : %s ==>",params.c_str());    
    if(!(*run))
        return;
    //----------------------- 
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::PRE_GETALL ;
    goal.set_status = -1;
    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::dispatchManualStatus(bool *run,std::string params)
{ 
    //ROS_INFO("<== params : %s ==>",params.c_str());    
    if(!(*run))
        return;
    //----------------------- 
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::MANU_GETALL ;
    goal.set_status = -1;
    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getManualStatus(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-----------------------   
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;

    if(v_params_.size() == 0)
        return ;    
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::MANU_GET ;
    //---------
    if(v_params_[0] == "None") 
        goal.set_status = (int)manualstatus_none ; 
    else if(v_params_[0] == "Plantoexec") 
        goal.set_status = (int)manualstatus_plantoexec ; 
    else if(v_params_[0] == "Moveint") 
        goal.set_status = (int)manualstatus_moveint ; 
    else if(v_params_[0] == "Turn") 
        goal.set_status = (int)manualstatus_move ; 
    else if(v_params_[0] == "Manual") 
        goal.set_status = (int)manualstatus_turn ; 
    else if(v_params_[0] == "Worksheet") 
        goal.set_status = (int)manualstatus_worksheet ; 
    else if(v_params_[0] == "Save") 
        goal.set_status = (int)manualstatus_dataproc ; 

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::checkManualRun(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::MANU_STARTCHECK ;
    //---------

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setManualModeRun(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::MANU_MODESET ;
    goal.set_status = (int) runmode_running ;
    goal.set_status_code = "";

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setManualModeParentRun(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::MANU_MODESET ;
    goal.set_status = (int) runmode_running ;
    goal.set_status_code = "parent";

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setManualModeAlarm(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::MANU_MODESET ;
    goal.set_status = (int)  runmode_alarm;

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::checkAlarmReset(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::ALARM_RESETCHECK ;

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::checkAlarmRecoveryRun(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::ALARM_RECOVERYCHECK ;

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::checkSystemReStart(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::SYS_RESTARTCHECK ;

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::dispatchAlarmRecoveryStatus(bool *run,std::string params)
{ 
    //ROS_INFO("<== params : %s ==>",params.c_str());    
    if(!(*run))
        return;
    //----------------------- 
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::ALARM_RECOVERY_GETALL ;
    goal.set_status = -1;
    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setPlanToExec(bool *run,std::string params)
{ 
    //ROS_INFO("<== params : %s ==>",params.c_str());    
    if(!(*run))
        return;
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;

    if(v_params_.size() == 0)
        return ;        
    //----------------------- 
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::PLANTOEXEC ;
    goal.set_status = (v_params_[0] == "true") ? 1 : 0 ;
    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setManualModeStop(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::MANU_MODESET ;
    goal.set_status = (int) runmode_ready ;

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setManualModeParentStop(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::MANU_MODESET ;
    goal.set_status = (int) runmode_ready ;
    goal.set_status_code = "parent";

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::checkRemoteRun(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::REMOTE_STARTCHECK ;
    //---------

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::dispatchRemoteStatus(bool *run,std::string params)
{ 
    //ROS_INFO("<== params : %s ==>",params.c_str());    
    if(!(*run))
        return;
    //----------------------- 
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::REMOTE_GETALL ;
    goal.set_status = -1;
    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setRemoteModeRun(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //----------------------- 
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::REMOTE_MODESET ;
    goal.set_status = (int)runmode_running;
    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setRemoteModeStop(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //----------------------- 
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::REMOTE_MODESET ;
    goal.set_status = (int)runmode_ready;
    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setManualStatus(bool *run,std::string params)
{ 
    if(!(*run))
        return;
    //-----------------------   
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;

    if(v_params_.size() == 0)
        return ;    
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::MANU_SET ;
    //---------
    if(v_params_[0] == "None") 
        goal.set_status = (int)manualstatus_none ; 
    else if(v_params_[0] == "Plantoexec") 
        goal.set_status = (int)manualstatus_plantoexec ; 
    else if(v_params_[0] == "Moveint") 
        goal.set_status = (int)manualstatus_moveint ; 
    else if(v_params_[0] == "Turn") 
        goal.set_status = (int)manualstatus_move ; 
    else if(v_params_[0] == "Manual") 
        goal.set_status = (int)manualstatus_turn ; 
    else if(v_params_[0] == "Worksheet") 
        goal.set_status = (int)manualstatus_worksheet ; 
    else if(v_params_[0] == "Save") 
        goal.set_status = (int)manualstatus_dataproc ; 

    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
/*void robot_scheduling_pnp_server::setRunStatus(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------    
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ;    
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_run_stateGoal goal ;
    goal.command = robot_scheduling_msgs::robot_run_stateGoal::SET ;
    goal.set_status = strtoint(v_params_[0],0);
    int isize = v_params_.size();
    if(isize > 1){
        goal.set_status_code = strtoint(v_params_[1],0);
    }
    
    run_state_ac_.do_robot_run_state(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::controllerStatusRecovery(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::controller_state_recoveryGoal goal ;
    
    ctrl_state_recovery_ac_.do_ctrl_state_rcvr_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::commandDispatch(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_commandGoal goal ;
    goal.command = robot_scheduling_msgs::robot_commandGoal::DISPATCH ;
    goal.set_status = -1 ;
    
    command_ac_.do_robot_command(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getCommandStatus(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ;    
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_commandGoal goal ;
    goal.command = robot_scheduling_msgs::robot_commandGoal::GET ;
    goal.set_status = strtoint(v_params_[0],0) ;
    
    command_ac_.do_robot_command(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setCommandStatus(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------    
    //-- get control parameters ---
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ;    
    //-- actionlib client trigger ---
    robot_scheduling_msgs::robot_commandGoal goal ;
    goal.command = robot_scheduling_msgs::robot_commandGoal::SET ;
    goal.set_status = strtoint(v_params_[0],0) ;
    
    command_ac_.do_robot_command(goal); 
}*/
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::poseRecognize(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------    
    //-- get control parameters ---
    
    //-- actionlib client trigger ---
    robot_scheduling_msgs::pose_recognizeGoal goal ;
    recognize_ac_.do_pose_recognize(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::poseRecognizeRecovery(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------    
    //-- get control parameters ---
    
    //-- actionlib client trigger ---
    robot_scheduling_msgs::pose_recognize_recoveryGoal goal ;
    //goal.rec_command = robot_scheduling_msgs::pose_recognizeGoal::START ;

    recognize_recovery_ac_.do_pose_recognize_recovery(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::moveTarget(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ;         
    std::string pose_id = "";    
    ROS_INFO("v_params_[0]:%s",v_params_[0].c_str());
    if(v_params_[0] == "1")   
        pose_id = "park_pos" ;
    else if(v_params_[0] == "2") 
        pose_id = "pre_dock_pos" ;    
    else if(v_params_[0] == "3")   
        pose_id = "post_undock_pos" ;    
    else if(v_params_[0] == "99")
        pose_id = "car_database" ;   
    else if(v_params_[0] == "999")
        pose_id = "car_database_test" ;   
    else if(v_params_[0] == "m")
        pose_id = "assign_data" ;   
    else
        pose_id = v_params_[0] ;   
        
    //-----------------------    
    robot_scheduling_msgs::pose_move_toGoal goal ;
    goal.frame_id = "map";
    goal.pose_id =  pose_id;
    goal.command = robot_scheduling_msgs::pose_move_toGoal::CMD_MOVE ;
    goal.move_ac_name = "/locomotor/navigate" ;
    
    move_to_ac_.do_pose_move_to_ac(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::moveStop(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------    
    robot_scheduling_msgs::pose_move_toGoal goal ;
    goal.frame_id = "map";
    goal.pose_id =  "";
    goal.command = robot_scheduling_msgs::pose_move_toGoal::CMD_STOP ;
    goal.move_ac_name = "" ;
    
    move_to_ac_.do_pose_move_to_ac(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::moveTargetRecovery(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    std::string pose_id = "";         
    if(strtoint(v_params_[0],0) == 1)   
        pose_id = "park_pos" ;
    else if(strtoint(v_params_[0],0) == 2)   
        pose_id = "pre_dock_pos" ;    
    else if(strtoint(v_params_[0],0) == 3)   
        pose_id = "post_undock_pos" ;        
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::pose_move_to_recoveryGoal goal ;
    goal.rcvr_ac_name = "/locomotor/clear_costmaps";
    goal.pose_id = pose_id ;
    
    move_to_rcvr_ac_.do_pose_move_to_rcvr_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::powerDock(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::dock_toGoal goal ;
    goal.dock_id = "power_dock" ;
    goal.pre_dock_id = "pre_dock" ;    
    goal.dock_ac_name = "dock" ;
    goal.frame_id = "odom" ;
    goal.use_move_base = true ;
    
    dock_to_ac_.do_dock_to_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::powerDockRecovery(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::dock_to_recoveryGoal goal ;
    
    dock_to_rcvr_ac_.do_dock_to_rcvr_ac(goal) ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::powerCharge(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::power_chargeGoal goal ;
    goal.charge_type = robot_scheduling_msgs::power_chargeGoal::CHARGE_IO ;
    goal.charge_id = "power_charge" ;    
    
    power_charge_ac_.do_power_charge_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::powerChargeRecovery(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::power_charge_recoveryGoal goal ;
    
    power_charge_rcvr_ac_.do_power_charge_rcvr_ac(goal) ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::powerUndock(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    ROS_INFO("pnp powerUndock");
    robot_scheduling_msgs::undock_toGoal goal ;
    goal.undock_id = "power_undock" ;
    goal.pre_undock_id = "post_undock" ;    
    goal.undock_ac_name = "/undock" ;
    goal.frame_id = "odom" ;
    //goal.use_move_base = true ;
    goal.command = true ;
    
    undock_to_ac_.do_undock_to_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::powerUndockRecovery(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::undock_to_recoveryGoal goal ;
    
    undock_to_rcvr_ac_.do_undock_to_rcvr_ac(goal) ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::robotTurn(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    //-----------------------   
    robot_scheduling_msgs::self_turn_toGoal goal ; 
    

    if(v_params_[0] == "Action"){
        goal.command_type = v_params_[0] ;
        goal.turn_id = "turn";
        goal.pid_id = "turn";
        goal.target_angle = 0.0 ;//strtodouble(v_params_[0],0.0);
        goal.turn_ac_name = "self_turn_to";
    }
    else{
        goal.command_type = "" ;
        goal.turn_id = "turn";
        goal.pid_id = "turn";
        if(v_params_.size() == 1)
            goal.command_id = robot_scheduling_msgs::self_turn_toGoal::TURN_ABS ;
        else
            goal.command_id = robot_scheduling_msgs::self_turn_toGoal::TURN_REL ;
            
        goal.target_angle = strtodouble(v_params_[0],0.0);
        goal.turn_ac_name = "self_turn_to";
    }
    //-- actionlib client trigger ---    
    turn_to_ac_.do_pose_turn_to_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::robotTurnRecovery(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::self_turn_to_recoveryGoal goal ;
    
    turn_to_rcvr_ac_.do_pose_turn_to_rcvr_ac(goal) ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getCheckParamsAll(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_CHKPARAMS ;
    goal.cmd_data = "";
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getCheckParamsOne(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    //std::string pose_id = "";         
    //if(v_params_[0] == 1)   
    //    pose_id = "park_pos" ;
    
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_CHKPARAMS ;    
    goal.cmd_data = v_params_[0];
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getPoseIDAll(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_POSE_ID ;
    goal.cmd_data = "";
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getPoseIDOne(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    //std::string pose_id = "";         
    //if(v_params_[0] == 1)   
    //    pose_id = "park_pos" ;
    
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_POSE_ID ;
    goal.cmd_data = v_params_[0];
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getFunctionIDAll(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_FUNC_ID ;
    goal.cmd_data = "";
    goal.db_process_ac_name = "/db_process" ;
    //ROS_INFO("getFunctionIDAll");
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getFunctionIDOne(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    //std::string pose_id = "";         
    //if(v_params_[0] == 1)   
    //    pose_id = "park_pos" ;
    //
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_FUNC_ID ;
    goal.cmd_data = v_params_[0];
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getActionWorkSheetID(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    //std::string pose_id = "";         
    //if(v_params_[0] == 1)   
    //    pose_id = "park_pos" ;
    //
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_WKSHEET ;
    goal.cmd_data = v_params_[0];
    goal.db_process_ac_name = "/db_process" ;

    ROS_INFO("parameter:%s",goal.cmd_data.c_str());
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setAlarmHistoryCode(bool *run,std::string params)
{
    if(!(*run))
        return;

    ROS_INFO("<== params : %s ==>",params.c_str());    
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    //std::string pose_id = "";         
    //if(v_params_[0] == 1)   
    //    pose_id = "park_pos" ;
    //    
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_SET_ALMHIST ;
    goal.cmd_data = v_params_[0];
    goal.db_process_ac_name = "/db_process" ;

    ROS_INFO("parameter:%s",goal.cmd_data.c_str());
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setOperateHistoryCode(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    //std::string pose_id = "";         
    //if(v_params_[0] == 1)   
    //    pose_id = "park_pos" ;
    
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_SET_OPHIST ;
    goal.cmd_data = v_params_[0];
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getAlarmCodeAll(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_ALMCODE ;
    goal.cmd_data = "";
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getAlarmCodeOne(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    //std::string pose_id = "";         
    //if(v_params_[0] == 1)   
    //    pose_id = "park_pos" ;
    
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_ALMCODE ;
    goal.cmd_data = v_params_[0];
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getOperateCodeAll(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_OPCODE ;
    goal.cmd_data = "";
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getOperateCodeOne(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_OPCODE ;
    goal.cmd_data = v_params_[0];
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getPIDParamsAll(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_PIDPARAMS ;
    goal.cmd_data = "";
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getPIDParamsOne(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_PIDPARAMS ;
    goal.cmd_data = v_params_[0];
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::checkWorkSheetDetail(bool *run,std::string params)
{                                  
    if(!(*run))
        return;

    robot_scheduling_msgs::worksheetrunGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::worksheetrunGoal::WS_DETAILCHECK ;
    
    worksheetrun_ac_.do_worksheetrun_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::checkWorkSheetRun(bool *run,std::string params)
{                                  
    if(!(*run))
        return;

    robot_scheduling_msgs::worksheetrunGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::worksheetrunGoal::WS_RUNCHECK ;
    
    worksheetrun_ac_.do_worksheetrun_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::checkWorkSheetExist(bool *run,std::string params)
{                                  
    if(!(*run))
        return;

    robot_scheduling_msgs::db_processGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::db_processGoal::DBCMD_GET_WKSHEET ;
    //goal.cmd_data = "parameter_db";
    goal.cmd_data = "parameter_db_check";
    goal.db_process_ac_name = "/db_process" ;
    
    db_process_ac_.do_db_process_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::workSheetRun(bool *run,std::string params)
{
    if(!(*run))
        return;

    robot_scheduling_msgs::worksheetrunGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::worksheetrunGoal::WS_RUN ;
    
    worksheetrun_ac_.do_worksheetrun_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::workSheetFinish(bool *run,std::string params)
{
    if(!(*run))
        return;

    robot_scheduling_msgs::worksheetrunGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::worksheetrunGoal::WS_RUNFINISh ;
    
    worksheetrun_ac_.do_worksheetrun_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::workSheetNext(bool *run,std::string params)
{
    if(!(*run))
        return;

    robot_scheduling_msgs::worksheetrunGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::worksheetrunGoal::WS_RUNNEXT ;
    
    worksheetrun_ac_.do_worksheetrun_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::workSheetIndexSet(bool *run,std::string params)
{
    if(!(*run))
        return;

    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    robot_scheduling_msgs::worksheetrunGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::worksheetrunGoal::WS_ASSIGNINDEX ;
    goal.cmd_data = v_params_[0];
    
    worksheetrun_ac_.do_worksheetrun_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::workitemPoseRunCheck(bool *run,std::string params)
{
    if(!(*run))
        return;

    ROS_INFO("workitemPoseRunCheck");    

    robot_scheduling_msgs::worksheetrunGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::worksheetrunGoal::WS_POSERUNCHECK ;
    
    worksheetrun_ac_.do_worksheetrun_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::workitemPostTurnCheck(bool *run,std::string params)
{
    if(!(*run))
        return;

    ROS_INFO("workitemPostTurnCheck");    

    robot_scheduling_msgs::worksheetrunGoal goal ;
    goal.cmd_id = robot_scheduling_msgs::worksheetrunGoal::WS_POSTTURNCHECK ;
    
    worksheetrun_ac_.do_worksheetrun_ac(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::robottimewait(bool *run,std::string params)
{
    if(!(*run))
        return;

    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    robot_scheduling_msgs::time_waitGoal goal ;
    goal.cmd_time = strtodouble(v_params_[0],0.0);
    
    robot_time_wait_ac_.do_robot_time_wait(goal); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::doFunction(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    std::string cmd_id = "";  
    std::string cmd_data = "";       
    std::string cmd_ac_name = ""; 
    if(strtoint(v_params_[0],0) == 1){   
        cmd_id = "park_pos" ;
        cmd_data = v_params_[1];
        cmd_ac_name = "/robot_time_wait";
    }
    else if(strtoint(v_params_[0],0) == 2){   
        cmd_id = "park_pos" ;
        cmd_data = v_params_[1];
        cmd_ac_name = "/self_turn_to";
    }
    else if(strtoint(v_params_[0],0) == 99){
        cmd_id = "car_database" ; 
        cmd_data = "";
        cmd_ac_name = ""; 
    }
    else if(strtoint(v_params_[0],0) == 999){
        cmd_id = "car_database_test" ; 
        cmd_data = "";
        cmd_ac_name = ""; 
    }
    else {
        cmd_id = v_params_[0] ; 
        cmd_data = "";
        cmd_ac_name = ""; 
    }
    //-----------------------    
    robot_scheduling_msgs::function_runGoal goal ;
    goal.cmd_id = cmd_id;
    goal.cmd_data =  cmd_data;
    goal.cmd_ac_name = cmd_ac_name ;
    
    function_run_ac_.do_function_run_ac(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::doFunctionRecovery(bool *run,std::string params)
{
    if(!(*run))
        return;
    //-----------------------   
    //-- actionlib client trigger ---
    robot_scheduling_msgs::function_run_recoveryGoal goal ;
    
    function_run_rcvr_ac_.do_function_run_rcvr_ac(goal) ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getTargetPose(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    //if(v_params_.size() == 0)
    //    return ; 
    std::string cmd_id = "";  
    std::string cmd_data = "";       
    std::string targetPose_id = (v_params_.size() == 0) ? "" : v_params_[0] ; 
    //-----------------------    
    robot_scheduling_msgs::robot_interface_paramsGoal goal ;
    goal.cmd_type = robot_scheduling_msgs::robot_interface_paramsGoal::GET;
    goal.dtat_type =  robot_scheduling_msgs::robot_interface_paramsGoal::TARGET_POSE;
    goal.set_data.clear();
    goal.set_data.push_back(targetPose_id);
    
    robot_if_params_ac_.do_robot_interface_params(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setTargetPose(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    std::string cmd_id = "";  
    std::string cmd_data = "";       
    std::string targetPose_id = v_params_[0] ; 
    std::string targetPose_ser = (v_params_.size() > 1) ? v_params_[1] : "" ; 

    for (int i=0; i <targetPose_id.size(); i++)
       targetPose_id[i] = tolower(targetPose_id[i]);

    //ROS_INFO("targetPose_id:%s",targetPose_id.c_str());   
    //-----------------------    
    robot_scheduling_msgs::robot_interface_paramsGoal goal ;
    goal.cmd_type = robot_scheduling_msgs::robot_interface_paramsGoal::SET;
    goal.dtat_type =  robot_scheduling_msgs::robot_interface_paramsGoal::TARGET_POSE;
    goal.set_data.clear();
    goal.set_data.push_back(targetPose_id);
    goal.set_data.push_back(targetPose_ser);

    //ROS_INFO("targetPose_ser:%s",targetPose_ser.c_str());

    robot_if_params_ac_.do_robot_interface_params(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setFunctionID(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    //----------------------------      
    std::string target_id = v_params_[0] ; 
    std::string target_param = (v_params_.size() > 1) ? v_params_[1] : "" ; 

    for (int i=0; i <target_id.size(); i++)
       target_id[i] = tolower(target_id[i]);

    //ROS_INFO("targetPose_id:%s",targetPose_id.c_str());   
    //-----------------------    
    robot_scheduling_msgs::robot_interface_paramsGoal goal ;
    goal.cmd_type = robot_scheduling_msgs::robot_interface_paramsGoal::SET;
    goal.dtat_type =  robot_scheduling_msgs::robot_interface_paramsGoal::FUNCTION_ID;
    goal.set_data.clear();
    goal.set_data.push_back(target_id);
    goal.set_data.push_back(target_param);

    //ROS_INFO("targetPose_ser:%s",targetPose_ser.c_str());

    robot_if_params_ac_.do_robot_interface_params(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::functionDispatch(bool *run,std::string params)
{
    if(!(*run))
        return;
    //---------------------    
    std::string target_id = "funcdispatch" ; 
    //-----------------------    
    robot_scheduling_msgs::robot_interface_paramsGoal goal ;
    goal.cmd_type = robot_scheduling_msgs::robot_interface_paramsGoal::SET;
    goal.dtat_type =  robot_scheduling_msgs::robot_interface_paramsGoal::FUNCTION_ID;
    goal.set_data.clear();
    goal.set_data.push_back(target_id);

    //ROS_INFO("targetPose_ser:%s",targetPose_ser.c_str());

    robot_if_params_ac_.do_robot_interface_params(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::processTurnAngle(bool *run,std::string params)
{
    if(!(*run))
        return;
    //---------------------    
    std::string target_id = "processturn" ; 
    //-----------------------    
    robot_scheduling_msgs::robot_interface_paramsGoal goal ;
    goal.cmd_type = robot_scheduling_msgs::robot_interface_paramsGoal::SET;
    goal.dtat_type =  robot_scheduling_msgs::robot_interface_paramsGoal::FUNCTION_ID;
    goal.set_data.clear();
    goal.set_data.push_back(target_id);

    //ROS_INFO("targetPose_ser:%s",targetPose_ser.c_str());

    robot_if_params_ac_.do_robot_interface_params(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getTurnABSAngle(bool *run,std::string params)
{
    if(!(*run))
        return;
    //---------------------    
    std::string target_id = "turn_abs_angle" ; 
    //-----------------------    
    robot_scheduling_msgs::robot_interface_paramsGoal goal ;
    goal.cmd_type = robot_scheduling_msgs::robot_interface_paramsGoal::GET;
    goal.dtat_type =  robot_scheduling_msgs::robot_interface_paramsGoal::PARAMETER;
    goal.set_data.clear();
    goal.set_data.push_back(target_id);
    //----------------------
    robot_if_params_ac_.do_robot_interface_params(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::setTurnRELAngle(bool *run,std::string params)
{
    if(!(*run))
        return;
    //---------------------    
    std::string target_id = "turn_rel_angle" ; 
    //-----------------------    
    robot_scheduling_msgs::robot_interface_paramsGoal goal ;
    goal.cmd_type = robot_scheduling_msgs::robot_interface_paramsGoal::SET;
    goal.dtat_type =  robot_scheduling_msgs::robot_interface_paramsGoal::PARAMETER;
    goal.set_data.clear();
    goal.set_data.push_back(target_id);
    //----------------------
    robot_if_params_ac_.do_robot_interface_params(goal);
}
//-----------------------------------------------------------------------------
/*void robot_scheduling_pnp_server::setTurnRelTarget(bool *run,std::string params)
{
    if(!(*run))
        return;
    //---------------------    
    std::string target_id = "turnreltarget" ; 
    //-----------------------    
    robot_scheduling_msgs::robot_interface_paramsGoal goal ;
    goal.cmd_type = robot_scheduling_msgs::robot_interface_paramsGoal::SET;
    goal.dtat_type =  robot_scheduling_msgs::robot_interface_paramsGoal::FUNCTION_ID;
    goal.set_data.clear();
    goal.set_data.push_back(target_id);

    //ROS_INFO("targetPose_ser:%s",targetPose_ser.c_str());

    robot_if_params_ac_.do_robot_interface_params(goal);
}*/
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::robotWait(bool *run,std::string params)
{
    if(!(*run))
        return;    
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    //---------
    robot_scheduling_msgs::time_waitGoal goal ;
    goal.cmd_type = (v_params_[0] == "Parameter") ? robot_scheduling_msgs::time_waitGoal::PARAMETER :
                    robot_scheduling_msgs::time_waitGoal::NORMAL ;
    goal.cmd_time = (v_params_[0] == "Parameter") ? 0 : strtodouble(v_params_[0],0.0);              
    goal.time_wait_ac_name = "robot_time_wait" ;
    robot_time_wait_ac_.do_robot_time_wait(goal);
}
//-----------------------------------------------------------------------------
/*void robot_scheduling_pnp_server::setStatusCodeData(bool *run,std::string params)
{
    if(!(*run))
        return;
    if(!split_condition(params))    // parameter have error
        return ;
    if(v_params_.size() == 0)
        return ; 
    std::string cmd_id = "";  
    std::string cmd_data = "";       
    std::string code_type = v_params_[0] ; 
    std::string code_data = (v_params_.size()>1) ? v_params_[1] : "" ; 
    //-----------------------    
    robot_scheduling_msgs::robot_interface_paramsGoal goal ;
    goal.cmd_type = robot_scheduling_msgs::robot_interface_paramsGoal::SET;
    goal.dtat_type =  robot_scheduling_msgs::robot_interface_paramsGoal::STATUS_CODE;
    goal.set_data.clear();
    goal.set_data.push_back(code_type);
    goal.set_data.push_back(code_data);
    
    robot_if_params_ac_.do_robot_interface_params(goal);
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::getStatusCodeData(bool *run,std::string params)
{
    if(!(*run))
        return;
    //if(!split_condition(params))    // parameter have error
    //    return ;
    //if(v_params_.size() == 0)
    //    return ; 
    std::string cmd_id = "";  
    std::string cmd_data = "";    
    //-----------------------    
    robot_scheduling_msgs::robot_interface_paramsGoal goal ;
    goal.cmd_type = robot_scheduling_msgs::robot_interface_paramsGoal::GET;
    goal.dtat_type =  robot_scheduling_msgs::robot_interface_paramsGoal::STATUS_CODE;
    goal.set_data.clear();
    
    robot_if_params_ac_.do_robot_interface_params(goal);
}*/
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_server::init(bool *run,std::string params)
{
    ROS_INFO("Start Init of PNP Server");

    ROS_INFO("End Init of PNP Server");
}
//-----------------------------------------------------------------------------


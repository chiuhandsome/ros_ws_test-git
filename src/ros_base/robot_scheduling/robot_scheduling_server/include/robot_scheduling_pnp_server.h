#ifndef robot_scheduling_pnp_server_H
#define robot_scheduling_pnp_server_H
#include <ros/ros.h>
#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <actionlib/client/simple_action_client.h>
#include <pnp_msgs/PNPAction.h>
#include <pnp_msgs/PNPCondition.h>
#include <pnp_ros/PNPActionServer.h>
#include <pnp/pnpfwd.h>
/*#include <robot_scheduling_parameter.h>
#include <private_actions/ctrl_state_recovery_ac.h>
#include <private_actions/robot_command_ac.h>
#include <robot_scheduling_pnp_params.h>*/
#include <private_actions/robot_if_process_ac.h>
#include <private_actions/robot_if_proc_lower_ac.h>
#include <private_actions/robot_if_proc_upper_ac.h>
#include <private_actions/robot_run_state_ac.h>
#include <public_actions/db_process_ac.h>
#include <public_actions/db_process_recovery_ac.h>
#include <public_actions/pose_recognize_ac.h>
#include <public_actions/pose_recognize_recovery_ac.h>
#include <public_actions/pose_move_to_ac.h>
#include <public_actions/pose_move_to_recovery_ac.h>
#include <private_actions/robot_if_params_ac.h>
#include <public_actions/worksheetrun_ac.h>
#include <public_actions/function_run_ac.h>
#include <public_actions/function_run_recovery_ac.h>
#include <private_actions/robot_time_wait_ac.h>
#include <private_actions/interrupt_info_ac.h>
#include <public_actions/pose_turn_to_ac.h>
#include <public_actions/pose_turn_to_recovery_ac.h>
#include <public_actions/dock_to_ac.h>
#include <public_actions/dock_to_recovery_ac.h>
#include <public_actions/undock_to_ac.h>
#include <public_actions/undock_to_recovery_ac.h>
#include <private_actions/power_charge_ac.h>
#include <private_actions/power_charge_recovery_ac.h>
//-----------------------------------------------------------------------------
enum runstatus_type{
	runstatus_none = 0  , runstatus_unknow , runstatus_awarded , runstatus_standby , 
	runstatus_manual, runstatus_remote , runstatus_alarm ,  runstatus_pause , runstatus_end,
	//----------------
	runstatus_basectrl  , runstatus_change
} ;
//-----------------------------------------------------------------------------
enum manualstatus_type{
	manualstatus_none = 0  , manualstatus_plantoexec , manualstatus_moveint , manualstatus_move , 
	manualstatus_turn, manualstatus_worksheet ,
	manualstatus_dataproc
} ;
//-----------------------------------------------------------------------------
enum runmode_type{
	runmode_none = 0  , runmode_standby , runmode_ready , runmode_running , runmode_alarm
} ;
//-----------------------------------------------------------------------------
class robot_scheduling_pnp_server : public PNPActionServer      
{
	//using  robot_run_state_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::robot_run_stateAction> ;
	private:
	   	ros::NodeHandle nh_ ;
		//robot_scheduling_parameter* parameter_ ;
		void Load_CntParameter();
		//--- pnp functions ---
		std::map<std::string, boost::function<void(bool*,std::string)> > function_map_;
		bool runable_;
		//-- declare actionlibclients  --
		/*
		ctrl_state_recovery_ac ctrl_state_recovery_ac_ ;  
		robot_command_ac command_ac_ ;  
		*/
		robot_if_process_ac robot_if_process_ac_;
		robot_if_proc_lower_ac robot_if_proc_lower_ac_; 
		robot_if_proc_upper_ac robot_if_proc_upper_ac_; 
		robot_run_state_ac run_state_ac_ ;  
		db_process_ac db_process_ac_ ;  
		db_process_rcvr_ac db_process_rcvr_ac_ ;
		pose_recognize_ac recognize_ac_ ;  
		pose_recognize_recovery_ac recognize_recovery_ac_ ;  
		pose_move_to_ac move_to_ac_ ;  
		pose_move_to_rcvr_ac move_to_rcvr_ac_ ;
		robot_if_params_ac robot_if_params_ac_;
		worksheetrun_ac worksheetrun_ac_ ;
		function_run_ac function_run_ac_ ;
		function_run_rcvr_ac function_run_rcvr_ac_;
		robot_time_wait_ac robot_time_wait_ac_;
		interrupt_info_ac interrupt_info_ac_;
		pose_turn_to_ac turn_to_ac_ ;  
		pose_turn_to_rcvr_ac turn_to_rcvr_ac_ ;
		dock_to_ac dock_to_ac_ ;  
		dock_to_rcvr_ac dock_to_rcvr_ac_ ;
		undock_to_ac undock_to_ac_ ;  
		undock_to_rcvr_ac undock_to_rcvr_ac_ ;
		power_charge_ac power_charge_ac_ ;  
		power_charge_rcvr_ac power_charge_rcvr_ac_ ;
		//-------------------------------
		std::vector<std::string> v_params_ ;
		bool split_condition(std::string cond) ;

		//robot_scheduling_pnp_params* _pnp_params ;
	public:
	   //robot_scheduling_pnp_server(robot_scheduling_parameter* parameter);
	   robot_scheduling_pnp_server();
	   ~robot_scheduling_pnp_server();
	   //--- pnp functions ---
		int evalCondition(std::string condition);
		virtual void actionExecutionThread(string robotname, string action_name, string action_params, bool *run);
		//--- function to be executed on different places - robot_if_process_ac_ ----
		void interfaceProc(bool *run,std::string params);
		void interfaceLower(bool *run,std::string params);
		void interfaceUpper(bool *run,std::string params);
		//--- function to be executed on different places - run_state_ac_ ----
		void dispatchRunStatus(bool *run,std::string params);
		void getRunStatus(bool *run,std::string params);
		void setRunStatus(bool *run,std::string params);
		void setPreRunStatus(bool *run,std::string params);
		void getPreChangeDisptch(bool *run,std::string params);		
		void dispatchManualStatus(bool *run,std::string params);
		void setManualStatus(bool *run,std::string params);
		void getManualStatus(bool *run,std::string params);
		void checkManualRun(bool *run,std::string params);
		void setManualModeRun(bool *run,std::string params);
		void setManualModeStop(bool *run,std::string params);
		void setManualModeParentRun(bool *run,std::string params);
		void setManualModeParentStop(bool *run,std::string params);

		void checkRemoteRun(bool *run,std::string params);
		void dispatchRemoteStatus(bool *run,std::string params);
		void setRemoteModeRun(bool *run,std::string params);
		void setRemoteModeStop(bool *run,std::string params);
		
		void setManualModeAlarm(bool *run,std::string params);
		void checkAlarmReset(bool *run,std::string params);
		void checkAlarmRecoveryRun(bool *run,std::string params);
		void checkSystemReStart(bool *run,std::string params);
		void dispatchAlarmRecoveryStatus(bool *run,std::string params);
		void setPlanToExec(bool *run,std::string params);
		//--- function to be executed on different places - db_process_ac_/db_process_rcvr_ac_ ----
		void getCheckParamsAll(bool *run,std::string params);
		void getCheckParamsOne(bool *run,std::string params);
		void getPoseIDAll(bool *run,std::string params);
		void getPoseIDOne(bool *run,std::string params);
		void getFunctionIDAll(bool *run,std::string params);
		void getFunctionIDOne(bool *run,std::string params);
		void getActionWorkSheetID(bool *run,std::string params);
		void setAlarmHistoryCode(bool *run,std::string params);
		void setOperateHistoryCode(bool *run,std::string params);
		void getAlarmCodeAll(bool *run,std::string params);
		void getAlarmCodeOne(bool *run,std::string params);
		void getOperateCodeAll(bool *run,std::string params);
		void getOperateCodeOne(bool *run,std::string params);
		void getPIDParamsAll(bool *run,std::string params);
		void getPIDParamsOne(bool *run,std::string params);
		//--- function to be executed on different places - recognize_ac_ ----
		void poseRecognize(bool *run,std::string params);
		void poseRecognizeRecovery(bool *run,std::string params);
		//--- function to be executed on different places - move_to_ac_ ----		
		void moveTarget(bool *run,std::string params);
		void moveTargetRecovery(bool *run,std::string params);
		void moveStop(bool *run,std::string params);
		//--- function to be executed on different places - robot_if_params_ac_ ----	
		void getTargetPose(bool *run,std::string params);
		void setTargetPose(bool *run,std::string params);
		void setFunctionID(bool *run,std::string params);
		void functionDispatch(bool *run,std::string params);
		void processTurnAngle(bool *run,std::string params);
		//void setTurnRelTarget(bool *run,std::string params);
		void getTurnABSAngle(bool *run,std::string params);
		void setTurnRELAngle(bool *run,std::string params);
		//--- function to be executed on different places - worksheetrun_ac_ ----	
		void checkWorkSheetRun(bool *run,std::string params);
		void checkWorkSheetExist(bool *run,std::string params);
		void checkWorkSheetDetail(bool *run,std::string params);
		void workSheetRun(bool *run,std::string params);
		void workSheetFinish(bool *run,std::string params);
		void workSheetNext(bool *run,std::string params);
		void workSheetIndexSet(bool *run,std::string params);
		void workitemPoseRunCheck(bool *run,std::string params);
		void workitemPostTurnCheck(bool *run,std::string params);
		//--- function to be executed on different places - function_run_ac_ ----	
		void doFunction(bool *run,std::string params);
		void doFunctionRecovery(bool *run,std::string params);
		//--- function to be executed on different places - robot_time_wait_ac_ ----	
		void robottimewait(bool *run,std::string params);
		//--- function to be executed on different places - turn_to_ac_ ----	
		void robotTurn(bool *run,std::string params);
		void robotTurnRecovery(bool *run,std::string params);
		//--- function to be executed on different places - dock_to_ac_ ----
		void powerDock(bool *run,std::string params);
		void powerDockRecovery(bool *run,std::string params);
		
		void powerUndock(bool *run,std::string params);
		void powerUndockRecovery(bool *run,std::string params);
		//--- function to be executed on different places - power_charge_ac_ ----
		void powerCharge(bool *run,std::string params);
		void powerChargeRecovery(bool *run,std::string params);
		//--- function to be executed on different places - robot_time_wait_ac_ ----
		void robotWait(bool *run,std::string params);
		//--- function to be executed on different places
		/*		
		void setRunStatus(bool *run,std::string params);
		void controllerStatusRecovery(bool *run,std::string params);
		//----------------
		void commandDispatch(bool *run,std::string params);
		void getCommandStatus(bool *run,std::string params);
		void setCommandStatus(bool *run,std::string params);		
		//----------------
		void getStatusCodeData(bool *run,std::string params);
		void setStatusCodeData(bool *run,std::string params);*/
		//------------------------------
		void init(bool *run,std::string params);
		//------------------------------
		void setRun(bool run){runable_ = run;}

		
		virtual void actionInterrupt(const std::string & robot,const std::string & action,const std::string & params);
};
//-----------------------------------------------------------------------------
#endif

#ifndef robot_scheduling_pnp_params_H
#define robot_scheduling_pnp_params_H
#include <ros/ros.h>
//-----------------------------------------------------------------------------
class robot_scheduling_pnp_params    
{
	private:
		ros::NodeHandle nh_ ;
		//-------------------
		bool b_int_DispatchRunStatus, b_int_GetRunStatus, b_int_SetRunStatus ;
		bool b_int_CommandDispatch, b_int_GetCommandStatus, b_int_SetCommandStatus ;
		bool b_int_PoseRecognize ;
		bool b_int_MoveTarget ;
		bool b_int_PowerDock, b_int_PowerCharge,b_int_PowerUndock ;
		bool b_int_RobotTurn ;
		bool b_int_GetCheckParamsAll,b_int_GetPoseIDAll,b_int_GetAlarmCodeAll; //b_int_GetFunctionIDAll,b_int_GetPoseIDAll ;

	public:
	   	robot_scheduling_pnp_params(ros::NodeHandle& nh);
	   	~robot_scheduling_pnp_params();
		void set_interrupt_name(std::string name,bool b_status);
		bool get_interrupt_name(std::string name,bool &b_status);
};
//-----------------------------------------------------------------------------
#endif

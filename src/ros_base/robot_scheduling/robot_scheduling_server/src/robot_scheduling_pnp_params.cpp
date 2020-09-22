#include <robot_scheduling_pnp_params.h>
//-----------------------------------------------------------------------------
robot_scheduling_pnp_params::robot_scheduling_pnp_params(ros::NodeHandle& nh) :nh_(nh)
{ 
    /*system_status_type = runstatus_none ;     

	system_alarm_code = 0 ;   
	PoseRecognize_TimeOut = 0 ; // unit: sec
	PoseRecognize_CurrentTime = 0 ;  
	PoseRecognize_OutOfTimes = 0 ;  
	PoseRecognize_Recovery_state = action_result_NONE ;	//0:NULL 1:OK 2:Not_OK 3:Timeout */
	b_int_MoveTarget = false ;
	b_int_RobotTurn = false ;
	b_int_GetAlarmCodeAll = false ;
}
//-----------------------------------------------------------------------------
robot_scheduling_pnp_params ::~robot_scheduling_pnp_params()
{
   
}
//-----------------------------------------------------------------------------
void robot_scheduling_pnp_params ::set_interrupt_name(std::string name,bool b_status)
{
	if(name == "MoveTarget")
		b_int_MoveTarget = b_status ;
	else if(name == "RobotTurn")
		b_int_RobotTurn = b_status ;
	else if(name == "GetAlarmCodeAll")
		b_int_GetAlarmCodeAll = b_status ;
}
//-----------------------------------------------------------------------------
bool robot_scheduling_pnp_params ::get_interrupt_name(std::string name,bool &b_status)
{
	bool bRet = (name == "MoveTarget") || (name == "RobotTurn") || (name == "GetAlarmCodeAll") ;
	if(name == "MoveTarget")
		b_status = b_int_MoveTarget ;
	else if(name == "RobotTurn")
		b_status = b_int_RobotTurn ;
	else if(name == "GetAlarmCodeAll")
		b_status = b_int_GetAlarmCodeAll ;

	return bRet ;
}
//-----------------------------------------------------------------------------

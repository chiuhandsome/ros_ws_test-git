#ifndef robot_scheduling_server_H
#define robot_scheduling_server_H
#include <ros/ros.h>

//#include <robot_scheduling_parameter.h>
#include <robot_scheduling_pnp_server.h>
//-----------------------------------------------------------------------------
class robot_scheduling_server     
{
	private:
	   	ros::NodeHandle nh_ ;
		//robot_scheduling_parameter parameter_ ;
		robot_scheduling_pnp_server _pnp_server ;
		void Load_CntParameter();
		//------------------------
	public:
	   robot_scheduling_server();
	   ~robot_scheduling_server();
	   //robot_scheduling_parameter* get_modules_parameter() ;
};
//-----------------------------------------------------------------------------
#endif

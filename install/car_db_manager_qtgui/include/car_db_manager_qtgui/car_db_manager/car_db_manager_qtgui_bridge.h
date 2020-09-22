#ifndef car_db_manager_qtgui_bridge_H
#define car_db_manager_qtgui_bridge_H
#include <ros/ros.h>
#include <car_db_manager/car_db_manager_qtgui_Interface.h>
#include "car_db_manager/controller/ros_controlmodel.h"
//-----------------------------------------------------------------------------
class car_db_manager_qtgui_bridge    
{
	private:
	   	ros::NodeHandle nh_ ;
	   	car_db_manager_qtgui_Interface crlt_qtgui_Interface ;	
		void Load_CntParameter();
		ros_controlmodel* _controlmodel ;
	public:
	   car_db_manager_qtgui_bridge(ros::NodeHandle& nh,ros_controlmodel* controlmodel);
	   ~car_db_manager_qtgui_bridge(); 
};
//-----------------------------------------------------------------------------
#endif

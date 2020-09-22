#ifndef cellctrl_qtgui_bridge_H
#define cellctrl_qtgui_bridge_H
#include <ros/ros.h>
#include <cell_controller/cellctrl_qtgui_Interface.h>
#include "cell_controller/ros_controlmodel.h"
//-----------------------------------------------------------------------------
class cellctrl_qtgui_bridge    
{
	private:
	   	ros::NodeHandle nh_ ;
	   	cellctrl_qtgui_Interface crlt_qtgui_Interface ;	
		void Load_CntParameter();
		ros_controlmodel* _controlmodel ;
	public:
	   cellctrl_qtgui_bridge(ros::NodeHandle& nh,ros_controlmodel* controlmodel);
	   ~cellctrl_qtgui_bridge(); 
};
//-----------------------------------------------------------------------------
#endif

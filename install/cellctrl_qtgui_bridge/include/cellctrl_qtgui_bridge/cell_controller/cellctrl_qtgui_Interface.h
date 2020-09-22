#ifndef cellctrl_qtgui_Interface_H
#define cellctrl_qtgui_Interface_H
//---------------------------------------------------------------------------
//#include <cell_controller/control_mongodbstore_client.h>
//----------------------------------------------------------------------------
#include <ros/ros.h>
//-----------------------------------------------------------------------------
class cellctrl_qtgui_Interface
{	
	private:	
		ros::NodeHandle nh_ ;
		//----------------------------
		void Load_CntParameter();
		//control_mongodbstore_client _mongodbstore_client ;
  	public :
		cellctrl_qtgui_Interface(ros::NodeHandle &nh) ;
		~cellctrl_qtgui_Interface();
		
};
//-----------------------------------------------------------------------------
#endif   

#ifndef car_db_manager_qtgui_Interface_H
#define car_db_manager_qtgui_Interface_H
//---------------------------------------------------------------------------
//#include <car_db_manager/control_mongodbstore_client.h>
//----------------------------------------------------------------------------
#include <ros/ros.h>
//-----------------------------------------------------------------------------
class car_db_manager_qtgui_Interface
{	
	private:	
		ros::NodeHandle nh_ ;
		//----------------------------
		void Load_CntParameter();
		//control_mongodbstore_client _mongodbstore_client ;
  	public :
		car_db_manager_qtgui_Interface(ros::NodeHandle &nh) ;
		~car_db_manager_qtgui_Interface();
		
};
//-----------------------------------------------------------------------------
#endif   

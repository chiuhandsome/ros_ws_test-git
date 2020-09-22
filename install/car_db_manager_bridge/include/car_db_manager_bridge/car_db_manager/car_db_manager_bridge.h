#ifndef cellctrl_database_bridge_H
#define cellctrl_database_bridge_H
#include <ros/ros.h>
#include <car_db_manager/car_db_manager_Interface.h>

//#define using_mongodb		true
//-----------------------------------------------------------------------------
class car_db_manager_bridge    
{
	private:
	   	ros::NodeHandle nh_ ;
	   	car_db_manager_Interface db_manager_Interface ;	
		void Load_CntParameter();
	public:
	   car_db_manager_bridge(ros::NodeHandle& nh);
	   ~car_db_manager_bridge();
};
//-----------------------------------------------------------------------------
#endif

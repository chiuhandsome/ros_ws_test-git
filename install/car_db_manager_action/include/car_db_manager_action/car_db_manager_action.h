#ifndef car_db_manager_action_H
#define car_db_manager_action_H
#include <ros/ros.h>
#include <car_db_manager_action_if.h>
//-----------------------------------------------------------------------------
class car_db_manager_action    
{
	private:
	   	ros::NodeHandle nh_ ;
	   	car_db_manager_action_if crlt_action_Interface ;	
		std::string car_db_process_name ;
		void Load_CntParameter();
	public:
	   car_db_manager_action(ros::NodeHandle& nh);
	   ~car_db_manager_action(); 
};
//-----------------------------------------------------------------------------
#endif

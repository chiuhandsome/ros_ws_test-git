#ifndef CONTROL_MONGODBSTORE_CLIENT_H
#define CONTROL_MONGODBSTORE_CLIENT_H
//----------------------------------------------------------------------------
#include <ros/ros.h>
#include <car_db_manager_tables/parameters_tables_process.h>
#include <car_db_related_tables/worksheet_data_process.h>
//----------------------------------------------------------------------------
//typedef enum {
//	car_tbedit_none = 0 , car_tbedit_add, car_tbedit_modify, car_tbedit_delete, car_tbedit_query , car_tbedit_refresh
//} car_tbedit_type ;
//----------------------------------------------------------------------------
class control_mongodbstore_client 
{
	private:
		ros::NodeHandle nh_ ;
		//-------------------------
	   parameters_tables_process _parameters_tb_process ;
	   worksheet_data_process _worksheet_data_process ;
	protected:
	public:
		control_mongodbstore_client(ros::NodeHandle nh) ;
		~control_mongodbstore_client();	
};
//-----------------------------------------------------------------------------
#endif   

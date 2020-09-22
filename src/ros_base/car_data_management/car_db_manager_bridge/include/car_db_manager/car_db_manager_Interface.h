#ifndef cellctrl_database_Interface_H
#define cellctrl_database_Interface_H
//---------------------------------------------------------------------------
#include <car_db_manager/control_mongodbstore_client.h>
//----------------------------------------------------------------------------
#include <ros/ros.h>
typedef enum {
	eDB_op_mongodb = 0 
} database_op_type ;
//-----------------------------------------------------------------------------
class car_db_manager_Interface
{	
	private:	
		ros::NodeHandle nh_ ;
		//----------------------------
		void Load_CntParameter();
		control_mongodbstore_client _mongodbstore_client ;
  	public :
		car_db_manager_Interface(ros::NodeHandle &nh) ;
		~car_db_manager_Interface();
		
};
//-----------------------------------------------------------------------------
#endif   

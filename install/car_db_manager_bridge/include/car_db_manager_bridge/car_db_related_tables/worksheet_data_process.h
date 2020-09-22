#ifndef worksheet_data_process_H
#define worksheet_data_process_H
//----------------------------------------------------------------------------
#include <ros_utility_tools/table_mongodbstore_client.h>
#include <car_db_related_tables/worksheet_data_tables.h>
//************* table_models show as below ***********************************
///** table name : work_sheet_main                                           **
//** table name : work_sheet_items                                          **
//****************************************************************************
//-----------------------------------------------------------------------------
class worksheet_data_process  
{	
	private:
		ros::NodeHandle &nh_;
		void Load_CntParameter();	
		//------- model name : ellctrl_agvapp_tables ---------------- 	
		module_work_sheet_main* work_sheet_main ;
		std::string tbname_work_sheet_main ;

		module_work_sheet_items* work_sheet_items ;
		std::string tbname_work_sheet_items ;
  	public :
		worksheet_data_process(ros::NodeHandle &nh);	 
		~worksheet_data_process();
};
//-----------------------------------------------------------------------------
#endif   

#ifndef parameters_tables_process_H
#define parameters_tables_process_H
//----------------------------------------------------------------------------
#include <ros_utility_tools/table_mongodbstore_client.h>
#include <car_db_manager_tables/parameters_tables.h>
//****************************************************************************
//**          model name : parameters_tables                               **
//************* table_models show as below ***********************************
//** table name : check_parameters                                          **
//** table name : pid_ctrl_parameters                                       **
//** table name : targer_pos2d_parameters                                   **
//** table name : alarmcode_parameters                                      **
//** table name : operatecode_parameters                                    **
//** table name : car_alarm_history                                         **
//** table name : car_operate_history                                       **
//** table name : action_function_parameters                                **
//****************************************************************************
//-----------------------------------------------------------------------------
class parameters_tables_process  
{	
	private:
		ros::NodeHandle &nh_;
		void Load_CntParameter();	
		//------- model name : ellctrl_agvapp_tables ---------------- 	
		module_check_parameters* check_parameters ;
		std::string tbname_check_parameters ;

		module_pid_ctrl_parameters* pid_ctrl_parameters ;
		std::string tbname_pid_ctrl_parameters ;

		module_targer_pos2d_parameters* targer_pos2d_parameters ;
		std::string tbname_targer_pos2d_parameters ;

		module_alarmcode_parameters* alarmcode_parameters ;
		std::string tbname_alarmcode_parameters ;

		module_operatecode_parameters* operatecode_parameters ;
		std::string tbname_operatecode_parameters ;

		module_car_alarm_history* car_alarm_history ;
		std::string tbname_car_alarm_history ;

		module_car_operate_history* car_operate_history ;
		std::string tbname_car_operate_history ;

		module_action_function_parameters* action_function_parameters ;
		std::string tbname_action_function_parameters ;
  	public :
		parameters_tables_process(ros::NodeHandle &nh);	 
		~parameters_tables_process();
};
//-----------------------------------------------------------------------------
#endif   

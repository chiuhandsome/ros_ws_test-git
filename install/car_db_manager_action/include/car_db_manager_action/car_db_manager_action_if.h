#ifndef car_db_manager_action_if_H
#define car_db_manager_action_if_H
//---------------------------------------------------------------------------
#include "car_db_control_module.h"
#include <ros/ros.h>

#include <actionlib/server/simple_action_server.h>
#include <car_db_manager_msgs/car_db_processAction.h>
#include <car_db_manager_msgs/car_db_process_recoveryAction.h>
//-----------------------------------------------------------------------------
class car_db_manager_action_if
{	
	//---- actionlib -- server ---
    using car_db_process_as = actionlib::SimpleActionServer<car_db_manager_msgs::car_db_processAction> ;
	using car_db_process_rcvr_as = actionlib::SimpleActionServer<car_db_manager_msgs::car_db_process_recoveryAction> ;
	private:	
		ros::NodeHandle nh_ ;
		//----------------------------
		void Load_CntParameter();
		car_db_control_module _car_db_crtl_module ;
		//----------------------------
		//---- actionlib -- server  
        car_db_process_as car_db_process_as_;  
        void car_db_process_CB(const car_db_manager_msgs::car_db_processGoalConstPtr& goal);  
		ros::Time begin_Time ;
        int Period_timeout ;
        int _current_times ;  
		int _retry_times ;
		vector<std::string> proc_data_vector;
		void paras_to_proc_data_vector(std::string parameter);  
		vector<std::string> result_data_vector;

		car_db_process_rcvr_as car_db_process_rcvr_as_;  
        void car_db_process_rcvr_CB(const car_db_manager_msgs::car_db_process_recoveryGoalConstPtr& goal);  
		//***********************************
        //**** table : check_parameters  ****   
        //***********************************    
		bool check_parameters_update_action(db_tb_edit_type _edit_type) ; 
		bool check_parameters_delete_action(std::string unique_code);
		bool check_parameters_query_action(db_tb_search_type query_base,dynamic_check_parameters_search_type query_opt,
                                           std::string search_param);
		//bool table_process_check_parameters(const car_db_manager_msgs::car_db_processGoalConstPtr& goal,
		//                                    car_db_manager_msgs::car_db_processResult _result);
		bool table_process_check_parameters(const car_db_manager_msgs::car_db_processGoalConstPtr& goal);
		//**************************************
        //**** table : pid_ctrl_parameters  ****   
        //**************************************  
		bool pid_ctrl_parameters_update_action(db_tb_edit_type _edit_type) ; 
		bool pid_ctrl_parameters_delete_action(std::string unique_code);
		bool pid_ctrl_parameters_query_action(db_tb_search_type query_base,dynamic_pid_ctrl_parameters_search_type query_opt,
                                              std::string search_param);
		bool table_process_pid_ctrl_parameters(const car_db_manager_msgs::car_db_processGoalConstPtr& goal,
		                                       car_db_manager_msgs::car_db_processResult _result);
		//******************************************
        //**** table : targer_pos2d_parameters  ****   
        //******************************************  
		bool targer_pos2d_parameters_update_action(db_tb_edit_type _edit_type) ; 
		bool targer_pos2d_parameters_delete_action(std::string unique_code);
		bool targer_pos2d_parameters_query_action(db_tb_search_type query_base,dynamic_targer_pos2d_parameters_search_type query_opt,
                                              std::string search_param);
		bool table_process_targer_pos2d_parameters(const car_db_manager_msgs::car_db_processGoalConstPtr& goal,
		                                       car_db_manager_msgs::car_db_processResult _result);
		//******************************************
        //**** table : alarmcode_parameters  ****   
        //******************************************  
		bool alarmcode_parameters_update_action(db_tb_edit_type _edit_type) ; 
		bool alarmcode_parameters_delete_action(std::string unique_code);
		bool alarmcode_parameters_query_action(db_tb_search_type query_base,dynamic_alarmcode_parameters_search_type query_opt,
                                              std::string search_param);
		bool table_process_alarmcode_parameters(const car_db_manager_msgs::car_db_processGoalConstPtr& goal,
		                                       car_db_manager_msgs::car_db_processResult _result);
		//******************************************
        //**** table : operatecode_parameters  ****   
        //******************************************  
		bool operatecode_parameters_update_action(db_tb_edit_type _edit_type) ; 
		bool operatecode_parameters_delete_action(std::string unique_code);
		bool operatecode_parameters_query_action(db_tb_search_type query_base,dynamic_operatecode_parameters_search_type query_opt,
                                              std::string search_param);
		bool table_process_operatecode_parameters(const car_db_manager_msgs::car_db_processGoalConstPtr& goal,
		                                       car_db_manager_msgs::car_db_processResult _result);
		//******************************************
        //**** table : car_alarm_history        ****   
        //******************************************  
		bool car_alarm_history_update_action(db_tb_edit_type _edit_type) ; 
		bool car_alarm_history_delete_action(std::string unique_code);
		bool car_alarm_history_query_action(db_tb_search_type query_base,dynamic_car_alarm_history_search_type query_opt,
                                              std::string search_param);
		bool table_process_car_alarm_history(const car_db_manager_msgs::car_db_processGoalConstPtr& goal,
		                                       car_db_manager_msgs::car_db_processResult _result);
		//******************************************
        //**** table : car_operate_history      ****   
        //******************************************  
		bool car_operate_history_update_action(db_tb_edit_type _edit_type) ; 
		bool car_operate_history_delete_action(std::string unique_code);
		bool car_operate_history_query_action(db_tb_search_type query_base,dynamic_car_operate_history_search_type query_opt,
                                              std::string search_param);
		bool table_process_car_operate_history(const car_db_manager_msgs::car_db_processGoalConstPtr& goal,
		                                       car_db_manager_msgs::car_db_processResult _result);
		//******************************************
        //**** table : action_function_parameters **   
        //******************************************  
		bool action_function_parameters_update_action(db_tb_edit_type _edit_type) ; 
		bool action_function_parameters_delete_action(std::string unique_code);
		bool action_function_parameters_query_action(db_tb_search_type query_base,dynamic_action_function_parameters_search_type query_opt,
                                              std::string search_param);
		bool table_process_action_function_parameters(const car_db_manager_msgs::car_db_processGoalConstPtr& goal,
		                                       car_db_manager_msgs::car_db_processResult _result);
		//***********************************
        //**** table : work_sheet_main  ****   
        //***********************************    
		bool work_sheet_main_update_action(db_tb_edit_type _edit_type) ; 
		bool work_sheet_main_delete_action(std::string unique_code);
		bool work_sheet_main_query_action(db_tb_search_type query_base,dynamic_work_sheet_main_search_type query_opt,
                                              std::string search_param);
		bool table_process_work_sheet_main(const car_db_manager_msgs::car_db_processGoalConstPtr& goal,
		                                         car_db_manager_msgs::car_db_processResult _result);
		//**************************************
        //**** table : work_sheet_items     ****   
        //************************************** 
		bool work_sheet_items_update_action(db_tb_edit_type _edit_type) ; 
		bool work_sheet_items_delete_action(std::string unique_code);
		bool work_sheet_items_query_action(db_tb_search_type query_base,dynamic_work_sheet_items_search_type query_opt,
                                              std::string search_param);
		bool table_process_work_sheet_items(const car_db_manager_msgs::car_db_processGoalConstPtr& goal,
		                                         car_db_manager_msgs::car_db_processResult _result); 
  	public :
		car_db_manager_action_if(ros::NodeHandle &nh,std::string car_db_process_name) ;
		~car_db_manager_action_if();

		void car_db_process_as_start(); 
		void car_db_process_rcvr_as_start(); 
		
};
//-----------------------------------------------------------------------------
#endif   

#ifndef parameters_tables_H
#define parameters_tables_H
//************* table_names show as below ************************************
//** table name : check_parameters                                          **
//** table name : pid_ctrl_parameters                                       **
//** table name : targer_pos2d_parameters                                   **
//** table name : alarmcode_parameters                                      **
//** table name : operatecode_parameters                                    **
//** table name : car_alarm_history                                         **
//** table name : car_operate_history                                       **
//** table name : action_function_parameters                                **
//****************************************************************************
#include <ros_utility_tools/table_mongodbstore_client.h>
#include <ros_utility_tools/ros_tools.h>
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : check_parameters                                          **
//****************************************************************************
#include <car_db_manager_msgs/CheckParameters.h>
#include <car_db_manager_msgs/CheckParametersCmd.h>
//----------------------------------------------------------------------------
typedef car_db_manager_msgs::CheckParameters type_check_parameters ;
typedef car_db_manager_msgs::CheckParametersCmd type_check_parameters_cmd ;
typedef boost::shared_ptr<car_db_manager_msgs::CheckParameters> ptr_check_parameters ;
typedef car_db_manager_msgs::CheckParametersCmd::Request type_check_parameters_req ;
typedef car_db_manager_msgs::CheckParametersCmd::Response type_check_parameters_resp ;

typedef enum {
	edynamic_check_parameters_search_base_name = 0 , edynamic_check_parameters_search_uptime
} dynamic_check_parameters_search_type;
//-----------------------------------------------------------------------------
class module_check_parameters : public table_mongodbstore_client<type_check_parameters,type_check_parameters_req,type_check_parameters_resp>
{	
	private:	
		ros::NodeHandle &nh_;
		std::string tbname_ ;
		dynamic_check_parameters_search_type F_dynamicsearch_type;
		bool is_search_key_Exist(const boost::shared_ptr<type_check_parameters> &_iter);
  	public :
		module_check_parameters(ros::NodeHandle &nh,std::string tablename) ;  	 
		~module_check_parameters();
		//--------------------------
		bool table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_check_parameters> &_data);
		bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,		//-- overLoad virtual  
		                               type_check_parameters_req &req,const boost::shared_ptr<type_check_parameters> &msg_data);
		db_tb_error_type table_data_checkinput(const boost::shared_ptr<type_check_parameters> &_data);
		bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type);//-- overLoad virtual basecontroller
		bool v_set_finddata_MsgType_resp(type_check_parameters_resp &resp,db_tb_error_type error_type);//-- overLoad virtual  
		db_tb_error_type v_table_data_check_req(type_check_parameters_req &req);
		bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_check_parameters_req &req);//-- overLoad virtual basecontroller
		bool v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance) ;
		bool v_check_unique_code_exist(type_check_parameters_req &req);
};
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : pid_ctrl_parameters                                       **
//****************************************************************************
#include <car_db_manager_msgs/PidCtrlParameters.h>
#include <car_db_manager_msgs/PidCtrlParametersCmd.h>
//----------------------------------------------------------------------------
typedef car_db_manager_msgs::PidCtrlParameters type_pid_ctrl_parameters ;
typedef car_db_manager_msgs::PidCtrlParametersCmd type_pid_ctrl_parameters_cmd ;
typedef boost::shared_ptr<car_db_manager_msgs::PidCtrlParameters> ptr_pid_ctrl_parameters ;
typedef car_db_manager_msgs::PidCtrlParametersCmd::Request type_pid_ctrl_parameters_req ;
typedef car_db_manager_msgs::PidCtrlParametersCmd::Response type_pid_ctrl_parameters_resp ;

typedef enum {
	edynamic_pid_ctrl_parameters_search_base_name = 0 , edynamic_pid_ctrl_parameters_search_uptime
} dynamic_pid_ctrl_parameters_search_type;
//-----------------------------------------------------------------------------
class module_pid_ctrl_parameters : public table_mongodbstore_client<type_pid_ctrl_parameters,type_pid_ctrl_parameters_req,type_pid_ctrl_parameters_resp>
{	
	private:	
		ros::NodeHandle &nh_;
		std::string tbname_ ;
		dynamic_pid_ctrl_parameters_search_type F_dynamicsearch_type;
		bool is_search_key_Exist(const boost::shared_ptr<type_pid_ctrl_parameters> &_iter);
  	public :
		module_pid_ctrl_parameters(ros::NodeHandle &nh,std::string tablename) ;  	 
		~module_pid_ctrl_parameters();
		//--------------------------
		bool table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_pid_ctrl_parameters> &_data);
		bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,		//-- overLoad virtual  
		                               type_pid_ctrl_parameters_req &req,const boost::shared_ptr<type_pid_ctrl_parameters> &msg_data);
		db_tb_error_type table_data_checkinput(const boost::shared_ptr<type_pid_ctrl_parameters> &_data);
		bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type);//-- overLoad virtual basecontroller
		bool v_set_finddata_MsgType_resp(type_pid_ctrl_parameters_resp &resp,db_tb_error_type error_type);//-- overLoad virtual  
		db_tb_error_type v_table_data_check_req(type_pid_ctrl_parameters_req &req);
		bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_pid_ctrl_parameters_req &req);//-- overLoad virtual basecontroller
		bool v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance) ;
		bool v_check_unique_code_exist(type_pid_ctrl_parameters_req &req);
};
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : targer_pos2d_parameters                                   **
//****************************************************************************
#include <car_db_manager_msgs/TargerPos2dParameters.h>
#include <car_db_manager_msgs/TargerPos2dParametersCmd.h>
//----------------------------------------------------------------------------
typedef car_db_manager_msgs::TargerPos2dParameters type_targer_pos2d_parameters ;
typedef car_db_manager_msgs::TargerPos2dParametersCmd type_targer_pos2d_parameters_cmd ;
typedef boost::shared_ptr<car_db_manager_msgs::TargerPos2dParameters> ptr_targer_pos2d_parameters ;
typedef car_db_manager_msgs::TargerPos2dParametersCmd::Request type_targer_pos2d_parameters_req ;
typedef car_db_manager_msgs::TargerPos2dParametersCmd::Response type_targer_pos2d_parameters_resp ;

typedef enum {
	edynamic_targer_pos2d_parameters_search_base_name = 0 , edynamic_targer_pos2d_parameters_search_uptime
} dynamic_targer_pos2d_parameters_search_type;
//-----------------------------------------------------------------------------
class module_targer_pos2d_parameters : public table_mongodbstore_client<type_targer_pos2d_parameters,type_targer_pos2d_parameters_req,type_targer_pos2d_parameters_resp>
{	
	private:	
		ros::NodeHandle &nh_;
		std::string tbname_ ;
		dynamic_targer_pos2d_parameters_search_type F_dynamicsearch_type;
		bool is_search_key_Exist(const boost::shared_ptr<type_targer_pos2d_parameters> &_iter);
  	public :
		module_targer_pos2d_parameters(ros::NodeHandle &nh,std::string tablename) ;  	 
		~module_targer_pos2d_parameters();
		//--------------------------
		bool table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_targer_pos2d_parameters> &_data);
		bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,		//-- overLoad virtual  
		                               type_targer_pos2d_parameters_req &req,const boost::shared_ptr<type_targer_pos2d_parameters> &msg_data);
		db_tb_error_type table_data_checkinput(const boost::shared_ptr<type_targer_pos2d_parameters> &_data);
		bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type);//-- overLoad virtual basecontroller
		bool v_set_finddata_MsgType_resp(type_targer_pos2d_parameters_resp &resp,db_tb_error_type error_type);//-- overLoad virtual  
		db_tb_error_type v_table_data_check_req(type_targer_pos2d_parameters_req &req);
		bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_targer_pos2d_parameters_req &req);//-- overLoad virtual basecontroller
		bool v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance) ;
		bool v_check_unique_code_exist(type_targer_pos2d_parameters_req &req);
};
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : alarmcode_parameters                                      **
//****************************************************************************
#include <car_db_manager_msgs/AlarmcodeParameters.h>
#include <car_db_manager_msgs/AlarmcodeParametersCmd.h>
//----------------------------------------------------------------------------
typedef car_db_manager_msgs::AlarmcodeParameters type_alarmcode_parameters ;
typedef car_db_manager_msgs::AlarmcodeParametersCmd type_alarmcode_parameters_cmd ;
typedef boost::shared_ptr<car_db_manager_msgs::AlarmcodeParameters> ptr_alarmcode_parameters ;
typedef car_db_manager_msgs::AlarmcodeParametersCmd::Request type_alarmcode_parameters_req ;
typedef car_db_manager_msgs::AlarmcodeParametersCmd::Response type_alarmcode_parameters_resp ;

typedef enum {
	edynamic_alarmcode_parameters_search_base_name = 0 , edynamic_alarmcode_parameters_search_uptime
} dynamic_alarmcode_parameters_search_type;
//-----------------------------------------------------------------------------
class module_alarmcode_parameters : public table_mongodbstore_client<type_alarmcode_parameters,type_alarmcode_parameters_req,type_alarmcode_parameters_resp>
{	
	private:	
		ros::NodeHandle &nh_;
		std::string tbname_ ;
		dynamic_alarmcode_parameters_search_type F_dynamicsearch_type;
		bool is_search_key_Exist(const boost::shared_ptr<type_alarmcode_parameters> &_iter);
  	public :
		module_alarmcode_parameters(ros::NodeHandle &nh,std::string tablename) ;  	 
		~module_alarmcode_parameters();
		//--------------------------
		bool table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_alarmcode_parameters> &_data);
		bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,		//-- overLoad virtual  
		                               type_alarmcode_parameters_req &req,const boost::shared_ptr<type_alarmcode_parameters> &msg_data);
		db_tb_error_type table_data_checkinput(const boost::shared_ptr<type_alarmcode_parameters> &_data);
		bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type);//-- overLoad virtual basecontroller
		bool v_set_finddata_MsgType_resp(type_alarmcode_parameters_resp &resp,db_tb_error_type error_type);//-- overLoad virtual  
		db_tb_error_type v_table_data_check_req(type_alarmcode_parameters_req &req);
		bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_alarmcode_parameters_req &req);//-- overLoad virtual basecontroller
		bool v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance) ;
		bool v_check_unique_code_exist(type_alarmcode_parameters_req &req);
};
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : operatecode_parameters                                    **
//****************************************************************************
#include <car_db_manager_msgs/OperatecodeParameters.h>
#include <car_db_manager_msgs/OperatecodeParametersCmd.h>
//----------------------------------------------------------------------------
typedef car_db_manager_msgs::OperatecodeParameters type_operatecode_parameters ;
typedef car_db_manager_msgs::OperatecodeParametersCmd type_operatecode_parameters_cmd ;
typedef boost::shared_ptr<car_db_manager_msgs::OperatecodeParameters> ptr_operatecode_parameters ;
typedef car_db_manager_msgs::OperatecodeParametersCmd::Request type_operatecode_parameters_req ;
typedef car_db_manager_msgs::OperatecodeParametersCmd::Response type_operatecode_parameters_resp ;

typedef enum {
	edynamic_operatecode_parameters_search_base_name = 0 , edynamic_operatecode_parameters_search_uptime
} dynamic_operatecode_parameters_search_type;
//-----------------------------------------------------------------------------
class module_operatecode_parameters : public table_mongodbstore_client<type_operatecode_parameters,type_operatecode_parameters_req,type_operatecode_parameters_resp>
{	
	private:	
		ros::NodeHandle &nh_;
		std::string tbname_ ;
		dynamic_operatecode_parameters_search_type F_dynamicsearch_type;
		bool is_search_key_Exist(const boost::shared_ptr<type_operatecode_parameters> &_iter);
  	public :
		module_operatecode_parameters(ros::NodeHandle &nh,std::string tablename) ;  	 
		~module_operatecode_parameters();
		//--------------------------
		bool table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_operatecode_parameters> &_data);
		bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,		//-- overLoad virtual  
		                               type_operatecode_parameters_req &req,const boost::shared_ptr<type_operatecode_parameters> &msg_data);
		db_tb_error_type table_data_checkinput(const boost::shared_ptr<type_operatecode_parameters> &_data);
		bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type);//-- overLoad virtual basecontroller
		bool v_set_finddata_MsgType_resp(type_operatecode_parameters_resp &resp,db_tb_error_type error_type);//-- overLoad virtual  
		db_tb_error_type v_table_data_check_req(type_operatecode_parameters_req &req);
		bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_operatecode_parameters_req &req);//-- overLoad virtual basecontroller
		bool v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance) ;
		bool v_check_unique_code_exist(type_operatecode_parameters_req &req);
};
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : car_alarm_history                                         **
//****************************************************************************
#include <car_db_manager_msgs/CarAlarmHistory.h>
#include <car_db_manager_msgs/CarAlarmHistoryCmd.h>
//----------------------------------------------------------------------------
typedef car_db_manager_msgs::CarAlarmHistory type_car_alarm_history ;
typedef car_db_manager_msgs::CarAlarmHistoryCmd type_car_alarm_history_cmd ;
typedef boost::shared_ptr<car_db_manager_msgs::CarAlarmHistory> ptr_car_alarm_history ;
typedef car_db_manager_msgs::CarAlarmHistoryCmd::Request type_car_alarm_history_req ;
typedef car_db_manager_msgs::CarAlarmHistoryCmd::Response type_car_alarm_history_resp ;

typedef enum {
	edynamic_car_alarm_history_search_base_name = 0 , edynamic_car_alarm_history_search_uptime
} dynamic_car_alarm_history_search_type;
//-----------------------------------------------------------------------------
class module_car_alarm_history : public table_mongodbstore_client<type_car_alarm_history,type_car_alarm_history_req,type_car_alarm_history_resp>
{	
	private:	
		ros::NodeHandle &nh_;
		std::string tbname_ ;
		dynamic_car_alarm_history_search_type F_dynamicsearch_type;
		bool is_search_key_Exist(const boost::shared_ptr<type_car_alarm_history> &_iter);
  	public :
		module_car_alarm_history(ros::NodeHandle &nh,std::string tablename) ;  	 
		~module_car_alarm_history();
		//--------------------------
		bool table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_car_alarm_history> &_data);
		bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,		//-- overLoad virtual  
		                               type_car_alarm_history_req &req,const boost::shared_ptr<type_car_alarm_history> &msg_data);
		db_tb_error_type table_data_checkinput(const boost::shared_ptr<type_car_alarm_history> &_data);
		bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type);//-- overLoad virtual basecontroller
		bool v_set_finddata_MsgType_resp(type_car_alarm_history_resp &resp,db_tb_error_type error_type);//-- overLoad virtual  
		db_tb_error_type v_table_data_check_req(type_car_alarm_history_req &req);
		bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_car_alarm_history_req &req);//-- overLoad virtual basecontroller
		bool v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance) ;
		bool v_check_unique_code_exist(type_car_alarm_history_req &req);
};
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : car_operate_history                                       **
//****************************************************************************
#include <car_db_manager_msgs/CarOperateHistory.h>
#include <car_db_manager_msgs/CarOperateHistoryCmd.h>
//----------------------------------------------------------------------------
typedef car_db_manager_msgs::CarOperateHistory type_car_operate_history ;
typedef car_db_manager_msgs::CarOperateHistoryCmd type_car_operate_history_cmd ;
typedef boost::shared_ptr<car_db_manager_msgs::CarOperateHistory> ptr_car_operate_history ;
typedef car_db_manager_msgs::CarOperateHistoryCmd::Request type_car_operate_history_req ;
typedef car_db_manager_msgs::CarOperateHistoryCmd::Response type_car_operate_history_resp ;

typedef enum {
	edynamic_car_operate_history_search_base_name = 0 , edynamic_car_operate_history_search_uptime
} dynamic_car_operate_history_search_type;
//-----------------------------------------------------------------------------
class module_car_operate_history : public table_mongodbstore_client<type_car_operate_history,type_car_operate_history_req,type_car_operate_history_resp>
{	
	private:	
		ros::NodeHandle &nh_;
		std::string tbname_ ;
		dynamic_car_operate_history_search_type F_dynamicsearch_type;
		bool is_search_key_Exist(const boost::shared_ptr<type_car_operate_history> &_iter);
  	public :
		module_car_operate_history(ros::NodeHandle &nh,std::string tablename) ;  	 
		~module_car_operate_history();
		//--------------------------
		bool table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_car_operate_history> &_data);
		bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,		//-- overLoad virtual  
		                               type_car_operate_history_req &req,const boost::shared_ptr<type_car_operate_history> &msg_data);
		db_tb_error_type table_data_checkinput(const boost::shared_ptr<type_car_operate_history> &_data);
		bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type);//-- overLoad virtual basecontroller
		bool v_set_finddata_MsgType_resp(type_car_operate_history_resp &resp,db_tb_error_type error_type);//-- overLoad virtual  
		db_tb_error_type v_table_data_check_req(type_car_operate_history_req &req);
		bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_car_operate_history_req &req);//-- overLoad virtual basecontroller
		bool v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance) ;
		bool v_check_unique_code_exist(type_car_operate_history_req &req);
};
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : action_function_parameters                                **
//****************************************************************************
#include <car_db_manager_msgs/ActionFunctionParameters.h>
#include <car_db_manager_msgs/ActionFunctionParametersCmd.h>
//----------------------------------------------------------------------------
typedef car_db_manager_msgs::ActionFunctionParameters type_action_function_parameters ;
typedef car_db_manager_msgs::ActionFunctionParametersCmd type_action_function_parameters_cmd ;
typedef boost::shared_ptr<car_db_manager_msgs::ActionFunctionParameters> ptr_action_function_parameters ;
typedef car_db_manager_msgs::ActionFunctionParametersCmd::Request type_action_function_parameters_req ;
typedef car_db_manager_msgs::ActionFunctionParametersCmd::Response type_action_function_parameters_resp ;

typedef enum {
	edynamic_action_function_parameters_search_base_name = 0 , edynamic_action_function_parameters_search_uptime
} dynamic_action_function_parameters_search_type;
//-----------------------------------------------------------------------------
class module_action_function_parameters : public table_mongodbstore_client<type_action_function_parameters,type_action_function_parameters_req,type_action_function_parameters_resp>
{	
	private:	
		ros::NodeHandle &nh_;
		std::string tbname_ ;
		dynamic_action_function_parameters_search_type F_dynamicsearch_type;
		bool is_search_key_Exist(const boost::shared_ptr<type_action_function_parameters> &_iter);
  	public :
		module_action_function_parameters(ros::NodeHandle &nh,std::string tablename) ;  	 
		~module_action_function_parameters();
		//--------------------------
		bool table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_action_function_parameters> &_data);
		bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,		//-- overLoad virtual  
		                               type_action_function_parameters_req &req,const boost::shared_ptr<type_action_function_parameters> &msg_data);
		db_tb_error_type table_data_checkinput(const boost::shared_ptr<type_action_function_parameters> &_data);
		bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type);//-- overLoad virtual basecontroller
		bool v_set_finddata_MsgType_resp(type_action_function_parameters_resp &resp,db_tb_error_type error_type);//-- overLoad virtual  
		db_tb_error_type v_table_data_check_req(type_action_function_parameters_req &req);
		bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_action_function_parameters_req &req);//-- overLoad virtual basecontroller
		bool v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance) ;
		bool v_check_unique_code_exist(type_action_function_parameters_req &req);
};
//-----------------------------------------------------------------------------
//*****************************************************************************
#endif   

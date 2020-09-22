#ifndef ROS_CONTROLMODEL_H
#define ROS_CONTROLMODEL_H
//-----------------------------------------------------------------------------
typedef enum {
	edynamic_check_parameters_search_base_name = 0 , edynamic_check_parameters_search_uptime
}  dynamic_check_parameters_search_type;
typedef enum {
	edynamic_pid_ctrl_parameters_search_base_name = 0 , edynamic_pid_ctrl_parameters_search_uptime
}  dynamic_pid_ctrl_parameters_search_type;
typedef enum {
	edynamic_targer_pos2d_parameters_search_base_name = 0 , edynamic_targer_pos2d_parameters_search_uptime
}  dynamic_targer_pos2d_parameters_search_type;
typedef enum {
	edynamic_alarmcode_parameters_search_base_name = 0 , edynamic_alarmcode_parameters_search_uptime
}  dynamic_alarmcode_parameters_search_type;
typedef enum {
	edynamic_operatecode_parameters_search_base_name = 0 , edynamic_operatecode_parameters_search_uptime
}  dynamic_operatecode_parameters_search_type;
typedef enum {
	edynamic_car_alarm_history_search_base_name = 0 , edynamic_car_alarm_history_search_uptime
}  dynamic_car_alarm_history_search_type;
typedef enum {
	edynamic_car_operate_history_search_base_name = 0 , edynamic_car_operate_history_search_uptime
}  dynamic_car_operate_history_search_type;
typedef enum {
	edynamic_action_function_parameters_search_base_name = 0 , edynamic_action_function_parameters_search_uptime
}  dynamic_action_function_parameters_search_type;
//-----------------------------------------------------------------------------
#include <ros/ros.h>
#include <vector>
#include <car_db_manager_msgs/CheckParameters.h>
#include <car_db_manager_msgs/CheckParametersCmd.h>
#include <car_db_manager_msgs/PidCtrlParameters.h>
#include <car_db_manager_msgs/PidCtrlParametersCmd.h>
#include <car_db_manager_msgs/TargerPos2dParameters.h>
#include <car_db_manager_msgs/TargerPos2dParametersCmd.h>
#include <car_db_manager_msgs/AlarmcodeParameters.h>
#include <car_db_manager_msgs/AlarmcodeParametersCmd.h>
#include <car_db_manager_msgs/OperatecodeParameters.h>
#include <car_db_manager_msgs/OperatecodeParametersCmd.h>
#include <car_db_manager_msgs/CarAlarmHistory.h>
#include <car_db_manager_msgs/CarAlarmHistoryCmd.h>
#include <car_db_manager_msgs/CarOperateHistory.h>
#include <car_db_manager_msgs/CarOperateHistoryCmd.h>
#include <car_db_manager_msgs/ActionFunctionParameters.h>
#include <car_db_manager_msgs/ActionFunctionParametersCmd.h>

#include <ros_utility_tools/table_mongodbstore_client.h>
#include <ros/ros.h>
#include <mongodb_store/message_store.h>
#include <boost/date_time/posix_time/posix_time.hpp>
#include <boost/foreach.hpp>
#include <boost/any.hpp>
#include <QMainWindow>
#include <QObject>
#include <QWidget>
#include <QMessageBox>
//---------------------------------
using type_check_parameters = car_db_manager_msgs::CheckParameters  ;
using type_check_parameters_cmd = car_db_manager_msgs::CheckParametersCmd  ;
using ptr_check_parameters = boost::shared_ptr<car_db_manager_msgs::CheckParameters>  ;

using type_pid_ctrl_parameters = car_db_manager_msgs::PidCtrlParameters  ;
using type_pid_ctrl_parameters_cmd = car_db_manager_msgs::PidCtrlParametersCmd  ;
using ptr_pid_ctrl_parameters = boost::shared_ptr<car_db_manager_msgs::PidCtrlParameters>  ;

using type_targer_pos2d_parameters = car_db_manager_msgs::TargerPos2dParameters  ;
using type_targer_pos2d_parameters_cmd = car_db_manager_msgs::TargerPos2dParametersCmd  ;
using ptr_targer_pos2d_parameters = boost::shared_ptr<car_db_manager_msgs::TargerPos2dParameters>  ;

using type_alarmcode_parameters = car_db_manager_msgs::AlarmcodeParameters  ;
using type_alarmcode_parameters_cmd = car_db_manager_msgs::AlarmcodeParametersCmd  ;
using ptr_alarmcode_parameters = boost::shared_ptr<car_db_manager_msgs::AlarmcodeParameters>  ;

using type_operatecode_parameters = car_db_manager_msgs::OperatecodeParameters  ;
using type_operatecode_parameters_cmd = car_db_manager_msgs::OperatecodeParametersCmd  ;
using ptr_operatecode_parameters = boost::shared_ptr<car_db_manager_msgs::OperatecodeParameters>  ;

using type_car_alarm_history = car_db_manager_msgs::CarAlarmHistory  ;
using type_car_alarm_history_cmd = car_db_manager_msgs::CarAlarmHistoryCmd  ;
using ptr_car_alarm_history = boost::shared_ptr<car_db_manager_msgs::CarAlarmHistory>  ;

using type_car_operate_history = car_db_manager_msgs::CarOperateHistory  ;
using type_car_operate_history_cmd = car_db_manager_msgs::CarOperateHistoryCmd  ;
using ptr_car_operate_history = boost::shared_ptr<car_db_manager_msgs::CarOperateHistory>  ;

using type_action_function_parameters = car_db_manager_msgs::ActionFunctionParameters  ;
using type_action_function_parameters_cmd = car_db_manager_msgs::ActionFunctionParametersCmd  ;
using ptr_action_function_parameters = boost::shared_ptr<car_db_manager_msgs::ActionFunctionParameters>  ;
//-----------------------------------------------------------------------------
class ros_controlmodel  : public QObject
{
    Q_OBJECT
    
    //---------------------------------
    public:
        ros_controlmodel(ros::NodeHandle nh);
        ~ros_controlmodel();

        std::string get_error_desc(int lang_type,db_tb_error_type _type);
        //***********************************
        //**** table : check_parameters  ****   
        //***********************************    
        vector<ptr_check_parameters> get_check_parameters_results() ;
        void get_check_parameters_req_updated(std::string &primary_id,std::string &updatetime) ;
        db_tb_error_type get_check_parameters_error_type() ;     
        //---------------------------------
        //**************************************
        //**** table : pid_ctrl_parameters  ****   
        //**************************************  
        vector<ptr_pid_ctrl_parameters> get_pid_ctrl_parameters_results() ;
        void get_pid_ctrl_parameters_req_updated(std::string &primary_id,std::string &updatetime) ;
        db_tb_error_type get_pid_ctrl_parameters_error_type() ;
        //******************************************
        //**** table : targer_pos2d_parameters  ****   
        //******************************************  
        vector<ptr_targer_pos2d_parameters> get_targer_pos2d_parameters_results() ;
        void get_targer_pos2d_parameters_req_updated(std::string &primary_id,std::string &updatetime) ;
        db_tb_error_type get_targer_pos2d_parameters_error_type() ;   
        //******************************************
        //**** table : alarmcode_parameters  ****   
        //******************************************  
        vector<ptr_alarmcode_parameters> get_alarmcode_parameters_results() ;
        void get_alarmcode_parameters_req_updated(std::string &primary_id,std::string &updatetime) ;
        db_tb_error_type get_alarmcode_parameters_error_type() ;   
        //******************************************
        //**** table : operatecode_parameters   ****   
        //******************************************  
        vector<ptr_operatecode_parameters> get_operatecode_parameters_results() ;
        void get_operatecode_parameters_req_updated(std::string &primary_id,std::string &updatetime) ;
        db_tb_error_type get_operatecode_parameters_error_type() ;   
        //******************************************
        //**** table : car_alarm_history        ****   
        //******************************************  
        vector<ptr_car_alarm_history> get_car_alarm_history_results() ;
        void get_car_alarm_history_req_updated(std::string &primary_id,std::string &updatetime) ;
        db_tb_error_type get_car_alarm_history_error_type() ;   
        //******************************************
        //**** table : car_operate_history      ****   
        //******************************************  
        vector<ptr_car_operate_history> get_car_operate_history_results() ;
        void get_car_operate_history_req_updated(std::string &primary_id,std::string &updatetime) ;
        db_tb_error_type get_car_operate_history_error_type() ;  
        //******************************************
        //**** table : action_function_parameters **   
        //******************************************  
        vector<ptr_action_function_parameters> get_action_function_parameters_results() ;
        void get_action_function_parameters_req_updated(std::string &primary_id,std::string &updatetime) ;
        db_tb_error_type get_action_function_parameters_error_type() ;  
        //---------------------------------
        public slots:
            //***********************************
            //**** table : check_parameters  ****   
            //***********************************     
            void on_check_parameters_update_action(db_tb_edit_type _edit_type,const ptr_check_parameters &_data); 

            void on_check_parameters_delete_action(std::string unique_code);
            void on_check_parameters_query_action(db_tb_search_type query_base,dynamic_check_parameters_search_type query_opt,
                                            std::string search_param);
            void set_check_parameters_cltService(ros::ServiceClient &_cltService);

            //**************************************
            //**** table : pid_ctrl_parameters  ****   
            //**************************************  
            void on_pid_ctrl_parameters_update_action(db_tb_edit_type _edit_type,const ptr_pid_ctrl_parameters &_data); 
            void on_pid_ctrl_parameters_delete_action(std::string unique_code);
            void on_pid_ctrl_parameters_query_action(db_tb_search_type query_base,dynamic_pid_ctrl_parameters_search_type query_opt,
                                            std::string search_param);
            void set_pid_ctrl_parameters_cltService(ros::ServiceClient &_cltService);
            //******************************************
            //**** table : targer_pos2d_parameters  ****   
            //******************************************  
            void on_targer_pos2d_parameters_update_action(db_tb_edit_type _edit_type,const ptr_targer_pos2d_parameters &_data); 
            void on_targer_pos2d_parameters_delete_action(std::string unique_code);
            void on_targer_pos2d_parameters_query_action(db_tb_search_type query_base,dynamic_targer_pos2d_parameters_search_type query_opt,
                                            std::string search_param);
            void set_targer_pos2d_parameters_cltService(ros::ServiceClient &_cltService);
            //******************************************
            //**** table : alarmcode_parameters  ****   
            //******************************************  
            void on_alarmcode_parameters_update_action(db_tb_edit_type _edit_type,const ptr_alarmcode_parameters &_data); 
            void on_alarmcode_parameters_delete_action(std::string unique_code);
            void on_alarmcode_parameters_query_action(db_tb_search_type query_base,dynamic_alarmcode_parameters_search_type query_opt,
                                            std::string search_param);
            void set_alarmcode_parameters_cltService(ros::ServiceClient &_cltService);
            //******************************************
            //**** table : operatecode_parameters  ****   
            //******************************************  
            void on_operatecode_parameters_update_action(db_tb_edit_type _edit_type,const ptr_operatecode_parameters &_data); 
            void on_operatecode_parameters_delete_action(std::string unique_code);
            void on_operatecode_parameters_query_action(db_tb_search_type query_base,dynamic_operatecode_parameters_search_type query_opt,
                                            std::string search_param);
            void set_operatecode_parameters_cltService(ros::ServiceClient &_cltService);
            //******************************************
            //**** table : car_alarm_history        ****   
            //******************************************  
            void on_car_alarm_history_update_action(db_tb_edit_type _edit_type,const ptr_car_alarm_history &_data); 
            void on_car_alarm_history_delete_action(std::string unique_code);
            void on_car_alarm_history_query_action(db_tb_search_type query_base,dynamic_car_alarm_history_search_type query_opt,
                                            std::string search_param);
            void set_car_alarm_history_cltService(ros::ServiceClient &_cltService);
            //******************************************
            //**** table : car_operate_history      ****   
            //******************************************  
            void on_car_operate_history_update_action(db_tb_edit_type _edit_type,const ptr_car_operate_history &_data); 
            void on_car_operate_history_delete_action(std::string unique_code);
            void on_car_operate_history_query_action(db_tb_search_type query_base,dynamic_car_operate_history_search_type query_opt,
                                            std::string search_param);
            void set_car_operate_history_cltService(ros::ServiceClient &_cltService);
            //******************************************
            //**** table : action_function_parameters **   
            //******************************************  
            void on_action_function_parameters_update_action(db_tb_edit_type _edit_type,const ptr_action_function_parameters &_data); 
            void on_action_function_parameters_delete_action(std::string unique_code);
            void on_action_function_parameters_query_action(db_tb_search_type query_base,dynamic_action_function_parameters_search_type query_opt,
                                            std::string search_param);
            void set_action_function_parameters_cltService(ros::ServiceClient &_cltService);
        //---------------------------------
        signals:    
            //***********************************
            //**** table : check_parameters  ****   
            //***********************************      
            void check_parameters_update_Changed(db_tb_edit_type _edit_type,const ptr_check_parameters &_data);
            void check_parameters_delete_Changed(std::string unique_code);
            void check_parameters_query_Changed(db_tb_search_type query_base,dynamic_check_parameters_search_type query_opt,
                                            std::string search_param);
            //**************************************
            //**** table : pid_ctrl_parameters  ****   
            //**************************************
            void pid_ctrl_parameters_update_Changed(db_tb_edit_type _edit_type,const ptr_pid_ctrl_parameters &_data);
            void pid_ctrl_parameters_delete_Changed(std::string unique_code);
            void pid_ctrl_parameters_query_Changed(db_tb_search_type query_base,dynamic_pid_ctrl_parameters_search_type query_opt,
                                            std::string search_param);
            //******************************************
            //**** table : targer_pos2d_parameters  ****   
            //******************************************  
            void targer_pos2d_parameters_update_Changed(db_tb_edit_type _edit_type,const ptr_targer_pos2d_parameters &_data);
            void targer_pos2d_parameters_delete_Changed(std::string unique_code);
            void targer_pos2d_parameters_query_Changed(db_tb_search_type query_base,dynamic_targer_pos2d_parameters_search_type query_opt,
                                            std::string search_param);
            //******************************************
            //**** table : alarmcode_parameters  ****   
            //******************************************  
            void alarmcode_parameters_update_Changed(db_tb_edit_type _edit_type, const ptr_alarmcode_parameters &_data);
            void alarmcode_parameters_delete_Changed(std::string unique_code);
            void alarmcode_parameters_query_Changed(db_tb_search_type query_base,dynamic_alarmcode_parameters_search_type query_opt,
                                            std::string search_param);
            //******************************************
            //**** table : operatecode_parameters  ****   
            //******************************************  
            void operatecode_parameters_update_Changed(db_tb_edit_type _edit_type,const ptr_operatecode_parameters &_data);
            void operatecode_parameters_delete_Changed(std::string unique_code);
            void operatecode_parameters_query_Changed(db_tb_search_type query_base,dynamic_operatecode_parameters_search_type query_opt,
                                            std::string search_param);
            //******************************************
            //**** table : car_alarm_history        ****   
            //******************************************  
            void car_alarm_history_update_Changed(db_tb_edit_type _edit_type,const ptr_car_alarm_history &_data);
            void car_alarm_history_delete_Changed(std::string unique_code);
            void car_alarm_history_query_Changed(db_tb_search_type query_base,dynamic_car_alarm_history_search_type query_opt,
                                            std::string search_param);
            //******************************************
            //**** table : car_operate_history      ****   
            //******************************************  
            void car_operate_history_update_Changed(db_tb_edit_type _edit_type,const ptr_car_operate_history &_data);
            void car_operate_history_delete_Changed(std::string unique_code);
            void car_operate_history_query_Changed(db_tb_search_type query_base,dynamic_car_operate_history_search_type query_opt,
                                            std::string search_param);
            //******************************************
            //**** table : action_function_parameters **   
            //******************************************  
            void action_function_parameters_update_Changed(db_tb_edit_type _edit_type,const ptr_action_function_parameters &_data);
            void action_function_parameters_delete_Changed(std::string unique_code);
            void action_function_parameters_query_Changed(db_tb_search_type query_base,dynamic_action_function_parameters_search_type query_opt,
                                            std::string search_param);
    private:
        void Load_CntParameter() ;
        ros::NodeHandle nh_;

        //-------------------------------------------------
        std::string _update_primary_id ,_update_updatetime  ;
        vector<std::string> err_type_desc_TC ;
		vector<std::string> err_type_desc_SC ;
		vector<std::string> err_type_desc_E ;
        void err_type_desc_initSet();
        //***********************************
        //**** table : check_parameters  ****   
        //***********************************  
        vector<ptr_check_parameters> check_parameters_results;
		std::string tbname_check_parameters ;
        type_check_parameters_cmd check_parameters_cmd_data ;
		ros::ServiceClient check_parameters_cltService ;
		std::string check_parameters_cltService_name ;
        db_tb_error_type check_parameters_error_type ;
        //**************************************
        //**** table : pid_ctrl_parameters  ****   
        //**************************************  
        vector<ptr_pid_ctrl_parameters> pid_ctrl_parameters_results;
		std::string tbname_pid_ctrl_parameters ;
        type_pid_ctrl_parameters_cmd pid_ctrl_parameters_cmd_data ;
		ros::ServiceClient pid_ctrl_parameters_cltService ;
		std::string pid_ctrl_parameters_cltService_name ;
        db_tb_error_type pid_ctrl_parameters_error_type ;
        //******************************************
        //**** table : targer_pos2d_parameters  ****   
        //******************************************
        vector<ptr_targer_pos2d_parameters> targer_pos2d_parameters_results;
		std::string tbname_targer_pos2d_parameters ;
        type_targer_pos2d_parameters_cmd targer_pos2d_parameters_cmd_data ;
		ros::ServiceClient targer_pos2d_parameters_cltService ;
		std::string targer_pos2d_parameters_cltService_name ;
        db_tb_error_type targer_pos2d_parameters_error_type ;
        //******************************************
        //**** table : alarmcode_parameters     ****   
        //******************************************
        vector<ptr_alarmcode_parameters> alarmcode_parameters_results;
		std::string tbname_alarmcode_parameters ;
        type_alarmcode_parameters_cmd alarmcode_parameters_cmd_data ;
		ros::ServiceClient alarmcode_parameters_cltService ;
		std::string alarmcode_parameters_cltService_name ;
        db_tb_error_type alarmcode_parameters_error_type ;
        //******************************************
        //**** table : operatecode_parameters     ****   
        //******************************************
        vector<ptr_operatecode_parameters> operatecode_parameters_results;
		std::string tbname_operatecode_parameters ;
        type_operatecode_parameters_cmd operatecode_parameters_cmd_data ;
		ros::ServiceClient operatecode_parameters_cltService ;
		std::string operatecode_parameters_cltService_name ;
        db_tb_error_type operatecode_parameters_error_type ;
        //******************************************
        //**** table : car_alarm_history        ****   
        //******************************************
        vector<ptr_car_alarm_history> car_alarm_history_results;
		std::string tbname_car_alarm_history ;
        type_car_alarm_history_cmd car_alarm_history_cmd_data ;
		ros::ServiceClient car_alarm_history_cltService ;
		std::string car_alarm_history_cltService_name ;
        db_tb_error_type car_alarm_history_error_type ;
        //******************************************
        //**** table : car_operate_history      ****   
        //******************************************
        vector<ptr_car_operate_history> car_operate_history_results;
		std::string tbname_car_operate_history ;
        type_car_operate_history_cmd car_operate_history_cmd_data ;
		ros::ServiceClient car_operate_history_cltService ;
		std::string car_operate_history_cltService_name ;
        db_tb_error_type car_operate_history_error_type ;
        //******************************************
        //**** table : action_function_parameters **   
        //******************************************
        vector<ptr_action_function_parameters> action_function_parameters_results;
		std::string tbname_action_function_parameters ;
        type_action_function_parameters_cmd action_function_parameters_cmd_data ;
		ros::ServiceClient action_function_parameters_cltService ;
		std::string action_function_parameters_cltService_name ;
        db_tb_error_type action_function_parameters_error_type ;
        
};
//-----------------------------------------------------------------------------
#endif // ROS_CONTROLMODEL_H

#include <car_db_manager_tables/parameters_tables_process.h>
#include <thread>
//----------------------------------------------------------------------------
parameters_tables_process::parameters_tables_process(ros::NodeHandle &nh):nh_(nh)
{
    Load_CntParameter();
    //------- model name : ellctrl_agvapp_tables ---------------- 
    check_parameters = new module_check_parameters(nh_,tbname_check_parameters);  
    pid_ctrl_parameters = new module_pid_ctrl_parameters(nh_,tbname_pid_ctrl_parameters);  
    targer_pos2d_parameters = new module_targer_pos2d_parameters(nh_,tbname_targer_pos2d_parameters);  
    alarmcode_parameters = new module_alarmcode_parameters(nh_,tbname_alarmcode_parameters);  
    operatecode_parameters = new module_operatecode_parameters(nh_,tbname_operatecode_parameters);  
    car_alarm_history = new module_car_alarm_history(nh_,tbname_car_alarm_history);  
    car_operate_history = new module_car_operate_history(nh_,tbname_car_operate_history);  
    action_function_parameters = new module_action_function_parameters(nh_,tbname_action_function_parameters);  
}
//-----------------------------------------------------------------------------
//-- ctrl_tb_alarmcode de-constructor ---------------
parameters_tables_process::~parameters_tables_process() 
{
    //------- model name : ellctrl_agvapp_tables ----------------
    if(check_parameters)           delete check_parameters ;
    if(pid_ctrl_parameters)        delete pid_ctrl_parameters ;
    if(targer_pos2d_parameters)    delete targer_pos2d_parameters ;
    if(alarmcode_parameters)       delete alarmcode_parameters ;
    if(operatecode_parameters)     delete operatecode_parameters ;
    if(car_alarm_history)          delete car_alarm_history ;
    if(car_operate_history)        delete car_operate_history ;  
    if(action_function_parameters) delete action_function_parameters ;  
}
//-----------------------------------------------------------------------------
void parameters_tables_process::Load_CntParameter()
{
    ros::NodeHandle pnh("~");
    //------- model name : ellctrl_agvapp_tables ----------------
	if(!pnh.getParam("tbname_check_parameters", tbname_check_parameters))
        tbname_check_parameters = "check_parameters" ;	 
    if(!pnh.getParam("tbname_pid_ctrl_parameters", tbname_pid_ctrl_parameters))
        tbname_pid_ctrl_parameters = "pid_ctrl_parameters" ;	
    if(!pnh.getParam("tbname_targer_pos2d_parameters", tbname_targer_pos2d_parameters))
        tbname_targer_pos2d_parameters = "targer_pos2d_parameters" ;
    if(!pnh.getParam("tbname_alarmcode_parameters", tbname_alarmcode_parameters))
        tbname_alarmcode_parameters = "alarmcode_parameters" ;	
    if(!pnh.getParam("tbname_operatecode_parameters", tbname_operatecode_parameters))
        tbname_operatecode_parameters = "operatecode_parameters" ;
    if(!pnh.getParam("tbname_car_alarm_history", tbname_car_alarm_history))
        tbname_car_alarm_history = "car_alarm_history" ;	
    if(!pnh.getParam("tbname_car_operate_history", tbname_car_operate_history))
        tbname_car_operate_history = "car_operate_history" ;    
    if(!pnh.getParam("tbname_action_function_parameters", tbname_action_function_parameters))
        tbname_action_function_parameters = "action_function_parameters" ;  
}
//-----------------------------------------------------------------------------
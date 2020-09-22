#include <robot_scheduling_parameter.h>
#include <ros_utility_tools/ros_tools.h>
#include <boost/algorithm/string/split.hpp>
#include <boost/algorithm/string/classification.hpp>
//-----------------------------------------------------------------------------
robot_scheduling_parameter::robot_scheduling_parameter(ros::NodeHandle& nh) :nh_(nh)
{ 
    system_status_type = runstatus_none ;   
    pre_system_status_type = runstatus_none ;  

    remote_status_type = remotestatus_none ;   
	pre_remote_status_type = remotestatus_none ;   

    manual_status_type = manualstatus_none ;  
	pre_manual_status_type = manualstatus_none ;   

    recovery_status_type = recoverystatus_none ;
    //-----------
    b_PoseRecognize = false ;
    bWorkSheetRun_Start = false ;

    //b_worksheet_action = false ;
    //-----------
    Load_CntParameter();
    //--------------------------------------------
    //ac_check_params* act_check_params_db = new ac_check_params();	
    //ac_locomotor_pos2d* act_pose_2d_db = new ac_locomotor_pos2d();	
    //ac_action_function* act_action_function_db = new ac_action_function();	

    act_check_params_db = new ac_check_params();	
    act_pose_2d_db = new ac_locomotor_pos2d();	
    act_action_function_db = new ac_action_function();	
    ac_alarm_code_db = new ac_alarm_code();
	ac_operate_code_db = new ac_operate_code();

    b_interrupt_move = false ; //b_GetAlarmCodeAll = false ;

    //if_status_code_type = status_code_none ;

    b_simulation = true ;

    b_base_ctrl_connected = false ;
    b_base_ctrl_ready = false ;
    b_system_alarm = false ;
    b_ws_post_turn_flag = true ;

    turn_target_abs_angle = 135  ;
	//bool b_turn_abs ;
	//double turn_action_rel_angle ;
    bManualRun_Start = false ;
    bAlarm_Reset = false ;
    bAlarm_Recovery = false ;
    bSystem_ReStart = false ;
    bRemoteRun_Start = false ;
    bRemoteRun_cont_test = false ;
    b_plantoexec_run = false ;
}
//-----------------------------------------------------------------------------
robot_scheduling_parameter ::~robot_scheduling_parameter()
{
    if(act_check_params_db) delete act_check_params_db ;
    if(act_pose_2d_db) delete act_pose_2d_db ;
    if(act_action_function_db) delete act_action_function_db ;
    if(act_check_params_db) delete act_check_params_db ;

    if(ac_alarm_code_db) delete ac_alarm_code_db ;
    if(ac_operate_code_db) delete ac_operate_code_db ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::ac_target_pose2d_init_set(ros::NodeHandle pnh)
{
    int counter  ;
    if(!pnh.getParam("target_pos2d_num", counter))
        counter = 0 ;
    ac_target_pose2d_v.clear();
    ac_target_pose2d_v.resize(counter);
    for(int i=0;i<counter;i++){
        std::string tagname = "target_pos2d_"+convert_str(i)+"_";
        std::shared_ptr<ac_locomotor_pos2d> pos2d = std::make_shared<ac_locomotor_pos2d>();
        if(!pnh.getParam(tagname+"pos_x", pos2d->pos_x))
            pos2d->pos_x = 0 ;
        if(!pnh.getParam(tagname+"pos_y", pos2d->pos_y))
            pos2d->pos_y = 0 ;
        if(!pnh.getParam(tagname+"theta", pos2d->theta))
            pos2d->theta = 0 ;
        if(!pnh.getParam(tagname+"rotate_flag", pos2d->rotate_flag))
            pos2d->rotate_flag = false ;

        ac_target_pose2d_v.emplace_back(pos2d);
    }
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::ac_check_params_init_set(ros::NodeHandle pnh)
{
    std::shared_ptr<ac_check_params> pre_dock_check_param = std::make_shared<ac_check_params>();
    if(!pnh.getParam("pre_dock_out_of_time", pre_dock_check_param->out_of_times))
        pre_dock_check_param->out_of_times = 5 ;
    if(!pnh.getParam("pre_dock_timeout", pre_dock_check_param->timeout))
        pre_dock_check_param->timeout = 50 ;
    ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>("pre_dock",pre_dock_check_param));    

    std::shared_ptr<ac_check_params> post_undock_check_param = std::make_shared<ac_check_params>();
    if(!pnh.getParam("post_undock_out_of_time", post_undock_check_param->out_of_times))
        pre_dock_check_param->out_of_times = 5 ;
    if(!pnh.getParam("post_undock_timeout", post_undock_check_param->timeout))
        pre_dock_check_param->timeout = 50 ;
    ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>("post_undock",post_undock_check_param));    

    std::shared_ptr<ac_check_params> power_dock_check_param = std::make_shared<ac_check_params>();
    if(!pnh.getParam("power_dock_out_of_time", power_dock_check_param->out_of_times))
        pre_dock_check_param->out_of_times = 5 ;
    if(!pnh.getParam("power_dock_timeout", power_dock_check_param->timeout))
        pre_dock_check_param->timeout = 50 ;
    ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>("power_dock",power_dock_check_param));    

    std::shared_ptr<ac_check_params> power_undock_check_param = std::make_shared<ac_check_params>();
    if(!pnh.getParam("power_undock_out_of_time", power_undock_check_param->out_of_times))
        power_undock_check_param->out_of_times = 5 ;
    if(!pnh.getParam("power_undock_timeout", power_undock_check_param->timeout))
        power_undock_check_param->timeout = 50 ;
    ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>("power_undock",power_undock_check_param));   

    std::shared_ptr<ac_check_params> pose_recognize_check_param = std::make_shared<ac_check_params>();
    if(!pnh.getParam("pose_recognize_out_of_time", pose_recognize_check_param->out_of_times))
        pose_recognize_check_param->out_of_times = 5 ;
    if(!pnh.getParam("pose_recognize_timeout", pose_recognize_check_param->timeout))
        pose_recognize_check_param->timeout = 50 ;
    ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>("pose_recognize",pose_recognize_check_param));     

    std::shared_ptr<ac_check_params> car_controller_check_param = std::make_shared<ac_check_params>();
    if(!pnh.getParam("car_controller_out_of_time", car_controller_check_param->out_of_times))
        car_controller_check_param->out_of_times = 5 ;
    if(!pnh.getParam("car_controller_timeout", car_controller_check_param->timeout))
        car_controller_check_param->timeout = 50 ;
    ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>("car_controller",car_controller_check_param));    

    std::shared_ptr<ac_check_params> power_charge_check_param = std::make_shared<ac_check_params>();
    if(!pnh.getParam("power_charge_out_of_time", power_charge_check_param->out_of_times))
        power_charge_check_param->out_of_times = 5 ;
    if(!pnh.getParam("power_charge_timeout", power_charge_check_param->timeout))
        power_charge_check_param->timeout = 50 ;
    ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>("power_charge",power_charge_check_param));    

    std::shared_ptr<ac_check_params> park_pos_check_param = std::make_shared<ac_check_params>();
    if(!pnh.getParam("park_pos_out_of_time", power_charge_check_param->out_of_times))
        park_pos_check_param->out_of_times = 5 ;
    if(!pnh.getParam("park_pos_timeout", power_charge_check_param->timeout))
        park_pos_check_param->timeout = 50 ;
    ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>("park_pos",park_pos_check_param));  

    std::shared_ptr<ac_check_params> pre_dock_pos_check_param = std::make_shared<ac_check_params>();
    if(!pnh.getParam("pre_dock_pos_out_of_time", power_charge_check_param->out_of_times))
        pre_dock_pos_check_param->out_of_times = 5 ;
    if(!pnh.getParam("pre_dock_pos_timeout", power_charge_check_param->timeout))
        pre_dock_pos_check_param->timeout = 50 ;
    ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>("pre_dock_pos",pre_dock_pos_check_param));  

    std::shared_ptr<ac_check_params> post_undock_pos_check_param = std::make_shared<ac_check_params>();
    if(!pnh.getParam("post_undock_pos_out_of_time", power_charge_check_param->out_of_times))
        post_undock_pos_check_param->out_of_times = 5 ;
    if(!pnh.getParam("post_undock_pos_timeout", power_charge_check_param->timeout))
        post_undock_pos_check_param->timeout = 50 ;
    ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>("post_undock_pos",pre_dock_pos_check_param));  

    std::shared_ptr<ac_check_params> turn_check_param = std::make_shared<ac_check_params>();
    if(!pnh.getParam("turn_out_of_time", turn_check_param->out_of_times))
        turn_check_param->out_of_times = 5 ;
    if(!pnh.getParam("turn_timeout", turn_check_param->timeout))
        turn_check_param->timeout = 50 ;
    ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>("turn",turn_check_param));  
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::ac_fixed_pose2d_init_set(ros::NodeHandle pnh)
{
    ROS_INFO("ac_fixed_pose2d_init_set");
    std::shared_ptr<ac_locomotor_pos2d> home_pos2d = std::make_shared<ac_locomotor_pos2d>();
    if(!pnh.getParam("home_pos_pos_x", home_pos2d->pos_x))
        home_pos2d->pos_x = 1 ;
    if(!pnh.getParam("home_pos_pos_y", home_pos2d->pos_y))
        home_pos2d->pos_y = 1 ;
    if(!pnh.getParam("home_pos_theta", home_pos2d->theta))
        home_pos2d->theta = 0 ;
    if(!pnh.getParam("home_pos_rotate_flag", home_pos2d->rotate_flag))
        home_pos2d->rotate_flag = false ;
    ac_locomotor_pos2d_map_.insert(std::pair<std::string, std::shared_ptr<ac_locomotor_pos2d>>("home_pos",home_pos2d));   

    std::shared_ptr<ac_locomotor_pos2d> park_pos2d = std::make_shared<ac_locomotor_pos2d>();
    if(!pnh.getParam("park_pos_pos_x", park_pos2d->pos_x))
        park_pos2d->pos_x = 1 ;
    if(!pnh.getParam("park_pos_pos_y", park_pos2d->pos_y))
        park_pos2d->pos_y = 2 ;
    if(!pnh.getParam("park_pos_theta", park_pos2d->theta))
        park_pos2d->theta = 20 ;
    if(!pnh.getParam("park_pos_rotate_flag", park_pos2d->rotate_flag))
        park_pos2d->rotate_flag = false ;
    ac_locomotor_pos2d_map_.insert(std::pair<std::string, std::shared_ptr<ac_locomotor_pos2d>>("park_pos",park_pos2d));     

    std::shared_ptr<ac_locomotor_pos2d> pre_dock_pos2d = std::make_shared<ac_locomotor_pos2d>();
    if(!pnh.getParam("pre_dock_pos_pos_x", pre_dock_pos2d->pos_x))
        pre_dock_pos2d->pos_x = 3 ;
    if(!pnh.getParam("pre_dock_pos_pos_y", pre_dock_pos2d->pos_y))
        pre_dock_pos2d->pos_y = 3 ;
    if(!pnh.getParam("pre_dock_pos_theta", pre_dock_pos2d->theta))
        pre_dock_pos2d->theta = 0 ;    
    if(!pnh.getParam("pre_dock_rotate_flag", pre_dock_pos2d->rotate_flag))
        pre_dock_pos2d->rotate_flag = false ;        
    ac_locomotor_pos2d_map_.insert(std::pair<std::string, std::shared_ptr<ac_locomotor_pos2d>>("pre_dock_pos",pre_dock_pos2d));   

    std::shared_ptr<ac_locomotor_pos2d> post_undock_pos2d = std::make_shared<ac_locomotor_pos2d>();
    if(!pnh.getParam("post_undock_pos_pos_x", post_undock_pos2d->pos_x))
        post_undock_pos2d->pos_x = 2 ;
    if(!pnh.getParam("post_undock_pos_pos_y", post_undock_pos2d->pos_y))
        post_undock_pos2d->pos_y = 5 ;
    if(!pnh.getParam("post_undock_pos_theta", post_undock_pos2d->theta))
        post_undock_pos2d->theta = 0 ;
    if(!pnh.getParam("post_undock_rotate_flag", post_undock_pos2d->rotate_flag))
        post_undock_pos2d->rotate_flag = false ;
    ac_locomotor_pos2d_map_.insert(std::pair<std::string, std::shared_ptr<ac_locomotor_pos2d>>("post_undock_pos",post_undock_pos2d));   

    std::shared_ptr<ac_locomotor_pos2d> pre_dock_pos2d_0 = std::make_shared<ac_locomotor_pos2d>();
    if(!pnh.getParam("pre_dock_pos_pos_x_0", pre_dock_pos2d_0->pos_x))
        pre_dock_pos2d_0->pos_x = 6 ;
    if(!pnh.getParam("pre_dock_pos_pos_y_0", pre_dock_pos2d_0->pos_y))
        pre_dock_pos2d_0->pos_y = 6 ;
    if(!pnh.getParam("pre_dock_pos_theta_0", pre_dock_pos2d_0->theta))
        pre_dock_pos2d_0->theta = 0 ;    
    if(!pnh.getParam("pre_dock_rotate_flag_0", pre_dock_pos2d_0->rotate_flag))
        pre_dock_pos2d_0->rotate_flag = false ;        
    ac_locomotor_pos2d_map_.insert(std::pair<std::string, std::shared_ptr<ac_locomotor_pos2d>>("pre_dock_pos_0",pre_dock_pos2d_0));   

    std::shared_ptr<ac_locomotor_pos2d> post_undock_pos2d_0 = std::make_shared<ac_locomotor_pos2d>();
    if(!pnh.getParam("post_undock_pos_pos_x_0", post_undock_pos2d_0->pos_x))
        post_undock_pos2d_0->pos_x = 7 ;
    if(!pnh.getParam("post_undock_pos_pos_y_0", post_undock_pos2d_0->pos_y))
        post_undock_pos2d_0->pos_y = 7 ;
    if(!pnh.getParam("post_undock_pos_theta_0", post_undock_pos2d_0->theta))
        post_undock_pos2d_0->theta = 0 ;
    if(!pnh.getParam("post_undock_rotate_flag_0", post_undock_pos2d_0->rotate_flag))
        post_undock_pos2d_0->rotate_flag = false ;
    ac_locomotor_pos2d_map_.insert(std::pair<std::string, std::shared_ptr<ac_locomotor_pos2d>>("post_undock_pos_0",post_undock_pos2d_0));  
    ROS_INFO("ac_locomotor_pos2d_map_ size:%d",ac_locomotor_pos2d_map_.size()); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::ac_setlocation_params_init_set(ros::NodeHandle pnh)
{
    if(!pnh.getParam("target_scan_pos1_x", target_scan_pos1_x))
        target_scan_pos1_x = 0 ;
    if(!pnh.getParam("target_scan_pos1_y", target_scan_pos1_y))
        target_scan_pos1_y = 0 ;
    if(!pnh.getParam("target_scan_pos2_x", target_scan_pos2_x))
        target_scan_pos2_x = 0 ;
    if(!pnh.getParam("target_scan_pos2_y", target_scan_pos2_y))
        target_scan_pos2_y = 0 ;
    if(!pnh.getParam("target_scan_pos3_x", target_scan_pos3_x))
        target_scan_pos3_x = 0 ;
    if(!pnh.getParam("target_scan_pos3_y", target_scan_pos3_y))
        target_scan_pos3_y = 0 ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::ac_pid_ctrl_init_set(ros::NodeHandle pnh)
{
    std::shared_ptr<pid_ctrl_params> turn_pid = std::make_shared<pid_ctrl_params>();
    if(!pnh.getParam("turn_target", turn_pid->target))
        turn_pid->target = 0 ;
    if(!pnh.getParam("turn_tolerance", turn_pid->tolerance))
        turn_pid->tolerance = 2 ;
    if(!pnh.getParam("turn_min_bound", turn_pid->min_bound))
        turn_pid->min_bound = 0.2 ;
    if(!pnh.getParam("turn_max_bound", turn_pid->max_bound))
        turn_pid->max_bound = 0.5 ;
    if(!pnh.getParam("turn_d_KP", turn_pid->d_KP))
        turn_pid->d_KP = 0.0000002 ;
    if(!pnh.getParam("turn_d_KI", turn_pid->d_KI))
        turn_pid->d_KI = 0.00002 ;
    if(!pnh.getParam("turn_d_KD", turn_pid->d_KD))
        turn_pid->d_KD = 0.001  ;
    if(!pnh.getParam("turn_b_compensation", turn_pid->b_compensation))
        turn_pid->b_compensation = true ;
    ac_pid_ctrl_params_map_.insert(std::pair<std::string, std::shared_ptr<pid_ctrl_params>>("turn",turn_pid)); 
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::ac_dock_rotate_init_set(ros::NodeHandle pnh)
{
    ac_dock_rotate_map_.insert(std::pair<std::string, bool>("power_dock",false));
    ac_dock_rotate_map_.insert(std::pair<std::string, bool>("power_undock",true));
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::Load_CntParameter()
{
    //ROS_INFO("=================================================================");
    ros::NodeHandle pnh("~");
    //--- service server name parameter ---
    if(!pnh.getParam("cmd_srv_service_for_upper_name", cmd_srv_service_for_upper_name))
        cmd_srv_service_for_upper_name ="srv_service_name_system" ;
    if(!pnh.getParam("cmd_clt_service_to_upper_name", cmd_clt_service_to_upper_name))
        cmd_clt_service_to_upper_name ="clt_service_name_system" ;

    if(!pnh.getParam("upper_robot_info_rate", upper_robot_info_rate))
        upper_robot_info_rate = 10 ;
    if(!pnh.getParam("upper_robot_state_rate", upper_robot_state_rate))
        upper_robot_state_rate = 10 ;

    if(!pnh.getParam("cmd_srv_service_for_lower_name", cmd_srv_service_for_lower_name))
        cmd_srv_service_for_lower_name ="srv_service_name_controller" ;
    if(!pnh.getParam("cmd_clt_service_to_lower_name", cmd_clt_service_to_lower_name))
        cmd_clt_service_to_lower_name ="clt_service_name_controller" ;
    //--- move to parameters ---------
    //if(!pnh.getParam("move_to_ac_name", move_to_ac_name))
    //    move_to_ac_name = "/locomotor/navigate" ;
    if(!pnh.getParam("ac_cancel_time", ac_cancel_time))
        ac_cancel_time = 0.5 ;   
    //if(!pnh.getParam("move_to_rcvr_ac_name", move_to_rcvr_ac_name))
    //    move_to_rcvr_ac_name = "/locomotor/clear_costmaps" ;
    if(!pnh.getParam("ac_clearmap_time", ac_clearmap_time))
        ac_clearmap_time = 0.5 ;  
    //ROS_INFO("=============================================");    
    ROS_INFO("ac_clearmap_time:%f",ac_clearmap_time);     
     
    if(!ros::param::get("ac_clearmap_time", ac_clearmap_time))
        ac_clearmap_time = 0.5 ;  
    //ROS_INFO("=========wewew====================================");    
    ROS_INFO("ac_clearmap_time:%f",ac_clearmap_time);      
    //--- ac_check_params ------------
    ac_check_params_init_set(pnh);

    ac_setlocation_params_init_set(pnh);
    ac_pid_ctrl_init_set(pnh);
    //--- ac_locomotor_pos2d_map_ ------------
    ac_fixed_pose2d_init_set(pnh);   
    //-------------------
    ac_target_pose2d_init_set(pnh); 
    //------------------- 
    ac_dock_rotate_init_set(pnh);
    //-------------------  
    if(!pnh.getParam("power_charge_timeout", power_charge_timeout))
        power_charge_timeout = 0.0 ;
    if(!pnh.getParam("acquire_battery_period", acquire_battery_period))
        acquire_battery_period = 60 ;    
    if(!pnh.getParam("charge_voltage_target", charge_voltage_target))
        charge_voltage_target = 100 ;    
}
//-----------------------------------------------------------------------------
std::shared_ptr<ac_check_params> robot_scheduling_parameter::get_ac_check_params(std::string ac_name)
{
    std::shared_ptr<ac_check_params> ret_param = NULL ;
    std::map<std::string, std::shared_ptr<ac_check_params>>::iterator map_it = ac_check_params_map_.find(ac_name);
    if(map_it != ac_check_params_map_.end()){
        ret_param = map_it->second ;
    }
    return ret_param ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::set_ac_check_params(std::string ac_name,std::shared_ptr<ac_check_params> _param)
{  
    std::map<std::string, std::shared_ptr<ac_check_params>>::iterator map_it = ac_check_params_map_.find(ac_name);
    if(map_it != ac_check_params_map_.end()){                
        map_it->second->out_of_times = _param->out_of_times ;        
        map_it->second->timeout = _param->timeout ;
    }
    else{
        ac_check_params_map_.insert(std::pair<std::string, std::shared_ptr<ac_check_params>>(ac_name,_param));   
    }
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::delete_ac_check_params(std::string ac_name)
{
    std::map<std::string, std::shared_ptr<ac_check_params>>::iterator map_it = ac_check_params_map_.find(ac_name);
    if(map_it != ac_check_params_map_.end()){
        ac_check_params_map_.erase(map_it);    
    }
}
//-----------------------------------------------------------------------------
std::shared_ptr<ac_locomotor_pos2d> robot_scheduling_parameter::get_ac_locomotor_params(std::string ac_name)
{
    std::shared_ptr<ac_locomotor_pos2d> ret_param = NULL ;

    std::map<std::string, std::shared_ptr<ac_locomotor_pos2d>>::iterator map_it = ac_locomotor_pos2d_map_.find(ac_name);
    if(map_it != ac_locomotor_pos2d_map_.end()){
        ret_param = map_it->second ;
        //ROS_INFO("ac_locomotor_pos2d_map_ find map_it->second->pos_x:%f",map_it->second->pos_x);
    }
    return ret_param ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::set_ac_locomotor_params(std::string ac_name,std::shared_ptr<ac_locomotor_pos2d> _param)
{
    std::map<std::string, std::shared_ptr<ac_locomotor_pos2d>>::iterator map_it = ac_locomotor_pos2d_map_.find(ac_name);
    if(map_it != ac_locomotor_pos2d_map_.end()){
        map_it->second->pos_x = _param->pos_x ;
        map_it->second->pos_y = _param->pos_y ;
        map_it->second->theta = _param->theta ;
    }
    else
        ac_locomotor_pos2d_map_.insert(std::pair<std::string, std::shared_ptr<ac_locomotor_pos2d>>(ac_name,_param));   
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::delete_ac_locomotor_params(std::string ac_name)
{
    std::map<std::string, std::shared_ptr<ac_locomotor_pos2d>>::iterator map_it = ac_locomotor_pos2d_map_.find(ac_name);
    if(map_it != ac_locomotor_pos2d_map_.end()){
        ac_locomotor_pos2d_map_.erase(map_it);    
    }
}
//-----------------------------------------------------------------------------
std::string robot_scheduling_parameter::get_sch_locomotor_pos2d(std::string pose_id)
{
    std::string  ret_ = "" ;
    ROS_INFO("get_sch_locomotor_pos2d:%d",sch_locomotor_pos2d_map_.size());
    std::map<std::string,std::string>::iterator map_it = sch_locomotor_pos2d_map_.find(pose_id);
    if(map_it != sch_locomotor_pos2d_map_.end()){
        ret_ = map_it->second ;
    }
    return ret_ ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::set_sch_locomotor_pos2d(std::string pose_id,std::string pose_name)
{
    std::map<std::string,std::string>::iterator map_it = sch_locomotor_pos2d_map_.find(pose_id);
    if(map_it != sch_locomotor_pos2d_map_.end()){
        map_it->second = pose_name ;
    }
    else
        sch_locomotor_pos2d_map_.insert(std::pair<std::string, std::string>(pose_id,pose_name));   
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::delete_sch_locomotor_pos2d(std::string pose_id)
{
    std::map<std::string,std::string>::iterator map_it = sch_locomotor_pos2d_map_.find(pose_id);
    if(map_it != sch_locomotor_pos2d_map_.end()){
        sch_locomotor_pos2d_map_.erase(map_it);    
    }
}
//-----------------------------------------------------------------------------
std::shared_ptr<ac_action_function> robot_scheduling_parameter::get_ac_action_function(std::string ac_name)
{
    std::shared_ptr<ac_action_function> ret_param = NULL ;
    //ROS_INFO("ac_name:%s get_ac_action_function size:%d",ac_name.c_str(),ac_action_function_map_.size());
    /*std::map<std::string, std::shared_ptr<ac_action_function>>::iterator iter ;
    for(iter = ac_action_function_map_.begin(); iter != ac_action_function_map_.end(); iter++){
        ROS_INFO("first:%s",iter->first.c_str());   
        ROS_INFO("iter->second->function_name :%s iter->second->function_ac_name :%s",iter->second->function_name.c_str(), iter->second->function_ac_name.c_str());    
    }*/
    std::map<std::string, std::shared_ptr<ac_action_function>>::iterator map_it = ac_action_function_map_.find(ac_name);
    if(map_it != ac_action_function_map_.end()){
        ret_param = map_it->second ;
    }
    return ret_param ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::set_ac_action_function(std::string ac_name,std::shared_ptr<ac_action_function> _param)
{
    std::map<std::string, std::shared_ptr<ac_action_function>>::iterator map_it = ac_action_function_map_.find(ac_name);
    if(map_it != ac_action_function_map_.end()){
        map_it->second->function_id = _param->function_id ;
        map_it->second->function_level = _param->function_level ;
        map_it->second->function_ac_name = _param->function_ac_name ;
        map_it->second->function_name = _param->function_name ;
        map_it->second->function_desc_eng = _param->function_desc_eng ;
		map_it->second->function_desc_tc = _param->function_desc_tc ;
		map_it->second->function_desc_sc = _param->function_desc_sc ;
    }
    else
        ac_action_function_map_.insert(std::pair<std::string, std::shared_ptr<ac_action_function>>(ac_name,_param));   
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::delete_ac_action_function(std::string ac_name)
{
    std::map<std::string, std::shared_ptr<ac_action_function>>::iterator map_it = ac_action_function_map_.find(ac_name);
    if(map_it != ac_action_function_map_.end()){
        ac_action_function_map_.erase(map_it);    
    }
}
//-----------------------------------------------------------------------------
std::string robot_scheduling_parameter::get_sch_action_function(std::string function_id)
{
    std::string  ret_ = "" ;
    std::map<std::string,std::string>::iterator map_it = sch_action_function_map_.find(function_id);
    if(map_it != sch_action_function_map_.end()){
        ret_ = map_it->second ;
    }
    return ret_ ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::set_sch_action_function(std::string function_id,std::string function_name)
{
    std::map<std::string,std::string>::iterator map_it = sch_action_function_map_.find(function_id);
    if(map_it != sch_action_function_map_.end()){
        map_it->second = function_name ;
    }
    else
        sch_action_function_map_.insert(std::pair<std::string, std::string>(function_id,function_name));   
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::delete_sch_action_function(std::string function_id)
{
    std::map<std::string,std::string>::iterator map_it = sch_action_function_map_.find(function_id);
    if(map_it != sch_action_function_map_.end()){
        sch_action_function_map_.erase(map_it);    
    }
}
//-----------------------------------------------------------------------------
std::shared_ptr<ac_alarm_code> robot_scheduling_parameter::get_ac_alarm_code(std::string ac_name)
{
    std::shared_ptr<ac_alarm_code> ret_param = NULL ;
    std::map<std::string, std::shared_ptr<ac_alarm_code>>::iterator map_it = ac_alarm_code_map_.find(ac_name);
    if(map_it != ac_alarm_code_map_.end()){
        ret_param = map_it->second ;
    }
    return ret_param ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::set_ac_alarm_code(std::string ac_name,std::shared_ptr<ac_alarm_code> _param)
{
    std::map<std::string, std::shared_ptr<ac_alarm_code>>::iterator map_it = ac_alarm_code_map_.find(ac_name);
    if(map_it != ac_alarm_code_map_.end()){
        map_it->second->alarm_id = _param->alarm_id ;
        map_it->second->alarm_level = _param->alarm_level ;
        map_it->second->alarm_name = _param->alarm_name ;
        map_it->second->alarm_desc_eng = _param->alarm_desc_eng ;
		map_it->second->alarm_desc_tc = _param->alarm_desc_tc ;
		map_it->second->alarm_desc_sc = _param->alarm_desc_sc ;
    }
    else
        ac_alarm_code_map_.insert(std::pair<std::string, std::shared_ptr<ac_alarm_code>>(ac_name,_param));   
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::delete_ac_alarm_code(std::string ac_name)
{
    std::map<std::string, std::shared_ptr<ac_alarm_code>>::iterator map_it = ac_alarm_code_map_.find(ac_name);
    if(map_it != ac_alarm_code_map_.end()){
        ac_alarm_code_map_.erase(map_it);    
    }
}
//-----------------------------------------------------------------------------
std::shared_ptr<ac_operate_code> robot_scheduling_parameter::get_ac_operate_code(std::string ac_name)
{
    std::shared_ptr<ac_operate_code> ret_param = NULL ;
    std::map<std::string, std::shared_ptr<ac_operate_code>>::iterator map_it = ac_operate_code_map_.find(ac_name);
    if(map_it != ac_operate_code_map_.end()){
        ret_param = map_it->second ;
    }
    return ret_param ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::set_ac_operate_code(std::string ac_name,std::shared_ptr<ac_operate_code> _param)
{
    std::map<std::string, std::shared_ptr<ac_operate_code>>::iterator map_it = ac_operate_code_map_.find(ac_name);
    if(map_it != ac_operate_code_map_.end()){
        map_it->second->operate_id = _param->operate_id ;
        map_it->second->operate_level = _param->operate_level ;
        map_it->second->operate_name = _param->operate_name ;
        map_it->second->operate_desc_eng = _param->operate_desc_eng ;
		map_it->second->operate_desc_tc = _param->operate_desc_tc ;
		map_it->second->operate_desc_sc = _param->operate_desc_sc ;
    }
    else
        ac_operate_code_map_.insert(std::pair<std::string, std::shared_ptr<ac_operate_code>>(ac_name,_param));   
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::delete_ac_operate_code(std::string ac_name)
{
    std::map<std::string, std::shared_ptr<ac_operate_code>>::iterator map_it = ac_operate_code_map_.find(ac_name);
    if(map_it != ac_operate_code_map_.end()){
        ac_operate_code_map_.erase(map_it);    
    }
}
//-----------------------------------------------------------------------------
std::shared_ptr<ac_action_worksheet> robot_scheduling_parameter::get_ac_action_work_ser_no(int ser_no)
{
    //ROS_INFO("get_ac_action_work_ser_no:%d",ac_action_worksheet_map_.size());
    std::map<int, std::shared_ptr<ac_action_worksheet>>::iterator iter;
    /*for(iter = ac_action_worksheet_map_.begin(); iter != ac_action_worksheet_map_.end(); iter++){
        ROS_INFO("first:%d",iter->first);   
        ROS_INFO("iter->second->target_pose_id :%s",iter->second->target_pose_id.c_str());    
    }*/
    std::shared_ptr<ac_action_worksheet> ret_param = NULL ;
    std::map<int, std::shared_ptr<ac_action_worksheet>>::iterator map_it = ac_action_worksheet_map_.find(ser_no);
    if(map_it != ac_action_worksheet_map_.end()){
        //ROS_INFO("Find!!");
        ret_param = map_it->second ;
    }
    return ret_param ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::set_ac_action_worksheet(int ser_no,std::shared_ptr<ac_action_worksheet> _param)
{
    std::map<int, std::shared_ptr<ac_action_worksheet>>::iterator map_it = ac_action_worksheet_map_.find(ser_no);
    if(map_it != ac_action_worksheet_map_.end()){
        map_it->second->item_ser_no = _param->item_ser_no ;
        map_it->second->worksheet_no = _param->worksheet_no ;
        map_it->second->worksheet_item_name = _param->worksheet_item_name ;
        map_it->second->target_pose_id = _param->target_pose_id ;
		map_it->second->action_function_id = _param->action_function_id ;
        map_it->second->action_function_params = _param->action_function_params ;
    }
    else
        ac_action_worksheet_map_.insert(std::pair<int, std::shared_ptr<ac_action_worksheet>>(ser_no,_param));       

    //ROS_INFO("ADD first:%d",ser_no);   
    //ROS_INFO("ADD iter->second->target_pose_id :%s",_param->target_pose_id.c_str());        
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::delete_ac_action_worksheet(int item_no)
{
    std::map<int, std::shared_ptr<ac_action_worksheet>>::iterator map_it = ac_action_worksheet_map_.find(item_no);
    if(map_it != ac_action_worksheet_map_.end()){
        ac_action_worksheet_map_.erase(map_it);    
    }
}
//-----------------------------------------------------------------------------
int robot_scheduling_parameter::get_ac_action_worksheet_size()
{
    return ac_action_worksheet_map_.size();
}
//-----------------------------------------------------------------------------
bool robot_scheduling_parameter::get_ac_dock_rotate_params(std::string dock_id)
{
    bool ret_param = false ;
    std::map<std::string, bool>::iterator map_it = ac_dock_rotate_map_.find(dock_id);
    if(map_it != ac_dock_rotate_map_.end()){
        ret_param = map_it->second ;
    }
    return ret_param ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::set_ac_dock_rotate_params(std::string dock_id,bool _param)
{
    std::map<std::string, bool>::iterator map_it = ac_dock_rotate_map_.find(dock_id);
    if(map_it != ac_dock_rotate_map_.end()){
        map_it->second = _param ;
    }
    else
        ac_dock_rotate_map_.insert(std::pair<std::string, bool>(dock_id,_param));   
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::delete_ac_dock_rotate_params(std::string dock_id)
{
    std::map<std::string, bool>::iterator map_it = ac_dock_rotate_map_.find(dock_id);
    if(map_it != ac_dock_rotate_map_.end()){
        ac_dock_rotate_map_.erase(map_it);    
    }
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::set_ac_target_pose2d_v(std::vector<std::shared_ptr<ac_locomotor_pos2d>> pose2d_v)
{
    ac_target_pose2d_v.clear();
    int isize = pose2d_v.size();
    ac_target_pose2d_v.resize(isize); 
    for(int i=0;i<isize;i++){
        std::shared_ptr<ac_locomotor_pos2d> _pose = std::make_shared<ac_locomotor_pos2d>();
        _pose->pos_x = pose2d_v[i]->pos_x ;
        _pose->pos_y = pose2d_v[i]->pos_y ;
        _pose->theta = pose2d_v[i]->theta ;
        ac_target_pose2d_v.emplace_back(_pose);
    }
}

//-----------------------------------------------------------------------------
std::shared_ptr<pid_ctrl_params> robot_scheduling_parameter::get_ac_pid_ctrl_params(std::string ac_name)
{
    ROS_INFO("ac_name==>%s",ac_name.c_str());
    //std::shared_ptr<pid_ctrl_params> ret_param = nullptr ;
    ROS_INFO("ac_pid_ctrl_params_map_ size==>%d",ac_pid_ctrl_params_map_.size());
    std::map<std::string, std::shared_ptr<pid_ctrl_params>>::iterator map_it = ac_pid_ctrl_params_map_.find(ac_name);
    if(map_it != ac_pid_ctrl_params_map_.end()){
        ROS_INFO("get_ac_pid_ctrl_params1111");
       return map_it->second ;
    }
    else 
        return NULL ;
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::set_ac_pid_ctrl_params(std::string ac_name,std::shared_ptr<pid_ctrl_params> _param)
{    
    std::map<std::string, std::shared_ptr<pid_ctrl_params>>::iterator map_it = ac_pid_ctrl_params_map_.find(ac_name);
    if(map_it != ac_pid_ctrl_params_map_.end()){
        map_it->second->target = _param->target ;
        map_it->second->tolerance = _param->tolerance ;
        map_it->second->min_bound = _param->min_bound ;
        map_it->second->max_bound = _param->max_bound ;
        map_it->second->d_KP = _param->d_KP ;
        map_it->second->d_KI = _param->d_KI ;
        map_it->second->d_KD = _param->d_KD ;
        map_it->second->b_compensation = _param->b_compensation ;
    }
    else
        ac_pid_ctrl_params_map_.insert(std::pair<std::string, std::shared_ptr<pid_ctrl_params>>(ac_name,_param));   
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::delete_ac_pid_ctrl_params(std::string ac_name)
{
    std::map<std::string, std::shared_ptr<pid_ctrl_params>>::iterator map_it = ac_pid_ctrl_params_map_.find(ac_name);
    if(map_it != ac_pid_ctrl_params_map_.end()){
        ac_pid_ctrl_params_map_.erase(map_it);    
    }
}
//-----------------------------------------------------------------------------
//*********************************************************************
//--- robot_interface_params ---------
//*******************************************************************
//-----------------------------------------------------------------------------
bool robot_scheduling_parameter::set_if_target_pose_id(std::string _target_pose_id)
{
    bool bRet = false ;
    ROS_INFO("set_if_target_pose_id==>%s",_target_pose_id.c_str());
    std::map<std::string, std::shared_ptr<ac_locomotor_pos2d>>::iterator map_it = ac_locomotor_pos2d_map_.find(_target_pose_id);
    if(map_it != ac_locomotor_pos2d_map_.end()){
        if_target_pose_id = _target_pose_id ;        
        if(if_target_pose_pos2d == NULL)
            if_target_pose_pos2d = std::make_shared<ac_locomotor_pos2d>();    
        if_target_pose_pos2d->pos_x = map_it->second->pos_x ;    
        if_target_pose_pos2d->pos_y = map_it->second->pos_y ;
        if_target_pose_pos2d->rotate_flag = map_it->second->rotate_flag ;
        if_target_pose_pos2d->theta = map_it->second->theta ;
        bRet = true ;

        ROS_INFO("if_target_pose_pos2d->pos_x:%f",if_target_pose_pos2d->pos_x);
    }  
    return bRet ;
}
//-----------------------------------------------------------------------------
/*void robot_scheduling_parameter::set_if_status_code_type(status_code_type _type,std::string _code)
{
    if_status_code_type = _type ;
	if_status_code = _code ;    
}
//-----------------------------------------------------------------------------
void robot_scheduling_parameter::get_if_status_code_type(status_code_type &_type,std::string &_code)
{
    _type = if_status_code_type ;
	_code = if_status_code  ;    
}*/
//------------------------------------------------------------------------------
bool robot_scheduling_parameter::split_condition(std::string cond)
{
    bool bRet = true ;
    v_params_.clear();
    std::vector<std::string> splitted_condition;
    boost::split(splitted_condition, cond, boost::is_any_of("_"));
    int isize = splitted_condition.size() ;
    v_params_.resize(isize);
    for(int i=0;i<isize;i++){
        v_params_[i] = splitted_condition[i] ;       
    }
    return bRet ;
}
//-------------------------------------------------------		
runmode_type robot_scheduling_parameter::get_systme_runmode_type()
{
    runmode_type run_type = runmode_none ;
    runstatus_type sys_status = get_system_status() ;  
    manualstatus_type m_type = get_manual_status();
    remotestatus_type r_type = get_remote_status();
    if(sys_status == runstatus_standby){
        run_type = runmode_ready ;  
        set_manual_runmode_type(run_type) ; 
        set_remote_runmode_type(run_type) ; 
        set_manual_status(manualstatus_none);
        set_remote_status(remotestatus_none);

    }
    else if(sys_status == runstatus_manual){
        if((get_manual_runmode_type() == runmode_running) ||
           (get_manualparent_runmode_type() == runmode_running) )
            run_type = runmode_running;
        else
            run_type = runmode_ready;        
    }
    else if(sys_status == runstatus_remote){
        run_type = get_remote_runmode_type() ;
    }
    else if((sys_status == runstatus_unknow) || (sys_status == runstatus_awarded) ||
            (sys_status == runstatus_pause) )
        run_type = runmode_standby ;   
    else if(sys_status == runstatus_alarm) 
        run_type = runmode_alarm ; 
    else if(sys_status == runstatus_pause) 
        run_type = runmode_pause ; 

    return run_type ;
}
//-----------------------------------------------------------------------------

#include <robot_scheduling_actions.h>
//-----------------------------------------------------------------------------
robot_scheduling_actions::robot_scheduling_actions():nh_(),
                                                /*
                                                command_action_(nh_,"robot_command"),
                                                */
                                                robot_if_process_action_(nh_,"robot_interface_process"),
                                                robot_if_proc_lower_action_(nh_,"robot_interface_proc_lower"),
                                                robot_if_proc_upper_action_(nh_,"robot_interface_proc_upper"),
                                                run_state_action_(nh_,"robot_run_state","robot_ctrl_state_rcvr"),
                                                db_process_action_(nh_,"robot_db_process","robot_db_process_rcvr"),
                                                pose_recognize_action_(nh_,"robot_initpose","robot_initpose_rcvr"),
                                                pose_move_to_action_(nh_,"robot_move_to","robot_move_to_rcvr"),
                                                robot_if_params_action_(nh_,"robot_interface_parames"),
                                                interrupt_info_action_(nh_,"interrupt_info"),
                                                time_wait_action_(nh_,"robot_time_wait"),
                                                self_turn_action_(nh_,"self_turn_to"),
                                                robot_turn_action_(nh_,"robot_turn_to","robot_turn_to_rcvr"),                                                
                                                dock_to_action_(nh_,"robot_dock_to","robot_dock_to_rcvr"),
                                                undock_to_action_(nh_,"robot_undock_to","robot_undock_to_rcvr"),
                                                power_charge_action_(nh_,"robot_power_charge","robot_power_charge_rcvr"),       
                                                worksheetrun_action_(nh_,"robot_worksheetrun","robot_worksheetrun_rcvr"),
                                                function_run_action_(nh_,"robot_do_function","robot_do_function_rcvr")
                                                                            
{     
    parameter_ = new robot_scheduling_parameter(nh_);
    std::string _service_for_upper_name , _service_to_upper_name ,
				_service_for_lower_name , _service_to_lower_name ; 
    parameter_->get_system_service_name(_service_for_upper_name , _service_to_upper_name ,
				                        _service_for_lower_name , _service_to_lower_name) ;            
    scheduling_service_ = new robot_scheduling_service(nh_,_service_for_upper_name , _service_to_upper_name ,
				                                           _service_for_lower_name , _service_to_lower_name); 
    scheduling_service_->set_robot_scheduling_parameter(parameter_);
    //-------------------------
    robot_if_process_action_.set_robot_scheduling_parameter(parameter_);
    run_state_action_.set_robot_scheduling_parameter(parameter_);
    run_state_action_.set_robot_scheduling_service(scheduling_service_);

    robot_if_proc_lower_action_.set_robot_scheduling_parameter(parameter_);
    robot_if_proc_lower_action_.set_robot_scheduling_service(scheduling_service_);

    robot_if_proc_upper_action_.set_robot_scheduling_parameter(parameter_);
    robot_if_proc_upper_action_.set_robot_scheduling_service(scheduling_service_);

    db_process_action_.set_robot_scheduling_parameter(parameter_);

    pose_recognize_action_.set_robot_scheduling_parameter(parameter_);
    pose_move_to_action_.set_robot_scheduling_parameter(parameter_);

    robot_if_params_action_.set_robot_scheduling_parameter(parameter_);

    interrupt_info_action_.set_robot_scheduling_parameter(parameter_);

    time_wait_action_.set_robot_scheduling_parameter(parameter_);

    self_turn_action_.set_robot_scheduling_parameter(parameter_);
    robot_turn_action_.set_robot_scheduling_parameter(parameter_);

    
    dock_to_action_.set_robot_scheduling_parameter(parameter_);
    undock_to_action_.set_robot_scheduling_parameter(parameter_);

    power_charge_action_.set_robot_scheduling_parameter(parameter_);
    power_charge_action_.set_robot_scheduling_service(scheduling_service_);


    worksheetrun_action_.set_robot_scheduling_parameter(parameter_);
    function_run_action_.set_robot_scheduling_parameter(parameter_);
    /*
    command_action_.set_robot_scheduling_parameter(parameter_);
    ros::NodeHandle pnh("~");
    float ac_clearmap_time ;
    if(!pnh.getParam("ac_clearmap_time", ac_clearmap_time)){
        //ROS_INFO("===456=====================================");  
        ac_clearmap_time = 0.5 ;
        //ROS_INFO("ac_clearmap_time:%f",ac_clearmap_time);  
    }*/
    
}
//-----------------------------------------------------------------------------
robot_scheduling_actions::~robot_scheduling_actions()
{
    if(parameter_ != NULL)
        delete parameter_ ;
    if(scheduling_service_ != NULL)
        delete scheduling_service_ ;
}
//-----------------------------------------------------------------------------
/*void robot_scheduling_actions::Load_CntParameter()
{
    ros::NodeHandle pnh("~");
    //if(!pnh.getParam("command_srv_service_name", command_srv_service_name))
    //    command_srv_service_name = "system_cammand" ;
}*/
//-----------------------------------------------------------------------------
//*****************************************************************************
//** progress entry point                                                    **
//*****************************************************************************
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
int main(int argc, char** argv)
{
    try
    {
        ros::init(argc,argv,"robot_scheduling_actions_node");
        robot_scheduling_actions node;
        ros::spin();
    }
    catch(...)
    {
        ROS_ERROR("Unhandled exception!");
        return -1;
    }

    return 0;
}
//--------------------------------------------------------------------------------

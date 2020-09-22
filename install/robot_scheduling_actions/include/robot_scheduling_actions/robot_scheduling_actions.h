#ifndef robot_scheduling_actions_H_
#define robot_scheduling_actions_H_

#include <ros/ros.h>
#include <robot_scheduling_parameter.h>
#include <robot_scheduling_service.h>
//-----------------
/*
#include <private_actions/robot_command_action.h>
*/
#include <private_actions/robot_if_process_action.h>
#include <private_actions/robot_if_proc_lower_action.h>
#include <private_actions/robot_if_proc_upper_action.h>
#include <private_actions/robot_run_state_action.h>
#include <public_actions/db_process_action.h>
#include <public_actions/pose_recognize_action.h>
#include <public_actions/pose_move_to_action.h>
#include <private_actions/robot_if_params_action.h>
#include <private_actions/interrupt_info_action.h>
#include <public_actions/time_wait_action.h>
#include <public_actions/self_turn_action.h>

#include <public_actions/dock_to_action.h>
#include <public_actions/undock_to_action.h>
#include <private_actions/robot_power_charge_action.h>
#include <public_actions/worksheetrun_action.h>
#include <public_actions/function_run_action.h>
//---------------------------------------------------------------------------------
class robot_scheduling_actions
{
    private:
        ros::NodeHandle nh_;
        //------------------------- 
        robot_scheduling_parameter* parameter_ ;  
        robot_scheduling_service* scheduling_service_;
        /*
        robot_command_action command_action_ ;
        */
        robot_if_process_action robot_if_process_action_ ;
        robot_if_proc_lower_action robot_if_proc_lower_action_ ;
        robot_if_proc_upper_action robot_if_proc_upper_action_ ;
        robot_run_state_action run_state_action_ ;
        db_process_action db_process_action_;
        pose_recognize_action pose_recognize_action_;
        pose_move_to_action pose_move_to_action_;
        robot_if_params_action robot_if_params_action_ ;
        interrupt_info_action interrupt_info_action_;
        time_wait_action time_wait_action_;
        self_turn_action self_turn_action_ ;
        robot_turn_action robot_turn_action_ ;        
        dock_to_action dock_to_action_ ;
        undock_to_action undock_to_action_ ;
        robot_power_charge_action power_charge_action_ ;
        worksheetrun_action worksheetrun_action_ ;
        function_run_action function_run_action_ ;
    public:
        robot_scheduling_actions();//(ros::NodeHandle nh,robot_scheduling_parameter* parameter);
        virtual ~robot_scheduling_actions();
    
};
//---------------------------------------------------------------------------------

#endif

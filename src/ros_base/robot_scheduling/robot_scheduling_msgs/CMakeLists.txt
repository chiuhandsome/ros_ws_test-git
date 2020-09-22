cmake_minimum_required(VERSION 2.8.3)

project(robot_scheduling_msgs)

find_package(catkin REQUIRED COMPONENTS 
					roscpp 
					actionlib_msgs 
					std_msgs 
					geometry_msgs 
					std_srvs 
					geometry_msgs
					message_generation
					locomotor_msgs
					)

add_message_files(
	DIRECTORY msg
	FILES 	robot_info.msg
		robot_state.msg
		robot_topic_command.msg
)

add_service_files(
	DIRECTORY srv
	FILES 	action_command_cmd.srv
		lower_if_command.srv
		upper_if_command.srv
)

add_action_files(
	DIRECTORY action
	FILES	robot_run_state.action
		robot_command.action
		pose_recognize.action
		pose_recognize_recovery.action
		pose_move_to.action
		pose_move_to_recovery.action
		dock_to.action
		dock_to_recovery.action
		undock_to.action		
		undock_to_recovery.action
		self_turn_to.action
		self_turn_to_recovery.action
		controller_state_recovery.action
		power_charge.action
		power_charge_recovery.action
		db_process.action
		db_process_recovery.action
		worksheetrun.action
		time_wait.action
		function_run.action
		function_run_recovery.action
		interrupt_info.action
		robot_interface_params.action
		##### 2020.08.18 #####
		robot_interface_process.action
		robot_interface_proc_lower.action
		robot_interface_proc_upper.action
)

generate_messages(DEPENDENCIES actionlib_msgs std_msgs geometry_msgs std_srvs locomotor_msgs)

catkin_package(
      #INCLUDE_DIRS    	#include
      #LIBRARIES       	${PROJECT_NAME}
      CATKIN_DEPENDS  	roscpp 
	  				  	actionlib_msgs 
						std_msgs 
						geometry_msgs 
						std_srvs 
						message_runtime						
            DEPENDS   
            CFG_EXTRAS
  )
##*************************** end of line ***********************************

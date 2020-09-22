
cmake_minimum_required(VERSION 3.7)

project(robot_scheduling_actions)
if (CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_GNUCXX)
	#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
	add_compile_options(-std=c++14 -fpermissive)
endif()

find_package( catkin REQUIRED 	COMPONENTS  
				message_generation
				actionlib
				move_base
				pnp_ros
				roscpp
				rospy
				std_msgs
				tf2
				geometry_msgs
				#tuw_multi_robot_msgs
				locomotor_msgs
				open_auto_dock_msgs
				#robot_database_bridge
				botcmd_msgs
				#experiment
				robot_scheduling_msgs
				car_db_manager_msgs
				#car_db_manager_bridge
				ros_utility_tools
				reset_location
				tf2_ros
				mongodb_store
			) 
#find_package(Boost REQUIRED)

catkin_package(
  INCLUDE_DIRS    include
  LIBRARIES       ${PROJECT_NAME}
  CATKIN_DEPENDS  #message_generation
				actionlib
				move_base
				pnp_ros
				roscpp
				rospy
				std_msgs
				tf2
				geometry_msgs
				#tuw_multi_robot_msgs
				locomotor_msgs
				open_auto_dock_msgs
				#robot_database_bridge
				botcmd_msgs
				#experiment
				robot_scheduling_msgs
				car_db_manager_msgs
				#car_db_manager_bridge
				ros_utility_tools
				reset_location
				tf2_ros
				mongodb_store
        DEPENDS   
        CFG_EXTRAS
)

include_directories(
	include
	${catkin_INCLUDE_DIRS}		
	#${MongoClient_INCLUDE_DIR}
)

###add_library(ctrl_data_table  
###		src/database/ctrl_tb_cell_base_device.cpp
###)

###target_link_libraries(ctrl_data_table 
###	${catkin_LIBRARIES}
###)


add_executable(robot_scheduling_actions_node	src/robot_scheduling_actions.cpp
												src/robot_scheduling_parameter.cpp
												src/robot_scheduling_service.cpp
												
												#src/private_actions/robot_command_action.cpp
												
																				
												
												
												
												
												
												src/private_actions/robot_if_process_action.cpp
												src/private_actions/robot_if_proc_lower_action.cpp
												src/private_actions/robot_if_proc_upper_action.cpp
												src/private_actions/robot_run_state_action.cpp
												src/public_actions/db_process_action.cpp
												src/public_actions/pose_recognize_action.cpp
												src/public_actions/pose_move_to_action.cpp	
												src/private_actions/robot_if_params_action.cpp
												src/private_actions/interrupt_info_action.cpp	
												src/public_actions/time_wait_action.cpp		
												src/public_actions/self_turn_action.cpp
												src/public_actions/turn_pid.cpp												
												src/public_actions/dock_to_action.cpp
												src/public_actions/undock_to_action.cpp
												src/private_actions/robot_power_charge_action.cpp
												src/public_actions/worksheetrun_action.cpp
												src/public_actions/function_run_action.cpp
												
 )
 
target_link_libraries(robot_scheduling_actions_node  #ctrl_data_table     
                      	${catkin_LIBRARIES}     
)


install(TARGETS robot_scheduling_actions_node   
      RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
      LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
      ARCHIVE DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch config #plans
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY include/ config/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})





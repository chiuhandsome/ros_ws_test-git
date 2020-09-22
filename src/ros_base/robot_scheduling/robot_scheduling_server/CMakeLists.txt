
cmake_minimum_required(VERSION 3.7)

project(robot_scheduling_server)
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
				tf
				geometry_msgs
				#tuw_multi_robot_msgs
				locomotor_msgs
				#fetch_auto_dock_msgs
				#robot_database_bridge
				#botcmd_msgs
				#experiment
				robot_scheduling_msgs
				ros_utility_tools
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
				tf
				geometry_msgs
				#tuw_multi_robot_msgs
				locomotor_msgs
				#fetch_auto_dock_msgs
				#robot_database_bridge
				#botcmd_msgs
				#experiment
				robot_scheduling_msgs
        DEPENDS   
        CFG_EXTRAS
)

include_directories(
	include
	${catkin_INCLUDE_DIRS}		
	${MongoClient_INCLUDE_DIR}
)

###add_library(ctrl_data_table  
###		src/database/ctrl_tb_cell_base_device.cpp
###)

###target_link_libraries(ctrl_data_table 
###	${catkin_LIBRARIES}
###)


add_executable(robot_scheduling_server_node src/robot_scheduling_server.cpp
							  src/robot_scheduling_pnp_server.cpp

							  #src/robot_scheduling_pnp_params.cpp							  
							  #src/private_actions/ctrl_state_recovery_ac.cpp
							  #src/private_actions/robot_command_ac.cpp	
							  src/private_actions/robot_if_process_ac.cpp
							  src/private_actions/robot_run_state_ac.cpp
							  src/public_actions/db_process_ac.cpp
							  src/public_actions/db_process_recovery_ac.cpp
							  src/private_actions/robot_if_proc_lower_ac.cpp
							  src/private_actions/robot_if_proc_upper_ac.cpp
							  src/public_actions/pose_recognize_ac.cpp
							  src/public_actions/pose_recognize_recovery_ac.cpp
							  src/public_actions/pose_move_to_ac.cpp
							  src/public_actions/pose_move_to_recovery_ac.cpp
							  src/private_actions/robot_if_params_ac.cpp
							  src/public_actions/worksheetrun_ac.cpp
							  src/public_actions/function_run_ac.cpp
							  src/public_actions/function_run_recovery_ac.cpp
							  src/private_actions/robot_time_wait_ac.cpp
							  src/private_actions/interrupt_info_ac.cpp
							  src/public_actions/pose_turn_to_ac.cpp
							  src/public_actions/pose_turn_to_recovery_ac.cpp
							  src/public_actions/dock_to_ac.cpp
							  src/public_actions/dock_to_recovery_ac.cpp
							  src/public_actions/undock_to_ac.cpp
							  src/public_actions/undock_to_recovery_ac.cpp
							  src/private_actions/power_charge_ac.cpp
							  src/private_actions/power_charge_recovery_ac.cpp	
 )
 
target_link_libraries(robot_scheduling_server_node  #ctrl_data_table     
                      	${catkin_LIBRARIES}   
)


install(TARGETS robot_scheduling_server_node   
      RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
      LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
      ARCHIVE DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch plans
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY include/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})





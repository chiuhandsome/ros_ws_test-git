cmake_minimum_required(VERSION 2.8.3)

project(robot_control_msgs)

find_package(catkin REQUIRED COMPONENTS 
					roscpp 
					actionlib_msgs 
					std_msgs 
					geometry_msgs 
					std_srvs 
					message_generation
					#tuw_multi_robot_msgs	
					)

add_message_files(
	DIRECTORY msg
	FILES 	robot_ctrl_alarmCode.msg
			robot_ctrl_alarmHistory.msg			
			robot_ctrl_roslog.msg
			Imu.msg
			PID.msg
			Velocities.msg
			hyc_RobotInfo.msg
			hyc_heartbeat.msg
)

add_service_files(
	DIRECTORY srv
	FILES 	robot_ctrl_alarmCode_cmd.srv	
			robot_ctrl_alarmHistory_cmd.srv	
			robot_ctrl_roslog_cmd.srv	
)

add_action_files(
	DIRECTORY action
	FILES 	 
)

generate_messages(DEPENDENCIES actionlib_msgs std_msgs geometry_msgs std_srvs)

catkin_package(
      #INCLUDE_DIRS    	#include
      #LIBRARIES       	${PROJECT_NAME}
      CATKIN_DEPENDS  	roscpp 
	  				  	actionlib_msgs 
						std_msgs 
						geometry_msgs 
						std_srvs 
						message_runtime
						#tuw_multi_robot_msgs
            DEPENDS   
            CFG_EXTRAS
  )
##*************************** end of line ***********************************

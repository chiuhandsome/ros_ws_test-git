cmake_minimum_required(VERSION 2.8.3)
project(samsungcmd_msgs)

find_package(catkin REQUIRED COMPONENTS roscpp actionlib_msgs std_msgs geometry_msgs std_srvs message_generation)


add_message_files(
	FILES 	samsung_commdata.msg
			samsung_cntparamsdata.msg
			samsung_station_id.msg
			samsung_work_id.msg
			samsung_alarmCode.msg
			samsung_alarmHistory.msg			
)

add_service_files(
	FILES 	samsung_commdata_cmd.srv	
)

add_action_files(
  	DIRECTORY action
  	FILES 	samsung_commdata_act.action
              	samsung_iosequence_act.action
)

generate_messages(DEPENDENCIES actionlib_msgs std_msgs geometry_msgs std_srvs)

catkin_package(CATKIN_DEPENDS roscpp actionlib_msgs std_msgs geometry_msgs std_srvs message_runtime)

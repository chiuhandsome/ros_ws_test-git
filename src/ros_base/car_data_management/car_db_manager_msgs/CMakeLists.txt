cmake_minimum_required(VERSION 2.8.3)

project(car_db_manager_msgs)

find_package(catkin REQUIRED COMPONENTS 
					roscpp 
					actionlib_msgs 
					std_msgs 
					geometry_msgs 
					std_srvs 
					geometry_msgs
					message_generation
					)

add_message_files(
	DIRECTORY msg
	FILES 	CheckParameters.msg
		PidCtrlParameters.msg
		TargerPos2dParameters.msg	
		AlarmcodeParameters.msg
		OperatecodeParameters.msg
		CarAlarmHistory.msg
		CarOperateHistory.msg
		ActionFunctionParameters.msg
		WorkSheetMain.msg
		WorkSheetItems.msg
)

add_service_files(
	DIRECTORY srv
	FILES 	CheckParametersCmd.srv
		PidCtrlParametersCmd.srv	
		TargerPos2dParametersCmd.srv
		AlarmcodeParametersCmd.srv
		OperatecodeParametersCmd.srv
		CarAlarmHistoryCmd.srv
		CarOperateHistoryCmd.srv
		ActionFunctionParametersCmd.srv
		WorkSheetMainCmd.srv
		WorkSheetItemsCmd.srv
)

add_action_files(
	DIRECTORY action
	FILES	car_db_process.action 	
		car_db_process_recovery.action  
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
            DEPENDS   
            CFG_EXTRAS
  )
##*************************** end of line ***********************************

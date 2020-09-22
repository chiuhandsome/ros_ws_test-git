cmake_minimum_required(VERSION 2.8.3)
project(botcmd_msgs)

find_package(catkin REQUIRED COMPONENTS actionlib_msgs std_msgs geometry_msgs std_srvs message_generation)

add_message_files(FILES bot_ultrasonic.msg
                        bot_pubstatus.msg
			bot_battery.msg
                        bot_mqtt_cmd.msg
			bot_mqtt_rawdata.msg
			bot_devicestatus.msg
                        bot_Infodata.msg
			bot_transferdata.msg
			bot_transbattery.msg
			bot_battery_info.msg
)

add_service_files(
	FILES bot_device_cmd.srv
		  bot_status_cmd.srv
		  bot_di_cmd.srv	
		  bot_do_cmd.srv	
		  bot_battery_cmd.srv	
		  bot_ultrasonic_cmd.srv
		  bot_Infodata_cmd.srv	
		  bot_getenabledi_cmd.srv
		  bot_transfer_cmd.srv	
		  bot_battery_info_cmd.srv				
)

add_action_files(
  	DIRECTORY action
  	FILES actBotCmd.action
#  NavigateTo.action
#  DockingInteractor.action
#  Localize.action
)

generate_messages(DEPENDENCIES actionlib_msgs std_msgs geometry_msgs std_srvs)

catkin_package(CATKIN_DEPENDS actionlib_msgs std_msgs geometry_msgs std_srvs message_runtime)

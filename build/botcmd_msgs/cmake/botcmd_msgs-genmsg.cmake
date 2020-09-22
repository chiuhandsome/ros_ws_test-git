# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "botcmd_msgs: 17 messages, 10 services")

set(MSG_I_FLAGS "-Ibotcmd_msgs:/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg;-Ibotcmd_msgs:/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(botcmd_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:botcmd_msgs/actBotCmdFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg" "actionlib_msgs/GoalID:botcmd_msgs/actBotCmdGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg" "actionlib_msgs/GoalID:botcmd_msgs/actBotCmdActionResult:botcmd_msgs/actBotCmdFeedback:actionlib_msgs/GoalStatus:botcmd_msgs/actBotCmdActionGoal:botcmd_msgs/actBotCmdGoal:std_msgs/Header:botcmd_msgs/actBotCmdActionFeedback:botcmd_msgs/actBotCmdResult"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:botcmd_msgs/actBotCmdResult:std_msgs/Header"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg" NAME_WE)
add_custom_target(_botcmd_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "botcmd_msgs" "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)

### Generating Services
_generate_srv_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_cpp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
)

### Generating Module File
_generate_module_cpp(botcmd_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(botcmd_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(botcmd_msgs_generate_messages botcmd_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_cpp _botcmd_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(botcmd_msgs_gencpp)
add_dependencies(botcmd_msgs_gencpp botcmd_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS botcmd_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)

### Generating Services
_generate_srv_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_eus(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
)

### Generating Module File
_generate_module_eus(botcmd_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(botcmd_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(botcmd_msgs_generate_messages botcmd_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_eus _botcmd_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(botcmd_msgs_geneus)
add_dependencies(botcmd_msgs_geneus botcmd_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS botcmd_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)

### Generating Services
_generate_srv_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_lisp(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
)

### Generating Module File
_generate_module_lisp(botcmd_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(botcmd_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(botcmd_msgs_generate_messages botcmd_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_lisp _botcmd_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(botcmd_msgs_genlisp)
add_dependencies(botcmd_msgs_genlisp botcmd_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS botcmd_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)

### Generating Services
_generate_srv_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_nodejs(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
)

### Generating Module File
_generate_module_nodejs(botcmd_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(botcmd_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(botcmd_msgs_generate_messages botcmd_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_nodejs _botcmd_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(botcmd_msgs_gennodejs)
add_dependencies(botcmd_msgs_gennodejs botcmd_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS botcmd_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_msg_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)

### Generating Services
_generate_srv_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)
_generate_srv_py(botcmd_msgs
  "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
)

### Generating Module File
_generate_module_py(botcmd_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(botcmd_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(botcmd_msgs_generate_messages botcmd_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg" NAME_WE)
add_dependencies(botcmd_msgs_generate_messages_py _botcmd_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(botcmd_msgs_genpy)
add_dependencies(botcmd_msgs_genpy botcmd_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS botcmd_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/botcmd_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(botcmd_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(botcmd_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(botcmd_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(botcmd_msgs_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/botcmd_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(botcmd_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(botcmd_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(botcmd_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(botcmd_msgs_generate_messages_eus std_srvs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/botcmd_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(botcmd_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(botcmd_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(botcmd_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(botcmd_msgs_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/botcmd_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(botcmd_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(botcmd_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(botcmd_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(botcmd_msgs_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/botcmd_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(botcmd_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(botcmd_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(botcmd_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(botcmd_msgs_generate_messages_py std_srvs_generate_messages_py)
endif()

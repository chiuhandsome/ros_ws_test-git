# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_control_msgs: 8 messages, 3 services")

set(MSG_I_FLAGS "-Irobot_control_msgs:/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_control_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv" NAME_WE)
add_custom_target(_robot_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv" "robot_control_msgs/robot_ctrl_alarmHistory"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg" NAME_WE)
add_custom_target(_robot_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg" NAME_WE)
add_custom_target(_robot_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg" NAME_WE)
add_custom_target(_robot_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv" NAME_WE)
add_custom_target(_robot_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv" "robot_control_msgs/robot_ctrl_roslog"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg" NAME_WE)
add_custom_target(_robot_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg" NAME_WE)
add_custom_target(_robot_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg" "geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg" NAME_WE)
add_custom_target(_robot_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg" NAME_WE)
add_custom_target(_robot_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg" NAME_WE)
add_custom_target(_robot_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv" NAME_WE)
add_custom_target(_robot_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv" "robot_control_msgs/robot_ctrl_alarmCode"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_cpp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_cpp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_cpp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_cpp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_cpp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_cpp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_cpp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
)

### Generating Services
_generate_srv_cpp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
)
_generate_srv_cpp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
)
_generate_srv_cpp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
)

### Generating Module File
_generate_module_cpp(robot_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_control_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_control_msgs_generate_messages robot_control_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_cpp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_cpp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_cpp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_cpp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_cpp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_cpp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_cpp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_cpp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_cpp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_cpp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_cpp _robot_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_control_msgs_gencpp)
add_dependencies(robot_control_msgs_gencpp robot_control_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_control_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_eus(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_eus(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_eus(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_eus(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_eus(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_eus(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_eus(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
)

### Generating Services
_generate_srv_eus(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
)
_generate_srv_eus(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
)
_generate_srv_eus(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
)

### Generating Module File
_generate_module_eus(robot_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_control_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_control_msgs_generate_messages robot_control_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_eus _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_eus _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_eus _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_eus _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_eus _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_eus _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_eus _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_eus _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_eus _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_eus _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_eus _robot_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_control_msgs_geneus)
add_dependencies(robot_control_msgs_geneus robot_control_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_control_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_lisp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_lisp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_lisp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_lisp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_lisp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_lisp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_lisp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
)

### Generating Services
_generate_srv_lisp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
)
_generate_srv_lisp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
)
_generate_srv_lisp(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
)

### Generating Module File
_generate_module_lisp(robot_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_control_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_control_msgs_generate_messages robot_control_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_lisp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_lisp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_lisp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_lisp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_lisp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_lisp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_lisp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_lisp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_lisp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_lisp _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_lisp _robot_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_control_msgs_genlisp)
add_dependencies(robot_control_msgs_genlisp robot_control_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_control_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_nodejs(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_nodejs(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_nodejs(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_nodejs(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_nodejs(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_nodejs(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_nodejs(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
)

### Generating Services
_generate_srv_nodejs(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
)
_generate_srv_nodejs(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
)
_generate_srv_nodejs(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
)

### Generating Module File
_generate_module_nodejs(robot_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_control_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_control_msgs_generate_messages robot_control_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_nodejs _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_nodejs _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_nodejs _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_nodejs _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_nodejs _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_nodejs _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_nodejs _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_nodejs _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_nodejs _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_nodejs _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_nodejs _robot_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_control_msgs_gennodejs)
add_dependencies(robot_control_msgs_gennodejs robot_control_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_control_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_py(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_py(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_py(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_py(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_py(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_py(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
)
_generate_msg_py(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
)

### Generating Services
_generate_srv_py(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
)
_generate_srv_py(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
)
_generate_srv_py(robot_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
)

### Generating Module File
_generate_module_py(robot_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_control_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_control_msgs_generate_messages robot_control_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmHistory_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_py _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/PID.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_py _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmCode.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_py _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_py _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_roslog_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_py _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_roslog.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_py _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_RobotInfo.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_py _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/robot_ctrl_alarmHistory.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_py _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/hyc_heartbeat.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_py _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_py _robot_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/robot_control_manager/robot_control_msgs/srv/robot_ctrl_alarmCode_cmd.srv" NAME_WE)
add_dependencies(robot_control_msgs_generate_messages_py _robot_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_control_msgs_genpy)
add_dependencies(robot_control_msgs_genpy robot_control_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_control_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_control_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robot_control_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_control_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(robot_control_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(robot_control_msgs_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_control_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robot_control_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_control_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(robot_control_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(robot_control_msgs_generate_messages_eus std_srvs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_control_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robot_control_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_control_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(robot_control_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(robot_control_msgs_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_control_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robot_control_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_control_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(robot_control_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(robot_control_msgs_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_control_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robot_control_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_control_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(robot_control_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(robot_control_msgs_generate_messages_py std_srvs_generate_messages_py)
endif()

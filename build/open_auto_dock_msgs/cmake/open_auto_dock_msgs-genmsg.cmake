# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "open_auto_dock_msgs: 14 messages, 1 services")

set(MSG_I_FLAGS "-Iopen_auto_dock_msgs:/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(open_auto_dock_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg" "actionlib_msgs/GoalID:open_auto_dock_msgs/UndockResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg" "actionlib_msgs/GoalID:open_auto_dock_msgs/DockGoal:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg" "actionlib_msgs/GoalID:open_auto_dock_msgs/UndockActionResult:actionlib_msgs/GoalStatus:open_auto_dock_msgs/UndockActionGoal:geometry_msgs/Twist:open_auto_dock_msgs/UndockResult:geometry_msgs/Vector3:geometry_msgs/Pose:open_auto_dock_msgs/UndockActionFeedback:geometry_msgs/Quaternion:std_msgs/Header:open_auto_dock_msgs/UndockFeedback:geometry_msgs/Point:geometry_msgs/PoseStamped:open_auto_dock_msgs/UndockGoal"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:open_auto_dock_msgs/DockResult:std_msgs/Header"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg" "actionlib_msgs/GoalID:open_auto_dock_msgs/DockResult:open_auto_dock_msgs/DockActionGoal:open_auto_dock_msgs/DockGoal:actionlib_msgs/GoalStatus:open_auto_dock_msgs/DockActionFeedback:open_auto_dock_msgs/DockActionResult:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Twist:open_auto_dock_msgs/DockFeedback:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:open_auto_dock_msgs/UndockFeedback"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg" "open_auto_dock_msgs/DockFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg" NAME_WE)
add_custom_target(_open_auto_dock_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "open_auto_dock_msgs" "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg" "actionlib_msgs/GoalID:open_auto_dock_msgs/UndockGoal:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)

### Generating Services
_generate_srv_cpp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
)

### Generating Module File
_generate_module_cpp(open_auto_dock_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(open_auto_dock_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(open_auto_dock_msgs_generate_messages open_auto_dock_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_cpp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(open_auto_dock_msgs_gencpp)
add_dependencies(open_auto_dock_msgs_gencpp open_auto_dock_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS open_auto_dock_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)

### Generating Services
_generate_srv_eus(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
)

### Generating Module File
_generate_module_eus(open_auto_dock_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(open_auto_dock_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(open_auto_dock_msgs_generate_messages open_auto_dock_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_eus _open_auto_dock_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(open_auto_dock_msgs_geneus)
add_dependencies(open_auto_dock_msgs_geneus open_auto_dock_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS open_auto_dock_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)

### Generating Services
_generate_srv_lisp(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
)

### Generating Module File
_generate_module_lisp(open_auto_dock_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(open_auto_dock_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(open_auto_dock_msgs_generate_messages open_auto_dock_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_lisp _open_auto_dock_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(open_auto_dock_msgs_genlisp)
add_dependencies(open_auto_dock_msgs_genlisp open_auto_dock_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS open_auto_dock_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)

### Generating Services
_generate_srv_nodejs(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
)

### Generating Module File
_generate_module_nodejs(open_auto_dock_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(open_auto_dock_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(open_auto_dock_msgs_generate_messages open_auto_dock_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_nodejs _open_auto_dock_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(open_auto_dock_msgs_gennodejs)
add_dependencies(open_auto_dock_msgs_gennodejs open_auto_dock_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS open_auto_dock_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)
_generate_msg_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)

### Generating Services
_generate_srv_py(open_auto_dock_msgs
  "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
)

### Generating Module File
_generate_module_py(open_auto_dock_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(open_auto_dock_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(open_auto_dock_msgs_generate_messages open_auto_dock_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg" NAME_WE)
add_dependencies(open_auto_dock_msgs_generate_messages_py _open_auto_dock_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(open_auto_dock_msgs_genpy)
add_dependencies(open_auto_dock_msgs_genpy open_auto_dock_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS open_auto_dock_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/open_auto_dock_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(open_auto_dock_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(open_auto_dock_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/open_auto_dock_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(open_auto_dock_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(open_auto_dock_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/open_auto_dock_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(open_auto_dock_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(open_auto_dock_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/open_auto_dock_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(open_auto_dock_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(open_auto_dock_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/open_auto_dock_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(open_auto_dock_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(open_auto_dock_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()

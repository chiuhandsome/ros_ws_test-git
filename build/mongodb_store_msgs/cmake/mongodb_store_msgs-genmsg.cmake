# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mongodb_store_msgs: 12 messages, 5 services")

set(MSG_I_FLAGS "-Imongodb_store_msgs:/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg;-Imongodb_store_msgs:/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mongodb_store_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg" "mongodb_store_msgs/MoveEntriesGoal:actionlib_msgs/GoalID:mongodb_store_msgs/StringPairList:std_msgs/Header:mongodb_store_msgs/StringList:mongodb_store_msgs/StringPair"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv" "mongodb_store_msgs/SerialisedMessage:mongodb_store_msgs/StringPairList:mongodb_store_msgs/StringPair"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg" "mongodb_store_msgs/MoveEntriesFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv" "mongodb_store_msgs/SerialisedMessage:mongodb_store_msgs/StringPairList:mongodb_store_msgs/StringPair"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv" "mongodb_store_msgs/SerialisedMessage:mongodb_store_msgs/StringPairList:mongodb_store_msgs/StringPair"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg" "mongodb_store_msgs/SerialisedMessage:mongodb_store_msgs/StringPairList:mongodb_store_msgs/StringPair"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg" "mongodb_store_msgs/StringPair"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv" "mongodb_store_msgs/SerialisedMessage:mongodb_store_msgs/StringPairList:mongodb_store_msgs/StringPair"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:mongodb_store_msgs/MoveEntriesResult:std_msgs/Header"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg" "mongodb_store_msgs/StringList:mongodb_store_msgs/StringPairList:mongodb_store_msgs/StringPair"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg" "mongodb_store_msgs/MoveEntriesGoal:actionlib_msgs/GoalID:mongodb_store_msgs/MoveEntriesResult:actionlib_msgs/GoalStatus:mongodb_store_msgs/MoveEntriesFeedback:mongodb_store_msgs/StringPairList:mongodb_store_msgs/MoveEntriesActionResult:mongodb_store_msgs/MoveEntriesActionGoal:std_msgs/Header:mongodb_store_msgs/StringList:mongodb_store_msgs/MoveEntriesActionFeedback:mongodb_store_msgs/StringPair"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg" NAME_WE)
add_custom_target(_mongodb_store_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store_msgs" "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)

### Generating Services
_generate_srv_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_cpp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
)

### Generating Module File
_generate_module_cpp(mongodb_store_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mongodb_store_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mongodb_store_msgs_generate_messages mongodb_store_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_cpp _mongodb_store_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mongodb_store_msgs_gencpp)
add_dependencies(mongodb_store_msgs_gencpp mongodb_store_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mongodb_store_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)

### Generating Services
_generate_srv_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_eus(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
)

### Generating Module File
_generate_module_eus(mongodb_store_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mongodb_store_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mongodb_store_msgs_generate_messages mongodb_store_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_eus _mongodb_store_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mongodb_store_msgs_geneus)
add_dependencies(mongodb_store_msgs_geneus mongodb_store_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mongodb_store_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)

### Generating Services
_generate_srv_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_lisp(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
)

### Generating Module File
_generate_module_lisp(mongodb_store_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mongodb_store_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mongodb_store_msgs_generate_messages mongodb_store_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_lisp _mongodb_store_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mongodb_store_msgs_genlisp)
add_dependencies(mongodb_store_msgs_genlisp mongodb_store_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mongodb_store_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)

### Generating Services
_generate_srv_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_nodejs(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
)

### Generating Module File
_generate_module_nodejs(mongodb_store_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mongodb_store_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mongodb_store_msgs_generate_messages mongodb_store_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_nodejs _mongodb_store_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mongodb_store_msgs_gennodejs)
add_dependencies(mongodb_store_msgs_gennodejs mongodb_store_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mongodb_store_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_msg_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)

### Generating Services
_generate_srv_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg;/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)
_generate_srv_py(mongodb_store_msgs
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
)

### Generating Module File
_generate_module_py(mongodb_store_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mongodb_store_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mongodb_store_msgs_generate_messages mongodb_store_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg" NAME_WE)
add_dependencies(mongodb_store_msgs_generate_messages_py _mongodb_store_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mongodb_store_msgs_genpy)
add_dependencies(mongodb_store_msgs_genpy mongodb_store_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mongodb_store_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(mongodb_store_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(mongodb_store_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(mongodb_store_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(mongodb_store_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(mongodb_store_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()

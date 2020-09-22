# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mongodb_store: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mongodb_store_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv" NAME_WE)
add_custom_target(_mongodb_store_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv" NAME_WE)
add_custom_target(_mongodb_store_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv" NAME_WE)
add_custom_target(_mongodb_store_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv" NAME_WE)
add_custom_target(_mongodb_store_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv" NAME_WE)
add_custom_target(_mongodb_store_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mongodb_store" "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store
)
_generate_srv_cpp(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store
)
_generate_srv_cpp(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store
)
_generate_srv_cpp(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store
)
_generate_srv_cpp(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store
)

### Generating Module File
_generate_module_cpp(mongodb_store
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mongodb_store_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mongodb_store_generate_messages mongodb_store_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_cpp _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_cpp _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_cpp _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_cpp _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_cpp _mongodb_store_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mongodb_store_gencpp)
add_dependencies(mongodb_store_gencpp mongodb_store_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mongodb_store_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store
)
_generate_srv_eus(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store
)
_generate_srv_eus(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store
)
_generate_srv_eus(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store
)
_generate_srv_eus(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store
)

### Generating Module File
_generate_module_eus(mongodb_store
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mongodb_store_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mongodb_store_generate_messages mongodb_store_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_eus _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_eus _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_eus _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_eus _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_eus _mongodb_store_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mongodb_store_geneus)
add_dependencies(mongodb_store_geneus mongodb_store_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mongodb_store_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store
)
_generate_srv_lisp(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store
)
_generate_srv_lisp(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store
)
_generate_srv_lisp(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store
)
_generate_srv_lisp(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store
)

### Generating Module File
_generate_module_lisp(mongodb_store
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mongodb_store_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mongodb_store_generate_messages mongodb_store_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_lisp _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_lisp _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_lisp _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_lisp _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_lisp _mongodb_store_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mongodb_store_genlisp)
add_dependencies(mongodb_store_genlisp mongodb_store_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mongodb_store_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store
)
_generate_srv_nodejs(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store
)
_generate_srv_nodejs(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store
)
_generate_srv_nodejs(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store
)
_generate_srv_nodejs(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store
)

### Generating Module File
_generate_module_nodejs(mongodb_store
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mongodb_store_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mongodb_store_generate_messages mongodb_store_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_nodejs _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_nodejs _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_nodejs _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_nodejs _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_nodejs _mongodb_store_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mongodb_store_gennodejs)
add_dependencies(mongodb_store_gennodejs mongodb_store_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mongodb_store_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store
)
_generate_srv_py(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store
)
_generate_srv_py(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store
)
_generate_srv_py(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store
)
_generate_srv_py(mongodb_store
  "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store
)

### Generating Module File
_generate_module_py(mongodb_store
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mongodb_store_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mongodb_store_generate_messages mongodb_store_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoFind.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_py _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/SetParam.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_py _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoInsert.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_py _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/GetParam.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_py _mongodb_store_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/srv/MongoUpdate.srv" NAME_WE)
add_dependencies(mongodb_store_generate_messages_py _mongodb_store_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mongodb_store_genpy)
add_dependencies(mongodb_store_genpy mongodb_store_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mongodb_store_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mongodb_store
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mongodb_store_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mongodb_store
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mongodb_store_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mongodb_store
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mongodb_store_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mongodb_store
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mongodb_store_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mongodb_store/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mongodb_store_generate_messages_py std_msgs_generate_messages_py)
endif()

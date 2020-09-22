# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(reset_location_CONFIG_INCLUDED)
  return()
endif()
set(reset_location_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(reset_location_SOURCE_PREFIX /home/handsome/ros_ws_test/src/ros_base/reset_location)
  set(reset_location_DEVEL_PREFIX /home/handsome/ros_ws_test/build/reset_location/devel)
  set(reset_location_INSTALL_PREFIX "")
  set(reset_location_PREFIX ${reset_location_DEVEL_PREFIX})
else()
  set(reset_location_SOURCE_PREFIX "")
  set(reset_location_DEVEL_PREFIX "")
  set(reset_location_INSTALL_PREFIX /home/handsome/ros_ws_test/install/reset_location)
  set(reset_location_PREFIX ${reset_location_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'reset_location' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(reset_location_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/handsome/ros_ws_test/build/reset_location/devel/include " STREQUAL " ")
  set(reset_location_INCLUDE_DIRS "")
  set(_include_dirs "/home/handsome/ros_ws_test/build/reset_location/devel/include")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://ros.org/wiki/razor_imu_9dof " STREQUAL " ")
    set(_report "Check the website 'http://ros.org/wiki/razor_imu_9dof' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'HYC Robot <rainlee@gmail.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${reset_location_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'reset_location' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'reset_location' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/handsome/ros_ws_test/src/ros_base/reset_location/${idir}'.  ${_report}")
    endif()
    _list_append_unique(reset_location_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND reset_location_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND reset_location_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT reset_location_NUM_DUMMY_TARGETS)
      set(reset_location_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::reset_location::wrapped-linker-option${reset_location_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR reset_location_NUM_DUMMY_TARGETS "${reset_location_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::reset_location::wrapped-linker-option${reset_location_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND reset_location_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND reset_location_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND reset_location_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/handsome/ros_ws_test/build/reset_location/devel/lib;/home/handsome/ros_ws_test/install/yocs_cmd_vel_mux/lib;/home/handsome/ros_ws_test/install/turtlebot_teleop/lib;/home/handsome/ros_ws_test/install/tug_example_pnp_server/lib;/home/handsome/ros_ws_test/install/tug_example_actions/lib;/home/handsome/ros_ws_test/install/tug_example_msgs/lib;/home/handsome/ros_ws_test/install/timed_roslaunch/lib;/home/handsome/ros_ws_test/install/teb2_local_planner/lib;/home/handsome/ros_ws_test/install/stated_roslaunch/lib;/home/handsome/ros_ws_test/install/spatio_temporal_voxel_layer/lib;/home/handsome/ros_ws_test/install/robot_udp_bridge/lib;/home/handsome/ros_ws_test/install/robot_database_bridge/lib;/home/handsome/ros_ws_test/install/samsungcmd_msgs/lib;/home/handsome/ros_ws_test/install/rplidar_ros/lib;/home/handsome/ros_ws_test/install/rp_action/lib;/home/handsome/ros_ws_test/install/rp_action_msgs/lib;/home/handsome/ros_ws_test/install/robot_scheduling_actions/lib;/home/handsome/ros_ws_test/install/cellctrl_qtgui_bridge/lib;/home/handsome/ros_ws_test/install/car_db_manager_qtgui/lib;/home/handsome/ros_ws_test/install/car_db_manager_bridge/lib;/home/handsome/ros_ws_test/install/car_db_manager_action/lib;/home/handsome/ros_ws_test/install/ros_utility_tools/lib;/home/handsome/ros_ws_test/install/robot_scheduling_server/lib;/home/handsome/ros_ws_test/install/robot_scheduling_msgs/lib;/home/handsome/ros_ws_test/install/robot_localization/lib;/home/handsome/ros_ws_test/install/robot_control_msgs/lib;/home/handsome/ros_ws_test/install/razor_imu_9dof/lib;/home/handsome/ros_ws_test/install/pnp_rosplan/lib;/home/handsome/ros_ws_test/install/pnp_ros/lib;/home/handsome/ros_ws_test/install/pnp_msgs/lib;/home/handsome/ros_ws_test/install/open_auto_dock/lib;/home/handsome/ros_ws_test/install/open_auto_dock_msgs/lib;/home/handsome/ros_ws_test/install/omron_os32c_driver/lib;/home/handsome/ros_ws_test/install/dlux_plugins/lib;/home/handsome/ros_ws_test/install/dlux_global_planner/lib;/home/handsome/ros_ws_test/install/nav_grid_pub_sub/lib;/home/handsome/ros_ws_test/install/dwb_critics/lib;/home/handsome/ros_ws_test/install/nav_grid_iterators/lib;/home/handsome/ros_ws_test/install/locomove_base/lib;/home/handsome/ros_ws_test/install/locomotor/lib;/home/handsome/ros_ws_test/install/nav_core_adapter/lib;/home/handsome/ros_ws_test/install/dwb_plugins/lib;/home/handsome/ros_ws_test/install/dwb_local_planner/lib;/home/handsome/ros_ws_test/install/nav_2d_utils/lib;/home/handsome/ros_ws_test/install/global_planner_tests/lib;/home/handsome/ros_ws_test/install/costmap_queue/lib;/home/handsome/ros_ws_test/install/nav_core2/lib;/home/handsome/ros_ws_test/install/nav_grid/lib;/home/handsome/ros_ws_test/install/actionlib_modules_msgs/lib;/home/handsome/ros_ws_test/install/locomotor_msgs/lib;/home/handsome/ros_ws_test/install/dwb_msgs/lib;/home/handsome/ros_ws_test/install/nav_2d_msgs/lib;/home/handsome/ros_ws_test/install/mongodb_log/lib;/home/handsome/ros_ws_test/install/mongodb_store/lib;/home/handsome/ros_ws_test/install/mongodb_store_msgs/lib;/home/handsome/ros_ws_test/install/ca_driver/lib;/home/handsome/ros_ws_test/install/i_robot_stage/lib;/home/handsome/ros_ws_test/install/i_robot_navigation/lib;/home/handsome/ros_ws_test/install/cellctrl_control_msgs/lib;/home/handsome/ros_ws_test/install/car_db_manager_msgs/lib;/home/handsome/ros_ws_test/install/ca_tools/lib;/home/handsome/ros_ws_test/install/ca_msgs/lib;/home/handsome/ros_ws_test/install/ca_description/lib;/home/handsome/ros_ws_test/install/botcmd_msgs/lib;/opt/ros/melodic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(reset_location_LIBRARY_DIRS ${lib_path})
      list(APPEND reset_location_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'reset_location'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND reset_location_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(reset_location_EXPORTED_TARGETS "reset_location_generate_messages_cpp;reset_location_generate_messages_eus;reset_location_generate_messages_lisp;reset_location_generate_messages_nodejs;reset_location_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${reset_location_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "actionlib_msgs;actionlib")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 reset_location_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${reset_location_dep}_FOUND)
      find_package(${reset_location_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${reset_location_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(reset_location_INCLUDE_DIRS ${${reset_location_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(reset_location_LIBRARIES ${reset_location_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${reset_location_dep}_LIBRARIES})
  _list_append_deduplicate(reset_location_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(reset_location_LIBRARIES ${reset_location_LIBRARIES})

  _list_append_unique(reset_location_LIBRARY_DIRS ${${reset_location_dep}_LIBRARY_DIRS})
  list(APPEND reset_location_EXPORTED_TARGETS ${${reset_location_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "reset_location-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${reset_location_DIR}/${extra})
  endif()
  include(${extra})
endforeach()

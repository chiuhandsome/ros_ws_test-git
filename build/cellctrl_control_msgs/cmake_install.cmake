# Install script for directory: /home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/handsome/ros_ws_test/install/cellctrl_control_msgs")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cellctrl_control_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cellctrl_control_msgs/srv" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cellctrl_control_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/catkin_generated/installspace/cellctrl_control_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/devel/include/cellctrl_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/devel/share/roseus/ros/cellctrl_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/devel/share/common-lisp/ros/cellctrl_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/devel/share/gennodejs/ros/cellctrl_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/devel/lib/python2.7/dist-packages/cellctrl_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/devel/lib/python2.7/dist-packages/cellctrl_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/catkin_generated/installspace/cellctrl_control_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cellctrl_control_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/catkin_generated/installspace/cellctrl_control_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cellctrl_control_msgs/cmake" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/catkin_generated/installspace/cellctrl_control_msgsConfig.cmake"
    "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/catkin_generated/installspace/cellctrl_control_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cellctrl_control_msgs" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/handsome/ros_ws_test/build/cellctrl_control_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/handsome/ros_ws_test/build/cellctrl_control_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

# Install script for directory: /home/handsome/ros_ws_test/src/ros_base/botcmd_msgs 

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/handsome/ros_ws_test/install/botcmd_msgs")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/botcmd_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_ultrasonic.msg"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_pubstatus.msg"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery.msg"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_cmd.msg"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_mqtt_rawdata.msg"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_devicestatus.msg"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_Infodata.msg"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transferdata.msg"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_transbattery.msg"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /msg/bot_battery_info.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/botcmd_msgs/srv" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_device_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_status_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_di_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_do_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_ultrasonic_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_Infodata_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_getenabledi_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_transfer_cmd.srv"
    "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /srv/bot_battery_info_cmd.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/botcmd_msgs/action" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /action/actBotCmd.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/botcmd_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdAction.msg"
    "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionGoal.msg"
    "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionResult.msg"
    "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdGoal.msg"
    "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdResult.msg"
    "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/botcmd_msgs/msg/actBotCmdFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/botcmd_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/botcmd_msgs/catkin_generated/installspace/botcmd_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/include/botcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/roseus/ros/botcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/common-lisp/ros/botcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/share/gennodejs/ros/botcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/lib/python2.7/dist-packages/botcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/botcmd_msgs/devel/lib/python2.7/dist-packages/botcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/handsome/ros_ws_test/build/botcmd_msgs/catkin_generated/installspace/botcmd_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/botcmd_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/botcmd_msgs/catkin_generated/installspace/botcmd_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/botcmd_msgs/cmake" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/botcmd_msgs/catkin_generated/installspace/botcmd_msgsConfig.cmake"
    "/home/handsome/ros_ws_test/build/botcmd_msgs/catkin_generated/installspace/botcmd_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/botcmd_msgs" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/botcmd_msgs /package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/handsome/ros_ws_test/build/botcmd_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/handsome/ros_ws_test/build/botcmd_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

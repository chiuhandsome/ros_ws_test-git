# Install script for directory: /home/handsome/ros_ws_test/src/ros_base/samsungcmd_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/handsome/ros_ws_test/install/samsungcmd_msgs")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/samsungcmd_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/samsungcmd_msgs/msg/samsung_commdata.msg"
    "/home/handsome/ros_ws_test/src/ros_base/samsungcmd_msgs/msg/samsung_cntparamsdata.msg"
    "/home/handsome/ros_ws_test/src/ros_base/samsungcmd_msgs/msg/samsung_station_id.msg"
    "/home/handsome/ros_ws_test/src/ros_base/samsungcmd_msgs/msg/samsung_work_id.msg"
    "/home/handsome/ros_ws_test/src/ros_base/samsungcmd_msgs/msg/samsung_alarmCode.msg"
    "/home/handsome/ros_ws_test/src/ros_base/samsungcmd_msgs/msg/samsung_alarmHistory.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/samsungcmd_msgs/srv" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/samsungcmd_msgs/srv/samsung_commdata_cmd.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/samsungcmd_msgs/action" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/samsungcmd_msgs/action/samsung_commdata_act.action"
    "/home/handsome/ros_ws_test/src/ros_base/samsungcmd_msgs/action/samsung_iosequence_act.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/samsungcmd_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_commdata_actAction.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_commdata_actActionGoal.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_commdata_actActionResult.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_commdata_actActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_commdata_actGoal.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_commdata_actResult.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_commdata_actFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/samsungcmd_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_iosequence_actAction.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_iosequence_actActionGoal.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_iosequence_actActionResult.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_iosequence_actActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_iosequence_actGoal.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_iosequence_actResult.msg"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/samsungcmd_msgs/msg/samsung_iosequence_actFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/samsungcmd_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/samsungcmd_msgs/catkin_generated/installspace/samsungcmd_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/include/samsungcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/roseus/ros/samsungcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/common-lisp/ros/samsungcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/share/gennodejs/ros/samsungcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/lib/python2.7/dist-packages/samsungcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/samsungcmd_msgs/devel/lib/python2.7/dist-packages/samsungcmd_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/handsome/ros_ws_test/build/samsungcmd_msgs/catkin_generated/installspace/samsungcmd_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/samsungcmd_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/samsungcmd_msgs/catkin_generated/installspace/samsungcmd_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/samsungcmd_msgs/cmake" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/catkin_generated/installspace/samsungcmd_msgsConfig.cmake"
    "/home/handsome/ros_ws_test/build/samsungcmd_msgs/catkin_generated/installspace/samsungcmd_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/samsungcmd_msgs" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/samsungcmd_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/handsome/ros_ws_test/build/samsungcmd_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/handsome/ros_ws_test/build/samsungcmd_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

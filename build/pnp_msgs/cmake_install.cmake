# Install script for directory: /home/handsome/ros_ws_test/src/ros_base/PNPros/ROS_bridge/pnp_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/handsome/ros_ws_test/install/pnp_msgs")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pnp_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/ROS_bridge/pnp_msgs/msg/Action.msg"
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/ROS_bridge/pnp_msgs/msg/ActionFinished.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pnp_msgs/srv" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/ROS_bridge/pnp_msgs/srv/PNPClearBuffer.srv"
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/ROS_bridge/pnp_msgs/srv/PNPCondition.srv"
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/ROS_bridge/pnp_msgs/srv/PNPGetVariableValue.srv"
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/ROS_bridge/pnp_msgs/srv/PNPLastEvent.srv"
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/ROS_bridge/pnp_msgs/srv/PNPReward.srv"
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/ROS_bridge/pnp_msgs/srv/PNPSetVariableValue.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pnp_msgs/action" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/PNPros/ROS_bridge/pnp_msgs/action/PNP.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pnp_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/pnp_msgs/devel/share/pnp_msgs/msg/PNPAction.msg"
    "/home/handsome/ros_ws_test/build/pnp_msgs/devel/share/pnp_msgs/msg/PNPActionGoal.msg"
    "/home/handsome/ros_ws_test/build/pnp_msgs/devel/share/pnp_msgs/msg/PNPActionResult.msg"
    "/home/handsome/ros_ws_test/build/pnp_msgs/devel/share/pnp_msgs/msg/PNPActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/pnp_msgs/devel/share/pnp_msgs/msg/PNPGoal.msg"
    "/home/handsome/ros_ws_test/build/pnp_msgs/devel/share/pnp_msgs/msg/PNPResult.msg"
    "/home/handsome/ros_ws_test/build/pnp_msgs/devel/share/pnp_msgs/msg/PNPFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pnp_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/pnp_msgs/catkin_generated/installspace/pnp_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/pnp_msgs/devel/include/pnp_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/pnp_msgs/devel/share/roseus/ros/pnp_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/pnp_msgs/devel/share/common-lisp/ros/pnp_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/pnp_msgs/devel/share/gennodejs/ros/pnp_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/handsome/ros_ws_test/build/pnp_msgs/devel/lib/python2.7/dist-packages/pnp_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/pnp_msgs/devel/lib/python2.7/dist-packages/pnp_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/handsome/ros_ws_test/build/pnp_msgs/catkin_generated/installspace/pnp_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pnp_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/pnp_msgs/catkin_generated/installspace/pnp_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pnp_msgs/cmake" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/pnp_msgs/catkin_generated/installspace/pnp_msgsConfig.cmake"
    "/home/handsome/ros_ws_test/build/pnp_msgs/catkin_generated/installspace/pnp_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pnp_msgs" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/PNPros/ROS_bridge/pnp_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/handsome/ros_ws_test/build/pnp_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/handsome/ros_ws_test/build/pnp_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

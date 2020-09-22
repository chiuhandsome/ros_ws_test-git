# Install script for directory: /home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/handsome/ros_ws_test/install/open_auto_dock_msgs")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_auto_dock_msgs/srv" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/srv/Cloud.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_auto_dock_msgs/action" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/action/Dock.action"
    "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/action/Undock.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_auto_dock_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockAction.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionGoal.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionResult.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockGoal.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockResult.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/DockFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_auto_dock_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockAction.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionGoal.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionResult.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockGoal.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockResult.msg"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/open_auto_dock_msgs/msg/UndockFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_auto_dock_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/catkin_generated/installspace/open_auto_dock_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/include/open_auto_dock_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/roseus/ros/open_auto_dock_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/common-lisp/ros/open_auto_dock_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/share/gennodejs/ros/open_auto_dock_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/lib/python2.7/dist-packages/open_auto_dock_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/devel/lib/python2.7/dist-packages/open_auto_dock_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/catkin_generated/installspace/open_auto_dock_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_auto_dock_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/catkin_generated/installspace/open_auto_dock_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_auto_dock_msgs/cmake" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/catkin_generated/installspace/open_auto_dock_msgsConfig.cmake"
    "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/catkin_generated/installspace/open_auto_dock_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_auto_dock_msgs" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/handsome/ros_ws_test/build/open_auto_dock_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/handsome/ros_ws_test/build/open_auto_dock_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

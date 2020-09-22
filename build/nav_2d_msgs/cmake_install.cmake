# Install script for directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/handsome/ros_ws_test/install/nav_2d_msgs")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav_2d_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/NavGridInfo.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/NavGridOfChars.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/NavGridOfCharsUpdate.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/NavGridOfDoubles.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/NavGridOfDoublesUpdate.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/Path2D.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/Point2D.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/Polygon2D.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/Polygon2DStamped.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/Pose2D32.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/Twist2D32.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/Twist2DStamped.msg"
    "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/msg/UIntBounds.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav_2d_msgs/srv" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/srv/SwitchPlugin.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav_2d_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/nav_2d_msgs/catkin_generated/installspace/nav_2d_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/nav_2d_msgs/devel/include/nav_2d_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/nav_2d_msgs/devel/share/roseus/ros/nav_2d_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/nav_2d_msgs/devel/share/common-lisp/ros/nav_2d_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/nav_2d_msgs/devel/share/gennodejs/ros/nav_2d_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/handsome/ros_ws_test/build/nav_2d_msgs/devel/lib/python2.7/dist-packages/nav_2d_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/nav_2d_msgs/devel/lib/python2.7/dist-packages/nav_2d_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/handsome/ros_ws_test/build/nav_2d_msgs/catkin_generated/installspace/nav_2d_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav_2d_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/nav_2d_msgs/catkin_generated/installspace/nav_2d_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav_2d_msgs/cmake" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/nav_2d_msgs/catkin_generated/installspace/nav_2d_msgsConfig.cmake"
    "/home/handsome/ros_ws_test/build/nav_2d_msgs/catkin_generated/installspace/nav_2d_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nav_2d_msgs" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_2d_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/handsome/ros_ws_test/build/nav_2d_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/handsome/ros_ws_test/build/nav_2d_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

# Install script for directory: /home/handsome/ros_ws_test/src/ros_base/PNPros/example/tug_example_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/handsome/ros_ws_test/install/tug_example_msgs")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tug_example_msgs/action" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/example/tug_example_msgs/action/FetchBox.action"
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/example/tug_example_msgs/action/TransportBox.action"
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/example/tug_example_msgs/action/RecoverNotFetchingBox.action"
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/example/tug_example_msgs/action/RecoverTimedOut.action"
    "/home/handsome/ros_ws_test/src/ros_base/PNPros/example/tug_example_msgs/action/PutBox.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tug_example_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/FetchBoxAction.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/FetchBoxActionGoal.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/FetchBoxActionResult.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/FetchBoxActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/FetchBoxGoal.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/FetchBoxResult.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/FetchBoxFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tug_example_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/TransportBoxAction.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/TransportBoxActionGoal.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/TransportBoxActionResult.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/TransportBoxActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/TransportBoxGoal.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/TransportBoxResult.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/TransportBoxFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tug_example_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverNotFetchingBoxAction.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverNotFetchingBoxActionGoal.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverNotFetchingBoxActionResult.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverNotFetchingBoxActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverNotFetchingBoxGoal.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverNotFetchingBoxResult.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverNotFetchingBoxFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tug_example_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverTimedOutAction.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverTimedOutActionGoal.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverTimedOutActionResult.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverTimedOutActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverTimedOutGoal.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverTimedOutResult.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/RecoverTimedOutFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tug_example_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/PutBoxAction.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/PutBoxActionGoal.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/PutBoxActionResult.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/PutBoxActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/PutBoxGoal.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/PutBoxResult.msg"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/tug_example_msgs/msg/PutBoxFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tug_example_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/tug_example_msgs/catkin_generated/installspace/tug_example_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/include/tug_example_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/roseus/ros/tug_example_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/common-lisp/ros/tug_example_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/share/gennodejs/ros/tug_example_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/lib/python2.7/dist-packages/tug_example_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/tug_example_msgs/devel/lib/python2.7/dist-packages/tug_example_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/handsome/ros_ws_test/build/tug_example_msgs/catkin_generated/installspace/tug_example_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tug_example_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/tug_example_msgs/catkin_generated/installspace/tug_example_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tug_example_msgs/cmake" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/tug_example_msgs/catkin_generated/installspace/tug_example_msgsConfig.cmake"
    "/home/handsome/ros_ws_test/build/tug_example_msgs/catkin_generated/installspace/tug_example_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tug_example_msgs" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/PNPros/example/tug_example_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/handsome/ros_ws_test/build/tug_example_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/handsome/ros_ws_test/build/tug_example_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

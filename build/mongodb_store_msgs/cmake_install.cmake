# Install script for directory: /home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/handsome/ros_ws_test/install/mongodb_store_msgs")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mongodb_store_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringList.msg"
    "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPair.msg"
    "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/StringPairList.msg"
    "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/SerialisedMessage.msg"
    "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/msg/Insert.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mongodb_store_msgs/srv" TYPE FILE FILES
    "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoInsertMsg.srv"
    "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoUpdateMsg.srv"
    "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQueryMsg.srv"
    "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoQuerywithProjectionMsg.srv"
    "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/srv/MongoDeleteMsg.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mongodb_store_msgs/action" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/action/MoveEntries.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mongodb_store_msgs/msg" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesAction.msg"
    "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionGoal.msg"
    "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionResult.msg"
    "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesActionFeedback.msg"
    "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesGoal.msg"
    "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesResult.msg"
    "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/mongodb_store_msgs/msg/MoveEntriesFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mongodb_store_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/mongodb_store_msgs/catkin_generated/installspace/mongodb_store_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/include/mongodb_store_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/roseus/ros/mongodb_store_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/common-lisp/ros/mongodb_store_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/share/gennodejs/ros/mongodb_store_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/lib/python2.7/dist-packages/mongodb_store_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/build/mongodb_store_msgs/devel/lib/python2.7/dist-packages/mongodb_store_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/handsome/ros_ws_test/build/mongodb_store_msgs/catkin_generated/installspace/mongodb_store_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mongodb_store_msgs/cmake" TYPE FILE FILES "/home/handsome/ros_ws_test/build/mongodb_store_msgs/catkin_generated/installspace/mongodb_store_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mongodb_store_msgs/cmake" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/mongodb_store_msgs/catkin_generated/installspace/mongodb_store_msgsConfig.cmake"
    "/home/handsome/ros_ws_test/build/mongodb_store_msgs/catkin_generated/installspace/mongodb_store_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mongodb_store_msgs" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/handsome/ros_ws_test/build/mongodb_store_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/handsome/ros_ws_test/build/mongodb_store_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

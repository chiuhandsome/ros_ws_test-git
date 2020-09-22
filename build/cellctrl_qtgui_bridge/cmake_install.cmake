# Install script for directory: /home/handsome/ros_ws_test/src/ros_base/cell_controller/View/cellctrl_qtgui_bridge

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/handsome/ros_ws_test/install/cellctrl_qtgui_bridge")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/handsome/ros_ws_test/build/cellctrl_qtgui_bridge/catkin_generated/installspace/cellctrl_qtgui_bridge.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cellctrl_qtgui_bridge/cmake" TYPE FILE FILES
    "/home/handsome/ros_ws_test/build/cellctrl_qtgui_bridge/catkin_generated/installspace/cellctrl_qtgui_bridgeConfig.cmake"
    "/home/handsome/ros_ws_test/build/cellctrl_qtgui_bridge/catkin_generated/installspace/cellctrl_qtgui_bridgeConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cellctrl_qtgui_bridge" TYPE FILE FILES "/home/handsome/ros_ws_test/src/ros_base/cell_controller/View/cellctrl_qtgui_bridge/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cellctrl_qtgui_bridge/cellctrl_qtgui_bridge_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cellctrl_qtgui_bridge/cellctrl_qtgui_bridge_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cellctrl_qtgui_bridge/cellctrl_qtgui_bridge_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cellctrl_qtgui_bridge" TYPE EXECUTABLE FILES "/home/handsome/ros_ws_test/build/cellctrl_qtgui_bridge/devel/lib/cellctrl_qtgui_bridge/cellctrl_qtgui_bridge_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cellctrl_qtgui_bridge/cellctrl_qtgui_bridge_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cellctrl_qtgui_bridge/cellctrl_qtgui_bridge_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cellctrl_qtgui_bridge/cellctrl_qtgui_bridge_node"
         OLD_RPATH "/home/handsome/ros_ws_test/install/mongodb_store/lib:/opt/ros/melodic/lib:/home/handsome/ros_ws_test/install/ros_utility_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cellctrl_qtgui_bridge/cellctrl_qtgui_bridge_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cellctrl_qtgui_bridge" TYPE DIRECTORY FILES
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/View/cellctrl_qtgui_bridge/launch"
    "/home/handsome/ros_ws_test/src/ros_base/cell_controller/View/cellctrl_qtgui_bridge/config"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cellctrl_qtgui_bridge" TYPE DIRECTORY FILES "/home/handsome/ros_ws_test/src/ros_base/cell_controller/View/cellctrl_qtgui_bridge/include/")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/handsome/ros_ws_test/build/cellctrl_qtgui_bridge/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/handsome/ros_ws_test/build/cellctrl_qtgui_bridge/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
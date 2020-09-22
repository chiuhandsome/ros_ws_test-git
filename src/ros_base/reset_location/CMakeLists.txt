cmake_minimum_required(VERSION 2.8.11)
project(reset_location)
add_compile_options(-std=c++14 -fpermissive)
#set(CMAKE_CXX_FLAGS "-std=c++11")
find_package(catkin REQUIRED COMPONENTS
  roscpp
  tf2
  tf2_eigen
  tf2_geometry_msgs
  std_msgs
  actionlib_msgs
  #reset_location_msgs
    #dynamic_reconfigure
)




#find_package(PCL REQUIRED)
#find_package(libpointmatcher REQUIRED)
#find_package(range-v3 REQUIRED)


################################################
## Declare ROS messages, services and actions ##
################################################

add_action_files(
   FILES
   Trilateration.action
 )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs
   actionlib_msgs
 )



#generate_dynamic_reconfigure_options(cfg/visual_obstacle_avoidance.cfg)


catkin_package(
  CATKIN_DEPENDS  actionlib_msgs actionlib
  DEPENDS  
  )



#message(STATUS ${aysnc_comm_INCLUDE_DIRS} )

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
 
  ${range-v3_INCLUDE_DIRS}

)


## Build additional executables

add_executable(reset_location_node src/reset_location_node.cpp)
target_link_libraries(reset_location_node ${catkin_LIBRARIES} )

add_executable(reset_location_as_node src/reset_location_as_node.cpp)
target_link_libraries(reset_location_as_node ${catkin_LIBRARIES} )
add_dependencies(reset_location_as_node ${catkin_EXPORTED_TARGETS})

add_executable(reset_location_ac_node src/reset_location_ac_node.cpp)
target_link_libraries(reset_location_ac_node ${catkin_LIBRARIES} )

# Dynamic reconfigure: make sure configure headers are built before any node using them
#add_dependencies(razor_imu_9dof_node ${PROJECT_NAME}_gencfg)


install(TARGETS reset_location_node reset_location_as_node reset_location_ac_node
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY cfg
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)


cmake_minimum_required(VERSION 2.8.11)
project(razor_imu_9dof)
add_compile_options(-std=c++14 -fpermissive)
set(CMAKE_CXX_FLAGS "-std=c++11")
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  serial
# async_comm
  dynamic_reconfigure
)

  #serial
find_package(Boost REQUIRED)
find_package(async_comm REQUIRED)
generate_dynamic_reconfigure_options(cfg/imu.cfg)


catkin_package(
  CATKIN_DEPENDS tf dynamic_reconfigure serial
  DEPENDS  async_comm
)



#message(STATUS ${aysnc_comm_INCLUDE_DIRS} )

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${async_comm_INCLUDE_DIRS}
)


## Build additional executables

add_executable(razor_imu_9dof_node src/razor_imu_9dof_node.cpp)
#target_link_libraries(razor_imu_9dof_node ${catkin_LIBRARIES} ${async_comm_LIBRARIES})
target_link_libraries(razor_imu_9dof_node ${catkin_LIBRARIES} ${async_comm_LIBRARIES})

# Dynamic reconfigure: make sure configure headers are built before any node using them
add_dependencies(razor_imu_9dof_node ${PROJECT_NAME}_gencfg)


install(TARGETS razor_imu_9dof_node
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

install(DIRECTORY src
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY magnetometer_calibration
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

catkin_install_python(PROGRAMS
	nodes/imu_node.py
	nodes/display_3D_visualization.py
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/nodes
)

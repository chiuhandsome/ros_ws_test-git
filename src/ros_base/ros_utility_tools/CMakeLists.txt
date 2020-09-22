cmake_minimum_required(VERSION 2.8.3)
project(ros_utility_tools)


if (CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_GNUCXX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
  add_compile_options(-std=c++14 -fpermissive)
endif()

set(CATKIN_ENABLE_TESTING True)

find_package(catkin REQUIRED
  COMPONENTS	cmake_modules
				roscpp
				roslib
				actionlib
				rospy
				std_msgs
				mongodb_store
       # async_comm 
)

set(CMAKE_MODULE_PATH   ${PROJECT_SOURCE_DIR}/cmake)
 find_package(MongoClient REQUIRED)
 find_package(async_comm REQUIRED)
 find_package (PkgConfig REQUIRED)
 pkg_check_modules (MODBUS modbus)

#find_package(Eigen REQUIRED)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES
    ${PROJECT_NAME}
  CATKIN_DEPENDS 	roscpp
					roslib
					actionlib
					rospy
					std_msgs
          
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${Eigen_INCLUDE_DIRS}
)

add_library(${PROJECT_NAME} 
   src/base_mongodbstore_client.cpp
   src/table_mongodbstore_client.cpp
   src/Modbus_server.cpp
   src/Modbus_client.cpp
   
)

target_link_libraries(${PROJECT_NAME}
  ${catkin_LIBRARIES}  
   ${MongoClient_LIBRARIES}  	
   ${async_comm_LIBRARIES}  	
    modbus
)

#add_dependencies(ros_utility_manage
#  botcmd_msgs_gencpp
#  fetch_auto_dock_gencpp
#  fetch_msgs_gencpp
#  power_msgs_gencpp
#)

#if (CATKIN_ENABLE_TESTING)
#  add_subdirectory(test)
#endif()

install(TARGETS ${PROJECT_NAME}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY include/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})


#install(
#  DIRECTORY launch config
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
#)

#install(
#  PROGRAMS
#    scripts/dock_on_button.py
#    scripts/dock_robot.py
#    scripts/undock_on_button.py
#  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
#)

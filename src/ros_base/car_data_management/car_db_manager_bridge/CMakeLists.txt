
cmake_minimum_required(VERSION 3.7)

project(car_db_manager_bridge)
if (CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_GNUCXX)
	#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
	add_compile_options(-std=c++14 -fpermissive)
endif()

find_package( catkin REQUIRED 	COMPONENTS  
				cmake_modules
				roscpp  
				roslib
				actionlib
				rospy
				std_msgs
				message_generation   
				geometry_msgs
				mongodb_store_msgs 
				mongodb_store
				ros_utility_tools
				car_db_manager_msgs
			) 
find_package(Boost REQUIRED)
find_package(async_comm REQUIRED)  
find_package(nlohmann_json REQUIRED)
### ==== for MongoClient path required ==== ###
set(CMAKE_MODULE_PATH   ${PROJECT_SOURCE_DIR}/cmake)  
find_package(MongoClient REQUIRED)
### ======================================= ###
find_package (PkgConfig REQUIRED)
###find_package(modbus REQUIRED)


pkg_check_modules (MODBUS modbus)

catkin_package(
  INCLUDE_DIRS    include
  LIBRARIES       ${PROJECT_NAME}
  CATKIN_DEPENDS  tf 
                  roscpp
                  roslib
                  actionlib
                  rospy
                  std_msgs
                  mongodb_store_msgs 
                  mongodb_store
                  ros_utility_tools
				  car_db_manager_msgs
        DEPENDS   
        CFG_EXTRAS
)

include_directories(
	include
	${catkin_INCLUDE_DIRS}		
	${MongoClient_INCLUDE_DIR}
)

###add_library(ctrl_data_table  
###		src/database/ctrl_tb_cell_base_device.cpp
###		src/database/ctrl_tb_base_application.cpp
###		rc/database/ctrl_tb_base_template.cpp
###		src/database/ctrl_tb_alarmhistory.cpp
###		src/database/ctrl_tb_roslog.cpp
###		src/control_mongodbstore_client.cpp
###)

###target_link_libraries(ctrl_data_table 
###	${catkin_LIBRARIES}
###)


add_executable(car_db_manager_bridge 
    		   src/car_db_manager_bridge.cpp
               src/car_db_manager_Interface.cpp
               src/control_mongodbstore_client.cpp
			   src/car_db_manager_tables/parameters_tables.cpp
			   src/car_db_manager_tables/parameters_tables_process.cpp
			   src/car_db_related_tables/worksheet_data_tables.cpp
			   src/car_db_related_tables/worksheet_data_tables.cpp
			   src/car_db_related_tables/worksheet_data_process.cpp
 )
 
target_link_libraries(car_db_manager_bridge  #ctrl_data_table     
                      	${catkin_LIBRARIES}                       
                      	${nlohmann_json_LIBRARIES}  
                      	${MongoClient_LIBRARIES} 
)


install(TARGETS car_db_manager_bridge  #ctrl_data_table 
      RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
      LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
      ARCHIVE DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch config
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY include/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})





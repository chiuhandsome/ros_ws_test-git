# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "tf;roscpp;roslib;actionlib;rospy;std_msgs;mongodb_store_msgs;mongodb_store;ros_utility_tools;car_db_manager_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcar_db_manager_bridge".split(';') if "-lcar_db_manager_bridge" != "" else []
PROJECT_NAME = "car_db_manager_bridge"
PROJECT_SPACE_DIR = "/home/handsome/ros_ws_test/install/car_db_manager_bridge"
PROJECT_VERSION = "1.2.0"

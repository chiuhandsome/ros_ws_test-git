# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "tf;roscpp;roslib;actionlib;rospy;std_msgs;samsungcmd_msgs;botcmd_msgs;mongodb_store_msgs;mongodb_store;robot_control_msgs;ros_utility_tools".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrobot_database_bridge".split(';') if "-lrobot_database_bridge" != "" else []
PROJECT_NAME = "robot_database_bridge"
PROJECT_SPACE_DIR = "/home/handsome/ros_ws_test/install/robot_database_bridge"
PROJECT_VERSION = "1.2.0"
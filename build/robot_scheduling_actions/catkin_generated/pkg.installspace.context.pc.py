# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;move_base;pnp_ros;roscpp;rospy;std_msgs;tf2;geometry_msgs;locomotor_msgs;open_auto_dock_msgs;botcmd_msgs;robot_scheduling_msgs;car_db_manager_msgs;ros_utility_tools;reset_location;tf2_ros;mongodb_store".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrobot_scheduling_actions".split(';') if "-lrobot_scheduling_actions" != "" else []
PROJECT_NAME = "robot_scheduling_actions"
PROJECT_SPACE_DIR = "/home/handsome/ros_ws_test/install/robot_scheduling_actions"
PROJECT_VERSION = "0.0.1"

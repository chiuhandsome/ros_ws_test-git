# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;move_base;pnp_ros;roscpp;rospy;std_msgs;tf;geometry_msgs;locomotor_msgs;robot_scheduling_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrobot_scheduling_server".split(';') if "-lrobot_scheduling_server" != "" else []
PROJECT_NAME = "robot_scheduling_server"
PROJECT_SPACE_DIR = "/home/handsome/ros_ws_test/install/robot_scheduling_server"
PROJECT_VERSION = "0.0.1"

# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;move_base;pnp_ros;roscpp;rospy;std_msgs;tf;geometry_msgs;locomotor_msgs;fetch_auto_dock_msgs;actionlib_modules_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lactionlib_modules_controller".split(';') if "-lactionlib_modules_controller" != "" else []
PROJECT_NAME = "actionlib_modules_controller"
PROJECT_SPACE_DIR = "/home/handsome/ros_ws_test/install/actionlib_modules_controller"
PROJECT_VERSION = "0.0.1"

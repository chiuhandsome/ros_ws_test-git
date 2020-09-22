# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/suitesparse;/opt/ros/melodic/include/g2o".split(';') if "${prefix}/include;/usr/include/suitesparse;/opt/ros/melodic/include/g2o" != "" else []
PROJECT_CATKIN_DEPENDS = "costmap_2d;costmap_converter;dynamic_reconfigure;geometry_msgs;interactive_markers;message_runtime;nav_msgs;nav_2d_msgs;nav_2d_utils;nav_core2;nav_core_adapter;pluginlib;roscpp;std_msgs;tf2;tf2_ros;visualization_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lteb2_local_planner;-lamd;-lbtf;-lcamd;-lccolamd;-lcholmod;-lcolamd;-lcxsparse;-lklu;-lumfpack;-lspqr;/opt/ros/melodic/lib/libg2o_csparse_extension.so;/opt/ros/melodic/lib/libg2o_core.so;/opt/ros/melodic/lib/libg2o_stuff.so;/opt/ros/melodic/lib/libg2o_types_slam2d.so;/opt/ros/melodic/lib/libg2o_types_slam3d.so;/opt/ros/melodic/lib/libg2o_solver_cholmod.so;/opt/ros/melodic/lib/libg2o_solver_pcg.so;/opt/ros/melodic/lib/libg2o_solver_csparse.so;/opt/ros/melodic/lib/libg2o_incremental.so".split(';') if "-lteb2_local_planner;-lamd;-lbtf;-lcamd;-lccolamd;-lcholmod;-lcolamd;-lcxsparse;-lklu;-lumfpack;-lspqr;/opt/ros/melodic/lib/libg2o_csparse_extension.so;/opt/ros/melodic/lib/libg2o_core.so;/opt/ros/melodic/lib/libg2o_stuff.so;/opt/ros/melodic/lib/libg2o_types_slam2d.so;/opt/ros/melodic/lib/libg2o_types_slam3d.so;/opt/ros/melodic/lib/libg2o_solver_cholmod.so;/opt/ros/melodic/lib/libg2o_solver_pcg.so;/opt/ros/melodic/lib/libg2o_solver_csparse.so;/opt/ros/melodic/lib/libg2o_incremental.so" != "" else []
PROJECT_NAME = "teb2_local_planner"
PROJECT_SPACE_DIR = "/home/handsome/ros_ws_test/install/teb2_local_planner"
PROJECT_VERSION = "0.9.0"
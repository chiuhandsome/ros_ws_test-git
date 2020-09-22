# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/melodic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/melodic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/handsome/ros_ws/install/yocs_cmd_vel_mux;/home/handsome/ros_ws/install/urdf_tutorial;/home/handsome/ros_ws/install/tuw_waypoint_to_spline_msgs;/home/handsome/ros_ws/install/tuw_multi_robot_router;/home/handsome/ros_ws/install/tuw_voronoi_graph;/home/handsome/ros_ws/install/tuw_vehicle_msgs;/home/handsome/ros_ws/install/tuw_order_planner;/home/handsome/ros_ws/install/tuw_object_rviz;/home/handsome/ros_ws/install/tuw_object_msgs;/home/handsome/ros_ws/install/tuw_nav_rviz;/home/handsome/ros_ws/install/tuw_multi_robot_local_behavior_controller;/home/handsome/ros_ws/install/tuw_multi_robot_ctrl;/home/handsome/ros_ws/install/tuw_nav_msgs;/home/handsome/ros_ws/install/tuw_multi_robot_rviz;/home/handsome/ros_ws/install/tuw_multi_robot_goal_generator;/home/handsome/ros_ws/install/robot_scheduling_utility;/home/handsome/ros_ws/install/robot_scheduling_actions;/home/handsome/ros_ws/install/actionlib_modules_bridge;/home/handsome/ros_ws/install/tuw_multi_robot_msgs;/home/handsome/ros_ws/install/tuw_multi_robot_demo;/home/handsome/ros_ws/install/tuw_local_controller_msgs;/home/handsome/ros_ws/install/tuw_geometry_rviz;/home/handsome/ros_ws/install/tuw_geometry_msgs;/home/handsome/ros_ws/install/tuw_geometry;/home/handsome/ros_ws/install/tuw_gazebo_msgs;/home/handsome/ros_ws/install/tuw_control;/home/handsome/ros_ws/install/tuw_airskin_msgs;/home/handsome/ros_ws/install/turtlebot_teleop;/home/handsome/ros_ws/install/tug_example_pnp_server;/home/handsome/ros_ws/install/tug_example_actions;/home/handsome/ros_ws/install/tug_example_msgs;/home/handsome/ros_ws/install/timed_roslaunch;/home/handsome/ros_ws/install/teb2_local_planner;/home/handsome/ros_ws/install/stated_roslaunch;/home/handsome/ros_ws/install/spatio_temporal_voxel_layer;/home/handsome/ros_ws/install/robot_udp_bridge;/home/handsome/ros_ws/install/robot_database_bridge;/home/handsome/ros_ws/install/samsungcmd_msgs;/home/handsome/ros_ws/install/rplidar_ros;/home/handsome/ros_ws/install/rp_action;/home/handsome/ros_ws/install/rp_action_msgs;/home/handsome/ros_ws/install/rosserial_xbee;/home/handsome/ros_ws/install/rosserial_windows;/home/handsome/ros_ws/install/rosserial_tivac;/home/handsome/ros_ws/install/rosserial_test;/home/handsome/ros_ws/install/rosserial_server;/home/handsome/ros_ws/install/rosserial_python;/home/handsome/ros_ws/install/rosserial_mbed;/home/handsome/ros_ws/install/rosserial_embeddedlinux;/home/handsome/ros_ws/install/rosserial_arduino;/home/handsome/ros_ws/install/rosserial_client;/home/handsome/ros_ws/install/rosserial_msgs;/home/handsome/ros_ws/install/cellctrl_qtgui_bridge;/home/handsome/ros_ws/install/car_db_manager_qtgui;/home/handsome/ros_ws/install/car_db_manager_bridge;/home/handsome/ros_ws/install/car_db_manager_action;/home/handsome/ros_ws/install/ros_utility_tools;/home/handsome/ros_ws/install/ros_package_test;/home/handsome/ros_ws/install/ros_package_manager;/home/handsome/ros_ws/install/robot_scheduling_server;/home/handsome/ros_ws/install/robot_scheduling_msgs;/home/handsome/ros_ws/install/robot_localization;/home/handsome/ros_ws/install/robot_control_msgs;/home/handsome/ros_ws/install/reset_location;/home/handsome/ros_ws/install/razor_imu_9dof;/home/handsome/ros_ws/install/pnp_rosplan;/home/handsome/ros_ws/install/actionlib_pnp_controller;/home/handsome/ros_ws/install/actionlib_modules_controller;/home/handsome/ros_ws/install/pnp_ros;/home/handsome/ros_ws/install/pnp_msgs;/home/handsome/ros_ws/install/open_auto_dock;/home/handsome/ros_ws/install/open_auto_dock_msgs;/home/handsome/ros_ws/install/omron_os32c_driver;/home/handsome/ros_ws/install/dlux_plugins;/home/handsome/ros_ws/install/dlux_global_planner;/home/handsome/ros_ws/install/nav_grid_pub_sub;/home/handsome/ros_ws/install/dwb_critics;/home/handsome/ros_ws/install/nav_grid_iterators;/home/handsome/ros_ws/install/locomove_base;/home/handsome/ros_ws/install/locomotor;/home/handsome/ros_ws/install/nav_core_adapter;/home/handsome/ros_ws/install/dwb_plugins;/home/handsome/ros_ws/install/dwb_local_planner;/home/handsome/ros_ws/install/nav_2d_utils;/home/handsome/ros_ws/install/global_planner_tests;/home/handsome/ros_ws/install/costmap_queue;/home/handsome/ros_ws/install/nav_core2;/home/handsome/ros_ws/install/nav_grid;/home/handsome/ros_ws/install/car_schedule_msgs;/home/handsome/ros_ws/install/actionlib_modules_msgs;/home/handsome/ros_ws/install/locomotor_msgs;/home/handsome/ros_ws/install/dwb_msgs;/home/handsome/ros_ws/install/nav_2d_msgs;/home/handsome/ros_ws/install/mongodb_log;/home/handsome/ros_ws/install/mongodb_store;/home/handsome/ros_ws/install/mongodb_store_msgs;/home/handsome/ros_ws/install/ca_driver;/home/handsome/ros_ws/install/i_robot_stage;/home/handsome/ros_ws/install/i_robot_navigation;/home/handsome/ros_ws/install/hyc_order_planner;/home/handsome/ros_ws/install/hyc_multi_robot_msgs;/home/handsome/ros_ws/install/fetch_open_auto_dock;/home/handsome/ros_ws/install/fetch_auto_dock_msgs;/home/handsome/ros_ws/install/change_teb2_max_vel_x_onfly;/home/handsome/ros_ws/install/cellctrl_control_msgs;/home/handsome/ros_ws/install/car_db_manager_msgs;/home/handsome/ros_ws/install/ca_msgs;/home/handsome/ros_ws/install/ca_description;/home/handsome/ros_ws/install/botcmd_msgs;/opt/ros/melodic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/handsome/ros_ws_test/build/turtlebot_teleop/devel/env.sh')

output_filename = '/home/handsome/ros_ws_test/build/turtlebot_teleop/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)

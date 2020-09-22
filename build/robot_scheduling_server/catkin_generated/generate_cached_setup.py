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
    for workspace in '/home/handsome/ros_ws_test/install/robot_scheduling_msgs;/home/handsome/ros_ws_test/install/pnp_ros;/home/handsome/ros_ws_test/install/locomotor_msgs;/home/handsome/ros_ws_test/install/ros_utility_tools;/home/handsome/ros_ws_test/install/pnp_msgs;/home/handsome/ros_ws_test/install/nav_2d_msgs;/home/handsome/ros_ws_test/install/yocs_cmd_vel_mux;/home/handsome/ros_ws_test/install/turtlebot_teleop;/home/handsome/ros_ws_test/install/tug_example_pnp_server;/home/handsome/ros_ws_test/install/tug_example_actions;/home/handsome/ros_ws_test/install/tug_example_msgs;/home/handsome/ros_ws_test/install/timed_roslaunch;/home/handsome/ros_ws_test/install/teb2_local_planner;/home/handsome/ros_ws_test/install/stated_roslaunch;/home/handsome/ros_ws_test/install/spatio_temporal_voxel_layer;/home/handsome/ros_ws_test/install/robot_udp_bridge;/home/handsome/ros_ws_test/install/robot_database_bridge;/home/handsome/ros_ws_test/install/samsungcmd_msgs;/home/handsome/ros_ws_test/install/rplidar_ros;/home/handsome/ros_ws_test/install/rp_action;/home/handsome/ros_ws_test/install/rp_action_msgs;/home/handsome/ros_ws_test/install/robot_scheduling_actions;/home/handsome/ros_ws_test/install/cellctrl_qtgui_bridge;/home/handsome/ros_ws_test/install/car_db_manager_qtgui;/home/handsome/ros_ws_test/install/car_db_manager_bridge;/home/handsome/ros_ws_test/install/car_db_manager_action;/home/handsome/ros_ws_test/install/robot_scheduling_server;/home/handsome/ros_ws_test/install/robot_localization;/home/handsome/ros_ws_test/install/robot_control_msgs;/home/handsome/ros_ws_test/install/reset_location;/home/handsome/ros_ws_test/install/razor_imu_9dof;/home/handsome/ros_ws_test/install/pnp_rosplan;/home/handsome/ros_ws_test/install/open_auto_dock;/home/handsome/ros_ws_test/install/open_auto_dock_msgs;/home/handsome/ros_ws_test/install/omron_os32c_driver;/home/handsome/ros_ws_test/install/dlux_plugins;/home/handsome/ros_ws_test/install/dlux_global_planner;/home/handsome/ros_ws_test/install/nav_grid_pub_sub;/home/handsome/ros_ws_test/install/dwb_critics;/home/handsome/ros_ws_test/install/nav_grid_iterators;/home/handsome/ros_ws_test/install/locomove_base;/home/handsome/ros_ws_test/install/locomotor;/home/handsome/ros_ws_test/install/nav_core_adapter;/home/handsome/ros_ws_test/install/dwb_plugins;/home/handsome/ros_ws_test/install/dwb_local_planner;/home/handsome/ros_ws_test/install/nav_2d_utils;/home/handsome/ros_ws_test/install/global_planner_tests;/home/handsome/ros_ws_test/install/costmap_queue;/home/handsome/ros_ws_test/install/nav_core2;/home/handsome/ros_ws_test/install/nav_grid;/home/handsome/ros_ws_test/install/actionlib_modules_msgs;/home/handsome/ros_ws_test/install/dwb_msgs;/home/handsome/ros_ws_test/install/mongodb_log;/home/handsome/ros_ws_test/install/mongodb_store;/home/handsome/ros_ws_test/install/mongodb_store_msgs;/home/handsome/ros_ws_test/install/ca_driver;/home/handsome/ros_ws_test/install/i_robot_stage;/home/handsome/ros_ws_test/install/i_robot_navigation;/home/handsome/ros_ws_test/install/cellctrl_control_msgs;/home/handsome/ros_ws_test/install/car_db_manager_msgs;/home/handsome/ros_ws_test/install/ca_tools;/home/handsome/ros_ws_test/install/ca_msgs;/home/handsome/ros_ws_test/install/ca_description;/home/handsome/ros_ws_test/install/botcmd_msgs;/opt/ros/melodic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/handsome/ros_ws_test/build/robot_scheduling_server/devel/env.sh')

output_filename = '/home/handsome/ros_ws_test/build/robot_scheduling_server/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)

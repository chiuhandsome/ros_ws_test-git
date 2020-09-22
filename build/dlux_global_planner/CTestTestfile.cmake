# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/dlux_global_planner
# Build directory: /home/handsome/ros_ws_test/build/dlux_global_planner
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_dlux_global_planner_roslint_package "/home/handsome/ros_ws_test/build/dlux_global_planner/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dlux_global_planner/test_results/dlux_global_planner/roslint-dlux_global_planner.xml" "--working-dir" "/home/handsome/ros_ws_test/build/dlux_global_planner" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/dlux_global_planner/test_results/dlux_global_planner/roslint-dlux_global_planner.xml make roslint_dlux_global_planner")
add_test(_ctest_dlux_global_planner_gtest_kernel_test "/home/handsome/ros_ws_test/build/dlux_global_planner/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dlux_global_planner/test_results/dlux_global_planner/gtest-kernel_test.xml" "--return-code" "/home/handsome/ros_ws_test/build/dlux_global_planner/devel/lib/dlux_global_planner/kernel_test --gtest_output=xml:/home/handsome/ros_ws_test/build/dlux_global_planner/test_results/dlux_global_planner/gtest-kernel_test.xml")
subdirs("gtest")

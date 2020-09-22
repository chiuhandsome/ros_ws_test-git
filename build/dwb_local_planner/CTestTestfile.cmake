# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/dwb_local_planner
# Build directory: /home/handsome/ros_ws_test/build/dwb_local_planner
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_dwb_local_planner_roslint_package "/home/handsome/ros_ws_test/build/dwb_local_planner/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dwb_local_planner/test_results/dwb_local_planner/roslint-dwb_local_planner.xml" "--working-dir" "/home/handsome/ros_ws_test/build/dwb_local_planner" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/dwb_local_planner/test_results/dwb_local_planner/roslint-dwb_local_planner.xml make roslint_dwb_local_planner")
add_test(_ctest_dwb_local_planner_gtest_utils_test "/home/handsome/ros_ws_test/build/dwb_local_planner/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dwb_local_planner/test_results/dwb_local_planner/gtest-utils_test.xml" "--return-code" "/home/handsome/ros_ws_test/build/dwb_local_planner/devel/lib/dwb_local_planner/utils_test --gtest_output=xml:/home/handsome/ros_ws_test/build/dwb_local_planner/test_results/dwb_local_planner/gtest-utils_test.xml")
subdirs("gtest")

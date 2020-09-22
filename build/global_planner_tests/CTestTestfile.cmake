# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/global_planner_tests
# Build directory: /home/handsome/ros_ws_test/build/global_planner_tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_global_planner_tests_roslint_package "/home/handsome/ros_ws_test/build/global_planner_tests/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/global_planner_tests/test_results/global_planner_tests/roslint-global_planner_tests.xml" "--working-dir" "/home/handsome/ros_ws_test/build/global_planner_tests" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/global_planner_tests/test_results/global_planner_tests/roslint-global_planner_tests.xml make roslint_global_planner_tests")
subdirs("gtest")

# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/locomove_base
# Build directory: /home/handsome/ros_ws_test/build/locomove_base
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_locomove_base_roslint_package "/home/handsome/ros_ws_test/build/locomove_base/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/locomove_base/test_results/locomove_base/roslint-locomove_base.xml" "--working-dir" "/home/handsome/ros_ws_test/build/locomove_base" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/locomove_base/test_results/locomove_base/roslint-locomove_base.xml make roslint_locomove_base")
subdirs("gtest")

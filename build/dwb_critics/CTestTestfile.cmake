# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/dwb_critics
# Build directory: /home/handsome/ros_ws_test/build/dwb_critics
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_dwb_critics_roslint_package "/home/handsome/ros_ws_test/build/dwb_critics/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dwb_critics/test_results/dwb_critics/roslint-dwb_critics.xml" "--working-dir" "/home/handsome/ros_ws_test/build/dwb_critics" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/dwb_critics/test_results/dwb_critics/roslint-dwb_critics.xml make roslint_dwb_critics")
subdirs("gtest")

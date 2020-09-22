# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/i_robot/create_autonomy/ca_driver
# Build directory: /home/handsome/ros_ws_test/build/ca_driver
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_ca_driver_roslint_package "/home/handsome/ros_ws_test/build/ca_driver/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/ca_driver/test_results/ca_driver/roslint-ca_driver.xml" "--working-dir" "/home/handsome/ros_ws_test/build/ca_driver" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/ca_driver/test_results/ca_driver/roslint-ca_driver.xml make roslint_ca_driver")
subdirs("gtest")

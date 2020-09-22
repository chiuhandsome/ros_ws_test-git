# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/locomotor
# Build directory: /home/handsome/ros_ws_test/build/locomotor
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_locomotor_roslint_package "/home/handsome/ros_ws_test/build/locomotor/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/locomotor/test_results/locomotor/roslint-locomotor.xml" "--working-dir" "/home/handsome/ros_ws_test/build/locomotor" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/locomotor/test_results/locomotor/roslint-locomotor.xml make roslint_locomotor")
subdirs("gtest")

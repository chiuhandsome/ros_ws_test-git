# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_core2
# Build directory: /home/handsome/ros_ws_test/build/nav_core2
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_nav_core2_roslint_package "/home/handsome/ros_ws_test/build/nav_core2/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/nav_core2/test_results/nav_core2/roslint-nav_core2.xml" "--working-dir" "/home/handsome/ros_ws_test/build/nav_core2" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/nav_core2/test_results/nav_core2/roslint-nav_core2.xml make roslint_nav_core2")
add_test(_ctest_nav_core2_gtest_bounds_test "/home/handsome/ros_ws_test/build/nav_core2/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/nav_core2/test_results/nav_core2/gtest-bounds_test.xml" "--return-code" "/home/handsome/ros_ws_test/build/nav_core2/devel/lib/nav_core2/bounds_test --gtest_output=xml:/home/handsome/ros_ws_test/build/nav_core2/test_results/nav_core2/gtest-bounds_test.xml")
subdirs("gtest")

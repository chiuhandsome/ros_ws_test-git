# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/dlux_plugins
# Build directory: /home/handsome/ros_ws_test/build/dlux_plugins
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_dlux_plugins_rostest_test_planner_test.launch "/home/handsome/ros_ws_test/build/dlux_plugins/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dlux_plugins/test_results/dlux_plugins/rostest-test_planner_test.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/handsome/ros_ws_test/src/ros_base/robot_navigation/dlux_plugins --package=dlux_plugins --results-filename test_planner_test.xml --results-base-dir \"/home/handsome/ros_ws_test/build/dlux_plugins/test_results\" /home/handsome/ros_ws_test/src/ros_base/robot_navigation/dlux_plugins/test/planner_test.launch ")
add_test(_ctest_dlux_plugins_rostest_test_global_oscillation_test.launch "/home/handsome/ros_ws_test/build/dlux_plugins/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dlux_plugins/test_results/dlux_plugins/rostest-test_global_oscillation_test.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/handsome/ros_ws_test/src/ros_base/robot_navigation/dlux_plugins --package=dlux_plugins --results-filename test_global_oscillation_test.xml --results-base-dir \"/home/handsome/ros_ws_test/build/dlux_plugins/test_results\" /home/handsome/ros_ws_test/src/ros_base/robot_navigation/dlux_plugins/test/global_oscillation_test.launch ")
add_test(_ctest_dlux_plugins_roslint_package "/home/handsome/ros_ws_test/build/dlux_plugins/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dlux_plugins/test_results/dlux_plugins/roslint-dlux_plugins.xml" "--working-dir" "/home/handsome/ros_ws_test/build/dlux_plugins" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/dlux_plugins/test_results/dlux_plugins/roslint-dlux_plugins.xml make roslint_dlux_plugins")
subdirs("gtest")

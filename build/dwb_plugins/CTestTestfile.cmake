# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/dwb_plugins
# Build directory: /home/handsome/ros_ws_test/build/dwb_plugins
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_dwb_plugins_gtest_vtest "/home/handsome/ros_ws_test/build/dwb_plugins/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dwb_plugins/test_results/dwb_plugins/gtest-vtest.xml" "--return-code" "/home/handsome/ros_ws_test/build/dwb_plugins/devel/lib/dwb_plugins/vtest --gtest_output=xml:/home/handsome/ros_ws_test/build/dwb_plugins/test_results/dwb_plugins/gtest-vtest.xml")
add_test(_ctest_dwb_plugins_rostest_test_goal_checker.launch "/home/handsome/ros_ws_test/build/dwb_plugins/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dwb_plugins/test_results/dwb_plugins/rostest-test_goal_checker.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/handsome/ros_ws_test/src/ros_base/robot_navigation/dwb_plugins --package=dwb_plugins --results-filename test_goal_checker.xml --results-base-dir \"/home/handsome/ros_ws_test/build/dwb_plugins/test_results\" /home/handsome/ros_ws_test/src/ros_base/robot_navigation/dwb_plugins/test/goal_checker.launch ")
add_test(_ctest_dwb_plugins_rostest_test_twist_gen.launch "/home/handsome/ros_ws_test/build/dwb_plugins/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dwb_plugins/test_results/dwb_plugins/rostest-test_twist_gen.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/handsome/ros_ws_test/src/ros_base/robot_navigation/dwb_plugins --package=dwb_plugins --results-filename test_twist_gen.xml --results-base-dir \"/home/handsome/ros_ws_test/build/dwb_plugins/test_results\" /home/handsome/ros_ws_test/src/ros_base/robot_navigation/dwb_plugins/test/twist_gen.launch ")
add_test(_ctest_dwb_plugins_roslint_package "/home/handsome/ros_ws_test/build/dwb_plugins/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/dwb_plugins/test_results/dwb_plugins/roslint-dwb_plugins.xml" "--working-dir" "/home/handsome/ros_ws_test/build/dwb_plugins" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/dwb_plugins/test_results/dwb_plugins/roslint-dwb_plugins.xml make roslint_dwb_plugins")
subdirs("gtest")

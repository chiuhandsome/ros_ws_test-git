# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/nav_grid
# Build directory: /home/handsome/ros_ws_test/build/nav_grid
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_nav_grid_roslint_package "/home/handsome/ros_ws_test/build/nav_grid/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/nav_grid/test_results/nav_grid/roslint-nav_grid.xml" "--working-dir" "/home/handsome/ros_ws_test/build/nav_grid" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/nav_grid/test_results/nav_grid/roslint-nav_grid.xml make roslint_nav_grid")
add_test(_ctest_nav_grid_gtest_utest "/home/handsome/ros_ws_test/build/nav_grid/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/nav_grid/test_results/nav_grid/gtest-utest.xml" "--return-code" "/home/handsome/ros_ws_test/build/nav_grid/devel/lib/nav_grid/utest --gtest_output=xml:/home/handsome/ros_ws_test/build/nav_grid/test_results/nav_grid/gtest-utest.xml")
subdirs("gtest")

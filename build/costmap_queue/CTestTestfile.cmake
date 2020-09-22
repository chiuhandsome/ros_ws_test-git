# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/robot_navigation/costmap_queue
# Build directory: /home/handsome/ros_ws_test/build/costmap_queue
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_costmap_queue_gtest_mbq_test "/home/handsome/ros_ws_test/build/costmap_queue/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/costmap_queue/test_results/costmap_queue/gtest-mbq_test.xml" "--return-code" "/home/handsome/ros_ws_test/build/costmap_queue/devel/lib/costmap_queue/mbq_test --gtest_output=xml:/home/handsome/ros_ws_test/build/costmap_queue/test_results/costmap_queue/gtest-mbq_test.xml")
add_test(_ctest_costmap_queue_gtest_utest "/home/handsome/ros_ws_test/build/costmap_queue/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/costmap_queue/test_results/costmap_queue/gtest-utest.xml" "--return-code" "/home/handsome/ros_ws_test/build/costmap_queue/devel/lib/costmap_queue/utest --gtest_output=xml:/home/handsome/ros_ws_test/build/costmap_queue/test_results/costmap_queue/gtest-utest.xml")
add_test(_ctest_costmap_queue_roslint_package "/home/handsome/ros_ws_test/build/costmap_queue/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/costmap_queue/test_results/costmap_queue/roslint-costmap_queue.xml" "--working-dir" "/home/handsome/ros_ws_test/build/costmap_queue" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/handsome/ros_ws_test/build/costmap_queue/test_results/costmap_queue/roslint-costmap_queue.xml make roslint_costmap_queue")
subdirs("gtest")

# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/sensor_source/omron/omron_os32c_driver
# Build directory: /home/handsome/ros_ws_test/build/omron_os32c_driver
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_omron_os32c_driver_roslaunch-check_launch_os32c.launch "/home/handsome/ros_ws_test/build/omron_os32c_driver/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/omron_os32c_driver/test_results/omron_os32c_driver/roslaunch-check_launch_os32c.launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/handsome/ros_ws_test/build/omron_os32c_driver/test_results/omron_os32c_driver" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/handsome/ros_ws_test/build/omron_os32c_driver/test_results/omron_os32c_driver/roslaunch-check_launch_os32c.launch.xml\" \"/home/handsome/ros_ws_test/src/ros_base/sensor_source/omron/omron_os32c_driver/launch/os32c.launch\" ")
add_test(_ctest_omron_os32c_driver_gtest_omron_os32c_driver-test "/home/handsome/ros_ws_test/build/omron_os32c_driver/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/omron_os32c_driver/test_results/omron_os32c_driver/gtest-omron_os32c_driver-test.xml" "--return-code" "/home/handsome/ros_ws_test/build/omron_os32c_driver/devel/lib/omron_os32c_driver/omron_os32c_driver-test --gtest_output=xml:/home/handsome/ros_ws_test/build/omron_os32c_driver/test_results/omron_os32c_driver/gtest-omron_os32c_driver-test.xml")
subdirs("gtest")

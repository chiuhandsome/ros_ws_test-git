# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/stated_roslaunch
# Build directory: /home/handsome/ros_ws_test/build/stated_roslaunch
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_stated_roslaunch_roslaunch-check_launch "/home/handsome/ros_ws_test/build/stated_roslaunch/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/stated_roslaunch/test_results/stated_roslaunch/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/handsome/ros_ws_test/build/stated_roslaunch/test_results/stated_roslaunch" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/handsome/ros_ws_test/build/stated_roslaunch/test_results/stated_roslaunch/roslaunch-check_launch.xml\" \"/home/handsome/ros_ws_test/src/ros_base/stated_roslaunch/launch\" ")
subdirs("gtest")

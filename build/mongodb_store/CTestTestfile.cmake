# CMake generated Testfile for 
# Source directory: /home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store
# Build directory: /home/handsome/ros_ws_test/build/mongodb_store
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_mongodb_store_rostest_tests_message_store.test "/home/handsome/ros_ws_test/build/mongodb_store/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/mongodb_store/test_results/mongodb_store/rostest-tests_message_store.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store --package=mongodb_store --results-filename tests_message_store.xml --results-base-dir \"/home/handsome/ros_ws_test/build/mongodb_store/test_results\" /home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/tests/message_store.test ")
add_test(_ctest_mongodb_store_rostest_tests_replication.test "/home/handsome/ros_ws_test/build/mongodb_store/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/mongodb_store/test_results/mongodb_store/rostest-tests_replication.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store --package=mongodb_store --results-filename tests_replication.xml --results-base-dir \"/home/handsome/ros_ws_test/build/mongodb_store/test_results\" /home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/tests/replication.test ")
add_test(_ctest_mongodb_store_rostest_tests_message_store_cpp_client.test "/home/handsome/ros_ws_test/build/mongodb_store/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/handsome/ros_ws_test/build/mongodb_store/test_results/mongodb_store/rostest-tests_message_store_cpp_client.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store --package=mongodb_store --results-filename tests_message_store_cpp_client.xml --results-base-dir \"/home/handsome/ros_ws_test/build/mongodb_store/test_results\" /home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/tests/message_store_cpp_client.test ")
subdirs("gtest")
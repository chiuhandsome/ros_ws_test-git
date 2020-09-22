execute_process(COMMAND "/home/handsome/ros_ws_test/build/mongodb_store/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/handsome/ros_ws_test/build/mongodb_store/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

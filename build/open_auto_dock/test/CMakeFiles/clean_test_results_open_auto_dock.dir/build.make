# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/handsome/ros_ws_test/build/open_auto_dock

# Utility rule file for clean_test_results_open_auto_dock.

# Include the progress variables for this target.
include test/CMakeFiles/clean_test_results_open_auto_dock.dir/progress.make

test/CMakeFiles/clean_test_results_open_auto_dock:
	cd /home/handsome/ros_ws_test/build/open_auto_dock/test && /usr/bin/python2 /opt/ros/melodic/share/catkin/cmake/test/remove_test_results.py /home/handsome/ros_ws_test/build/open_auto_dock/test_results/open_auto_dock

clean_test_results_open_auto_dock: test/CMakeFiles/clean_test_results_open_auto_dock
clean_test_results_open_auto_dock: test/CMakeFiles/clean_test_results_open_auto_dock.dir/build.make

.PHONY : clean_test_results_open_auto_dock

# Rule to build all files generated by this target.
test/CMakeFiles/clean_test_results_open_auto_dock.dir/build: clean_test_results_open_auto_dock

.PHONY : test/CMakeFiles/clean_test_results_open_auto_dock.dir/build

test/CMakeFiles/clean_test_results_open_auto_dock.dir/clean:
	cd /home/handsome/ros_ws_test/build/open_auto_dock/test && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_open_auto_dock.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/clean_test_results_open_auto_dock.dir/clean

test/CMakeFiles/clean_test_results_open_auto_dock.dir/depend:
	cd /home/handsome/ros_ws_test/build/open_auto_dock && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock /home/handsome/ros_ws_test/src/ros_base/open_auto_dock/open_auto_dock/test /home/handsome/ros_ws_test/build/open_auto_dock /home/handsome/ros_ws_test/build/open_auto_dock/test /home/handsome/ros_ws_test/build/open_auto_dock/test/CMakeFiles/clean_test_results_open_auto_dock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/clean_test_results_open_auto_dock.dir/depend

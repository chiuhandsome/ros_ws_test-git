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
CMAKE_SOURCE_DIR = /home/handsome/ros_ws_test/src/ros_base/i_robot/libcreate

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/handsome/ros_ws_test/build/libcreate

# Include any dependencies generated for this target.
include CMakeFiles/packets.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/packets.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/packets.dir/flags.make

CMakeFiles/packets.dir/examples/packets.cpp.o: CMakeFiles/packets.dir/flags.make
CMakeFiles/packets.dir/examples/packets.cpp.o: /home/handsome/ros_ws_test/src/ros_base/i_robot/libcreate/examples/packets.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/handsome/ros_ws_test/build/libcreate/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/packets.dir/examples/packets.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/packets.dir/examples/packets.cpp.o -c /home/handsome/ros_ws_test/src/ros_base/i_robot/libcreate/examples/packets.cpp

CMakeFiles/packets.dir/examples/packets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/packets.dir/examples/packets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/handsome/ros_ws_test/src/ros_base/i_robot/libcreate/examples/packets.cpp > CMakeFiles/packets.dir/examples/packets.cpp.i

CMakeFiles/packets.dir/examples/packets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/packets.dir/examples/packets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/handsome/ros_ws_test/src/ros_base/i_robot/libcreate/examples/packets.cpp -o CMakeFiles/packets.dir/examples/packets.cpp.s

CMakeFiles/packets.dir/examples/packets.cpp.o.requires:

.PHONY : CMakeFiles/packets.dir/examples/packets.cpp.o.requires

CMakeFiles/packets.dir/examples/packets.cpp.o.provides: CMakeFiles/packets.dir/examples/packets.cpp.o.requires
	$(MAKE) -f CMakeFiles/packets.dir/build.make CMakeFiles/packets.dir/examples/packets.cpp.o.provides.build
.PHONY : CMakeFiles/packets.dir/examples/packets.cpp.o.provides

CMakeFiles/packets.dir/examples/packets.cpp.o.provides.build: CMakeFiles/packets.dir/examples/packets.cpp.o


# Object files for target packets
packets_OBJECTS = \
"CMakeFiles/packets.dir/examples/packets.cpp.o"

# External object files for target packets
packets_EXTERNAL_OBJECTS =

packets: CMakeFiles/packets.dir/examples/packets.cpp.o
packets: CMakeFiles/packets.dir/build.make
packets: /usr/lib/x86_64-linux-gnu/libboost_system.so
packets: /usr/lib/x86_64-linux-gnu/libboost_thread.so
packets: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
packets: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
packets: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
packets: /usr/lib/x86_64-linux-gnu/libpthread.so
packets: libcreate.so
packets: /usr/lib/x86_64-linux-gnu/libboost_system.so
packets: /usr/lib/x86_64-linux-gnu/libboost_thread.so
packets: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
packets: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
packets: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
packets: /usr/lib/x86_64-linux-gnu/libpthread.so
packets: CMakeFiles/packets.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/handsome/ros_ws_test/build/libcreate/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable packets"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/packets.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/packets.dir/build: packets

.PHONY : CMakeFiles/packets.dir/build

CMakeFiles/packets.dir/requires: CMakeFiles/packets.dir/examples/packets.cpp.o.requires

.PHONY : CMakeFiles/packets.dir/requires

CMakeFiles/packets.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/packets.dir/cmake_clean.cmake
.PHONY : CMakeFiles/packets.dir/clean

CMakeFiles/packets.dir/depend:
	cd /home/handsome/ros_ws_test/build/libcreate && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/handsome/ros_ws_test/src/ros_base/i_robot/libcreate /home/handsome/ros_ws_test/src/ros_base/i_robot/libcreate /home/handsome/ros_ws_test/build/libcreate /home/handsome/ros_ws_test/build/libcreate /home/handsome/ros_ws_test/build/libcreate/CMakeFiles/packets.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/packets.dir/depend


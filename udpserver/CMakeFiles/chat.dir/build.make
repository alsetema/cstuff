# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/alsetema/git projects/c/udpserver"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/alsetema/git projects/c/udpserver"

# Include any dependencies generated for this target.
include CMakeFiles/chat.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/chat.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/chat.dir/flags.make

CMakeFiles/chat.dir/udpserver.c.o: CMakeFiles/chat.dir/flags.make
CMakeFiles/chat.dir/udpserver.c.o: udpserver.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/alsetema/git projects/c/udpserver/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/chat.dir/udpserver.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/chat.dir/udpserver.c.o   -c "/home/alsetema/git projects/c/udpserver/udpserver.c"

CMakeFiles/chat.dir/udpserver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chat.dir/udpserver.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/alsetema/git projects/c/udpserver/udpserver.c" > CMakeFiles/chat.dir/udpserver.c.i

CMakeFiles/chat.dir/udpserver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chat.dir/udpserver.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/alsetema/git projects/c/udpserver/udpserver.c" -o CMakeFiles/chat.dir/udpserver.c.s

# Object files for target chat
chat_OBJECTS = \
"CMakeFiles/chat.dir/udpserver.c.o"

# External object files for target chat
chat_EXTERNAL_OBJECTS =

chat: CMakeFiles/chat.dir/udpserver.c.o
chat: CMakeFiles/chat.dir/build.make
chat: CMakeFiles/chat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/alsetema/git projects/c/udpserver/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable chat"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/chat.dir/build: chat

.PHONY : CMakeFiles/chat.dir/build

CMakeFiles/chat.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/chat.dir/cmake_clean.cmake
.PHONY : CMakeFiles/chat.dir/clean

CMakeFiles/chat.dir/depend:
	cd "/home/alsetema/git projects/c/udpserver" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/alsetema/git projects/c/udpserver" "/home/alsetema/git projects/c/udpserver" "/home/alsetema/git projects/c/udpserver" "/home/alsetema/git projects/c/udpserver" "/home/alsetema/git projects/c/udpserver/CMakeFiles/chat.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/chat.dir/depend


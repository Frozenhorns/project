# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build

# Include any dependencies generated for this target.
include addons/color/CMakeFiles/allegro_color.dir/depend.make

# Include the progress variables for this target.
include addons/color/CMakeFiles/allegro_color.dir/progress.make

# Include the compile flags for this target's objects.
include addons/color/CMakeFiles/allegro_color.dir/flags.make

lib/Headers/allegro5/allegro_color.h: ../addons/color/allegro5/allegro_color.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content lib/Headers/allegro5/allegro_color.h"
	$(CMAKE_COMMAND) -E copy /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/color/allegro5/allegro_color.h lib/Headers/allegro5/allegro_color.h

addons/color/CMakeFiles/allegro_color.dir/color.c.o: addons/color/CMakeFiles/allegro_color.dir/flags.make
addons/color/CMakeFiles/allegro_color.dir/color.c.o: ../addons/color/color.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/color/CMakeFiles/allegro_color.dir/color.c.o"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/color && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_COLOR_SRC  -DALLEGRO_LIB_BUILD -o CMakeFiles/allegro_color.dir/color.c.o   -c /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/color/color.c

addons/color/CMakeFiles/allegro_color.dir/color.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_color.dir/color.c.i"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/color && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_COLOR_SRC  -DALLEGRO_LIB_BUILD -E /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/color/color.c > CMakeFiles/allegro_color.dir/color.c.i

addons/color/CMakeFiles/allegro_color.dir/color.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_color.dir/color.c.s"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/color && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -DALLEGRO_COLOR_SRC  -DALLEGRO_LIB_BUILD -S /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/color/color.c -o CMakeFiles/allegro_color.dir/color.c.s

addons/color/CMakeFiles/allegro_color.dir/color.c.o.requires:
.PHONY : addons/color/CMakeFiles/allegro_color.dir/color.c.o.requires

addons/color/CMakeFiles/allegro_color.dir/color.c.o.provides: addons/color/CMakeFiles/allegro_color.dir/color.c.o.requires
	$(MAKE) -f addons/color/CMakeFiles/allegro_color.dir/build.make addons/color/CMakeFiles/allegro_color.dir/color.c.o.provides.build
.PHONY : addons/color/CMakeFiles/allegro_color.dir/color.c.o.provides

addons/color/CMakeFiles/allegro_color.dir/color.c.o.provides.build: addons/color/CMakeFiles/allegro_color.dir/color.c.o

# Object files for target allegro_color
allegro_color_OBJECTS = \
"CMakeFiles/allegro_color.dir/color.c.o"

# External object files for target allegro_color
allegro_color_EXTERNAL_OBJECTS =

lib/liballegro_color.so.5.0.9: addons/color/CMakeFiles/allegro_color.dir/color.c.o
lib/liballegro_color.so.5.0.9: addons/color/CMakeFiles/allegro_color.dir/build.make
lib/liballegro_color.so.5.0.9: lib/liballegro.so.5.0.9
lib/liballegro_color.so.5.0.9: /usr/lib64/libSM.so
lib/liballegro_color.so.5.0.9: /usr/lib64/libICE.so
lib/liballegro_color.so.5.0.9: /usr/lib64/libX11.so
lib/liballegro_color.so.5.0.9: /usr/lib64/libXext.so
lib/liballegro_color.so.5.0.9: /usr/lib64/libGL.so
lib/liballegro_color.so.5.0.9: /usr/lib64/libGLU.so
lib/liballegro_color.so.5.0.9: addons/color/CMakeFiles/allegro_color.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../lib/liballegro_color.so"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/color && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/allegro_color.dir/link.txt --verbose=$(VERBOSE)
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/color && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/liballegro_color.so.5.0.9 ../../lib/liballegro_color.so.5.0 ../../lib/liballegro_color.so

lib/liballegro_color.so.5.0: lib/liballegro_color.so.5.0.9

lib/liballegro_color.so: lib/liballegro_color.so.5.0.9

# Rule to build all files generated by this target.
addons/color/CMakeFiles/allegro_color.dir/build: lib/liballegro_color.so
addons/color/CMakeFiles/allegro_color.dir/build: lib/Headers/allegro5/allegro_color.h
.PHONY : addons/color/CMakeFiles/allegro_color.dir/build

addons/color/CMakeFiles/allegro_color.dir/requires: addons/color/CMakeFiles/allegro_color.dir/color.c.o.requires
.PHONY : addons/color/CMakeFiles/allegro_color.dir/requires

addons/color/CMakeFiles/allegro_color.dir/clean:
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/color && $(CMAKE_COMMAND) -P CMakeFiles/allegro_color.dir/cmake_clean.cmake
.PHONY : addons/color/CMakeFiles/allegro_color.dir/clean

addons/color/CMakeFiles/allegro_color.dir/depend:
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9 /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/addons/color /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/color /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/addons/color/CMakeFiles/allegro_color.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : addons/color/CMakeFiles/allegro_color.dir/depend


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
include examples/CMakeFiles/ex_icon2.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/ex_icon2.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/ex_icon2.dir/flags.make

examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o: examples/CMakeFiles/ex_icon2.dir/flags.make
examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o: ../examples/ex_icon2.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ex_icon2.dir/ex_icon2.c.o   -c /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/examples/ex_icon2.c

examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ex_icon2.dir/ex_icon2.c.i"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/examples/ex_icon2.c > CMakeFiles/ex_icon2.dir/ex_icon2.c.i

examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ex_icon2.dir/ex_icon2.c.s"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/examples/ex_icon2.c -o CMakeFiles/ex_icon2.dir/ex_icon2.c.s

examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o.requires:
.PHONY : examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o.requires

examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o.provides: examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o.requires
	$(MAKE) -f examples/CMakeFiles/ex_icon2.dir/build.make examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o.provides.build
.PHONY : examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o.provides

examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o.provides.build: examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o

# Object files for target ex_icon2
ex_icon2_OBJECTS = \
"CMakeFiles/ex_icon2.dir/ex_icon2.c.o"

# External object files for target ex_icon2
ex_icon2_EXTERNAL_OBJECTS =

examples/ex_icon2: examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o
examples/ex_icon2: examples/CMakeFiles/ex_icon2.dir/build.make
examples/ex_icon2: lib/liballegro_image.so.5.0.9
examples/ex_icon2: lib/liballegro.so.5.0.9
examples/ex_icon2: lib/liballegro_main.so.5.0.9
examples/ex_icon2: lib/liballegro_dialog.so.5.0.9
examples/ex_icon2: /usr/lib64/libpng.so
examples/ex_icon2: /usr/lib64/libz.so
examples/ex_icon2: /usr/lib64/libjpeg.so
examples/ex_icon2: lib/liballegro.so.5.0.9
examples/ex_icon2: /usr/lib64/libSM.so
examples/ex_icon2: /usr/lib64/libICE.so
examples/ex_icon2: /usr/lib64/libX11.so
examples/ex_icon2: /usr/lib64/libXext.so
examples/ex_icon2: /usr/lib64/libGL.so
examples/ex_icon2: /usr/lib64/libGLU.so
examples/ex_icon2: examples/CMakeFiles/ex_icon2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ex_icon2"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ex_icon2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/ex_icon2.dir/build: examples/ex_icon2
.PHONY : examples/CMakeFiles/ex_icon2.dir/build

examples/CMakeFiles/ex_icon2.dir/requires: examples/CMakeFiles/ex_icon2.dir/ex_icon2.c.o.requires
.PHONY : examples/CMakeFiles/ex_icon2.dir/requires

examples/CMakeFiles/ex_icon2.dir/clean:
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples && $(CMAKE_COMMAND) -P CMakeFiles/ex_icon2.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/ex_icon2.dir/clean

examples/CMakeFiles/ex_icon2.dir/depend:
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9 /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/examples /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples/CMakeFiles/ex_icon2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/ex_icon2.dir/depend


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

# Utility rule file for run_tests_wine_gl.

# Include the progress variables for this target.
include tests/CMakeFiles/run_tests_wine_gl.dir/progress.make

tests/CMakeFiles/run_tests_wine_gl: tests/test_driver
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/tests && wine test_driver --force-opengl /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/tests/test_bitmaps.ini /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/tests/test_bitmaps2.ini /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/tests/test_blend.ini /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/tests/test_locking.ini /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/tests/test_locking2.ini /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/tests/test_backbuffer.ini /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/tests/test_image.ini /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/tests/test_fonts.ini /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/tests/test_prim.ini

run_tests_wine_gl: tests/CMakeFiles/run_tests_wine_gl
run_tests_wine_gl: tests/CMakeFiles/run_tests_wine_gl.dir/build.make
.PHONY : run_tests_wine_gl

# Rule to build all files generated by this target.
tests/CMakeFiles/run_tests_wine_gl.dir/build: run_tests_wine_gl
.PHONY : tests/CMakeFiles/run_tests_wine_gl.dir/build

tests/CMakeFiles/run_tests_wine_gl.dir/clean:
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/tests && $(CMAKE_COMMAND) -P CMakeFiles/run_tests_wine_gl.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/run_tests_wine_gl.dir/clean

tests/CMakeFiles/run_tests_wine_gl.dir/depend:
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9 /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/tests /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/tests /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/tests/CMakeFiles/run_tests_wine_gl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/run_tests_wine_gl.dir/depend

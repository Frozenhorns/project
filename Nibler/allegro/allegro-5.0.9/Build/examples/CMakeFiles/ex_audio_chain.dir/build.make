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
include examples/CMakeFiles/ex_audio_chain.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/ex_audio_chain.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/ex_audio_chain.dir/flags.make

examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o: examples/CMakeFiles/ex_audio_chain.dir/flags.make
examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o: ../examples/ex_audio_chain.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o -c /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/examples/ex_audio_chain.cpp

examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.i"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/examples/ex_audio_chain.cpp > CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.i

examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.s"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/examples/ex_audio_chain.cpp -o CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.s

examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o.requires:
.PHONY : examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o.requires

examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o.provides: examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/ex_audio_chain.dir/build.make examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o.provides.build
.PHONY : examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o.provides

examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o.provides.build: examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o

# Object files for target ex_audio_chain
ex_audio_chain_OBJECTS = \
"CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o"

# External object files for target ex_audio_chain
ex_audio_chain_EXTERNAL_OBJECTS =

examples/ex_audio_chain: examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o
examples/ex_audio_chain: examples/CMakeFiles/ex_audio_chain.dir/build.make
examples/ex_audio_chain: lib/liballegro_audio.so.5.0.9
examples/ex_audio_chain: lib/liballegro_acodec.so.5.0.9
examples/ex_audio_chain: lib/liballegro_primitives.so.5.0.9
examples/ex_audio_chain: lib/liballegro_font.so.5.0.9
examples/ex_audio_chain: lib/liballegro_ttf.so.5.0.9
examples/ex_audio_chain: lib/liballegro.so.5.0.9
examples/ex_audio_chain: lib/liballegro_main.so.5.0.9
examples/ex_audio_chain: lib/liballegro_dialog.so.5.0.9
examples/ex_audio_chain: lib/liballegro_audio.so.5.0.9
examples/ex_audio_chain: /usr/lib64/libopenal.so
examples/ex_audio_chain: /usr/lib64/libFLAC.so
examples/ex_audio_chain: /usr/lib64/libogg.so
examples/ex_audio_chain: /usr/lib64/libdumb.so
examples/ex_audio_chain: /usr/lib64/libvorbisfile.so
examples/ex_audio_chain: /usr/lib64/libvorbis.so
examples/ex_audio_chain: /usr/lib64/libogg.so
examples/ex_audio_chain: /usr/lib64/libdumb.so
examples/ex_audio_chain: /usr/lib64/libvorbisfile.so
examples/ex_audio_chain: /usr/lib64/libvorbis.so
examples/ex_audio_chain: lib/liballegro_font.so.5.0.9
examples/ex_audio_chain: /usr/lib64/libfreetype.so
examples/ex_audio_chain: /usr/lib64/libz.so
examples/ex_audio_chain: lib/liballegro.so.5.0.9
examples/ex_audio_chain: /usr/lib64/libSM.so
examples/ex_audio_chain: /usr/lib64/libICE.so
examples/ex_audio_chain: /usr/lib64/libX11.so
examples/ex_audio_chain: /usr/lib64/libXext.so
examples/ex_audio_chain: /usr/lib64/libGL.so
examples/ex_audio_chain: /usr/lib64/libGLU.so
examples/ex_audio_chain: examples/CMakeFiles/ex_audio_chain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ex_audio_chain"
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ex_audio_chain.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/ex_audio_chain.dir/build: examples/ex_audio_chain
.PHONY : examples/CMakeFiles/ex_audio_chain.dir/build

examples/CMakeFiles/ex_audio_chain.dir/requires: examples/CMakeFiles/ex_audio_chain.dir/ex_audio_chain.cpp.o.requires
.PHONY : examples/CMakeFiles/ex_audio_chain.dir/requires

examples/CMakeFiles/ex_audio_chain.dir/clean:
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples && $(CMAKE_COMMAND) -P CMakeFiles/ex_audio_chain.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/ex_audio_chain.dir/clean

examples/CMakeFiles/ex_audio_chain.dir/depend:
	cd /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9 /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/examples /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples /home/vink/projet/cpp/Nibler-patel-ozouf/allegro/allegro-5.0.9/Build/examples/CMakeFiles/ex_audio_chain.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/ex_audio_chain.dir/depend


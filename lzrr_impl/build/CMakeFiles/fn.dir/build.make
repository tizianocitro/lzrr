# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.22.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.22.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tizianocitro/PyCharm/lzrr/lzrr_impl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build

# Include any dependencies generated for this target.
include CMakeFiles/fn.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/fn.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fn.dir/flags.make

CMakeFiles/fn.dir/src/common/dependency_array.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/common/dependency_array.cpp.o: ../src/common/dependency_array.cpp
CMakeFiles/fn.dir/src/common/dependency_array.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fn.dir/src/common/dependency_array.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/common/dependency_array.cpp.o -MF CMakeFiles/fn.dir/src/common/dependency_array.cpp.o.d -o CMakeFiles/fn.dir/src/common/dependency_array.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/dependency_array.cpp

CMakeFiles/fn.dir/src/common/dependency_array.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/common/dependency_array.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/dependency_array.cpp > CMakeFiles/fn.dir/src/common/dependency_array.cpp.i

CMakeFiles/fn.dir/src/common/dependency_array.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/common/dependency_array.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/dependency_array.cpp -o CMakeFiles/fn.dir/src/common/dependency_array.cpp.s

CMakeFiles/fn.dir/src/common/lnf_array.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/common/lnf_array.cpp.o: ../src/common/lnf_array.cpp
CMakeFiles/fn.dir/src/common/lnf_array.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/fn.dir/src/common/lnf_array.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/common/lnf_array.cpp.o -MF CMakeFiles/fn.dir/src/common/lnf_array.cpp.o.d -o CMakeFiles/fn.dir/src/common/lnf_array.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/lnf_array.cpp

CMakeFiles/fn.dir/src/common/lnf_array.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/common/lnf_array.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/lnf_array.cpp > CMakeFiles/fn.dir/src/common/lnf_array.cpp.i

CMakeFiles/fn.dir/src/common/lnf_array.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/common/lnf_array.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/lnf_array.cpp -o CMakeFiles/fn.dir/src/common/lnf_array.cpp.s

CMakeFiles/fn.dir/src/common/lz_factor.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/common/lz_factor.cpp.o: ../src/common/lz_factor.cpp
CMakeFiles/fn.dir/src/common/lz_factor.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/fn.dir/src/common/lz_factor.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/common/lz_factor.cpp.o -MF CMakeFiles/fn.dir/src/common/lz_factor.cpp.o.d -o CMakeFiles/fn.dir/src/common/lz_factor.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/lz_factor.cpp

CMakeFiles/fn.dir/src/common/lz_factor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/common/lz_factor.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/lz_factor.cpp > CMakeFiles/fn.dir/src/common/lz_factor.cpp.i

CMakeFiles/fn.dir/src/common/lz_factor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/common/lz_factor.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/lz_factor.cpp -o CMakeFiles/fn.dir/src/common/lz_factor.cpp.s

CMakeFiles/fn.dir/src/common/sa_lcp.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/common/sa_lcp.cpp.o: ../src/common/sa_lcp.cpp
CMakeFiles/fn.dir/src/common/sa_lcp.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/fn.dir/src/common/sa_lcp.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/common/sa_lcp.cpp.o -MF CMakeFiles/fn.dir/src/common/sa_lcp.cpp.o.d -o CMakeFiles/fn.dir/src/common/sa_lcp.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/sa_lcp.cpp

CMakeFiles/fn.dir/src/common/sa_lcp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/common/sa_lcp.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/sa_lcp.cpp > CMakeFiles/fn.dir/src/common/sa_lcp.cpp.i

CMakeFiles/fn.dir/src/common/sa_lcp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/common/sa_lcp.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/sa_lcp.cpp -o CMakeFiles/fn.dir/src/common/sa_lcp.cpp.s

CMakeFiles/fn.dir/src/common/union_find.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/common/union_find.cpp.o: ../src/common/union_find.cpp
CMakeFiles/fn.dir/src/common/union_find.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/fn.dir/src/common/union_find.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/common/union_find.cpp.o -MF CMakeFiles/fn.dir/src/common/union_find.cpp.o.d -o CMakeFiles/fn.dir/src/common/union_find.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/union_find.cpp

CMakeFiles/fn.dir/src/common/union_find.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/common/union_find.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/union_find.cpp > CMakeFiles/fn.dir/src/common/union_find.cpp.i

CMakeFiles/fn.dir/src/common/union_find.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/common/union_find.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/common/union_find.cpp -o CMakeFiles/fn.dir/src/common/union_find.cpp.s

CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.o: ../src/debug/debug_lzrr.cpp
CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.o -MF CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.o.d -o CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/debug/debug_lzrr.cpp

CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/debug/debug_lzrr.cpp > CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.i

CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/debug/debug_lzrr.cpp -o CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.s

CMakeFiles/fn.dir/src/debug/randstr.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/debug/randstr.cpp.o: ../src/debug/randstr.cpp
CMakeFiles/fn.dir/src/debug/randstr.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/fn.dir/src/debug/randstr.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/debug/randstr.cpp.o -MF CMakeFiles/fn.dir/src/debug/randstr.cpp.o.d -o CMakeFiles/fn.dir/src/debug/randstr.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/debug/randstr.cpp

CMakeFiles/fn.dir/src/debug/randstr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/debug/randstr.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/debug/randstr.cpp > CMakeFiles/fn.dir/src/debug/randstr.cpp.i

CMakeFiles/fn.dir/src/debug/randstr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/debug/randstr.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/debug/randstr.cpp -o CMakeFiles/fn.dir/src/debug/randstr.cpp.s

CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.o: ../src/parse/lcpcomp.cpp
CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.o -MF CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.o.d -o CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lcpcomp.cpp

CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lcpcomp.cpp > CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.i

CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lcpcomp.cpp -o CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.s

CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.o: ../src/parse/lcpcomp2.cpp
CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.o -MF CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.o.d -o CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lcpcomp2.cpp

CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lcpcomp2.cpp > CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.i

CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lcpcomp2.cpp -o CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.s

CMakeFiles/fn.dir/src/parse/lexparse.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/parse/lexparse.cpp.o: ../src/parse/lexparse.cpp
CMakeFiles/fn.dir/src/parse/lexparse.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/fn.dir/src/parse/lexparse.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/parse/lexparse.cpp.o -MF CMakeFiles/fn.dir/src/parse/lexparse.cpp.o.d -o CMakeFiles/fn.dir/src/parse/lexparse.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lexparse.cpp

CMakeFiles/fn.dir/src/parse/lexparse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/parse/lexparse.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lexparse.cpp > CMakeFiles/fn.dir/src/parse/lexparse.cpp.i

CMakeFiles/fn.dir/src/parse/lexparse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/parse/lexparse.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lexparse.cpp -o CMakeFiles/fn.dir/src/parse/lexparse.cpp.s

CMakeFiles/fn.dir/src/parse/lz77.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/parse/lz77.cpp.o: ../src/parse/lz77.cpp
CMakeFiles/fn.dir/src/parse/lz77.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/fn.dir/src/parse/lz77.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/parse/lz77.cpp.o -MF CMakeFiles/fn.dir/src/parse/lz77.cpp.o.d -o CMakeFiles/fn.dir/src/parse/lz77.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lz77.cpp

CMakeFiles/fn.dir/src/parse/lz77.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/parse/lz77.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lz77.cpp > CMakeFiles/fn.dir/src/parse/lz77.cpp.i

CMakeFiles/fn.dir/src/parse/lz77.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/parse/lz77.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lz77.cpp -o CMakeFiles/fn.dir/src/parse/lz77.cpp.s

CMakeFiles/fn.dir/src/parse/lzrr.cpp.o: CMakeFiles/fn.dir/flags.make
CMakeFiles/fn.dir/src/parse/lzrr.cpp.o: ../src/parse/lzrr.cpp
CMakeFiles/fn.dir/src/parse/lzrr.cpp.o: CMakeFiles/fn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/fn.dir/src/parse/lzrr.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fn.dir/src/parse/lzrr.cpp.o -MF CMakeFiles/fn.dir/src/parse/lzrr.cpp.o.d -o CMakeFiles/fn.dir/src/parse/lzrr.cpp.o -c /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lzrr.cpp

CMakeFiles/fn.dir/src/parse/lzrr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fn.dir/src/parse/lzrr.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lzrr.cpp > CMakeFiles/fn.dir/src/parse/lzrr.cpp.i

CMakeFiles/fn.dir/src/parse/lzrr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fn.dir/src/parse/lzrr.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/src/parse/lzrr.cpp -o CMakeFiles/fn.dir/src/parse/lzrr.cpp.s

# Object files for target fn
fn_OBJECTS = \
"CMakeFiles/fn.dir/src/common/dependency_array.cpp.o" \
"CMakeFiles/fn.dir/src/common/lnf_array.cpp.o" \
"CMakeFiles/fn.dir/src/common/lz_factor.cpp.o" \
"CMakeFiles/fn.dir/src/common/sa_lcp.cpp.o" \
"CMakeFiles/fn.dir/src/common/union_find.cpp.o" \
"CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.o" \
"CMakeFiles/fn.dir/src/debug/randstr.cpp.o" \
"CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.o" \
"CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.o" \
"CMakeFiles/fn.dir/src/parse/lexparse.cpp.o" \
"CMakeFiles/fn.dir/src/parse/lz77.cpp.o" \
"CMakeFiles/fn.dir/src/parse/lzrr.cpp.o"

# External object files for target fn
fn_EXTERNAL_OBJECTS =

libfn.a: CMakeFiles/fn.dir/src/common/dependency_array.cpp.o
libfn.a: CMakeFiles/fn.dir/src/common/lnf_array.cpp.o
libfn.a: CMakeFiles/fn.dir/src/common/lz_factor.cpp.o
libfn.a: CMakeFiles/fn.dir/src/common/sa_lcp.cpp.o
libfn.a: CMakeFiles/fn.dir/src/common/union_find.cpp.o
libfn.a: CMakeFiles/fn.dir/src/debug/debug_lzrr.cpp.o
libfn.a: CMakeFiles/fn.dir/src/debug/randstr.cpp.o
libfn.a: CMakeFiles/fn.dir/src/parse/lcpcomp.cpp.o
libfn.a: CMakeFiles/fn.dir/src/parse/lcpcomp2.cpp.o
libfn.a: CMakeFiles/fn.dir/src/parse/lexparse.cpp.o
libfn.a: CMakeFiles/fn.dir/src/parse/lz77.cpp.o
libfn.a: CMakeFiles/fn.dir/src/parse/lzrr.cpp.o
libfn.a: CMakeFiles/fn.dir/build.make
libfn.a: CMakeFiles/fn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX static library libfn.a"
	$(CMAKE_COMMAND) -P CMakeFiles/fn.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fn.dir/build: libfn.a
.PHONY : CMakeFiles/fn.dir/build

CMakeFiles/fn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fn.dir/clean

CMakeFiles/fn.dir/depend:
	cd /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tizianocitro/PyCharm/lzrr/lzrr_impl /Users/tizianocitro/PyCharm/lzrr/lzrr_impl /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build /Users/tizianocitro/PyCharm/lzrr/lzrr_impl/build/CMakeFiles/fn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fn.dir/depend

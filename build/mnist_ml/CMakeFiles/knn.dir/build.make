# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.18.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.18.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/timkrebs/Developer/Coding/C++/CPP_ML

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/timkrebs/Developer/Coding/C++/CPP_ML/build

# Include any dependencies generated for this target.
include mnist_ml/CMakeFiles/knn.dir/depend.make

# Include the progress variables for this target.
include mnist_ml/CMakeFiles/knn.dir/progress.make

# Include the compile flags for this target's objects.
include mnist_ml/CMakeFiles/knn.dir/flags.make

mnist_ml/CMakeFiles/knn.dir/src/knn.cpp.o: mnist_ml/CMakeFiles/knn.dir/flags.make
mnist_ml/CMakeFiles/knn.dir/src/knn.cpp.o: ../mnist_ml/src/knn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/timkrebs/Developer/Coding/C++/CPP_ML/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object mnist_ml/CMakeFiles/knn.dir/src/knn.cpp.o"
	cd /Users/timkrebs/Developer/Coding/C++/CPP_ML/build/mnist_ml && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/knn.dir/src/knn.cpp.o -c /Users/timkrebs/Developer/Coding/C++/CPP_ML/mnist_ml/src/knn.cpp

mnist_ml/CMakeFiles/knn.dir/src/knn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/knn.dir/src/knn.cpp.i"
	cd /Users/timkrebs/Developer/Coding/C++/CPP_ML/build/mnist_ml && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/timkrebs/Developer/Coding/C++/CPP_ML/mnist_ml/src/knn.cpp > CMakeFiles/knn.dir/src/knn.cpp.i

mnist_ml/CMakeFiles/knn.dir/src/knn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/knn.dir/src/knn.cpp.s"
	cd /Users/timkrebs/Developer/Coding/C++/CPP_ML/build/mnist_ml && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/timkrebs/Developer/Coding/C++/CPP_ML/mnist_ml/src/knn.cpp -o CMakeFiles/knn.dir/src/knn.cpp.s

knn: mnist_ml/CMakeFiles/knn.dir/src/knn.cpp.o
knn: mnist_ml/CMakeFiles/knn.dir/build.make

.PHONY : knn

# Rule to build all files generated by this target.
mnist_ml/CMakeFiles/knn.dir/build: knn

.PHONY : mnist_ml/CMakeFiles/knn.dir/build

mnist_ml/CMakeFiles/knn.dir/clean:
	cd /Users/timkrebs/Developer/Coding/C++/CPP_ML/build/mnist_ml && $(CMAKE_COMMAND) -P CMakeFiles/knn.dir/cmake_clean.cmake
.PHONY : mnist_ml/CMakeFiles/knn.dir/clean

mnist_ml/CMakeFiles/knn.dir/depend:
	cd /Users/timkrebs/Developer/Coding/C++/CPP_ML/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/timkrebs/Developer/Coding/C++/CPP_ML /Users/timkrebs/Developer/Coding/C++/CPP_ML/mnist_ml /Users/timkrebs/Developer/Coding/C++/CPP_ML/build /Users/timkrebs/Developer/Coding/C++/CPP_ML/build/mnist_ml /Users/timkrebs/Developer/Coding/C++/CPP_ML/build/mnist_ml/CMakeFiles/knn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mnist_ml/CMakeFiles/knn.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\svend\AppData\Local\Programs\ImperativeProgramming\cmake-3.27.4-windows-x86_64\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\svend\AppData\Local\Programs\ImperativeProgramming\cmake-3.27.4-windows-x86_64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus\build

# Include any dependencies generated for this target.
include CMakeFiles/assignment-05-bonus_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/assignment-05-bonus_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/assignment-05-bonus_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/assignment-05-bonus_test.dir/flags.make

CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.obj: CMakeFiles/assignment-05-bonus_test.dir/flags.make
CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.obj: CMakeFiles/assignment-05-bonus_test.dir/includes_CXX.rsp
CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.obj: C:/Users/svend/Desktop/IP-Radboud-team-19/Week5/Bonus/main_test.cpp
CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.obj: CMakeFiles/assignment-05-bonus_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.obj"
	C:\Users\svend\AppData\Local\Programs\ImperativeProgramming\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.obj -MF CMakeFiles\assignment-05-bonus_test.dir\main_test.cpp.obj.d -o CMakeFiles\assignment-05-bonus_test.dir\main_test.cpp.obj -c C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus\main_test.cpp

CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.i"
	C:\Users\svend\AppData\Local\Programs\ImperativeProgramming\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus\main_test.cpp > CMakeFiles\assignment-05-bonus_test.dir\main_test.cpp.i

CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.s"
	C:\Users\svend\AppData\Local\Programs\ImperativeProgramming\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus\main_test.cpp -o CMakeFiles\assignment-05-bonus_test.dir\main_test.cpp.s

# Object files for target assignment-05-bonus_test
assignment__05__bonus_test_OBJECTS = \
"CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.obj"

# External object files for target assignment-05-bonus_test
assignment__05__bonus_test_EXTERNAL_OBJECTS =

main_test.exe: CMakeFiles/assignment-05-bonus_test.dir/main_test.cpp.obj
main_test.exe: CMakeFiles/assignment-05-bonus_test.dir/build.make
main_test.exe: lib/libgtest_maind.a
main_test.exe: lib/libgtestd.a
main_test.exe: CMakeFiles/assignment-05-bonus_test.dir/linkLibs.rsp
main_test.exe: CMakeFiles/assignment-05-bonus_test.dir/objects1.rsp
main_test.exe: CMakeFiles/assignment-05-bonus_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main_test.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\assignment-05-bonus_test.dir\link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Copying files to output directory"
	C:\Users\svend\AppData\Local\Programs\ImperativeProgramming\cmake-3.27.4-windows-x86_64\bin\cmake.exe -E copy_directory C:/Users/svend/Desktop/IP-Radboud-team-19/Week5/Bonus/files/ C:/Users/svend/Desktop/IP-Radboud-team-19/Week5/Bonus/build
	C:\Users\svend\AppData\Local\Programs\ImperativeProgramming\cmake-3.27.4-windows-x86_64\bin\cmake.exe -D TEST_TARGET=assignment-05-bonus_test -D TEST_EXECUTABLE=C:/Users/svend/Desktop/IP-Radboud-team-19/Week5/Bonus/build/main_test.exe -D TEST_EXECUTOR= -D TEST_WORKING_DIR=C:/Users/svend/Desktop/IP-Radboud-team-19/Week5/Bonus/build -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=assignment-05-bonus_test_TESTS -D CTEST_FILE=C:/Users/svend/Desktop/IP-Radboud-team-19/Week5/Bonus/build/assignment-05-bonus_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P C:/Users/svend/AppData/Local/Programs/ImperativeProgramming/cmake-3.27.4-windows-x86_64/share/cmake-3.27/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/assignment-05-bonus_test.dir/build: main_test.exe
.PHONY : CMakeFiles/assignment-05-bonus_test.dir/build

CMakeFiles/assignment-05-bonus_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\assignment-05-bonus_test.dir\cmake_clean.cmake
.PHONY : CMakeFiles/assignment-05-bonus_test.dir/clean

CMakeFiles/assignment-05-bonus_test.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus\build C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus\build C:\Users\svend\Desktop\IP-Radboud-team-19\Week5\Bonus\build\CMakeFiles\assignment-05-bonus_test.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/assignment-05-bonus_test.dir/depend


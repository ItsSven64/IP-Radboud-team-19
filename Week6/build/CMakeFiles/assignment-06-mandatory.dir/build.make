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
CMAKE_COMMAND = "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\cmake-3.27.4-windows-x86_64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\cmake-3.27.4-windows-x86_64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\assignment-06-mandatory-files"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\build"

# Include any dependencies generated for this target.
include CMakeFiles/assignment-06-mandatory.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/assignment-06-mandatory.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/assignment-06-mandatory.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/assignment-06-mandatory.dir/flags.make

CMakeFiles/assignment-06-mandatory.dir/main.cpp.obj: CMakeFiles/assignment-06-mandatory.dir/flags.make
CMakeFiles/assignment-06-mandatory.dir/main.cpp.obj: C:/Users/silke/OneDrive\ -\ Radboud\ Universiteit/Bureaublad/ImperativeProgramming/IP-Radboud-team-19/Week6/assignment-06-mandatory-files/main.cpp
CMakeFiles/assignment-06-mandatory.dir/main.cpp.obj: CMakeFiles/assignment-06-mandatory.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/assignment-06-mandatory.dir/main.cpp.obj"
	C:\Users\silke\ONEDRI~1\BUREAU~1\IMPERA~1\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/assignment-06-mandatory.dir/main.cpp.obj -MF CMakeFiles\assignment-06-mandatory.dir\main.cpp.obj.d -o CMakeFiles\assignment-06-mandatory.dir\main.cpp.obj -c "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\assignment-06-mandatory-files\main.cpp"

CMakeFiles/assignment-06-mandatory.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/assignment-06-mandatory.dir/main.cpp.i"
	C:\Users\silke\ONEDRI~1\BUREAU~1\IMPERA~1\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\assignment-06-mandatory-files\main.cpp" > CMakeFiles\assignment-06-mandatory.dir\main.cpp.i

CMakeFiles/assignment-06-mandatory.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/assignment-06-mandatory.dir/main.cpp.s"
	C:\Users\silke\ONEDRI~1\BUREAU~1\IMPERA~1\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\assignment-06-mandatory-files\main.cpp" -o CMakeFiles\assignment-06-mandatory.dir\main.cpp.s

# Object files for target assignment-06-mandatory
assignment__06__mandatory_OBJECTS = \
"CMakeFiles/assignment-06-mandatory.dir/main.cpp.obj"

# External object files for target assignment-06-mandatory
assignment__06__mandatory_EXTERNAL_OBJECTS =

main.exe: CMakeFiles/assignment-06-mandatory.dir/main.cpp.obj
main.exe: CMakeFiles/assignment-06-mandatory.dir/build.make
main.exe: CMakeFiles/assignment-06-mandatory.dir/linkLibs.rsp
main.exe: CMakeFiles/assignment-06-mandatory.dir/objects1.rsp
main.exe: CMakeFiles/assignment-06-mandatory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\assignment-06-mandatory.dir\link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Copying files to output directory"
	"C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\cmake-3.27.4-windows-x86_64\bin\cmake.exe" -E copy_directory "C:/Users/silke/OneDrive - Radboud Universiteit/Bureaublad/ImperativeProgramming/IP-Radboud-team-19/Week6/assignment-06-mandatory-files/files/" "C:/Users/silke/OneDrive - Radboud Universiteit/Bureaublad/ImperativeProgramming/IP-Radboud-team-19/Week6/build"

# Rule to build all files generated by this target.
CMakeFiles/assignment-06-mandatory.dir/build: main.exe
.PHONY : CMakeFiles/assignment-06-mandatory.dir/build

CMakeFiles/assignment-06-mandatory.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\assignment-06-mandatory.dir\cmake_clean.cmake
.PHONY : CMakeFiles/assignment-06-mandatory.dir/clean

CMakeFiles/assignment-06-mandatory.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\assignment-06-mandatory-files" "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\assignment-06-mandatory-files" "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\build" "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\build" "C:\Users\silke\OneDrive - Radboud Universiteit\Bureaublad\ImperativeProgramming\IP-Radboud-team-19\Week6\build\CMakeFiles\assignment-06-mandatory.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/assignment-06-mandatory.dir/depend

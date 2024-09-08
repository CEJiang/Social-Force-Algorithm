# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/jiang/Desktop/Master/Exercise/Social Force Model"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/jiang/Desktop/Master/Exercise/Social Force Model/build"

# Include any dependencies generated for this target.
include CMakeFiles/HelloGL.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/HelloGL.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/HelloGL.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HelloGL.dir/flags.make

CMakeFiles/HelloGL.dir/src/glad.c.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/src/glad.c.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/src/glad.c
CMakeFiles/HelloGL.dir/src/glad.c.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/HelloGL.dir/src/glad.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/src/glad.c.o -MF CMakeFiles/HelloGL.dir/src/glad.c.o.d -o CMakeFiles/HelloGL.dir/src/glad.c.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/glad.c"

CMakeFiles/HelloGL.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/HelloGL.dir/src/glad.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/glad.c" > CMakeFiles/HelloGL.dir/src/glad.c.i

CMakeFiles/HelloGL.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/HelloGL.dir/src/glad.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/glad.c" -o CMakeFiles/HelloGL.dir/src/glad.c.s

CMakeFiles/HelloGL.dir/src/main.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/src/main.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/src/main.cpp
CMakeFiles/HelloGL.dir/src/main.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/HelloGL.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/src/main.cpp.o -MF CMakeFiles/HelloGL.dir/src/main.cpp.o.d -o CMakeFiles/HelloGL.dir/src/main.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/main.cpp"

CMakeFiles/HelloGL.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/main.cpp" > CMakeFiles/HelloGL.dir/src/main.cpp.i

CMakeFiles/HelloGL.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/main.cpp" -o CMakeFiles/HelloGL.dir/src/main.cpp.s

CMakeFiles/HelloGL.dir/src/Shader.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/src/Shader.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/src/Shader.cpp
CMakeFiles/HelloGL.dir/src/Shader.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/HelloGL.dir/src/Shader.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/src/Shader.cpp.o -MF CMakeFiles/HelloGL.dir/src/Shader.cpp.o.d -o CMakeFiles/HelloGL.dir/src/Shader.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/Shader.cpp"

CMakeFiles/HelloGL.dir/src/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/src/Shader.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/Shader.cpp" > CMakeFiles/HelloGL.dir/src/Shader.cpp.i

CMakeFiles/HelloGL.dir/src/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/src/Shader.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/Shader.cpp" -o CMakeFiles/HelloGL.dir/src/Shader.cpp.s

CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/src/Pedestrian.cpp
CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.o -MF CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.o.d -o CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/Pedestrian.cpp"

CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/Pedestrian.cpp" > CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.i

CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/Pedestrian.cpp" -o CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.s

CMakeFiles/HelloGL.dir/src/Controller.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/src/Controller.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/src/Controller.cpp
CMakeFiles/HelloGL.dir/src/Controller.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/HelloGL.dir/src/Controller.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/src/Controller.cpp.o -MF CMakeFiles/HelloGL.dir/src/Controller.cpp.o.d -o CMakeFiles/HelloGL.dir/src/Controller.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/Controller.cpp"

CMakeFiles/HelloGL.dir/src/Controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/src/Controller.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/Controller.cpp" > CMakeFiles/HelloGL.dir/src/Controller.cpp.i

CMakeFiles/HelloGL.dir/src/Controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/src/Controller.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/Controller.cpp" -o CMakeFiles/HelloGL.dir/src/Controller.cpp.s

CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/src/PedestrianController.cpp
CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.o -MF CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.o.d -o CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/PedestrianController.cpp"

CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/PedestrianController.cpp" > CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.i

CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/src/PedestrianController.cpp" -o CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.s

CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/include/imgui-master/imgui.cpp
CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.o -MF CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.o.d -o CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui.cpp"

CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui.cpp" > CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.i

CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui.cpp" -o CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.s

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/include/imgui-master/imgui_draw.cpp
CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.o -MF CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.o.d -o CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_draw.cpp"

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_draw.cpp" > CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.i

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_draw.cpp" -o CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.s

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/include/imgui-master/imgui_widgets.cpp
CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.o -MF CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.o.d -o CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_widgets.cpp"

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_widgets.cpp" > CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.i

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_widgets.cpp" -o CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.s

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/include/imgui-master/imgui_demo.cpp
CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.o -MF CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.o.d -o CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_demo.cpp"

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_demo.cpp" > CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.i

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_demo.cpp" -o CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.s

CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/include/imgui-master/backends/imgui_impl_glfw.cpp
CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.o -MF CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.o.d -o CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/backends/imgui_impl_glfw.cpp"

CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/backends/imgui_impl_glfw.cpp" > CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.i

CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/backends/imgui_impl_glfw.cpp" -o CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.s

CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/include/imgui-master/backends/imgui_impl_opengl3.cpp
CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.o -MF CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/backends/imgui_impl_opengl3.cpp"

CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/backends/imgui_impl_opengl3.cpp" > CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.i

CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/backends/imgui_impl_opengl3.cpp" -o CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.s

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.o: CMakeFiles/HelloGL.dir/flags.make
CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.o: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/include/imgui-master/imgui_tables.cpp
CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.o: CMakeFiles/HelloGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.o -MF CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.o.d -o CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.o -c "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_tables.cpp"

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_tables.cpp" > CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.i

CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang/Desktop/Master/Exercise/Social Force Model/include/imgui-master/imgui_tables.cpp" -o CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.s

# Object files for target HelloGL
HelloGL_OBJECTS = \
"CMakeFiles/HelloGL.dir/src/glad.c.o" \
"CMakeFiles/HelloGL.dir/src/main.cpp.o" \
"CMakeFiles/HelloGL.dir/src/Shader.cpp.o" \
"CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.o" \
"CMakeFiles/HelloGL.dir/src/Controller.cpp.o" \
"CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.o" \
"CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.o" \
"CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.o" \
"CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.o" \
"CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.o" \
"CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.o" \
"CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.o"

# External object files for target HelloGL
HelloGL_EXTERNAL_OBJECTS =

HelloGL: CMakeFiles/HelloGL.dir/src/glad.c.o
HelloGL: CMakeFiles/HelloGL.dir/src/main.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/src/Shader.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/src/Pedestrian.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/src/Controller.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/src/PedestrianController.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/include/imgui-master/imgui.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/include/imgui-master/imgui_draw.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/include/imgui-master/imgui_widgets.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/include/imgui-master/imgui_demo.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_glfw.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/include/imgui-master/backends/imgui_impl_opengl3.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/include/imgui-master/imgui_tables.cpp.o
HelloGL: CMakeFiles/HelloGL.dir/build.make
HelloGL: /Users/jiang/Desktop/Master/Exercise/Social\ Force\ Model/lib//libglfw.3.dylib
HelloGL: CMakeFiles/HelloGL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable HelloGL"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HelloGL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HelloGL.dir/build: HelloGL
.PHONY : CMakeFiles/HelloGL.dir/build

CMakeFiles/HelloGL.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HelloGL.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HelloGL.dir/clean

CMakeFiles/HelloGL.dir/depend:
	cd "/Users/jiang/Desktop/Master/Exercise/Social Force Model/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/jiang/Desktop/Master/Exercise/Social Force Model" "/Users/jiang/Desktop/Master/Exercise/Social Force Model" "/Users/jiang/Desktop/Master/Exercise/Social Force Model/build" "/Users/jiang/Desktop/Master/Exercise/Social Force Model/build" "/Users/jiang/Desktop/Master/Exercise/Social Force Model/build/CMakeFiles/HelloGL.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/HelloGL.dir/depend

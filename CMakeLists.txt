cmake_minimum_required(VERSION 3.0.0)
project(HelloGL VERSION 0.1.0)

# 使用 C++ 11 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 设置代码文件和目录
set(SRC_DIR ${PROJECT_SOURCE_DIR}/src/)
set(HEADER_DIR ${PROJECT_SOURCE_DIR}/include/)
set(LIB_DIR ${PROJECT_SOURCE_DIR}/lib/)
set(IMGUI_DIR ${HEADER_DIR}/imgui-master/)

# 添加头文件目录
include_directories(${HEADER_DIR} ${LIB_DIR} ${IMGUI_DIR} ${IMGUI_DIR}/backends)

# 添加目标链接
set(GLFW_LINK ${LIB_DIR}/libglfw.3.dylib)
link_libraries(${GLFW_LINK})

# 设置源文件
set(SOURCES ${SRC_DIR}/glad.c 
            ${SRC_DIR}/main.cpp
            ${SRC_DIR}/Shader.cpp
            ${SRC_DIR}/Pedestrian.cpp
            ${SRC_DIR}/Controller.cpp
            ${SRC_DIR}/PedestrianController.cpp
            ${IMGUI_DIR}/imgui.cpp
            ${IMGUI_DIR}/imgui_draw.cpp
            ${IMGUI_DIR}/imgui_widgets.cpp
            ${IMGUI_DIR}/imgui_demo.cpp
            ${IMGUI_DIR}/backends/imgui_impl_glfw.cpp
            ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp
            ${IMGUI_DIR}/imgui_tables.cpp) 

# 添加可执行文件
add_executable(HelloGL ${SOURCES})

# 链接系统的 OpenGL 框架
if (APPLE)
    target_link_libraries(HelloGL "-framework OpenGL")
endif()

include(CTest)
enable_testing()

# 设置打包信息
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

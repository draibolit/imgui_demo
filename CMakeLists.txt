cmake_minimum_required(VERSION 3.9)
project(imgui_demonstration)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

#add GLFW
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
add_subdirectory(dependencies/glfw)

# add glad
add_library(glad
		  "${PROJECT_SOURCE_DIR}/dependencies/glad/src/glad.c"
		  )
target_include_directories(glad
						PUBLIC dependencies/glad/include)

# Add imgui lib
add_library(imguilib
		  "${PROJECT_SOURCE_DIR}/dependencies/imgui/imgui/imgui.cpp"
		  "${PROJECT_SOURCE_DIR}/dependencies/imgui/imgui/imgui_impl_glfw.cpp"
		  "${PROJECT_SOURCE_DIR}/dependencies/imgui/imgui/imgui_impl_opengl3.cpp"
		  "${PROJECT_SOURCE_DIR}/dependencies/imgui/imgui/imgui_draw.cpp"
		  "${PROJECT_SOURCE_DIR}/dependencies/imgui/imgui/imgui_tables.cpp"
		  "${PROJECT_SOURCE_DIR}/dependencies/imgui/imgui/imgui_widgets.cpp"
			)
target_include_directories(imguilib
			PUBLIC "${PROJECT_SOURCE_DIR}/dependencies/imgui"
		  )
target_link_libraries(imguilib
						glfw
						glad
						)

# imgui demo
add_executable(imgui_demo
		  "${PROJECT_SOURCE_DIR}/src/main.cpp"
		  "${PROJECT_SOURCE_DIR}/src/imgui_demo.cpp"
		  )

target_link_libraries(imgui_demo
						imguilib
						)

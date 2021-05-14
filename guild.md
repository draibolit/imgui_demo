### Dependencies
1. Xorg
```
sudo apt install xorg-dev
```
use an extension loader library and include its header: Glad
generate glad from webservice and download to dependencie
https://github.com/Dav1dde/glad

2. assimp: need include compiled (after build) header file and source code header files

Refs
https://www.glfw.org/docs/latest/compile_guide.html#compile_deps_x11
https://www.glfw.org/docs/latest/build.html#build_link_cmake_source

### ImGui
1. Add button
https://github.com/ocornut/imgui/issues/2481


### OpenGL
EBO-Element Buffer Objects vs VAO-Vertex array object vs VBO-vertex buffer object vs Vertex attribute:
Each vertex attribute takes its data from memory managed by a VBO and which VBO it takes its data from (you can have multiple VBOs) is determined by the VBO currently bound to GL_ARRAY_BUFFER when calling glVertexAttribPointer.

a VAO that stores our vertex attribute configuration and which VBO to use
https://learnopengl.com/Getting-started/Hello-Triangle

VBO best practice
https://www.khronos.org/opengl/wiki/Vertex_Specification_Best_Practices

### Cmake
public, private, interface
https://stackoverflow.com/questions/26243169/cmake-target-include-directories-meaning-of-scope

### Assimp
Assimp structure
https://learnopengl.com/Model-Loading/Assimp

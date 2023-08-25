#version 330 core
// Input vertex data, different for all executions of this shader.
layout(location = 0) in vec4 pos;
layout(location = 1) in vec3 Incolor;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 rotation;
uniform mat4 translate;

out vec3 passColor;
void main(){

    gl_Position = projection * view * translate * rotation * pos;

    passColor = Incolor;
    //gl_PointSize = 10;
    //outColor = color;
}

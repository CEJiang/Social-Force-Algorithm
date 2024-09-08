# version 410 core

out vec4 mFragColor;
in vec3 mColor;


void main() {
    mFragColor = vec4(mColor, 1.0f);
}
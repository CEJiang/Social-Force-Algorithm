# version 410 core
layout(location = 0) in vec2 mPos;
layout(location = 1) in vec3 mColorVec3;

out vec3 mColor;
uniform mat4 mModelMat;
uniform mat4 mViewMat;
uniform mat4 mProjMat;


void main() {
    mColor = mColorVec3;
    gl_Position = mProjMat * mViewMat * mModelMat * vec4(mPos.x, mPos.y, 0.0f, 1.0f);
}
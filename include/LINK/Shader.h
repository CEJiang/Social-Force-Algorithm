#ifndef SHADER_H
#define SHADER_H
#include <string>
#include <iostream>
#include <fstream>
#include <sstream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>

using namespace std;


class Shader{
    private:
        string mVertexString;
        string mFragmentString;
        const char* mVertexSource;
        const char* mFragmentSource;
        unsigned int ID;

        void checkCompileErrors(unsigned int ID, string mType);
    public:
        Shader(const char* mVertexPath, const char* mFragmentPath);
        void use();
        unsigned int getID();
};

#endif
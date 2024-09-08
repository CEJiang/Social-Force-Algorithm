#include "LINK/Shader.h"

Shader::Shader(const char* mVertexPath, const char* mFragmentPath){
    ifstream mVertexFile;
    ifstream mFragmentFile;
    stringstream mVertexSStream;
    stringstream mFragmentSStream;

    mVertexFile.open(mVertexPath);
    mFragmentFile.open(mFragmentPath);

    mVertexFile.exceptions(ifstream::failbit | ifstream::badbit);
    mFragmentFile.exceptions(ifstream::failbit | ifstream::badbit);
    try
    {
        if(!mVertexFile.is_open() || !mFragmentFile.is_open()){
            throw exception();
        }

        mVertexSStream << mVertexFile.rdbuf();
        mFragmentSStream << mFragmentFile.rdbuf();

        mVertexString = mVertexSStream.str();
        mFragmentString = mFragmentSStream.str();

        mVertexSource = mVertexString.c_str();
        mFragmentSource = mFragmentString.c_str();

        unsigned int mVectorShader;
        mVectorShader = glCreateShader(GL_VERTEX_SHADER);
        glShaderSource(mVectorShader, 1, &mVertexSource, nullptr);
        glCompileShader(mVectorShader);
        checkCompileErrors(mVectorShader, "VERTEX");

        unsigned int mFragmentShader;
        mFragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
        glShaderSource(mFragmentShader, 1, &mFragmentSource, nullptr);
        glCompileShader(mFragmentShader);
        checkCompileErrors(mFragmentShader, "FRAGMENT");

        ID = glCreateProgram();
        glAttachShader(ID, mVectorShader);
        glAttachShader(ID, mFragmentShader);
        glLinkProgram(ID);
        checkCompileErrors(ID, "PROGRAM"); 

    }
    catch(const std::exception& e)
    {
        std::cerr << e.what() << '\n';
    }
    

    mVertexFile.close();
    mFragmentFile.close();
}

void Shader::use() {
    glUseProgram(ID);
}

void Shader::checkCompileErrors(unsigned int ID,  string mType) {

    GLint mSuccess;
    GLchar mInfoLog[512];

    if(mType != "PROGRAM") {
        glGetShaderiv(ID,  GL_COMPILE_STATUS, &mSuccess);
         if(!mSuccess) {
            glGetShaderInfoLog(ID, 512, nullptr, mInfoLog); 
            cout << "shader compile error: " << mInfoLog << '\n'; 
         }
    }
    else {
        glGetProgramiv(ID, GL_LINK_STATUS, &mSuccess);
        if(!mSuccess) {
            glGetProgramInfoLog(ID, 512, nullptr, mInfoLog);
            cout << "program linking error: " << mInfoLog << '\n'; 
        }
    }
}

unsigned int Shader::getID(){
     return ID;
}
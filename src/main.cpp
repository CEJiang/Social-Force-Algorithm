#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include "imgui-master/imgui.h"
#include "imgui-master/backends/imgui_impl_glfw.h"
#include "imgui-master/backends/imgui_impl_opengl3.h"

#include <iostream>
#include <vector>
#include <unistd.h>

#include <glm/glm/glm.hpp>
#include <glm/glm/gtc/matrix_transform.hpp>
#include <glm/glm/gtc/type_ptr.hpp>

#include "LINK/Shader.h"
#include "LINK/Pedestrian.h"
#include "LINK/Controller.h"
#include "LINK/PedestrianController.h"

float mDeltaTime = 0.014f;

int main() {
    vector<float> mBorderVertices = {
        0.0f, 5.0f, 0.0f, 1.0f, 1.0f,
        40.0f, 5.0f, 0.0f, 1.0f, 1.0f,
        0.0f, -5.0f, 0.0f, 1.0f, 1.0f,
        40.0f, -5.0f, 0.0f, 1.0f, 1.0f,
        0.0f, -5.0f, 0.0f, 1.0f, 1.0f,
        0.0f, 5.0f, 0.0f, 1.0f, 1.0f,
        40.0f, -5.0f, 0.0f, 1.0f, 1.0f,
        40.0f, 5.0f, 0.0f, 1.0f, 1.0f,
        20.0f, 5.0f, 0.0f, 1.0f, 1.0f,
        20.0f, 0.7f, 0.0f, 1.0f, 1.0f,
        20.0f, -5.0f, 0.0f, 1.0f, 1.0f,
        20.0f, -0.7f, 0.0f, 1.0f, 1.0f
    };

    

    if (!glfwInit()) {
        std::cerr << "Failed to initialize GLFW" << std::endl;
        return -1;
    }

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4); 
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // MacOS forward compatibility true

    GLFWwindow* mWindow = glfwCreateWindow(800, 800, "LearnOpenGL", nullptr, nullptr);
    if (mWindow == nullptr) {
        std::cerr << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(mWindow);

    // Setup Dear ImGui context
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;     // Enable Keyboard Controls
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;      // Enable Gamepad Controls

    // Setup Platform/Renderer backends
    ImGui_ImplGlfw_InitForOpenGL(mWindow, true);          // Second param install_callback=true will install GLFW callbacks and chain to existing ones.
    ImGui_ImplOpenGL3_Init();
    
    // Init Glad
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    } 
    
    int mFramebufferWidth, mFramebufferHeight;
    glfwGetFramebufferSize(mWindow, &mFramebufferWidth, &mFramebufferHeight);
    glViewport(0, 0, mFramebufferWidth, mFramebufferHeight);
    // glEnable(GL_DEPTH_TEST);
    // glDepthFunc(GL_LESS);

    // Border VAO, VBO
    unsigned int VAO[2];
    glGenVertexArrays(2, VAO);

    unsigned int VBO[2];
    glGenBuffers(2, VBO);

    glBindVertexArray(VAO[0]);
    glBindBuffer(GL_ARRAY_BUFFER, VBO[0]);
    glBufferData(GL_ARRAY_BUFFER, mBorderVertices.size() * sizeof(float), mBorderVertices.data(), GL_STATIC_DRAW);

    // Vertex
    glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)(2 * sizeof(float)));
    glEnableVertexAttribArray(1);

    Shader *mShader = new Shader("vertexSource.glsl", "fragmentSource.glsl");
    PedestrianController* mPedestrianController = new PedestrianController(VAO[1], VBO[1]);
    Controller* mController = new Controller();
    
    vector<Pedestrian> mPedestrians = mPedestrianController->getPedestrians();

    glm::mat4 mModelMat;
    mModelMat = glm::rotate(mModelMat, glm::radians(0.0f), glm::vec3(1.0f, 0.0f, 0.0f));
    glm::mat4 mViewMat;
    mViewMat = glm::translate(mViewMat, glm::vec3(-20.0f, 0.0f, -50.0f));
    glm::mat4 mProjMat;
    mProjMat = glm::perspective(glm::radians(45.0f), 800.0f / 800.0f, 0.1f, 100.0f);
    
    bool isSimulate = false;

    while(!glfwWindowShouldClose(mWindow)) {
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();
        // ImGui::ShowDemoWindow(); // Show demo window! :)
        

        glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        
        mShader->use();

        // draw border
        glBindVertexArray(VAO[0]);
        glDrawArrays(GL_LINES, 0, mBorderVertices.size() / 5.0f);


        glUniformMatrix4fv(glGetUniformLocation (mShader->getID(), "mModelMat"), 1, GL_FALSE, glm::value_ptr(mModelMat));
        glUniformMatrix4fv(glGetUniformLocation (mShader->getID(), "mViewMat"), 1, GL_FALSE, glm::value_ptr(mViewMat));
        glUniformMatrix4fv(glGetUniformLocation (mShader->getID(), "mProjMat"), 1, GL_FALSE, glm::value_ptr(mProjMat));
        if(isSimulate)
            mPedestrianController->simulate(mBorderVertices);
        
        mPedestrianController->drawPedestrians();
        mController->showWindow(mPedestrians, mDeltaTime, isSimulate, mBorderVertices, mPedestrianController);

        
        ImGui::Render();
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
        glfwSwapBuffers(mWindow);
        glfwPollEvents();

        

    }
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();
    glfwTerminate();
    return 0;
}


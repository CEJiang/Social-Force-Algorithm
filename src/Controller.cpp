#include "LINK/Controller.h"

void Controller::showWindow(vector<Pedestrian>& mPedestrians, float& mDeltaT, bool& isSimulate, vector<float>& mBorderVertices, PedestrianController*& mPedestrianController) {
    ImGui::Begin("Parameter Controller");
    ImGui::SetWindowSize(ImVec2(400, 300));

    static float mVInit_a_b[1] = { 0.0f };
    static float mSigma[1] = { 0.0f };
    static float mUInit_a_B[1] = { 0.0f };
    static float mR[1] = { 0.0f };
    static float mRelaxationTime[1] = { 0.0f };
    static float mDeltaTime[1] = { 0.0f };
    static float mLambda[1] = { 0.0f };
    mDeltaTime[0] = mDeltaT;
    if(mPedestrians.size() > 0) {
        mVInit_a_b[0] = mPedestrians[0].mVInit_a_b;
        mSigma[0] = mPedestrians[0].mSigma;
        mUInit_a_B[0] = mPedestrians[0].mUInit_a_B;
        mR[0] = mPedestrians[0].mR;
        mRelaxationTime[0] = mPedestrians[0].mRelaxationTime;
        mLambda[0] = mPedestrians[0].mLambda;
    }

    ImGui::SeparatorText("Parameter");
    ImGui::SliderFloat("VInit_a_b", mVInit_a_b, 0.01f, 2.0f);
    ImGui::SliderFloat("Sigma", mSigma, 0.01f, 10.0f);
    ImGui::SliderFloat("UInit_a_B", mUInit_a_B, 0.01f, 20.0f);
    ImGui::SliderFloat("R", mR, 0.0001f, 1.0f);
    ImGui::SliderFloat("RelationTime", mRelaxationTime, 0.0001f, 1.0f);
    ImGui::SliderFloat("Delta Time", mDeltaTime, 0.0001f, 1.0f);
    ImGui::SliderFloat("Lambda", mLambda, 0.0001f, 1.0f);
    
    for(int i = 0; i < mPedestrians.size(); ++i) {
        mPedestrians[i].mRelaxationTime = mRelaxationTime[0];
        mPedestrians[i].mSigma = mSigma[0];
        mPedestrians[i].mUInit_a_B = mUInit_a_B[0];
        mPedestrians[i].mVInit_a_b = mVInit_a_b[0];
        mPedestrians[i].mR = mR[0];
        mPedestrians[i].mLambda = mLambda[0];
    }
    mDeltaT = mDeltaTime[0];

    ImGui::SeparatorText("Border Mode");
    static int selected = 1;
    vector<string> mBorderMode = {"WalkWay", "Slit"};
    for (int i = 0; i < mBorderMode.size(); i++) {
        if (ImGui::Selectable(mBorderMode[i].c_str(), selected == i))
            selected = i;
    }

    if(mBorderMode[selected] == "WalkWay") {
        mBorderVertices.clear();
        mBorderVertices = {
            0.0f, 5.0f, 0.0f, 1.0f, 1.0f,
            40.0f, 5.0f, 0.0f, 1.0f, 1.0f,
            0.0f, -5.0f, 0.0f, 1.0f, 1.0f,
            40.0f, -5.0f, 0.0f, 1.0f, 1.0f,
            0.0f, -5.0f, 0.0f, 1.0f, 1.0f,
            0.0f, 5.0f, 0.0f, 1.0f, 1.0f,
            40.0f, -5.0f, 0.0f, 1.0f, 1.0f,
            40.0f, 5.0f, 0.0f, 1.0f, 1.0f
        };
    }
    else {
        mBorderVertices.clear();
        mBorderVertices = {
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

    }

    if(ImGui::Button("Simulate", ImVec2(100, 20))) {
        isSimulate = !isSimulate;
    }
    if(ImGui::Button("Reset", ImVec2(100, 20))) {
        mPedestrianController->reset();
    }

    ImGui::End();
}
#include "LINK/PedestrianController.h"

PedestrianController::PedestrianController(unsigned int VAO_, unsigned int VBO_) {
    VAO = VAO_;
    VBO = VBO_;

    mMean = 1.34f;
    mStddev = 0.026f;
    mDeltaT = 0.014f;
    mQuantities = 10;

    mFullID = 0;
    mEmptyID = 1;
    mPedestriansVertices.resize(2 * mQuantities * 13);

    
    init();
}

void PedestrianController::init() {
    float mTime = 1.0f;
    float mDelta = 0.002f;
    bool spawnFullPedestrianBool = true;
    bool spawnEmptyPedestrianBool = true; 
    bool spawn = true;

    // spawn a Empty Pedestrian 
    if(spawnEmptyPedestrianBool && spawn) {
        for(int i = 0; i < mQuantities; ++i)
            spawnEmptyPedestrian(mPedestriansVertices, mPedestrians, mEmptyID);
        
        spawnEmptyPedestrianBool = false;
    }

    // spawn a Full Pedestrian
    if(spawnFullPedestrianBool && spawn){
        for(int i = 0; i < mQuantities; ++i)
            spawnFullPedestrian(mPedestriansVertices, mPedestrians, mFullID);
        
        spawnFullPedestrianBool = false;
    }
    mPedestriansVertices.clear();
    mPedestriansVertices.resize(2 * mQuantities * 13);
    for(int i = 0; i < mPedestrians.size(); ++i) {
        vector<float> mVertices = mPedestrians[i].mPedestrianVector;
        mPedestriansVertices.insert(mPedestriansVertices.begin(), mVertices.begin(), mVertices.end());
    }
}
void PedestrianController::simulate(std::vector<float>& mBorderVertices) {
    // move Pedestrian
    mPedestriansVertices.clear();
    mPedestriansVertices.resize(2 * mQuantities * 13);
    for(int i = 0; i < mPedestrians.size(); ++i) {
        mPedestrians[i].movePedestrianVertices(mPedestrians, mDeltaT, mBorderVertices);
        vector<float> mVertices = mPedestrians[i].mPedestrianVector;
        mPedestriansVertices.insert(mPedestriansVertices.begin(), mVertices.begin(), mVertices.end());
    }

}

void PedestrianController::drawPedestrians() {
    // update VAO, VBO
    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, mPedestriansVertices.size() * sizeof(float), mPedestriansVertices.data(), GL_DYNAMIC_DRAW);

    glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)(2 * sizeof(float)));
    glEnableVertexAttribArray(1);
    // draw Pedestrians
    for(int i = 0; i < mPedestriansVertices.size(); ++i) {
        glDrawArrays(GL_TRIANGLE_FAN, 13 * i, 13);
    } 
}
void PedestrianController::spawnFullPedestrian(vector<float> &mPedestriansVertices, vector<Pedestrian>& mPedestrians, int& ID) {
    // if(mPedestrians.size() >= mQuantities) return;
    float mCenterX = ((rand() % 1300) + 0) / 100.0f; // 0 ~ 14.99f
    float mCenterY = ((rand() % 300) - 299) / 100.0f; // -0.01f ~ -2.99f
    float mRadius = ((rand() % 5) + 20) / 100.0f; // 0.01 ~ 0.04
    float mSegment = 12.0f;
    glm::vec3 mColor = glm::vec3(1.0f);
    std::random_device mRandomDevice;
    std::mt19937 mGen((mRandomDevice()));
    std::normal_distribution<> mNormalDistribution(mMean, mStddev);
    Pedestrian mPedestrian(mCenterX, mCenterY, mRadius, mSegment, mNormalDistribution(mGen), ID, mColor);
    vector<float> mVertices = mPedestrian.mPedestrianVector;
    mPedestriansVertices.insert(mPedestriansVertices.begin(), mVertices.begin(), mVertices.end());
    mPedestrians.push_back(mPedestrian);
    ID += 2;
}

void PedestrianController::spawnEmptyPedestrian(vector<float> &mPedestriansVertices, vector<Pedestrian>& mPedestrians, int& ID) {
    // if(mPedestrians.size() >= mQuantities) return;
    float mCenterX = ((rand() % 1300) + 2300) / 100.0f; // 0 ~ 15.0f 21.00 ~ 35.99
    float mCenterY = ((rand() % 300) - 299) / 100.0f; // -0.01f ~ -2.99f
    float mRadius = ((rand() % 5) + 20) / 100.0f; // 0.2
    float mSegment = 12.0f;
    glm::vec3 mColor = glm::vec3(1.0f, 0.0f, 0.0f);
    std::random_device mRandomDevice;
    std::mt19937 mGen((mRandomDevice()));
    std::normal_distribution<> mNormalDistribution(mMean, mStddev);
    Pedestrian mPedestrian(mCenterX, mCenterY, mRadius, mSegment, mNormalDistribution(mGen), ID, mColor);
    vector<float> mVertices = mPedestrian.mPedestrianVector;
    mPedestriansVertices.insert(mPedestriansVertices.begin(), mVertices.begin(), mVertices.end());
    mPedestrians.push_back(mPedestrian);
    ID += 2;
}

vector<Pedestrian> PedestrianController::getPedestrians() {
    return mPedestrians;
}

void PedestrianController::reset() {
    mPedestrians.clear();
    mPedestriansVertices.clear();
    init();
}
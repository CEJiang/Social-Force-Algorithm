#ifndef Pedestrian_H
#define Pedestrian_H

#include <iostream>
#include <vector>
#include <cmath>
#include <stack>

#include <glm/glm/glm.hpp>

struct Pedestrian
{

    int ID;
    float mRelaxationTime = 0.5f;
    float mVInit_a_b = 16.0f;
    float mSigma = 0.7f;
    float mUInit_a_B = 12.0f;
    float mR = 0.6f;
    float mLambda = 0.19f;

    float mRadius;
    float mSegment;
    float mDesiredSpeed;
    float mSpeedMax;

    glm::vec2 mCenter;
    std::vector<float> mPedestrianVector;
    glm::vec2 mFinalDestination;
    glm::vec2 mNextDestination;
    glm::vec2 mNextPosition;
    glm::vec2 mActualVelocity;
    glm::vec2 mDesiredDirection;
    glm::vec2 mWAlpha;
    glm::vec2 mFluctuations = glm::vec2(0.0f, 0.0f);
    glm::vec3 mColor;
    std::stack<glm::vec2> mStack;

    Pedestrian(float mCenterX_, float mCenterY_, float mRadius_, float mSegment_, float mDesiredSpeed_, int ID_, glm::vec3 mColor_);
    void calcPedestrianVertices();
    void movePedestrianVertices(std::vector<Pedestrian>& mPedestrians, float& mDeltaT, std::vector<float>& mBorderLine);
    glm::vec2 calcAccelerationForce();
    glm::vec2 calcRepulsiveEffectByPedestrian(Pedestrian& mPedestrianB, float& mDeltaT, std::vector<float>& mBorderLine);
    glm::vec2 calcRepulsiveEffectByBorder(std::vector<float>& mBorderLine);
    glm::vec2 calcTotalForce(std::vector<Pedestrian>& mPedestrians, float& mDeltaT, std::vector<float>& mBorderLine);
    glm::vec2 calcPreferedVelocity(std::vector<Pedestrian>& mPedestrians, float& mDeltaT, std::vector<float>& mBorderLine);
    glm::vec2 calcActualVelocity(std::vector<Pedestrian>& mPedestrians, float& mDeltaT, std::vector<float>& mBorderLine);
    float calcWeight(glm::vec2 mDirection, glm::vec2 mForce);


};


#endif
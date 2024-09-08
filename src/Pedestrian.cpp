#include "LINK/Pedestrian.h"

Pedestrian::Pedestrian(float mCenterX_, float mCenterY_, float mRadius_, float mSegment_, float mDesiredSpeed_, int ID_, glm::vec3 mColor_) {
    mCenter = glm::vec2(mCenterX_, mCenterY_);
    mRadius = mRadius_;
    mSegment = mSegment_;
    mDesiredSpeed = mDesiredSpeed_;
    ID = ID_;
    mColor = mColor_;
    calcPedestrianVertices();
    float mK = (mCenter.x > 20.0f) ? 0.0f : 40.0f;
    
    float mFinalX;
    if(!(ID % 2))
        mFinalX = ((rand() % 1000) + 3000) / 100.0f; // 30.0f ~ 39.0f
    else 
        mFinalX = ((rand() % 1000) / 100.0f);
    float mFinalY = ((rand() % 1100) - 500) / 100.0f;  
    mFinalDestination = glm::vec2(mFinalX, -mCenter.y);
    mStack.push(mFinalDestination);
    if((ID % 2)) {

        mStack.push(glm::vec2(25.0f, 4.0f));
        mStack.push(glm::vec2(22.0f, -3.0f));
        mStack.push(glm::vec2(19.0f, 0.0f));
        mStack.push(glm::vec2(17.0f, 3.0f));
        mStack.push(glm::vec2(14.0f, -3.0f));
    }
    else {
        mStack.push(glm::vec2(15.0f, 4.0f));
        mStack.push(glm::vec2(18.0f, -2.0f));
        mStack.push(glm::vec2(21.0f, 0.0f));
        mStack.push(glm::vec2(23.0f, 3.0f));
        mStack.push(glm::vec2(26.0f, -3.0f));
    }
    mSpeedMax = mDesiredSpeed * 1.3f;
    mWAlpha = glm::vec2(0.0f, 0.0f);
    mActualVelocity = glm::vec2(0.0f, 0.0f);
}

void Pedestrian::calcPedestrianVertices() {
    for(int i = 1; i <= mSegment; ++i) {
        float mTheta = 2.0f * 3.1415926f * float(i) / mSegment;
        float mX = mRadius * cosf(mTheta);
        float mY = mRadius * sinf(mTheta);

        mPedestrianVector.push_back(mX + mCenter.x);
        mPedestrianVector.push_back(mY + mCenter.y);
        mPedestrianVector.push_back(mColor.x);
        mPedestrianVector.push_back(mColor.y);
        mPedestrianVector.push_back(mColor.z);
    }
    mPedestrianVector.push_back(mCenter.x);
    mPedestrianVector.push_back(mCenter.y);
    mPedestrianVector.push_back(mColor.x);
    mPedestrianVector.push_back(mColor.y);
    mPedestrianVector.push_back(mColor.z);

}

void Pedestrian::movePedestrianVertices(std::vector<Pedestrian>& mPedestrians, float& mDeltaT, std::vector<float>& mBorderLine) {
    if(!mStack.empty()) {
        mNextPosition = mStack.top();
        mStack.pop();
    }
    mDesiredDirection = (mNextPosition - mCenter) / glm::length(mNextPosition - mCenter);
    calcActualVelocity(mPedestrians, mDeltaT, mBorderLine);

    glm::vec2 mVelocity = mActualVelocity * mDeltaT;
    mCenter.x += mVelocity.x;
    mCenter.y += mVelocity.y;
    for(int i = 0; i < mPedestrianVector.size(); i += 5) {
        mPedestrianVector[i] += mVelocity.x;
        mPedestrianVector[i + 1] += mVelocity.y;
    }
}

glm::vec2 Pedestrian::calcAccelerationForce() {
    return (mDesiredSpeed * mDesiredDirection - mActualVelocity) / mRelaxationTime;
}

glm::vec2 Pedestrian::calcRepulsiveEffectByPedestrian(Pedestrian& mPedestrianB, float& mDeltaT, std::vector<float>& mBorderLine) {
    if((mRadius + mPedestrianB.mRadius + 5.0f) < glm::length(mCenter - mPedestrianB.mCenter))
        return glm::vec2(0.0f, 0.0f);

    glm::vec2 mR_a_b = mCenter - mPedestrianB.mCenter;
    glm::vec2 mD = mR_a_b - ((mPedestrianB.mActualVelocity - mActualVelocity) * 1.74f);
    float mR_a_bLength = glm::length(mR_a_b);
    float mDLength = glm::length(mD);
    float in = (pow(mR_a_bLength + mDLength, 2) - pow((glm::length((mPedestrianB.mActualVelocity - mActualVelocity)) * 1.74f), 2));

    float mB = in > 0 ? (sqrt(in)) / 2.0f : 0.01f;

    glm::vec2 mGradientR_a_b = mR_a_b / glm::length(mR_a_b);
    glm::vec2 mGradientD = mD / glm::length(mD);
    float mA = mR_a_bLength + mDLength;

    glm::vec2 mGradient = (1.0f / 2.0f) * (mA / (2.0f * mB)) * (mGradientR_a_b + mGradientD);
    glm::vec2 mResult = (mVInit_a_b) * exp(-mB / mSigma) * mGradient;
    
    return mResult;
}

glm::vec2 Pedestrian::calcRepulsiveEffectByBorder(std::vector<float>& mBorderLine) {
    glm::vec2 mResult = glm::vec2(0.0f, 0.0f);
    for(int i = 0; i < mBorderLine.size(); i += 10) {
        glm::vec2 mP1 = glm::vec2(mBorderLine[i], mBorderLine[i + 1]);
        glm::vec2 mP2 = glm::vec2(mBorderLine[i + 5], mBorderLine[i + 6]);

        glm::vec2 mA = mCenter - mP1;
        glm::vec2 mB = mP2 - mP1;

        float mProjectLength = (glm::dot(mA, mB) / pow(glm::length(mB), 2));
        glm::vec2 mProject = mProjectLength * mB;
        glm::vec2 mProjectPoint = mP1 + mProject;
         glm::vec2 mR_a_B = mCenter - mProjectPoint;

        glm::vec2 mResultTemp = -((mUInit_a_B) * (mR_a_B / glm::length(mR_a_B)) * exp(-glm::length(mR_a_B) / mR));
        if(isnan(mResultTemp.x) || isnan(mResultTemp.y) || mProjectLength > 1.0f) {
            mResultTemp = glm::vec2(0.0f, 0.0f);
        }
        mResult += -mResultTemp;
    }
    return mResult;
}

float Pedestrian::calcWeight(glm::vec2 mDirection, glm::vec2 mForce) {
    float mResult = mLambda + (1.0f - mLambda) * ((1 + (glm::dot(mDirection, mForce))) / 2.0f);
    return mResult;
}

glm::vec2 Pedestrian::calcTotalForce(std::vector<Pedestrian>& mPedestrians, float& mDeltaT, std::vector<float>& mBorderLine) {
    glm::vec2 mForce = glm::vec2(0.0f, 0.0f);
    glm::vec2 mAccelerationForce = calcAccelerationForce();

    glm::vec2 mRepulsiveEffectByPedestrian = glm::vec2(0.0f, 0.0f);
    for(auto mPedestrianB : mPedestrians) {
        if(mPedestrianB.ID == ID) continue;
        glm::vec2 mR_a_b = mCenter - mPedestrianB.mCenter;

        glm::vec2 mRepulsiveEffectForce = calcRepulsiveEffectByPedestrian(mPedestrianB, mDeltaT, mBorderLine);
        mRepulsiveEffectByPedestrian += calcWeight(mDesiredDirection, glm::normalize(mR_a_b)) * mRepulsiveEffectForce;
    }  
    glm::vec2 mRepulsiveEffectByBorder = calcRepulsiveEffectByBorder(mBorderLine);

    mForce = mAccelerationForce + mRepulsiveEffectByPedestrian + mRepulsiveEffectByBorder;

    return mForce;
}

glm::vec2 Pedestrian::calcPreferedVelocity(std::vector<Pedestrian>& mPedestrians, float& mDeltaT, std::vector<float>& mBorderLine) {
    mWAlpha = mWAlpha + (calcTotalForce(mPedestrians, mDeltaT, mBorderLine) + mFluctuations) * mDeltaT;
    mFluctuations += static_cast<float>(ID % 5) * glm::vec2(0.002f, 0.001f) * glm::sign(glm::vec2(((rand() % 1001) - 500), ((rand() % 1001) - 500)));
    return mWAlpha;
}

glm::vec2 Pedestrian::calcActualVelocity(std::vector<Pedestrian>& mPedestrians, float& mDeltaT, std::vector<float>& mBorderLine) {
    glm::vec2 mPreferedVelocity = calcPreferedVelocity(mPedestrians, mDeltaT, mBorderLine);
    float mGfunction = ((glm::length(mPreferedVelocity) <= mSpeedMax) ? 1.0f : (mSpeedMax / glm::length(mPreferedVelocity)));
    mActualVelocity = mPreferedVelocity * mGfunction;
    
    return mActualVelocity;
}

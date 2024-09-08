#ifndef PedestrianCONTROLLER_H
#define PedestrianCONTROLLER_H

#include <iostream>
#include <vector>
#include <random>

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <glm/glm/glm.hpp>

#include "LINK/Pedestrian.h"
using namespace std;

struct PedestrianController {
    private:
        unsigned int VAO;
        unsigned int VBO;
        unsigned int EBO;

        // parameter
        double mMean; // m/s
        double mStddev; // m/s
        float mDeltaT;
        int mQuantities;
        int mFullID;
        int mEmptyID;

        vector<Pedestrian> mPedestrians;
        vector<float> mPedestriansVertices;

    public:
        PedestrianController(unsigned int VAO_, unsigned int VBO_);
        void simulate(std::vector<float>& mBorderLine);
        void spawnFullPedestrian(vector<float>& mPedestriansVertices, vector<Pedestrian>& mPedestrians, int& ID);
        void spawnEmptyPedestrian(vector<float>& mPedestriansVertices, vector<Pedestrian>& mEPedestrians, int& ID);
        void drawPedestrians();
        void init();
        vector<Pedestrian> getPedestrians();
        void reset();
};


#endif
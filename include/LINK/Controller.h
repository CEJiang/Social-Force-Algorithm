#ifndef CONTROLLER_H
#define CONTROLLER_H

#include "imgui-master/imgui.h"
#include "imgui-master/backends/imgui_impl_glfw.h"
#include "imgui-master/backends/imgui_impl_opengl3.h"
#include <iostream>
#include <vector>
#include "LINK/Pedestrian.h"
#include "LINK/PedestrianController.h"
using namespace std;

class Controller {
    private:

    public:
        void showWindow(vector<Pedestrian>& mPedestrians, float& mDeltaT, bool& isSimulate, vector<float>& mBorderVertices, PedestrianController*& mPedestrianController);
};


#endif
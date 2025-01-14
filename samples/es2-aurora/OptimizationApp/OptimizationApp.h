//----------------------------------------------------------------------------------
// File:        es2-aurora/OptimizationApp/OptimizationApp.h
// SDK Version: v2.0 
// Email:       gameworks@nvidia.com
// Site:        http://developer.nvidia.com/
//
// Copyright (c) 2014, NVIDIA CORPORATION. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//  * Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
//  * Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
//  * Neither the name of NVIDIA CORPORATION nor the names of its
//    contributors may be used to endorse or promote products derived
//    from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
// CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
// OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//----------------------------------------------------------------------------------
#include "NvAppBase/NvSampleApp.h"

#include <map>

#include "KHR/khrplatform.h"
#include "NvAppBase/NvInputTransformer.h"
#include "NvGamepad/NvGamepad.h"

#include "SceneInfo.h"

class NvStopWatch;
class NvFramerateCounter;
class NvUIText;

class SceneRenderer;

class OptimizationApp : public NvSampleApp
{
public:
    OptimizationApp(NvPlatformContext* platform);
    ~OptimizationApp();
    
    void initUI(void);
    void initRendering(void);
    void draw(void);
    void reshape(int32_t width, int32_t height);

    void configurationCallback(NvEGLConfiguration& config);

private:
    void updateViewDependentParams();

    SceneRenderer *m_sceneRenderer;

    bool m_pausedByPerfHUD;

    nv::matrix4f m_projectionMatrix;
    nv::matrix4f m_viewMatrix;

    nv::matrix4f m_lightViewMatrix;

    nv::vec4f m_lightDirection;
    nv::vec3f m_center;

    NvUIText* m_timingStats;
};

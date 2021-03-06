/* f_op_camera_mng.cpp autogenerated by split.py v0.4 at 2021-02-13 20:39:01.831629 */

#include "f/f_op/f_op_camera_mng.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_stdcreate_req.h"
#include "global.h"

// additional symbols needed for f_op_camera_mng.cpp
// autogenerated by split.py v0.4 at 2021-02-13 20:39:01.831652
extern "C" {
void _restgpr_29(void);
void _savegpr_29(void);
}

// additional symbols needed for f_op_camera_mng.cpp
// autogenerated by split.py v0.4 at 2021-02-13 20:39:01.831656
extern u32 l_fopCamM_id[4];

u32 fopCamM_GetParam(camera_class* pCamera) {
    return pCamera->parameter;
}

u32 fopCamM_Create(int i_cameraIdx, s16 pProcName, void* param_3) {
    l_fopCamM_id[i_cameraIdx] = fpcSCtRq_Request(fpcLy_CurrentLayer(), pProcName, 0, 0, param_3);
    return l_fopCamM_id[i_cameraIdx];
}

void fopCamM_Management(void) {
    return;
}

void fopCamM_Init(void) {
    return;
}

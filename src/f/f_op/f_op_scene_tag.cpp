/* f_op_scene_tag.cpp autogenerated by split.py v0.4 at 2021-02-15 20:28:40.331340 */

#include "f/f_op/f_op_scene_tag.h"
#include "SComponent/c_tag.h"
#include "global.h"

// additional symbols needed for f_op_scene_tag.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:28:40.331367
extern node_list_class g_fopScnTg_SceneList;

void fopScnTg_QueueTo(scene_tag_class* pSceneTag) {
    cTg_SingleCut((create_tag_class*)pSceneTag);
}

void fopScnTg_ToQueue(scene_tag_class* pSceneTag) {
    cTg_Addition(&g_fopScnTg_SceneList, (create_tag_class*)pSceneTag);
}

void fopScnTg_Init(scene_tag_class* pSceneTag, void* pData) {
    cTg_Create((create_tag_class*)pSceneTag, pData);
}

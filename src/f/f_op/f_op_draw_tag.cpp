/* f_op_draw_tag.cpp autogenerated by split.py v0.4 at 2021-02-15 20:18:52.463012 */

#include "f/f_op/f_op_draw_tag.h"
#include "global.h"

// additional symbols needed for f_op_draw_tag.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:18:52.463045
extern node_list_class lists;
extern node_lists_tree_class g_fopDwTg_Queue;

void fopDwTg_ToDrawQ(create_tag_class* pCreateTagClass, int priority) {
    cTg_AdditionToTree(&g_fopDwTg_Queue, priority, pCreateTagClass);
}

void fopDwTg_DrawQTo(create_tag_class* pCreateTagClass) {
    cTg_SingleCutFromTree(pCreateTagClass);
}

bool fopDwTg_Init(create_tag_class* pCreateTagClass, void* pActor) {
    cTg_Create(pCreateTagClass, pActor);
    return true;
}

void fopDwTg_CreateQueue(void) {
    cTr_Create(&g_fopDwTg_Queue, &lists, 1000);
}
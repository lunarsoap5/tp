/* f_op_msg.cpp autogenerated by split.py v0.4 at 2021-02-15 21:05:32.071191 */

#include "f/f_op/f_op_draw_tag.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_leaf.h"
#include "global.h"

// additional symbols needed for f_op_msg.cpp
// autogenerated by split.py v0.4 at 2021-02-15 21:05:32.071227
extern "C" {
void fopDwTg_DrawQTo__FP16create_tag_class(void);
// void fopDwTg_DrawQTo(void);
void fopDwTg_Init__FP16create_tag_classPv(void);
void fopDwTg_ToDrawQ__FP16create_tag_classi(void);
void fopMsgM_GetAppend__FPv(void);
void fopMsg_Draw__FPv(void);
void fpcLf_DrawMethod__FP21leafdraw_method_classPv(void);
void fpcLf_GetPriority__FPC14leafdraw_class(void);
void fpcMtd_Create__FP20process_method_classPv(void);
void fpcMtd_Delete__FP20process_method_classPv(void);
void fpcMtd_Execute__FP20process_method_classPv(void);
void fpcMtd_IsDelete__FP20process_method_classPv(void);
void fopMsg_Execute__FPv(void);
void fopMsg_IsDelete__FPv(void);
void fopMsg_Delete__FPv(void);
void fopMsg_Create__FPv(void);
}

// additional symbols needed for f_op_msg.cpp
// autogenerated by split.py v0.4 at 2021-02-15 21:05:32.071235
extern u8 lbl_80450CF0;
extern s8 lbl_80451124;

struct unk {
    u8 field_0x00[0xd8];
    leafdraw_method_class* mpDrawMtd;
};

struct unk2 {
    u8 field_0x00[0xc4];
    create_tag_class mTag;
    process_method_class* mpPcMtd;
};

void fopMsg_Draw(void* pUserData) {
    unk* pUnk = (unk*)pUserData;
    fpcLf_DrawMethod(pUnk->mpDrawMtd, pUserData);
}

s32 fopMsg_Execute(void* pUserData) {
    s32 ret = 1;
    unk2* pUnk2 = (unk2*)pUserData;

    if (!lbl_80451124) {
        ret = fpcMtd_Execute(pUnk2->mpPcMtd, pUserData);
    }

    return ret;
}

int fopMsg_IsDelete(void* pUserData) {
    unk2* pUnk2 = (unk2*)pUserData;
    int tmp = fpcMtd_IsDelete(pUnk2->mpPcMtd, pUserData);

    if (tmp == 1) {
        fopDwTg_DrawQTo(&pUnk2->mTag);
    }

    return tmp;
}

int fopMsg_Delete(void* pUserData) {
    unk2* pUnk2 = (unk2*)pUserData;
    int tmp = fpcMtd_Delete(pUnk2->mpPcMtd, pUserData);
    fopDwTg_DrawQTo(&pUnk2->mTag);

    return tmp;
}

// fopMsg_Create__FPv
// fopMsg_Create(void*)
asm void fopMsg_Create(void*) {
    nofralloc
#include "f/f_op/f_op_msg/asm/func_8001F588.s"
}
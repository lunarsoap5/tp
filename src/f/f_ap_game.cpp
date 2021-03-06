/* f_ap_game.cpp autogenerated by split.py v0.4 at 2021-02-13 20:07:21.300413 */
#include "f/f_ap_game/f_ap_game.h"
#include "SComponent/c_counter.h"
#include "f/f_op/f_op_camera_mng.h"
#include "f/f_op/f_op_overlap_mng.h"
#include "f/f_op/f_op_scene_mng.h"
#include "f/f_pc/f_pc_manager.h"
#include "global.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"

// additional symbols needed for f_ap_game.cpp
// autogenerated by split.py v0.4 at 2021-02-13 20:07:21.300465
extern "C" {
void __dl__FPv(void);
void fapGm_HIO_c(void);
void __dt__11fapGm_HIO_cFv(void);
void fopDwTg_CreateQueue__Fv(void);
void fopOvlpM_Init__Fv(void);
void fopScnM_Init(void);
void fpcM_Init(void);
void __sinit_f_ap_game_cpp(void);
void func_80361C24(void);
void __ct__11fapGm_HIO_cFv(void);
}

// additional symbols needed for f_ap_game.cpp
// autogenerated by split.py v0.4 at 2021-02-13 20:07:21.300472
extern u8 lbl_803A35A0;
extern u8 lbl_803F1BB0;
extern u8 lbl_80451BC0;
extern u8 lbl_80451BC4;
extern u8 lbl_80450580;

// __ct__11fapGm_HIO_cFv
// fapGm_HIO_c::fapGm_HIO_c(void)
#ifdef NONMATCHING
fapGm_HIO_c::fapGm_HIO_c(void) {
    this->field_0x14 = 1;
    if (!lbl_80450580) {
        this->field_0x15 = 0;
        this->field_0x16 = 0;
        this->field_0x17 = 0;
    } else {
        this->field_0x15 = 1;
        this->field_0x16 = 1;
    }
    this->field_0x17 = 1;
    this->field_0x18 = 1;
    this->field_0x19 = 0;
    this->field_0x1a = 0;
    this->field_0x8 = -1;
    this->field_0x9 = -1;
    this->field_0xa = -1;
    this->field_0xb = -1;
    this->field_0xc = lbl_80451BC0;
    this->field_0x10 = lbl_80451BC4;
    this->field_0x24 = -1;
    this->field_0x25 = -0x6a;
    this->field_0x26 = 0;
    this->field_0x27 = -1;
    this->field_0x28 = -1;
    this->field_0x29 = 120;
    this->field_0x2a = 0;
    this->field_0x2b = -1;
    this->field_0x2c = 0;
    this->field_0x2d = 0;
    this->field_0x2e = 0;
    this->field_0x2f = -1;
    this->field_0x30 = 0;
    this->field_0x31 = 0;
    this->field_0x32 = 0;
    this->field_0x33 = -1;
    this->field_0x34 = 0;
    this->field_0x36 = 10;
    this->field_0x3c = 0x1b;
    this->field_0x38 = 0;
    this->field_0x3a = 0;
    this->field_0x3e = -0x7e;
}
#else
asm fapGm_HIO_c::fapGm_HIO_c(void) {
    nofralloc
#include "f/f_ap_game/asm/func_80018944.s"
}
#endif

void fapGm_After(void) {
    fopScnM_Management();
    fopOvlpM_Management();
    fopCamM_Management();
}

void fapGm_Execute(void) {
    fpcM_Management(0, fapGm_After);
    cCt_Counter(0);
}

void fapGm_Create(void) {
    fpcM_Init();
    fopScnM_Init();
    fopOvlpM_Init__Fv();
    fopCamM_Init();
    fopDwTg_CreateQueue__Fv();
    g_HIO.field_0x4 = -1;
}

extern "C" {
// __dt__11fapGm_HIO_cFv
// fapGm_HIO_c::~fapGm_HIO_c(void)
asm void __dt__11fapGm_HIO_cFv(void) {
    nofralloc
#include "f/f_ap_game/asm/func_80018AE0.s"
}

// __sinit_f_ap_game_cpp
//
asm void __sinit_f_ap_game_cpp(void) {
    nofralloc
#include "f/f_ap_game/asm/func_80018B28.s"
}
};

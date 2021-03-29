/* d_meter_map.cpp autogenerated by split.py v0.3 at 2021-01-02 05:45:46.236284 */

#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "d/d_meter2/d_meter2_info/d_meter2_info.h"
#include "f/f_op/f_op_overlap_mng.h"
#include "global.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"

extern "C" {
void fopOvlpM_IsDoingReq__Fv(void);
bool dComIfGp_checkMapShow__Fv(void);
int strcmp(const char*, const char*);
void __dl__FPv(void);
void __nw__FUl(void);
void cLib_addCalcAngleS__FPsssss(void);
void dComIfGp_mapHide__Fv(void);
void dComIfGp_mapShow__Fv(void);
void set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c(void);
void _draw__6dMap_cFv(void);
void _move__6dMap_cFffif(void);
void __ct__6dMap_cFiiii(void);
void getMapPlayerPos__10dMapInfo_nFv(void);
void dMeter2Info_set2DVibration__Fv(void);
void _create__11dMeterMap_cFP9J2DScreen(void);
void _delete__11dMeterMap_cFv(void);
void checkMoveStatus__11dMeterMap_cFv(void);
void ctrlShowMap__11dMeterMap_cFv(void);
void getMapDispSizeTypeNo__11dMeterMap_cFv(void);
void isDmapScreen__11dMeterMap_cFv(void);
void isFmapScreen__11dMeterMap_cFv(void);
void isShow__11dMeterMap_cFUl(void);
void keyCheck__11dMeterMap_cFv(void);
void isExistMapPathData__8dMpath_cFv(void);
void getStatus__12dMsgObject_cFv(void);
void dMw_LEFT_TRIGGER__Fv(void);
void dMw_RIGHT_TRIGGER__Fv(void);
void getStatusRoomDt__20dStage_roomControl_cFi(void);
void isDungeonItem__12dSv_memBit_cCFi(void);
void isEventBit__11dSv_event_cCFUs(void);
void __ct__10J2DPictureFPC7ResTIMG(void);
void onEventBit__11dSv_event_cFUs(void);
}

// additional symbols needed for d_meter_map.cpp
// autogenerated by split.py v0.3 at 2021-01-02 05:45:46.210955
extern u8 lbl_803BF2F8;
extern u8 lbl_80454838;
extern u8 lbl_803BF2D8;
extern u8 lbl_80454830;
extern u8 lbl_80454820;
extern u8 lbl_80454844;
extern u8 lbl_80398208;
extern u8 lbl_80454828;
extern u8 lbl_80454840;
extern u8 lbl_80454834;
extern u8 lbl_80450D64;
extern u8 lbl_803A6F88;
// extern u8 g_meter2_info;

extern "C" {
// isEnableDispMap__11dMeterMap_cFv
// dMeterMap_c::isEnableDispMap(void)
asm void isEnableDispMap__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D49C.s"
}

// getMapDispSizeTypeNo__11dMeterMap_cFv
// dMeterMap_c::getMapDispSizeTypeNo(void)
asm void getMapDispSizeTypeNo__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D528.s"
}

// isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
// dMeterMap_c::isEnableDispMapAndMapDispSizeTypeNo(void)
asm void isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D650.s"
}

// getMapDispEdgeBottomY_Layout__11dMeterMap_cFv
// dMeterMap_c::getMapDispEdgeBottomY_Layout(void)
asm void getMapDispEdgeBottomY_Layout__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D690.s"
}

// isEventRunCheck__11dMeterMap_cFv
// dMeterMap_c::isEventRunCheck(void)
asm void isEventRunCheck__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D698.s"
}

// getMapDispEdgeLeftX_Layout__11dMeterMap_cFv
// dMeterMap_c::getMapDispEdgeLeftX_Layout(void)
asm void getMapDispEdgeLeftX_Layout__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D72C.s"
}

// getMapDispEdgeTop__11dMeterMap_cFv
// dMeterMap_c::getMapDispEdgeTop(void)
asm void getMapDispEdgeTop__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D75C.s"
}

// getDispPosInside_OffsetX__11dMeterMap_cFv
// dMeterMap_c::getDispPosInside_OffsetX(void)
asm void getDispPosInside_OffsetX__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D7E4.s"
}

// getDispPosOutSide_OffsetX__11dMeterMap_cFv
// dMeterMap_c::getDispPosOutSide_OffsetX(void)
asm void getDispPosOutSide_OffsetX__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D7EC.s"
}

// setDispPosInsideFlg_SE_On__11dMeterMap_cFv
// dMeterMap_c::setDispPosInsideFlg_SE_On(void)
asm void setDispPosInsideFlg_SE_On__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D874.s"
}

// setDispPosOutsideFlg_SE_On__11dMeterMap_cFv
// dMeterMap_c::setDispPosOutsideFlg_SE_On(void)
asm void setDispPosOutsideFlg_SE_On__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D8BC.s"
}

// setMapAlpha__11dMeterMap_cFUc
// dMeterMap_c::setMapAlpha(unsigned char)
asm void setMapAlpha__11dMeterMap_cFUc(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D8F8.s"
}

// isMapOpenCheck__11dMeterMap_cFv
// dMeterMap_c::isMapOpenCheck(void)
asm void isMapOpenCheck__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D900.s"
}

// __ct__11dMeterMap_cFP9J2DScreen
// dMeterMap_c::dMeterMap_c(J2DScreen*)
asm void __ct__11dMeterMap_cFP9J2DScreen(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D948.s"
}

// __dt__11dMeterMap_cFv
// dMeterMap_c::~dMeterMap_c(void)
asm void __dt__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D990.s"
}

// _create__11dMeterMap_cFP9J2DScreen
// dMeterMap_c::_create(J2DScreen*)
asm void _create__11dMeterMap_cFP9J2DScreen(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020D9EC.s"
}

// _delete__11dMeterMap_cFv
// dMeterMap_c::_delete(void)
asm void _delete__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020DC50.s"
}

// _move__11dMeterMap_cFUl
// dMeterMap_c::_move(unsigned long)
asm void _move__11dMeterMap_cFUl(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020DCE4.s"
}

// _draw__11dMeterMap_cFv
// dMeterMap_c::_draw(void)
asm void _draw__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020DF1C.s"
}

// draw__11dMeterMap_cFv
// dMeterMap_c::draw(void)
asm void draw__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020DF68.s"
}

// ctrlShowMap__11dMeterMap_cFv
// dMeterMap_c::ctrlShowMap(void)
asm void ctrlShowMap__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020E070.s"
}

// checkMoveStatus__11dMeterMap_cFv
// dMeterMap_c::checkMoveStatus(void)
asm void checkMoveStatus__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020E45C.s"
}

// isShow__11dMeterMap_cFUl
// dMeterMap_c::isShow(unsigned long)
asm void isShow__11dMeterMap_cFUl(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020E4C8.s"
}

// isFmapScreen__11dMeterMap_cFv
// dMeterMap_c::isFmapScreen(void)
asm void isFmapScreen__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020E620.s"
}

// isDmapScreen__11dMeterMap_cFv
// dMeterMap_c::isDmapScreen(void)
asm void isDmapScreen__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020E70C.s"
}

// meter_map_move__11dMeterMap_cFUl
// dMeterMap_c::meter_map_move(unsigned long)
asm void meter_map_move__11dMeterMap_cFUl(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020E754.s"
}

// keyCheck__11dMeterMap_cFv
// dMeterMap_c::keyCheck(void)
asm void keyCheck__11dMeterMap_cFv(void) {
    nofralloc
#include "d/d_meter/d_meter_map/asm/func_8020E9CC.s"
}
};

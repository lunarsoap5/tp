/* d_meter2_info.cpp autogenerated by split.py v0.3 at 2021-01-02 00:19:27.098885 */

// #include "d/d_meter2/d_meter2_info/d_meter2_info.h"
#include "d/d_meter2/d_meter2_info/d_meter2_info.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"
#include "msl_c/string.h"

extern "C" {
u8 dComIfGs_getMixItemIndex__Fi(int);
u8 getBombNum__24dSv_player_item_record_cCFUc(u8);
unsigned int getSelectItemIndex__21dSv_player_status_a_cCFi(int);
void __ct__5csXyzFsss(void);
void __dl__FPv(void);
void daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz(void);
void dComIfGp_setSelectItem__Fi(int);
void dComIfGs_setMixItemIndex__FiUc(int, u8);
void dComIfGs_setSelectEquipClothes__FUc(u8);
void dComIfGs_setSelectEquipShield__FUc(u8);
void dComIfGs_setSelectEquipSword__FUc(u8);
void dComIfGs_setSelectItemIndex__FiUc(int, u8);
void dComIfGs_setWarpItemData__FPCc4cXyzsScUcUc(void);
void dComIfGs_setWarpMarkFlag__FUc(void);
void DCStoreRangeNoSync(void);
void changeWater__13dMeter2Info_cFUc(void);
void get2ndTexture__13dMeter2Info_cFUc(void);
void get3rdTexture__13dMeter2Info_cFUc(void);
void get4thTexture__13dMeter2Info_cFUc(void);
void init__13dMeter2Info_cFv(void);
void resetWarpStatus__13dMeter2Info_cFv(void);
void set1stColor__13dMeter2Info_cFUcP10J2DPicture(void);
void set2ndColor__13dMeter2Info_cFUcP10J2DPicture(void);
void set3rdColor__13dMeter2Info_cFUcP10J2DPicture(void);
void set4thColor__13dMeter2Info_cFUcP10J2DPicture(void);
void setSaveStageName__13dMeter2Info_cFPCc(void);
void setWarpInfo__13dMeter2Info_cFPCcRC4cXyzsUcUcUc(void);
void isMapOpenCheck__11dMeterMap_cFv(void);
void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci(void);
void __dt__10dMsgFlow_cFv(void);
void getMsgNo__10dMsgFlow_cFv(void);
void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c(void);
void __ct__10dMsgFlow_cFv(void);
void setLetterNameID__12dMsgObject_cFUs(void);
void func_80361C24(void);
void __cvt_fp2unsigned(void);
void getGlbResource__10JKRArchiveFUlPCcP10JKRArchive(void);
void getItem__17dSv_player_item_cCFib(void);
void isEventBit__11dSv_event_cCFUs(void);
void isLetterGetFlag__17dSv_letter_info_cCFi(void);
void isLightDropGetFlag__16dSv_light_drop_cCFUc(void);
void offFirstBit__21dSv_player_get_item_cFUc(void);
void onLetterGetFlag__17dSv_letter_info_cFi(void);
void readIdxResource__10JKRArchiveFPvUlUl(void);
void setBombNum__24dSv_player_item_record_cFUcUc(void);
void setItem__17dSv_player_item_cFiUc(void);
}

// additional symbols needed for d_meter2_info.cpp
// autogenerated by split.py v0.3 at 2021-01-02 00:19:27.063204
extern u8 lbl_80399168;
extern u8 lbl_80430178;
extern u8 lbl_803BF760;
extern u8 lbl_804549C0;
extern u8 lbl_804549B0;
extern u8 lbl_8045499C;
extern u8 lbl_803BF81C;
extern u8 lbl_803BFA1C;
extern u8 lbl_804549A4;
extern u8 lbl_80398A78;
extern u8 lbl_804510BC;
extern u8 lbl_803BF7F4;
extern u8 lbl_80454998;
extern u8 lbl_804549B8;
extern u8 lbl_804549A8;
extern u8 lbl_804549A0;
extern u8 lbl_804510B8;
extern u8 lbl_804549AC;
// extern u8 g_meter2_info;
extern u8 lbl_803AC5A0;

extern "C" {
// __ct__13dMeter2Info_cFv
// dMeter2Info_c::dMeter2Info_c(void)
asm void __ct__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021BDDC.s"
}

// __dt__13dMeter2Info_cFv
// dMeter2Info_c::~dMeter2Info_c(void)
asm void __dt__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021BE20.s"
}

// init__13dMeter2Info_cFv
// dMeter2Info_c::init(void)
asm void init__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021BE68.s"
}

// setFloatingMessage__13dMeter2Info_cFUssb
asm void setFloatingMessage__13dMeter2Info_cFUssb(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C0E0.s"
}

// setFloatingFlow__13dMeter2Info_cFUssb
asm void setFloatingFlow__13dMeter2Info_cFUssb(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C11C.s"
}

// isFloatingMessageVisible__13dMeter2Info_cFv
// dMeter2Info_c::isFloatingMessageVisible(void)
asm void isFloatingMessageVisible__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C1DC.s"
}

// decFloatingMessageTimer__13dMeter2Info_cFv
// dMeter2Info_c::decFloatingMessageTimer(void)
asm void decFloatingMessageTimer__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C1F0.s"
}

// resetFloatingMessage__13dMeter2Info_cFv
// dMeter2Info_c::resetFloatingMessage(void)
asm void resetFloatingMessage__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C218.s"
}

// decMsgKeyWaitTimer__13dMeter2Info_cFv
// dMeter2Info_c::decMsgKeyWaitTimer(void)
asm void decMsgKeyWaitTimer__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C238.s"
}

// getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
// dMeter2Info_c::getString(unsigned long, char*, JMSMesgEntry_c*)
asm void getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C250.s"
}

// getStringKana__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
// dMeter2Info_c::getStringKana(unsigned long, char*, JMSMesgEntry_c*)
asm void getStringKana__13dMeter2Info_cFUlPcP14JMSMesgEntry_c(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C370.s"
}

// getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
// dMeter2Info_c::getStringKanji(unsigned long, char*, JMSMesgEntry_c*)
asm void getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C544.s"
}

// getStringLength__13dMeter2Info_cFP10J2DTextBoxPc
// dMeter2Info_c::getStringLength(J2DTextBox*, char*)
asm void getStringLength__13dMeter2Info_cFP10J2DTextBoxPc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C6A4.s"
}

// getFont__10J2DTextBoxCFv
// J2DTextBox::getFont(const void)
asm void getFont__10J2DTextBoxCFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C7F4.s"
}

// getStringLength__13dMeter2Info_cFP7JUTFontffPc
// dMeter2Info_c::getStringLength(JUTFont*, float, float, char*)
asm void getStringLength__13dMeter2Info_cFP7JUTFontffPc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C7FC.s"
}

// onDirectUseItem__13dMeter2Info_cFi
// dMeter2Info_c::onDirectUseItem(int)
asm void onDirectUseItem__13dMeter2Info_cFi(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C934.s"
}

// isDirectUseItem__13dMeter2Info_cFi
// dMeter2Info_c::isDirectUseItem(int)
asm void isDirectUseItem__13dMeter2Info_cFi(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C950.s"
}

// setMeterString__13dMeter2Info_cFl
// dMeter2Info_c::setMeterString(long)
asm void setMeterString__13dMeter2Info_cFl(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C970.s"
}

// resetWarpStatus__13dMeter2Info_cFv
// dMeter2Info_c::resetWarpStatus(void)
asm void resetWarpStatus__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021C9DC.s"
}

// warpInProc__13dMeter2Info_cFv
// dMeter2Info_c::warpInProc(void)
asm void warpInProc__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021CA04.s"
}

// warpOutProc__13dMeter2Info_cFv
// dMeter2Info_c::warpOutProc(void)
asm void warpOutProc__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021CA70.s"
}

// resetMeterString__13dMeter2Info_cFv
// dMeter2Info_c::resetMeterString(void)
asm void resetMeterString__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021CC00.s"
}

// setWarpInfo__13dMeter2Info_cFPCcRC4cXyzsUcUcUc
// dMeter2Info_c::setWarpInfo(const char*, const cXyz&, short, unsigned char, unsigned char,
// unsigned char)
asm void setWarpInfo__13dMeter2Info_cFPCcRC4cXyzsUcUcUc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021CC0C.s"
}

// getItemType__13dMeter2Info_cFUc
// dMeter2Info_c::getItemType(unsigned char)
asm void getItemType__13dMeter2Info_cFUc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021CC80.s"
}

// readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei
// dMeter2Info_c::readItemTexture(unsigned char, void*, J2DPicture*, void*, J2DPicture*, void*,
// J2DPicture*, void*, J2DPicture*, int)
asm void
readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei(
    void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021CF08.s"
}

// setItemColor__13dMeter2Info_cFUcP10J2DPictureP10J2DPictureP10J2DPictureP10J2DPicture
// dMeter2Info_c::setItemColor(unsigned char, J2DPicture*, J2DPicture*, J2DPicture*, J2DPicture*)
asm void
setItemColor__13dMeter2Info_cFUcP10J2DPictureP10J2DPictureP10J2DPictureP10J2DPicture(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021D36C.s"
}

// get2ndTexture__13dMeter2Info_cFUc
// dMeter2Info_c::get2ndTexture(unsigned char)
asm void get2ndTexture__13dMeter2Info_cFUc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021D44C.s"
}

// get3rdTexture__13dMeter2Info_cFUc
// dMeter2Info_c::get3rdTexture(unsigned char)
asm void get3rdTexture__13dMeter2Info_cFUc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021D4B8.s"
}

// get4thTexture__13dMeter2Info_cFUc
// dMeter2Info_c::get4thTexture(unsigned char)
asm void get4thTexture__13dMeter2Info_cFUc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021D4FC.s"
}

// set1stColor__13dMeter2Info_cFUcP10J2DPicture
// dMeter2Info_c::set1stColor(unsigned char, J2DPicture*)
asm void set1stColor__13dMeter2Info_cFUcP10J2DPicture(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021D524.s"
}

// set2ndColor__13dMeter2Info_cFUcP10J2DPicture
// dMeter2Info_c::set2ndColor(unsigned char, J2DPicture*)
asm void set2ndColor__13dMeter2Info_cFUcP10J2DPicture(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021D644.s"
}

// set3rdColor__13dMeter2Info_cFUcP10J2DPicture
// dMeter2Info_c::set3rdColor(unsigned char, J2DPicture*)
asm void set3rdColor__13dMeter2Info_cFUcP10J2DPicture(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021D764.s"
}

// set4thColor__13dMeter2Info_cFUcP10J2DPicture
// dMeter2Info_c::set4thColor(unsigned char, J2DPicture*)
asm void set4thColor__13dMeter2Info_cFUcP10J2DPicture(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021DB64.s"
}

// setHotSpringTimer__13dMeter2Info_cFUc
// dMeter2Info_c::setHotSpringTimer(unsigned char)
asm void setHotSpringTimer__13dMeter2Info_cFUc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021DCC4.s"
}

// decHotSpringTimer__13dMeter2Info_cFv
// dMeter2Info_c::decHotSpringTimer(void)
asm void decHotSpringTimer__13dMeter2Info_cFv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021DCE0.s"
}

// changeWater__13dMeter2Info_cFUc
// dMeter2Info_c::changeWater(unsigned char)
asm void changeWater__13dMeter2Info_cFUc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021DD5C.s"
}

// setMiniGameItem__13dMeter2Info_cFUc
// dMeter2Info_c::setMiniGameItem(unsigned char)
asm void setMiniGameItem__13dMeter2Info_cFUc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021DE18.s"
}

// resetMiniGameItem__13dMeter2Info_cFb
asm void resetMiniGameItem__13dMeter2Info_cFb(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E0C4.s"
}

// setMiniGameCount__13dMeter2Info_cFSc
// dMeter2Info_c::setMiniGameCount(char)
asm void setMiniGameCount__13dMeter2Info_cFSc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E268.s"
}

// setSaveStageName__13dMeter2Info_cFPCc
// dMeter2Info_c::setSaveStageName(const char*)
asm void setSaveStageName__13dMeter2Info_cFPCc(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E290.s"
}

// dMeter2Info_getNowLifeGauge__Fv
// dMeter2Info_getNowLifeGauge(void)
asm void dMeter2Info_getNowLifeGauge__Fv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E2B4.s"
}

// dMeter2Info_getNumberTextureName__Fi
// dMeter2Info_getNumberTextureName__Fi(int)
asm void dMeter2Info_getNumberTextureName__Fi(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E2C8.s"
}

// dMeter2Info_getPlusTextureName__Fv
// dMeter2Info_getPlusTextureName(void)
asm void dMeter2Info_getPlusTextureName__Fv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E2DC.s"
}

// dMeter2Info_getPixel__FffffffPC7ResTIMG
// dMeter2Info_getPixel__FffffffPC7ResTIMG(float, float, float, float, float, float, const ResTIMG*)
asm void dMeter2Info_getPixel__FffffffPC7ResTIMG(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E308.s"
}

// dMeter2Info_setCloth__FUcb
asm void dMeter2Info_setCloth__FUcb(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E4B0.s"
}

// dMeter2Info_setSword__FUcb
asm void dMeter2Info_setSword__FUcb(u8, bool) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E530.s"
}

// dMeter2Info_setShield__FUcb
asm void dMeter2Info_setShield__FUcb(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E5D4.s"
}

// dMeter2Info_is2DActiveTouchArea__Fv
// dMeter2Info_is2DActiveTouchArea__Fv(void)
asm void dMeter2Info_is2DActiveTouchArea__Fv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E660.s"
}

// dMeter2Info_isMapOpenCheck__Fv
// dMeter2Info_isMapOpenCheck__Fv(void)
asm void dMeter2Info_isMapOpenCheck__Fv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E668.s"
}

// dMeter2Info_isItemOpenCheck__Fv
// dMeter2Info_isItemOpenCheck__Fv(void)
asm void dMeter2Info_isItemOpenCheck__Fv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E688.s"
}

// dMeter2Info_getRecieveLetterNum__Fv
// dMeter2Info_getRecieveLetterNum__Fv(void)
asm void dMeter2Info_getRecieveLetterNum__Fv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E6E4.s"
}

// dMeter2Info_getNewLetterNum__Fv
// dMeter2Info_getNewLetterNum__Fv(void)
asm void dMeter2Info_getNewLetterNum__Fv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E754.s"
}

// dMeter2Info_setNewLetterSender__Fv
// dMeter2Info_setNewLetterSender__Fv(void)
asm void dMeter2Info_setNewLetterSender__Fv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E804.s"
}

// dMeter2Info_recieveLetter__Fv
// dMeter2Info_recieveLetter__Fv(void)
asm void dMeter2Info_recieveLetter__Fv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E8DC.s"
}

// dMeter2Info_set2DVibration__Fv
// dMeter2Info_set2DVibration__Fv(void)
asm void dMeter2Info_set2DVibration__Fv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E9D0.s"
}

// dMeter2Info_set2DVibrationM__Fv
// dMeter2Info_set2DVibrationM__Fv(void)
asm void dMeter2Info_set2DVibrationM__Fv(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E9D4.s"
}

// __sinit_d_meter2_info_cpp
asm void __sinit_d_meter2_info_cpp(void) {
    nofralloc
#include "d/d_meter2/d_meter2_info/asm/func_8021E9D8.s"
}
};

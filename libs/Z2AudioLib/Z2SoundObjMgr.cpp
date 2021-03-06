/* Z2SoundObjMgr.cpp autogenerated by split.py v0.3 at 2021-01-05 00:01:40.089663 */

#include "Z2AudioLib/Z2SoundObjMgr/Z2SoundObjMgr.h"
#include "Z2AudioLib/Z2Calc/Z2Calc.h"
#include "Z2AudioLib/Z2SeqMgr/Z2SeqMgr.h"
#include "mtx_vec.h"

extern "C" {
int strcmp(const char*, const char*);
void initiate__10JSUPtrListFv(void);
void append__10JSUPtrListFP10JSUPtrLink(void);
void remove__10JSUPtrListFP10JSUPtrLink(void);
}

// additional symbols needed for Z2SoundObjMgr.cpp
// autogenerated by split.py v0.3 at 2021-01-05 00:01:40.078605
extern u8 lbl_80455B9C;
extern u8 lbl_80455B90;
extern u8 lbl_80455BB0;
extern u8 lbl_80455BCC;
extern u8 lbl_80455BAC;
extern u8 lbl_80455BB4;
extern u8 lbl_80455B84;
extern u8 lbl_80455B98;
extern u8 lbl_80455BC4;
extern u8 lbl_80455BBC;
extern u8 lbl_80455BD0;
extern u8 lbl_80455B88;
extern u8 lbl_8039C240;
extern u8 lbl_80455BA8;
extern u8 lbl_80455BA4;
extern u8 lbl_80455BB8;
extern u8 lbl_80455B94;
extern u8 lbl_803CB170;
extern u8 lbl_80455BC8;
extern u8 lbl_80455B8C;
extern u8 lbl_803CAD70;
extern u8 lbl_80455BC0;
extern u8 lbl_80455B80;
extern u8 lbl_80455BA0;
extern u8 lbl_80451360;
extern u8 lbl_80450B80;

#ifdef NONMATCHING
// order wrong because this needs to inherit from JASGlobalInstance<T>
Z2SoundObjMgr::Z2SoundObjMgr() {
    lbl_80450B48 = this;
    field_0x19 = 0;
    this->mIsTwilightBattle = false;
    this->setBattleInit();
    this->setForceBattleArea(false, 700, 1100, 1500);
}
#else
asm Z2SoundObjMgr::Z2SoundObjMgr() {
    nofralloc
#include "Z2AudioLib/Z2SoundObjMgr/asm/func_802BF920.s"
}
#endif

extern "C" {
// setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
// Z2SoundObjMgr::setForceBattleArea(bool, unsigned short, unsigned short, unsigned short)
asm void Z2SoundObjMgr::setForceBattleArea(bool, u16, u16, u16) {
    nofralloc
#include "Z2AudioLib/Z2SoundObjMgr/asm/func_802BF980.s"
}

// searchEnemy__13Z2SoundObjMgrFv
// Z2SoundObjMgr::searchEnemy(void)
asm void searchEnemy__13Z2SoundObjMgrFv(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObjMgr/asm/func_802BF994.s"
}

void Z2SoundObjMgr::setGhostEnemyState(u8 p1) {
    if (p1 == 0x20) {
        if (field_0x1a >= field_0x16) {
            lbl_80450B84->setBattleGhostMute(true);
        }
    } else {
        if (this->field_0x1a == false) {
            this->field_0x19 = 0;
            return;
        }
    }

    this->field_0x19 = p1 + (this->field_0x19 & 1);
}

// getEnemyID__13Z2SoundObjMgrFPCcP26JSULink<15Z2CreatureEnemy>
// Z2SoundObjMgr::getEnemyID(const char*, JSULink<15Z2CreatureEnemy>*)
asm void Z2SoundObjMgr_NS_getEnemyID(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObjMgr/asm/func_802C0074.s"
}

// setBattleInit__13Z2SoundObjMgrFv
// Z2SoundObjMgr::setBattleInit(void)
asm void Z2SoundObjMgr::setBattleInit() {
    nofralloc
#include "Z2AudioLib/Z2SoundObjMgr/asm/func_802C0100.s"
}

// checkBattleFinish__13Z2SoundObjMgrFv
// Z2SoundObjMgr::checkBattleFinish(void)
asm void checkBattleFinish__13Z2SoundObjMgrFv(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObjMgr/asm/func_802C0120.s"
}

void Z2SoundObjMgr::deleteEnemyAll() {
    JSULink<Z2CreatureEnemy>* link;

    // not moving the link pointer forward looks like a bug, but deleteObject() actually unlinks the
    // enemy from its owning list
    while (link = this->getFirst(), link != NULL) {
        Z2CreatureEnemy* enemy = link->getObject();
        if (enemy == NULL) {
            // setWarningMessage_f((JUTAssertion *)0x1,(ulong)"Z2SoundObjMgr.cpp",(char
            // *)0x16f,(int)&*fill*,
            //                     "[Z2SoundObjMgr::searchEnemy] remain remove enemy\n",in_r8);
        } else {
            enemy->deleteObject();
        }
    }
}

// removeEnemy__13Z2SoundObjMgrFP26JSULink<15Z2CreatureEnemy>
// Z2SoundObjMgr::removeEnemy(JSULink<15Z2CreatureEnemy>*)
asm void Z2SoundObjMgr_NS_removeEnemy(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObjMgr/asm/func_802C0190.s"
}
};

bool Z2SoundObjMgr::isTwilightBattle() {
    return mTwilightBattle;
}

extern "C" {
// __sinit_Z2SoundObjMgr_cpp
//
asm void __sinit_Z2SoundObjMgr_cpp(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObjMgr/asm/func_802C01EC.s"
}
};

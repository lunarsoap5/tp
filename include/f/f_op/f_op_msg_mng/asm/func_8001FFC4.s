/* 8001FFC4 0001CF04  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8001FFC8 0001CF08  7C 08 02 A6 */ mflr r0
/* 8001FFCC 0001CF0C  90 01 00 24 */ stw r0, 0x24(r1)
/* 8001FFD0 0001CF10  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 8001FFD4 0001CF14  93 C1 00 18 */ stw r30, 0x18(r1)
/* 8001FFD8 0001CF18  7C 7E 1B 78 */ mr r30, r3
/* 8001FFDC 0001CF1C  48 21 80 BD */ bl endFlowGroup__12dMsgObject_cFv
/* 8001FFE0 0001CF20  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8001FFE4 0001CF24  3B E3 61 C0 */ addi r31, r3, g_dComIfG_gameInfo@l
/* 8001FFE8 0001CF28  88 1F 5E 8F */ lbz r0, 0x5e8f(r31)
/* 8001FFEC 0001CF2C  28 00 00 08 */ cmplwi r0, 8
/* 8001FFF0 0001CF30  40 82 00 14 */ bne lbl_80020004
/* 8001FFF4 0001CF34  3C 60 80 43 */ lis r3, g_meter2_info@ha
/* 8001FFF8 0001CF38  38 63 01 88 */ addi r3, r3, g_meter2_info@l
/* 8001FFFC 0001CF3C  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 80020000 0001CF40  48 1F F6 ED */ bl emphasisButtonDelete__9dMeter2_cFv
lbl_80020004:
/* 80020004 0001CF44  88 1F 5E 8F */ lbz r0, 0x5e8f(r31)
/* 80020008 0001CF48  28 00 00 00 */ cmplwi r0, 0
/* 8002000C 0001CF4C  41 82 00 2C */ beq lbl_80020038
/* 80020010 0001CF50  28 00 00 05 */ cmplwi r0, 5
/* 80020014 0001CF54  41 82 00 24 */ beq lbl_80020038
/* 80020018 0001CF58  28 00 00 02 */ cmplwi r0, 2
/* 8002001C 0001CF5C  41 82 00 1C */ beq lbl_80020038
/* 80020020 0001CF60  28 00 00 03 */ cmplwi r0, 3
/* 80020024 0001CF64  41 82 00 14 */ beq lbl_80020038
/* 80020028 0001CF68  28 00 00 01 */ cmplwi r0, 1
/* 8002002C 0001CF6C  41 82 00 0C */ beq lbl_80020038
/* 80020030 0001CF70  38 60 FF FF */ li r3, -1
/* 80020034 0001CF74  48 00 00 74 */ b lbl_800200A8
lbl_80020038:
/* 80020038 0001CF78  C0 02 82 70 */ lfs f0, lbl_80451C70-_SDA2_BASE_(r2)
/* 8002003C 0001CF7C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 80020040 0001CF80  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80020044 0001CF84  D0 01 00 08 */ stfs f0, 8(r1)
/* 80020048 0001CF88  80 6D 80 48 */ lwz r3, i_msgID-_SDA_BASE_(r13)
/* 8002004C 0001CF8C  4B FF F9 D9 */ bl fopMsgM_SearchByID__FUi
/* 80020050 0001CF90  28 03 00 00 */ cmplwi r3, 0
/* 80020054 0001CF94  41 82 00 50 */ beq lbl_800200A4
/* 80020058 0001CF98  A0 03 00 F8 */ lhz r0, 0xf8(r3)
/* 8002005C 0001CF9C  28 00 00 01 */ cmplwi r0, 1
/* 80020060 0001CFA0  40 82 00 44 */ bne lbl_800200A4
/* 80020064 0001CFA4  C0 01 00 08 */ lfs f0, 8(r1)
/* 80020068 0001CFA8  D0 03 00 E0 */ stfs f0, 0xe0(r3)
/* 8002006C 0001CFAC  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 80020070 0001CFB0  D0 03 00 E4 */ stfs f0, 0xe4(r3)
/* 80020074 0001CFB4  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 80020078 0001CFB8  D0 03 00 E8 */ stfs f0, 0xe8(r3)
/* 8002007C 0001CFBC  93 C3 00 EC */ stw r30, 0xec(r3)
/* 80020080 0001CFC0  38 00 03 E8 */ li r0, 0x3e8
/* 80020084 0001CFC4  90 03 00 F0 */ stw r0, 0xf0(r3)
/* 80020088 0001CFC8  38 00 00 00 */ li r0, 0
/* 8002008C 0001CFCC  90 03 00 DC */ stw r0, 0xdc(r3)
/* 80020090 0001CFD0  7F C4 F3 78 */ mr r4, r30
/* 80020094 0001CFD4  38 A0 00 00 */ li r5, 0
/* 80020098 0001CFD8  48 21 3D D9 */ bl setMessageIndexDemo__12dMsgObject_cFUlb
/* 8002009C 0001CFDC  80 6D 80 48 */ lwz r3, i_msgID-_SDA_BASE_(r13)
/* 800200A0 0001CFE0  48 00 00 08 */ b lbl_800200A8
lbl_800200A4:
/* 800200A4 0001CFE4  38 60 00 00 */ li r3, 0
lbl_800200A8:
/* 800200A8 0001CFE8  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800200AC 0001CFEC  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 800200B0 0001CFF0  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800200B4 0001CFF4  7C 08 03 A6 */ mtlr r0
/* 800200B8 0001CFF8  38 21 00 20 */ addi r1, r1, 0x20
/* 800200BC 0001CFFC  4E 80 00 20 */ blr

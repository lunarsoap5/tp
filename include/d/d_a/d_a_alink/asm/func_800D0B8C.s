/* 800D0B8C 000CDACC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800D0B90 000CDAD0  7C 08 02 A6 */ mflr r0
/* 800D0B94 000CDAD4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800D0B98 000CDAD8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800D0B9C 000CDADC  93 C1 00 08 */ stw r30, 8(r1)
/* 800D0BA0 000CDAE0  7C 7E 1B 79 */ or. r30, r3, r3
/* 800D0BA4 000CDAE4  7C 9F 23 78 */ mr r31, r4
/* 800D0BA8 000CDAE8  41 82 00 A8 */ beq lbl_800D0C50
/* 800D0BAC 000CDAEC  3C 60 80 3B */ lis r3, lbl_803B3564@ha
/* 800D0BB0 000CDAF0  38 03 35 64 */ addi r0, r3, lbl_803B3564@l
/* 800D0BB4 000CDAF4  90 1E 00 00 */ stw r0, 0(r30)
/* 800D0BB8 000CDAF8  41 82 00 88 */ beq lbl_800D0C40
/* 800D0BBC 000CDAFC  3C 60 80 3D */ lis r3, lbl_803CEE60@ha
/* 800D0BC0 000CDB00  38 03 EE 60 */ addi r0, r3, lbl_803CEE60@l
/* 800D0BC4 000CDB04  90 1E 00 00 */ stw r0, 0(r30)
/* 800D0BC8 000CDB08  38 7E 00 D4 */ addi r3, r30, 0xd4
/*.global __dt__15J3DTevKColorAnmFv*/
/* 800D0BCC 000CDB0C  3C 80 80 04 */ lis r4, __dt__15J3DTevKColorAnmFv@ha
/*.global __dt__15J3DTevKColorAnmFv*/
/* 800D0BD0 000CDB10  38 84 B1 50 */ addi r4, r4, __dt__15J3DTevKColorAnmFv@l
/* 800D0BD4 000CDB14  38 A0 00 08 */ li r5, 8
/* 800D0BD8 000CDB18  38 C0 00 04 */ li r6, 4
/* 800D0BDC 000CDB1C  48 29 11 0D */ bl __destroy_arr
/* 800D0BE0 000CDB20  38 7E 00 B4 */ addi r3, r30, 0xb4
/*.global __dt__14J3DTevColorAnmFv*/
/* 800D0BE4 000CDB24  3C 80 80 04 */ lis r4, __dt__14J3DTevColorAnmFv@ha
/*.global __dt__14J3DTevColorAnmFv*/
/* 800D0BE8 000CDB28  38 84 B1 A4 */ addi r4, r4, __dt__14J3DTevColorAnmFv@l
/* 800D0BEC 000CDB2C  38 A0 00 08 */ li r5, 8
/* 800D0BF0 000CDB30  38 C0 00 04 */ li r6, 4
/* 800D0BF4 000CDB34  48 29 10 F5 */ bl __destroy_arr
/* 800D0BF8 000CDB38  38 7E 00 54 */ addi r3, r30, 0x54
/*.global __dt__11J3DTexNoAnmFv*/
/* 800D0BFC 000CDB3C  3C 80 80 04 */ lis r4, __dt__11J3DTexNoAnmFv@ha
/*.global __dt__11J3DTexNoAnmFv*/
/* 800D0C00 000CDB40  38 84 B1 F8 */ addi r4, r4, __dt__11J3DTexNoAnmFv@l
/* 800D0C04 000CDB44  38 A0 00 0C */ li r5, 0xc
/* 800D0C08 000CDB48  38 C0 00 08 */ li r6, 8
/* 800D0C0C 000CDB4C  48 29 10 DD */ bl __destroy_arr
/* 800D0C10 000CDB50  38 7E 00 14 */ addi r3, r30, 0x14
/*.global __dt__12J3DTexMtxAnmFv*/
/* 800D0C14 000CDB54  3C 80 80 04 */ lis r4, __dt__12J3DTexMtxAnmFv@ha
/*.global __dt__12J3DTexMtxAnmFv*/
/* 800D0C18 000CDB58  38 84 B2 64 */ addi r4, r4, __dt__12J3DTexMtxAnmFv@l
/* 800D0C1C 000CDB5C  38 A0 00 08 */ li r5, 8
/* 800D0C20 000CDB60  38 C0 00 08 */ li r6, 8
/* 800D0C24 000CDB64  48 29 10 C5 */ bl __destroy_arr
/* 800D0C28 000CDB68  38 7E 00 04 */ addi r3, r30, 4
/*.global __dt__14J3DMatColorAnmFv*/
/* 800D0C2C 000CDB6C  3C 80 80 04 */ lis r4, __dt__14J3DMatColorAnmFv@ha
/*.global __dt__14J3DMatColorAnmFv*/
/* 800D0C30 000CDB70  38 84 B2 B8 */ addi r4, r4, __dt__14J3DMatColorAnmFv@l
/* 800D0C34 000CDB74  38 A0 00 08 */ li r5, 8
/* 800D0C38 000CDB78  38 C0 00 02 */ li r6, 2
/* 800D0C3C 000CDB7C  48 29 10 AD */ bl __destroy_arr
lbl_800D0C40:
/* 800D0C40 000CDB80  7F E0 07 35 */ extsh. r0, r31
/* 800D0C44 000CDB84  40 81 00 0C */ ble lbl_800D0C50
/* 800D0C48 000CDB88  7F C3 F3 78 */ mr r3, r30
/* 800D0C4C 000CDB8C  48 1F E0 F1 */ bl __dl__FPv
lbl_800D0C50:
/* 800D0C50 000CDB90  7F C3 F3 78 */ mr r3, r30
/* 800D0C54 000CDB94  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800D0C58 000CDB98  83 C1 00 08 */ lwz r30, 8(r1)
/* 800D0C5C 000CDB9C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800D0C60 000CDBA0  7C 08 03 A6 */ mtlr r0
/* 800D0C64 000CDBA4  38 21 00 10 */ addi r1, r1, 0x10
/* 800D0C68 000CDBA8  4E 80 00 20 */ blr
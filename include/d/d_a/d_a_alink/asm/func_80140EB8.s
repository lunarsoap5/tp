/* 80140EB8 0013DDF8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80140EBC 0013DDFC  7C 08 02 A6 */ mflr r0
/* 80140EC0 0013DE00  90 01 00 14 */ stw r0, 0x14(r1)
/* 80140EC4 0013DE04  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80140EC8 0013DE08  93 C1 00 08 */ stw r30, 8(r1)
/* 80140ECC 0013DE0C  7C 7E 1B 79 */ or. r30, r3, r3
/* 80140ED0 0013DE10  7C 9F 23 78 */ mr r31, r4
/* 80140ED4 0013DE14  41 82 00 40 */ beq lbl_80140F14
/* 80140ED8 0013DE18  3C 80 80 3B */ lis r4, lbl_803B2EF8@ha
/* 80140EDC 0013DE1C  38 84 2E F8 */ addi r4, r4, lbl_803B2EF8@l
/* 80140EE0 0013DE20  90 9E 00 10 */ stw r4, 0x10(r30)
/* 80140EE4 0013DE24  38 04 00 0C */ addi r0, r4, 0xc
/* 80140EE8 0013DE28  90 1E 00 20 */ stw r0, 0x20(r30)
/* 80140EEC 0013DE2C  38 04 00 18 */ addi r0, r4, 0x18
/* 80140EF0 0013DE30  90 1E 00 3C */ stw r0, 0x3c(r30)
/* 80140EF4 0013DE34  38 04 00 24 */ addi r0, r4, 0x24
/* 80140EF8 0013DE38  90 1E 00 4C */ stw r0, 0x4c(r30)
/* 80140EFC 0013DE3C  38 80 00 00 */ li r4, 0
/* 80140F00 0013DE40  4B F3 66 F1 */ bl __dt__11dBgS_GndChkFv
/* 80140F04 0013DE44  7F E0 07 35 */ extsh. r0, r31
/* 80140F08 0013DE48  40 81 00 0C */ ble lbl_80140F14
/* 80140F0C 0013DE4C  7F C3 F3 78 */ mr r3, r30
/* 80140F10 0013DE50  48 18 DE 2D */ bl __dl__FPv
lbl_80140F14:
/* 80140F14 0013DE54  7F C3 F3 78 */ mr r3, r30
/* 80140F18 0013DE58  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80140F1C 0013DE5C  83 C1 00 08 */ lwz r30, 8(r1)
/* 80140F20 0013DE60  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80140F24 0013DE64  7C 08 03 A6 */ mtlr r0
/* 80140F28 0013DE68  38 21 00 10 */ addi r1, r1, 0x10
/* 80140F2C 0013DE6C  4E 80 00 20 */ blr
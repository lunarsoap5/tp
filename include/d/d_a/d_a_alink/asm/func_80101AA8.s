/* 80101AA8 000FE9E8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80101AAC 000FE9EC  7C 08 02 A6 */ mflr r0
/* 80101AB0 000FE9F0  90 01 00 14 */ stw r0, 0x14(r1)
/* 80101AB4 000FE9F4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80101AB8 000FE9F8  7C 7F 1B 78 */ mr r31, r3
/* 80101ABC 000FE9FC  A0 03 2F E8 */ lhz r0, 0x2fe8(r3)
/* 80101AC0 000FEA00  28 00 00 16 */ cmplwi r0, 0x16
/* 80101AC4 000FEA04  40 82 00 18 */ bne lbl_80101ADC
/* 80101AC8 000FEA08  3C 60 80 39 */ lis r3, lbl_8038ED2C@ha
/* 80101ACC 000FEA0C  38 63 ED 2C */ addi r3, r3, lbl_8038ED2C@l
/* 80101AD0 000FEA10  C0 03 00 74 */ lfs f0, 0x74(r3)
/* 80101AD4 000FEA14  FC 20 00 50 */ fneg f1, f0
/* 80101AD8 000FEA18  48 00 00 58 */ b lbl_80101B30
lbl_80101ADC:
/* 80101ADC 000FEA1C  81 83 06 28 */ lwz r12, 0x628(r3)
/* 80101AE0 000FEA20  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 80101AE4 000FEA24  7D 89 03 A6 */ mtctr r12
/* 80101AE8 000FEA28  4E 80 04 21 */ bctrl
/* 80101AEC 000FEA2C  2C 03 00 00 */ cmpwi r3, 0
/* 80101AF0 000FEA30  41 82 00 14 */ beq lbl_80101B04
/* 80101AF4 000FEA34  3C 60 80 39 */ lis r3, lbl_8038ED2C@ha
/* 80101AF8 000FEA38  38 63 ED 2C */ addi r3, r3, lbl_8038ED2C@l
/* 80101AFC 000FEA3C  C0 23 00 D0 */ lfs f1, 0xd0(r3)
/* 80101B00 000FEA40  48 00 00 30 */ b lbl_80101B30
lbl_80101B04:
/* 80101B04 000FEA44  7F E3 FB 78 */ mr r3, r31
/* 80101B08 000FEA48  4B FF FE B1 */ bl getZoraSwim__9daAlink_cCFv
/* 80101B0C 000FEA4C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80101B10 000FEA50  41 82 00 14 */ beq lbl_80101B24
/* 80101B14 000FEA54  3C 60 80 39 */ lis r3, lbl_8038ED2C@ha
/* 80101B18 000FEA58  38 63 ED 2C */ addi r3, r3, lbl_8038ED2C@l
/* 80101B1C 000FEA5C  C0 23 00 84 */ lfs f1, 0x84(r3)
/* 80101B20 000FEA60  48 00 00 10 */ b lbl_80101B30
lbl_80101B24:
/* 80101B24 000FEA64  3C 60 80 39 */ lis r3, lbl_8038ED2C@ha
/* 80101B28 000FEA68  38 63 ED 2C */ addi r3, r3, lbl_8038ED2C@l
/* 80101B2C 000FEA6C  C0 23 00 CC */ lfs f1, 0xcc(r3)
lbl_80101B30:
/* 80101B30 000FEA70  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80101B34 000FEA74  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80101B38 000FEA78  7C 08 03 A6 */ mtlr r0
/* 80101B3C 000FEA7C  38 21 00 10 */ addi r1, r1, 0x10
/* 80101B40 000FEA80  4E 80 00 20 */ blr

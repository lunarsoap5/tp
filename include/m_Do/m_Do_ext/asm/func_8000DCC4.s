/* 8000DCC4 0000AC04  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8000DCC8 0000AC08  7C 08 02 A6 */ mflr r0
/* 8000DCCC 0000AC0C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8000DCD0 0000AC10  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8000DCD4 0000AC14  7C 7F 1B 78 */ mr r31, r3
/* 8000DCD8 0000AC18  80 A3 00 04 */ lwz r5, 4(r3)
/* 8000DCDC 0000AC1C  80 85 00 60 */ lwz r4, 0x60(r5)
/* 8000DCE0 0000AC20  80 84 00 00 */ lwz r4, 0(r4)
/* 8000DCE4 0000AC24  80 04 00 48 */ lwz r0, 0x48(r4)
/* 8000DCE8 0000AC28  28 00 00 00 */ cmplwi r0, 0
/* 8000DCEC 0000AC2C  41 82 00 2C */ beq lbl_8000DD18
/* 8000DCF0 0000AC30  A0 05 00 74 */ lhz r0, 0x74(r5)
/* 8000DCF4 0000AC34  28 00 00 01 */ cmplwi r0, 1
/* 8000DCF8 0000AC38  41 82 00 20 */ beq lbl_8000DD18
/* 8000DCFC 0000AC3C  81 83 00 00 */ lwz r12, 0(r3)
/* 8000DD00 0000AC40  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 8000DD04 0000AC44  7D 89 03 A6 */ mtctr r12
/* 8000DD08 0000AC48  4E 80 04 21 */ bctrl
/* 8000DD0C 0000AC4C  7F E3 FB 78 */ mr r3, r31
/* 8000DD10 0000AC50  4B FF FE C9 */ bl mDoExt_modelDiff
/* 8000DD14 0000AC54  48 00 00 28 */ b lbl_8000DD3C
lbl_8000DD18:
/* 8000DD18 0000AC58  7F E3 FB 78 */ mr r3, r31
/* 8000DD1C 0000AC5C  48 31 99 99 */ bl J3DModel_NS_unlock
/* 8000DD20 0000AC60  7F E3 FB 78 */ mr r3, r31
/* 8000DD24 0000AC64  81 9F 00 00 */ lwz r12, 0(r31)
/* 8000DD28 0000AC68  81 8C 00 08 */ lwz r12, 8(r12)
/* 8000DD2C 0000AC6C  7D 89 03 A6 */ mtctr r12
/* 8000DD30 0000AC70  4E 80 04 21 */ bctrl
/* 8000DD34 0000AC74  7F E3 FB 78 */ mr r3, r31
/* 8000DD38 0000AC78  48 31 99 45 */ bl J3DModel_NS_lock
lbl_8000DD3C:
/* 8000DD3C 0000AC7C  7F E3 FB 78 */ mr r3, r31
/* 8000DD40 0000AC80  81 9F 00 00 */ lwz r12, 0(r31)
/* 8000DD44 0000AC84  81 8C 00 1C */ lwz r12, 0x1c(r12)
/* 8000DD48 0000AC88  7D 89 03 A6 */ mtctr r12
/* 8000DD4C 0000AC8C  4E 80 04 21 */ bctrl
/* 8000DD50 0000AC90  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8000DD54 0000AC94  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8000DD58 0000AC98  7C 08 03 A6 */ mtlr r0
/* 8000DD5C 0000AC9C  38 21 00 10 */ addi r1, r1, 0x10
/* 8000DD60 0000ACA0  4E 80 00 20 */ blr
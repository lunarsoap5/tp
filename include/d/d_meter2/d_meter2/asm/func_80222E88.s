/* 80222E88 0021FDC8  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 80222E8C 0021FDCC  7C 08 02 A6 */ mflr r0
/* 80222E90 0021FDD0  90 01 00 44 */ stw r0, 0x44(r1)
/* 80222E94 0021FDD4  DB E1 00 30 */ stfd f31, 0x30(r1)
/* 80222E98 0021FDD8  F3 E1 00 38 */ psq_st f31, 56(r1), 0, 0
/* 80222E9C 0021FDDC  DB C1 00 20 */ stfd f30, 0x20(r1)
/* 80222EA0 0021FDE0  F3 C1 00 28 */ psq_st f30, 40(r1), 0, 0
/* 80222EA4 0021FDE4  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80222EA8 0021FDE8  93 C1 00 18 */ stw r30, 0x18(r1)
/* 80222EAC 0021FDEC  7C 7E 1B 78 */ mr r30, r3
/* 80222EB0 0021FDF0  3B E0 00 00 */ li r31, 0
/* 80222EB4 0021FDF4  C3 E2 AF C8 */ lfs f31, lbl_804549C8-_SDA2_BASE_(r2)
/* 80222EB8 0021FDF8  C0 03 04 48 */ lfs f0, 0x448(r3)
/* 80222EBC 0021FDFC  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80222EC0 0021FE00  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80222EC4 0021FE04  C0 23 04 00 */ lfs f1, 0x400(r3)
/* 80222EC8 0021FE08  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80222ECC 0021FE0C  41 82 00 0C */ beq lbl_80222ED8
/* 80222ED0 0021FE10  D0 3E 04 48 */ stfs f1, 0x448(r30)
/* 80222ED4 0021FE14  3B E0 00 01 */ li r31, 1
lbl_80222ED8:
/* 80222ED8 0021FE18  C0 1E 04 4C */ lfs f0, 0x44c(r30)
/* 80222EDC 0021FE1C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80222EE0 0021FE20  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80222EE4 0021FE24  C0 23 04 04 */ lfs f1, 0x404(r3)
/* 80222EE8 0021FE28  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80222EEC 0021FE2C  41 82 00 0C */ beq lbl_80222EF8
/* 80222EF0 0021FE30  D0 3E 04 4C */ stfs f1, 0x44c(r30)
/* 80222EF4 0021FE34  3B E0 00 01 */ li r31, 1
lbl_80222EF8:
/* 80222EF8 0021FE38  C0 1E 04 54 */ lfs f0, 0x454(r30)
/* 80222EFC 0021FE3C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80222F00 0021FE40  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80222F04 0021FE44  C0 23 04 08 */ lfs f1, 0x408(r3)
/* 80222F08 0021FE48  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80222F0C 0021FE4C  41 82 00 0C */ beq lbl_80222F18
/* 80222F10 0021FE50  D0 3E 04 54 */ stfs f1, 0x454(r30)
/* 80222F14 0021FE54  3B E0 00 01 */ li r31, 1
lbl_80222F18:
/* 80222F18 0021FE58  C0 1E 04 58 */ lfs f0, 0x458(r30)
/* 80222F1C 0021FE5C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80222F20 0021FE60  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80222F24 0021FE64  C0 23 04 0C */ lfs f1, 0x40c(r3)
/* 80222F28 0021FE68  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80222F2C 0021FE6C  41 82 00 0C */ beq lbl_80222F38
/* 80222F30 0021FE70  D0 3E 04 58 */ stfs f1, 0x458(r30)
/* 80222F34 0021FE74  3B E0 00 01 */ li r31, 1
lbl_80222F38:
/* 80222F38 0021FE78  C0 1E 04 50 */ lfs f0, 0x450(r30)
/* 80222F3C 0021FE7C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80222F40 0021FE80  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80222F44 0021FE84  C0 23 03 FC */ lfs f1, 0x3fc(r3)
/* 80222F48 0021FE88  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80222F4C 0021FE8C  41 82 00 0C */ beq lbl_80222F58
/* 80222F50 0021FE90  D0 3E 04 50 */ stfs f1, 0x450(r30)
/* 80222F54 0021FE94  3B E0 00 01 */ li r31, 1
lbl_80222F58:
/* 80222F58 0021FE98  C0 1E 04 5C */ lfs f0, 0x45c(r30)
/* 80222F5C 0021FE9C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80222F60 0021FEA0  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80222F64 0021FEA4  C0 23 04 10 */ lfs f1, 0x410(r3)
/* 80222F68 0021FEA8  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80222F6C 0021FEAC  41 82 00 0C */ beq lbl_80222F78
/* 80222F70 0021FEB0  D0 3E 04 5C */ stfs f1, 0x45c(r30)
/* 80222F74 0021FEB4  3B E0 00 01 */ li r31, 1
lbl_80222F78:
/* 80222F78 0021FEB8  80 7E 01 20 */ lwz r3, 0x120(r30)
/* 80222F7C 0021FEBC  28 03 00 00 */ cmplwi r3, 0
/* 80222F80 0021FEC0  41 82 00 90 */ beq lbl_80223010
/* 80222F84 0021FEC4  4B FE A7 D9 */ bl getMapDispEdgeTop__11dMeterMap_cFv
/* 80222F88 0021FEC8  FF E0 08 90 */ fmr f31, f1
/* 80222F8C 0021FECC  80 7E 01 0C */ lwz r3, 0x10c(r30)
/* 80222F90 0021FED0  4B FF 52 A9 */ bl getButtonCrossParentInitTransY__13dMeter2Draw_cFv
/* 80222F94 0021FED4  EC 3F 08 28 */ fsubs f1, f31, f1
/* 80222F98 0021FED8  C0 02 AF FC */ lfs f0, lbl_804549FC-_SDA2_BASE_(r2)
/* 80222F9C 0021FEDC  EC 21 00 28 */ fsubs f1, f1, f0
/* 80222FA0 0021FEE0  80 7E 01 20 */ lwz r3, 0x120(r30)
/* 80222FA4 0021FEE4  88 03 00 2D */ lbz r0, 0x2d(r3)
/* 80222FA8 0021FEE8  28 00 00 00 */ cmplwi r0, 0
/* 80222FAC 0021FEEC  41 82 00 3C */ beq lbl_80222FE8
/* 80222FB0 0021FEF0  A8 9E 01 B4 */ lha r4, 0x1b4(r30)
/* 80222FB4 0021FEF4  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80222FB8 0021FEF8  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80222FBC 0021FEFC  A8 03 04 20 */ lha r0, 0x420(r3)
/* 80222FC0 0021FF00  7C 04 00 00 */ cmpw r4, r0
/* 80222FC4 0021FF04  40 80 00 14 */ bge lbl_80222FD8
/* 80222FC8 0021FF08  38 04 00 01 */ addi r0, r4, 1
/* 80222FCC 0021FF0C  B0 1E 01 B4 */ sth r0, 0x1b4(r30)
/* 80222FD0 0021FF10  3B E0 00 01 */ li r31, 1
/* 80222FD4 0021FF14  48 00 00 08 */ b lbl_80222FDC
lbl_80222FD8:
/* 80222FD8 0021FF18  B0 1E 01 B4 */ sth r0, 0x1b4(r30)
lbl_80222FDC:
/* 80222FDC 0021FF1C  C0 1E 04 58 */ lfs f0, 0x458(r30)
/* 80222FE0 0021FF20  EF E0 08 2A */ fadds f31, f0, f1
/* 80222FE4 0021FF24  48 00 00 2C */ b lbl_80223010
lbl_80222FE8:
/* 80222FE8 0021FF28  A8 7E 01 B4 */ lha r3, 0x1b4(r30)
/* 80222FEC 0021FF2C  2C 03 00 00 */ cmpwi r3, 0
/* 80222FF0 0021FF30  40 81 00 14 */ ble lbl_80223004
/* 80222FF4 0021FF34  38 03 FF FF */ addi r0, r3, -1
/* 80222FF8 0021FF38  B0 1E 01 B4 */ sth r0, 0x1b4(r30)
/* 80222FFC 0021FF3C  3B E0 00 01 */ li r31, 1
/* 80223000 0021FF40  48 00 00 0C */ b lbl_8022300C
lbl_80223004:
/* 80223004 0021FF44  38 00 00 00 */ li r0, 0
/* 80223008 0021FF48  B0 1E 01 B4 */ sth r0, 0x1b4(r30)
lbl_8022300C:
/* 8022300C 0021FF4C  C3 FE 04 4C */ lfs f31, 0x44c(r30)
lbl_80223010:
/* 80223010 0021FF50  C0 7E 04 48 */ lfs f3, 0x448(r30)
/* 80223014 0021FF54  A8 1E 01 B4 */ lha r0, 0x1b4(r30)
/* 80223018 0021FF58  C8 42 AF D8 */ lfd f2, lbl_804549D8-_SDA2_BASE_(r2)
/* 8022301C 0021FF5C  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80223020 0021FF60  90 01 00 0C */ stw r0, 0xc(r1)
/* 80223024 0021FF64  3C 80 43 30 */ lis r4, 0x4330
/* 80223028 0021FF68  90 81 00 08 */ stw r4, 8(r1)
/* 8022302C 0021FF6C  C8 01 00 08 */ lfd f0, 8(r1)
/* 80223030 0021FF70  EC 20 10 28 */ fsubs f1, f0, f2
/* 80223034 0021FF74  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80223038 0021FF78  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 8022303C 0021FF7C  A8 03 04 20 */ lha r0, 0x420(r3)
/* 80223040 0021FF80  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80223044 0021FF84  90 01 00 14 */ stw r0, 0x14(r1)
/* 80223048 0021FF88  90 81 00 10 */ stw r4, 0x10(r1)
/* 8022304C 0021FF8C  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 80223050 0021FF90  EC 00 10 28 */ fsubs f0, f0, f2
/* 80223054 0021FF94  EC 21 00 24 */ fdivs f1, f1, f0
/* 80223058 0021FF98  C0 1E 04 54 */ lfs f0, 0x454(r30)
/* 8022305C 0021FF9C  EC 00 18 28 */ fsubs f0, f0, f3
/* 80223060 0021FFA0  EC 01 00 32 */ fmuls f0, f1, f0
/* 80223064 0021FFA4  EF C3 00 2A */ fadds f30, f3, f0
/* 80223068 0021FFA8  C0 1E 01 5C */ lfs f0, 0x15c(r30)
/* 8022306C 0021FFAC  FC 00 F8 00 */ fcmpu cr0, f0, f31
/* 80223070 0021FFB0  41 82 00 3C */ beq lbl_802230AC
/* 80223074 0021FFB4  38 7E 01 5C */ addi r3, r30, 0x15c
/* 80223078 0021FFB8  FC 20 F8 90 */ fmr f1, f31
/* 8022307C 0021FFBC  C0 42 AF EC */ lfs f2, lbl_804549EC-_SDA2_BASE_(r2)
/* 80223080 0021FFC0  C0 62 B0 00 */ lfs f3, lbl_80454A00-_SDA2_BASE_(r2)
/* 80223084 0021FFC4  48 04 C9 B9 */ bl cLib_addCalc2__FPffff
/* 80223088 0021FFC8  C0 1E 01 5C */ lfs f0, 0x15c(r30)
/* 8022308C 0021FFCC  EC 00 F8 28 */ fsubs f0, f0, f31
/* 80223090 0021FFD0  FC 00 02 10 */ fabs f0, f0
/* 80223094 0021FFD4  FC 20 00 18 */ frsp f1, f0
/* 80223098 0021FFD8  C0 02 AF EC */ lfs f0, lbl_804549EC-_SDA2_BASE_(r2)
/* 8022309C 0021FFDC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 802230A0 0021FFE0  40 80 00 08 */ bge lbl_802230A8
/* 802230A4 0021FFE4  D3 FE 01 5C */ stfs f31, 0x15c(r30)
lbl_802230A8:
/* 802230A8 0021FFE8  3B E0 00 01 */ li r31, 1
lbl_802230AC:
/* 802230AC 0021FFEC  57 E0 06 3E */ clrlwi r0, r31, 0x18
/* 802230B0 0021FFF0  28 00 00 01 */ cmplwi r0, 1
/* 802230B4 0021FFF4  40 82 00 14 */ bne lbl_802230C8
/* 802230B8 0021FFF8  80 7E 01 0C */ lwz r3, 0x10c(r30)
/* 802230BC 0021FFFC  FC 20 F0 90 */ fmr f1, f30
/* 802230C0 00220000  C0 5E 01 5C */ lfs f2, 0x15c(r30)
/* 802230C4 00220004  4B FF 51 91 */ bl drawButtonCross__13dMeter2Draw_cFff
lbl_802230C8:
/* 802230C8 00220008  7F C3 F3 78 */ mr r3, r30
/* 802230CC 0022000C  48 00 23 F5 */ bl alphaAnimeButtonCross__9dMeter2_cFv
/* 802230D0 00220010  E3 E1 00 38 */ psq_l f31, 56(r1), 0, 0
/* 802230D4 00220014  CB E1 00 30 */ lfd f31, 0x30(r1)
/* 802230D8 00220018  E3 C1 00 28 */ psq_l f30, 40(r1), 0, 0
/* 802230DC 0022001C  CB C1 00 20 */ lfd f30, 0x20(r1)
/* 802230E0 00220020  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 802230E4 00220024  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 802230E8 00220028  80 01 00 44 */ lwz r0, 0x44(r1)
/* 802230EC 0022002C  7C 08 03 A6 */ mtlr r0
/* 802230F0 00220030  38 21 00 40 */ addi r1, r1, 0x40
/* 802230F4 00220034  4E 80 00 20 */ blr

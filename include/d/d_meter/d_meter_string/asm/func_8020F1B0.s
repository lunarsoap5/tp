/* 8020F1B0 0020C0F0  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 8020F1B4 0020C0F4  7C 08 02 A6 */ mflr r0
/* 8020F1B8 0020C0F8  90 01 00 64 */ stw r0, 0x64(r1)
/* 8020F1BC 0020C0FC  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 8020F1C0 0020C100  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 8020F1C4 0020C104  DB C1 00 40 */ stfd f30, 0x40(r1)
/* 8020F1C8 0020C108  F3 C1 00 48 */ psq_st f30, 72(r1), 0, 0
/* 8020F1CC 0020C10C  93 E1 00 3C */ stw r31, 0x3c(r1)
/* 8020F1D0 0020C110  93 C1 00 38 */ stw r30, 0x38(r1)
/* 8020F1D4 0020C114  7C 7E 1B 78 */ mr r30, r3
/* 8020F1D8 0020C118  80 03 00 18 */ lwz r0, 0x18(r3)
/* 8020F1DC 0020C11C  28 00 00 00 */ cmplwi r0, 0
/* 8020F1E0 0020C120  41 82 02 94 */ beq lbl_8020F474
/* 8020F1E4 0020C124  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8020F1E8 0020C128  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8020F1EC 0020C12C  88 03 5E B5 */ lbz r0, 0x5eb5(r3)
/* 8020F1F0 0020C130  28 00 00 00 */ cmplwi r0, 0
/* 8020F1F4 0020C134  40 82 02 80 */ bne lbl_8020F474
/* 8020F1F8 0020C138  83 E3 5F 50 */ lwz r31, 0x5f50(r3)
/* 8020F1FC 0020C13C  7F E3 FB 78 */ mr r3, r31
/* 8020F200 0020C140  81 9F 00 00 */ lwz r12, 0(r31)
/* 8020F204 0020C144  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 8020F208 0020C148  7D 89 03 A6 */ mtctr r12
/* 8020F20C 0020C14C  4E 80 04 21 */ bctrl
/* 8020F210 0020C150  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020F214 0020C154  38 83 EB C8 */ addi r4, r3, lbl_8042EBC8@l
/* 8020F218 0020C158  A8 04 0C 02 */ lha r0, 0xc02(r4)
/* 8020F21C 0020C15C  C8 62 AE 70 */ lfd f3, lbl_80454870-_SDA2_BASE_(r2)
/* 8020F220 0020C160  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8020F224 0020C164  90 01 00 0C */ stw r0, 0xc(r1)
/* 8020F228 0020C168  3C 60 43 30 */ lis r3, 0x4330
/* 8020F22C 0020C16C  90 61 00 08 */ stw r3, 8(r1)
/* 8020F230 0020C170  C8 01 00 08 */ lfd f0, 8(r1)
/* 8020F234 0020C174  EC 40 18 28 */ fsubs f2, f0, f3
/* 8020F238 0020C178  C0 22 AE 5C */ lfs f1, lbl_8045485C-_SDA2_BASE_(r2)
/* 8020F23C 0020C17C  A8 04 0C 00 */ lha r0, 0xc00(r4)
/* 8020F240 0020C180  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8020F244 0020C184  90 01 00 14 */ stw r0, 0x14(r1)
/* 8020F248 0020C188  90 61 00 10 */ stw r3, 0x10(r1)
/* 8020F24C 0020C18C  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 8020F250 0020C190  EC 00 18 28 */ fsubs f0, f0, f3
/* 8020F254 0020C194  EC 81 00 2A */ fadds f4, f1, f0
/* 8020F258 0020C198  EF E2 20 2A */ fadds f31, f2, f4
/* 8020F25C 0020C19C  C0 5E 00 2C */ lfs f2, 0x2c(r30)
/* 8020F260 0020C1A0  C0 02 AE 58 */ lfs f0, lbl_80454858-_SDA2_BASE_(r2)
/* 8020F264 0020C1A4  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 8020F268 0020C1A8  40 81 02 0C */ ble lbl_8020F474
/* 8020F26C 0020C1AC  FC 02 F8 40 */ fcmpo cr0, f2, f31
/* 8020F270 0020C1B0  40 80 02 04 */ bge lbl_8020F474
/* 8020F274 0020C1B4  C3 C2 AE 60 */ lfs f30, lbl_80454860-_SDA2_BASE_(r2)
/* 8020F278 0020C1B8  FC 02 08 40 */ fcmpo cr0, f2, f1
/* 8020F27C 0020C1BC  40 80 00 30 */ bge lbl_8020F2AC
/* 8020F280 0020C1C0  C0 04 0B FC */ lfs f0, 0xbfc(r4)
/* 8020F284 0020C1C4  EC 02 00 2A */ fadds f0, f2, f0
/* 8020F288 0020C1C8  D0 1E 00 2C */ stfs f0, 0x2c(r30)
/* 8020F28C 0020C1CC  C0 1E 00 2C */ lfs f0, 0x2c(r30)
/* 8020F290 0020C1D0  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 8020F294 0020C1D4  40 81 00 08 */ ble lbl_8020F29C
/* 8020F298 0020C1D8  D0 3E 00 2C */ stfs f1, 0x2c(r30)
lbl_8020F29C:
/* 8020F29C 0020C1DC  7F C3 F3 78 */ mr r3, r30
/* 8020F2A0 0020C1E0  C0 3E 00 2C */ lfs f1, 0x2c(r30)
/* 8020F2A4 0020C1E4  48 00 03 C9 */ bl playBckAnimation__14dMeterString_cFf
/* 8020F2A8 0020C1E8  48 00 00 9C */ b lbl_8020F344
lbl_8020F2AC:
/* 8020F2AC 0020C1EC  FC 02 20 40 */ fcmpo cr0, f2, f4
/* 8020F2B0 0020C1F0  40 80 00 10 */ bge lbl_8020F2C0
/* 8020F2B4 0020C1F4  EC 02 F0 2A */ fadds f0, f2, f30
/* 8020F2B8 0020C1F8  D0 1E 00 2C */ stfs f0, 0x2c(r30)
/* 8020F2BC 0020C1FC  48 00 00 88 */ b lbl_8020F344
lbl_8020F2C0:
/* 8020F2C0 0020C200  FC 02 F8 40 */ fcmpo cr0, f2, f31
/* 8020F2C4 0020C204  40 80 00 80 */ bge lbl_8020F344
/* 8020F2C8 0020C208  EC 02 F0 2A */ fadds f0, f2, f30
/* 8020F2CC 0020C20C  D0 1E 00 2C */ stfs f0, 0x2c(r30)
/* 8020F2D0 0020C210  C0 1E 00 2C */ lfs f0, 0x2c(r30)
/* 8020F2D4 0020C214  EC 1F 00 28 */ fsubs f0, f31, f0
/* 8020F2D8 0020C218  FC 00 00 1E */ fctiwz f0, f0
/* 8020F2DC 0020C21C  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 8020F2E0 0020C220  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8020F2E4 0020C224  A8 84 0C 02 */ lha r4, 0xc02(r4)
/* 8020F2E8 0020C228  7C 00 07 34 */ extsh r0, r0
/* 8020F2EC 0020C22C  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8020F2F0 0020C230  90 01 00 0C */ stw r0, 0xc(r1)
/* 8020F2F4 0020C234  90 61 00 08 */ stw r3, 8(r1)
/* 8020F2F8 0020C238  C8 01 00 08 */ lfd f0, 8(r1)
/* 8020F2FC 0020C23C  EC 20 18 28 */ fsubs f1, f0, f3
/* 8020F300 0020C240  90 01 00 1C */ stw r0, 0x1c(r1)
/* 8020F304 0020C244  90 61 00 18 */ stw r3, 0x18(r1)
/* 8020F308 0020C248  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 8020F30C 0020C24C  EC 00 18 28 */ fsubs f0, f0, f3
/* 8020F310 0020C250  EC 41 00 32 */ fmuls f2, f1, f0
/* 8020F314 0020C254  6C 80 80 00 */ xoris r0, r4, 0x8000
/* 8020F318 0020C258  90 01 00 24 */ stw r0, 0x24(r1)
/* 8020F31C 0020C25C  90 61 00 20 */ stw r3, 0x20(r1)
/* 8020F320 0020C260  C8 01 00 20 */ lfd f0, 0x20(r1)
/* 8020F324 0020C264  EC 20 18 28 */ fsubs f1, f0, f3
/* 8020F328 0020C268  90 01 00 2C */ stw r0, 0x2c(r1)
/* 8020F32C 0020C26C  90 61 00 28 */ stw r3, 0x28(r1)
/* 8020F330 0020C270  C8 01 00 28 */ lfd f0, 0x28(r1)
/* 8020F334 0020C274  EC 00 18 28 */ fsubs f0, f0, f3
/* 8020F338 0020C278  EC 01 00 32 */ fmuls f0, f1, f0
/* 8020F33C 0020C27C  EC 02 00 24 */ fdivs f0, f2, f0
/* 8020F340 0020C280  FF C0 00 90 */ fmr f30, f0
lbl_8020F344:
/* 8020F344 0020C284  80 7E 00 0C */ lwz r3, 0xc(r30)
/* 8020F348 0020C288  FC 20 F0 90 */ fmr f1, f30
/* 8020F34C 0020C28C  48 04 64 85 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020F350 0020C290  80 7E 00 10 */ lwz r3, 0x10(r30)
/* 8020F354 0020C294  A8 1E 00 38 */ lha r0, 0x38(r30)
/* 8020F358 0020C298  C8 42 AE 70 */ lfd f2, lbl_80454870-_SDA2_BASE_(r2)
/* 8020F35C 0020C29C  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8020F360 0020C2A0  90 01 00 2C */ stw r0, 0x2c(r1)
/* 8020F364 0020C2A4  3C A0 43 30 */ lis r5, 0x4330
/* 8020F368 0020C2A8  90 A1 00 28 */ stw r5, 0x28(r1)
/* 8020F36C 0020C2AC  C8 01 00 28 */ lfd f0, 0x28(r1)
/* 8020F370 0020C2B0  EC 20 10 28 */ fsubs f1, f0, f2
/* 8020F374 0020C2B4  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 8020F378 0020C2B8  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 8020F37C 0020C2BC  C0 04 0B F4 */ lfs f0, 0xbf4(r4)
/* 8020F380 0020C2C0  EC 21 00 2A */ fadds f1, f1, f0
/* 8020F384 0020C2C4  A8 1E 00 3A */ lha r0, 0x3a(r30)
/* 8020F388 0020C2C8  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8020F38C 0020C2CC  90 01 00 24 */ stw r0, 0x24(r1)
/* 8020F390 0020C2D0  90 A1 00 20 */ stw r5, 0x20(r1)
/* 8020F394 0020C2D4  C8 01 00 20 */ lfd f0, 0x20(r1)
/* 8020F398 0020C2D8  EC 40 10 28 */ fsubs f2, f0, f2
/* 8020F39C 0020C2DC  C0 04 0B F8 */ lfs f0, 0xbf8(r4)
/* 8020F3A0 0020C2E0  EC 42 00 2A */ fadds f2, f2, f0
/* 8020F3A4 0020C2E4  48 04 52 0D */ bl paneTrans__8CPaneMgrFff
/* 8020F3A8 0020C2E8  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020F3AC 0020C2EC  38 83 EB C8 */ addi r4, r3, lbl_8042EBC8@l
/* 8020F3B0 0020C2F0  C0 24 0B F0 */ lfs f1, 0xbf0(r4)
/* 8020F3B4 0020C2F4  80 7E 00 10 */ lwz r3, 0x10(r30)
/* 8020F3B8 0020C2F8  80 63 00 04 */ lwz r3, 4(r3)
/* 8020F3BC 0020C2FC  C0 04 0B EC */ lfs f0, 0xbec(r4)
/* 8020F3C0 0020C300  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 8020F3C4 0020C304  D0 23 00 D0 */ stfs f1, 0xd0(r3)
/* 8020F3C8 0020C308  81 83 00 00 */ lwz r12, 0(r3)
/* 8020F3CC 0020C30C  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 8020F3D0 0020C310  7D 89 03 A6 */ mtctr r12
/* 8020F3D4 0020C314  4E 80 04 21 */ bctrl
/* 8020F3D8 0020C318  80 7E 00 04 */ lwz r3, 4(r30)
/* 8020F3DC 0020C31C  C0 22 AE 58 */ lfs f1, lbl_80454858-_SDA2_BASE_(r2)
/* 8020F3E0 0020C320  FC 40 08 90 */ fmr f2, f1
/* 8020F3E4 0020C324  7F E4 FB 78 */ mr r4, r31
/* 8020F3E8 0020C328  48 0E 9A ED */ bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8020F3EC 0020C32C  C0 3E 00 30 */ lfs f1, 0x30(r30)
/* 8020F3F0 0020C330  C0 02 AE 58 */ lfs f0, lbl_80454858-_SDA2_BASE_(r2)
/* 8020F3F4 0020C334  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8020F3F8 0020C338  40 81 00 10 */ ble lbl_8020F408
/* 8020F3FC 0020C33C  7F C3 F3 78 */ mr r3, r30
/* 8020F400 0020C340  48 00 02 ED */ bl drawPikari__14dMeterString_cFv
/* 8020F404 0020C344  48 00 00 54 */ b lbl_8020F458
lbl_8020F408:
/* 8020F408 0020C348  C0 02 AE 64 */ lfs f0, lbl_80454864-_SDA2_BASE_(r2)
/* 8020F40C 0020C34C  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 8020F410 0020C350  40 82 00 48 */ bne lbl_8020F458
/* 8020F414 0020C354  C0 5E 00 2C */ lfs f2, 0x2c(r30)
/* 8020F418 0020C358  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020F41C 0020C35C  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 8020F420 0020C360  A8 03 0C 1C */ lha r0, 0xc1c(r3)
/* 8020F424 0020C364  C8 22 AE 70 */ lfd f1, lbl_80454870-_SDA2_BASE_(r2)
/* 8020F428 0020C368  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8020F42C 0020C36C  90 01 00 2C */ stw r0, 0x2c(r1)
/* 8020F430 0020C370  3C 00 43 30 */ lis r0, 0x4330
/* 8020F434 0020C374  90 01 00 28 */ stw r0, 0x28(r1)
/* 8020F438 0020C378  C8 01 00 28 */ lfd f0, 0x28(r1)
/* 8020F43C 0020C37C  EC 00 08 28 */ fsubs f0, f0, f1
/* 8020F440 0020C380  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 8020F444 0020C384  40 81 00 14 */ ble lbl_8020F458
/* 8020F448 0020C388  C0 22 AE 68 */ lfs f1, lbl_80454868-_SDA2_BASE_(r2)
/* 8020F44C 0020C38C  C0 03 0C 18 */ lfs f0, 0xc18(r3)
/* 8020F450 0020C390  EC 01 00 28 */ fsubs f0, f1, f0
/* 8020F454 0020C394  D0 1E 00 30 */ stfs f0, 0x30(r30)
lbl_8020F458:
/* 8020F458 0020C398  C0 1E 00 2C */ lfs f0, 0x2c(r30)
/* 8020F45C 0020C39C  FC 00 F8 40 */ fcmpo cr0, f0, f31
/* 8020F460 0020C3A0  4C 41 13 82 */ cror 2, 1, 2
/* 8020F464 0020C3A4  40 82 00 10 */ bne lbl_8020F474
/* 8020F468 0020C3A8  3C 60 80 43 */ lis r3, g_meter2_info@ha
/* 8020F46C 0020C3AC  38 63 01 88 */ addi r3, r3, g_meter2_info@l
/* 8020F470 0020C3B0  48 00 D7 91 */ bl resetMeterString__13dMeter2Info_cFv
lbl_8020F474:
/* 8020F474 0020C3B4  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 8020F478 0020C3B8  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 8020F47C 0020C3BC  E3 C1 00 48 */ psq_l f30, 72(r1), 0, 0
/* 8020F480 0020C3C0  CB C1 00 40 */ lfd f30, 0x40(r1)
/* 8020F484 0020C3C4  83 E1 00 3C */ lwz r31, 0x3c(r1)
/* 8020F488 0020C3C8  83 C1 00 38 */ lwz r30, 0x38(r1)
/* 8020F48C 0020C3CC  80 01 00 64 */ lwz r0, 0x64(r1)
/* 8020F490 0020C3D0  7C 08 03 A6 */ mtlr r0
/* 8020F494 0020C3D4  38 21 00 60 */ addi r1, r1, 0x60
/* 8020F498 0020C3D8  4E 80 00 20 */ blr
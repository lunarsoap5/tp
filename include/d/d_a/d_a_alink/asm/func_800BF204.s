/* 800BF204 000BC144  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800BF208 000BC148  7C 08 02 A6 */ mflr r0
/* 800BF20C 000BC14C  90 01 00 24 */ stw r0, 0x24(r1)
/* 800BF210 000BC150  39 61 00 20 */ addi r11, r1, 0x20
/* 800BF214 000BC154  48 2A 2F C9 */ bl _savegpr_29
/* 800BF218 000BC158  7C 7D 1B 78 */ mr r29, r3
/* 800BF21C 000BC15C  1C A4 00 14 */ mulli r5, r4, 0x14
/* 800BF220 000BC160  3B E5 1F 58 */ addi r31, r5, 0x1f58
/* 800BF224 000BC164  7F FD FA 14 */ add r31, r29, r31
/* 800BF228 000BC168  1C 84 00 18 */ mulli r4, r4, 0x18
/* 800BF22C 000BC16C  3B C4 1F D0 */ addi r30, r4, 0x1fd0
/* 800BF230 000BC170  7F DD F2 14 */ add r30, r29, r30
/* 800BF234 000BC174  A0 BF 00 04 */ lhz r5, 4(r31)
/* 800BF238 000BC178  28 05 FF FF */ cmplwi r5, 0xffff
/* 800BF23C 000BC17C  41 82 00 88 */ beq lbl_800BF2C4
/* 800BF240 000BC180  80 9D 1F 2C */ lwz r4, 0x1f2c(r29)
/* 800BF244 000BC184  80 84 00 28 */ lwz r4, 0x28(r4)
/* 800BF248 000BC188  28 04 00 00 */ cmplwi r4, 0
/* 800BF24C 000BC18C  40 82 00 0C */ bne lbl_800BF258
/* 800BF250 000BC190  48 00 02 91 */ bl resetBasAnime__9daAlink_cFv
/* 800BF254 000BC194  48 00 01 10 */ b lbl_800BF364
lbl_800BF258:
/* 800BF258 000BC198  A0 7D 30 84 */ lhz r3, 0x3084(r29)
/* 800BF25C 000BC19C  A0 1F 00 00 */ lhz r0, 0(r31)
/* 800BF260 000BC1A0  7C 03 00 40 */ cmplw r3, r0
/* 800BF264 000BC1A4  40 82 00 34 */ bne lbl_800BF298
/* 800BF268 000BC1A8  A0 1D 30 86 */ lhz r0, 0x3086(r29)
/* 800BF26C 000BC1AC  7C 00 28 40 */ cmplw r0, r5
/* 800BF270 000BC1B0  40 82 00 28 */ bne lbl_800BF298
/* 800BF274 000BC1B4  C0 3D 33 D4 */ lfs f1, 0x33d4(r29)
/* 800BF278 000BC1B8  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 800BF27C 000BC1BC  EC 21 00 32 */ fmuls f1, f1, f0
/* 800BF280 000BC1C0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800BF284 000BC1C4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800BF288 000BC1C8  4C 41 13 82 */ cror 2, 1, 2
/* 800BF28C 000BC1CC  40 82 00 0C */ bne lbl_800BF298
/* 800BF290 000BC1D0  93 DD 2D 7C */ stw r30, 0x2d7c(r29)
/* 800BF294 000BC1D4  48 00 00 D0 */ b lbl_800BF364
lbl_800BF298:
/* 800BF298 000BC1D8  90 9D 2D 80 */ stw r4, 0x2d80(r29)
/* 800BF29C 000BC1DC  93 DD 2D 7C */ stw r30, 0x2d7c(r29)
/* 800BF2A0 000BC1E0  A0 1F 00 00 */ lhz r0, 0(r31)
/* 800BF2A4 000BC1E4  B0 1D 30 84 */ sth r0, 0x3084(r29)
/* 800BF2A8 000BC1E8  A0 1F 00 04 */ lhz r0, 4(r31)
/* 800BF2AC 000BC1EC  B0 1D 30 86 */ sth r0, 0x3086(r29)
/* 800BF2B0 000BC1F0  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 800BF2B4 000BC1F4  D0 1D 33 D4 */ stfs f0, 0x33d4(r29)
/* 800BF2B8 000BC1F8  7F A3 EB 78 */ mr r3, r29
/* 800BF2BC 000BC1FC  48 00 00 C1 */ bl initBasAnime__9daAlink_cFv
/* 800BF2C0 000BC200  48 00 00 A4 */ b lbl_800BF364
lbl_800BF2C4:
/* 800BF2C4 000BC204  80 DF 00 0C */ lwz r6, 0xc(r31)
/* 800BF2C8 000BC208  80 86 00 1C */ lwz r4, 0x1c(r6)
/* 800BF2CC 000BC20C  3C 04 00 01 */ addis r0, r4, 1
/* 800BF2D0 000BC210  28 00 FF FF */ cmplwi r0, 0xffff
/* 800BF2D4 000BC214  40 82 00 0C */ bne lbl_800BF2E0
/* 800BF2D8 000BC218  48 00 02 09 */ bl resetBasAnime__9daAlink_cFv
/* 800BF2DC 000BC21C  48 00 00 88 */ b lbl_800BF364
lbl_800BF2E0:
/* 800BF2E0 000BC220  A0 7D 30 84 */ lhz r3, 0x3084(r29)
/* 800BF2E4 000BC224  A0 1F 00 00 */ lhz r0, 0(r31)
/* 800BF2E8 000BC228  7C 03 00 40 */ cmplw r3, r0
/* 800BF2EC 000BC22C  40 82 00 34 */ bne lbl_800BF320
/* 800BF2F0 000BC230  A0 1D 30 86 */ lhz r0, 0x3086(r29)
/* 800BF2F4 000BC234  7C 00 28 40 */ cmplw r0, r5
/* 800BF2F8 000BC238  40 82 00 28 */ bne lbl_800BF320
/* 800BF2FC 000BC23C  C0 3D 33 D4 */ lfs f1, 0x33d4(r29)
/* 800BF300 000BC240  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 800BF304 000BC244  EC 21 00 32 */ fmuls f1, f1, f0
/* 800BF308 000BC248  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800BF30C 000BC24C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800BF310 000BC250  4C 41 13 82 */ cror 2, 1, 2
/* 800BF314 000BC254  40 82 00 0C */ bne lbl_800BF320
/* 800BF318 000BC258  93 DD 2D 7C */ stw r30, 0x2d7c(r29)
/* 800BF31C 000BC25C  48 00 00 48 */ b lbl_800BF364
lbl_800BF320:
/* 800BF320 000BC260  80 A6 00 1C */ lwz r5, 0x1c(r6)
/* 800BF324 000BC264  80 7D 2D 78 */ lwz r3, 0x2d78(r29)
/* 800BF328 000BC268  7C 86 2A 14 */ add r4, r6, r5
/* 800BF32C 000BC26C  80 06 00 08 */ lwz r0, 8(r6)
/* 800BF330 000BC270  7C A5 00 50 */ subf r5, r5, r0
/* 800BF334 000BC274  48 1B 06 09 */ bl cLib_memCpy__FPvPCvUl
/* 800BF338 000BC278  93 DD 2D 7C */ stw r30, 0x2d7c(r29)
/* 800BF33C 000BC27C  A0 1F 00 00 */ lhz r0, 0(r31)
/* 800BF340 000BC280  B0 1D 30 84 */ sth r0, 0x3084(r29)
/* 800BF344 000BC284  A0 1F 00 04 */ lhz r0, 4(r31)
/* 800BF348 000BC288  B0 1D 30 86 */ sth r0, 0x3086(r29)
/* 800BF34C 000BC28C  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 800BF350 000BC290  D0 1D 33 D4 */ stfs f0, 0x33d4(r29)
/* 800BF354 000BC294  38 00 00 00 */ li r0, 0
/* 800BF358 000BC298  90 1D 2D 80 */ stw r0, 0x2d80(r29)
/* 800BF35C 000BC29C  7F A3 EB 78 */ mr r3, r29
/* 800BF360 000BC2A0  48 00 00 1D */ bl initBasAnime__9daAlink_cFv
lbl_800BF364:
/* 800BF364 000BC2A4  39 61 00 20 */ addi r11, r1, 0x20
/* 800BF368 000BC2A8  48 2A 2E C1 */ bl _restgpr_29
/* 800BF36C 000BC2AC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800BF370 000BC2B0  7C 08 03 A6 */ mtlr r0
/* 800BF374 000BC2B4  38 21 00 20 */ addi r1, r1, 0x20
/* 800BF378 000BC2B8  4E 80 00 20 */ blr

/* 80209368 002062A8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8020936C 002062AC  7C 08 02 A6 */ mflr r0
/* 80209370 002062B0  90 01 00 14 */ stw r0, 0x14(r1)
/* 80209374 002062B4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80209378 002062B8  7C 7F 1B 78 */ mr r31, r3
/* 8020937C 002062BC  80 63 00 F4 */ lwz r3, 0xf4(r3)
/* 80209380 002062C0  48 04 C4 A9 */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209384 002062C4  C0 02 AD 48 */ lfs f0, lbl_80454748-_SDA2_BASE_(r2)
/* 80209388 002062C8  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 8020938C 002062CC  41 82 00 38 */ beq lbl_802093C4
/* 80209390 002062D0  88 9F 04 D9 */ lbz r4, 0x4d9(r31)
/* 80209394 002062D4  28 04 00 FF */ cmplwi r4, 0xff
/* 80209398 002062D8  41 82 00 0C */ beq lbl_802093A4
/* 8020939C 002062DC  7F E3 FB 78 */ mr r3, r31
/* 802093A0 002062E0  4B FF D9 D1 */ bl isFastSet__14dMeterButton_cFi
lbl_802093A4:
/* 802093A4 002062E4  80 7F 00 F4 */ lwz r3, 0xf4(r31)
/* 802093A8 002062E8  C0 22 AD 48 */ lfs f1, lbl_80454748-_SDA2_BASE_(r2)
/* 802093AC 002062EC  48 04 C4 25 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 802093B0 002062F0  38 00 00 00 */ li r0, 0
/* 802093B4 002062F4  80 7F 00 F4 */ lwz r3, 0xf4(r31)
/* 802093B8 002062F8  B0 03 00 16 */ sth r0, 0x16(r3)
/* 802093BC 002062FC  38 00 00 FF */ li r0, 0xff
/* 802093C0 00206300  98 1F 04 D9 */ stb r0, 0x4d9(r31)
lbl_802093C4:
/* 802093C4 00206304  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802093C8 00206308  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802093CC 0020630C  7C 08 03 A6 */ mtlr r0
/* 802093D0 00206310  38 21 00 10 */ addi r1, r1, 0x10
/* 802093D4 00206314  4E 80 00 20 */ blr

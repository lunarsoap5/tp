/* 802B545C 002B239C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 802B5460 002B23A0  7C 08 02 A6 */ mflr r0
/* 802B5464 002B23A4  90 01 00 24 */ stw r0, 0x24(r1)
/* 802B5468 002B23A8  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 802B546C 002B23AC  7C 7F 1B 78 */ mr r31, r3
/* 802B5470 002B23B0  80 6D 86 00 */ lwz r3, lbl_80450B80-_SDA_BASE_(r13)
/* 802B5474 002B23B4  88 03 00 1D */ lbz r0, 0x1d(r3)
/* 802B5478 002B23B8  28 00 00 00 */ cmplwi r0, 0
/* 802B547C 002B23BC  41 82 00 DC */ beq lbl_802B5558
/* 802B5480 002B23C0  88 1F 00 D0 */ lbz r0, 0xd0(r31)
/* 802B5484 002B23C4  54 00 F7 FF */ rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 802B5488 002B23C8  41 82 00 D0 */ beq lbl_802B5558
/* 802B548C 002B23CC  80 6D 85 FC */ lwz r3, lbl_80450B7C-_SDA_BASE_(r13)
/* 802B5490 002B23D0  48 00 12 A5 */ bl checkDayTime__11Z2StatusMgrFv
/* 802B5494 002B23D4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 802B5498 002B23D8  41 82 00 8C */ beq lbl_802B5524
/* 802B549C 002B23DC  3C 00 01 00 */ lis r0, 0x100
/* 802B54A0 002B23E0  90 01 00 0C */ stw r0, 0xc(r1)
/* 802B54A4 002B23E4  80 6D 85 E0 */ lwz r3, lbl_80450B60-_SDA_BASE_(r13)
/* 802B54A8 002B23E8  38 81 00 0C */ addi r4, r1, 0xc
/* 802B54AC 002B23EC  7F E5 FB 78 */ mr r5, r31
/* 802B54B0 002B23F0  38 C0 00 00 */ li r6, 0
/* 802B54B4 002B23F4  81 83 00 00 */ lwz r12, 0(r3)
/* 802B54B8 002B23F8  81 8C 00 08 */ lwz r12, 8(r12)
/* 802B54BC 002B23FC  7D 89 03 A6 */ mtctr r12
/* 802B54C0 002B2400  4E 80 04 21 */ bctrl
/* 802B54C4 002B2404  7F E3 FB 78 */ mr r3, r31
/* 802B54C8 002B2408  38 80 00 00 */ li r4, 0
/* 802B54CC 002B240C  4B FF AA C1 */ bl changeBgmStatus__8Z2SeqMgrFl
/* 802B54D0 002B2410  38 80 00 00 */ li r4, 0
/* 802B54D4 002B2414  98 9F 00 C4 */ stb r4, 0xc4(r31)
/* 802B54D8 002B2418  80 6D 8D E0 */ lwz r3, lbl_80451360-_SDA_BASE_(r13)
/* 802B54DC 002B241C  88 03 00 CB */ lbz r0, 0xcb(r3)
/* 802B54E0 002B2420  54 00 FF FF */ rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 802B54E4 002B2424  41 82 00 24 */ beq lbl_802B5508
/* 802B54E8 002B2428  38 60 00 01 */ li r3, 1
/* 802B54EC 002B242C  88 1F 00 D0 */ lbz r0, 0xd0(r31)
/* 802B54F0 002B2430  50 60 1F 38 */ rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802B54F4 002B2434  98 1F 00 D0 */ stb r0, 0xd0(r31)
/* 802B54F8 002B2438  98 9F 00 C3 */ stb r4, 0xc3(r31)
/* 802B54FC 002B243C  7F E3 FB 78 */ mr r3, r31
/* 802B5500 002B2440  48 00 00 6D */ bl fieldRidingMute__8Z2SeqMgrFv
/* 802B5504 002B2444  48 00 00 54 */ b lbl_802B5558
lbl_802B5508:
/* 802B5508 002B2448  88 1F 00 D0 */ lbz r0, 0xd0(r31)
/* 802B550C 002B244C  50 80 1F 38 */ rlwimi r0, r4, 3, 0x1c, 0x1c
/* 802B5510 002B2450  98 1F 00 D0 */ stb r0, 0xd0(r31)
/* 802B5514 002B2454  98 9F 00 C3 */ stb r4, 0xc3(r31)
/* 802B5518 002B2458  7F E3 FB 78 */ mr r3, r31
/* 802B551C 002B245C  48 00 00 51 */ bl fieldRidingMute__8Z2SeqMgrFv
/* 802B5520 002B2460  48 00 00 38 */ b lbl_802B5558
lbl_802B5524:
/* 802B5524 002B2464  3C 60 01 00 */ lis r3, 0x01000001@ha
/* 802B5528 002B2468  38 03 00 01 */ addi r0, r3, 0x01000001@l
/* 802B552C 002B246C  90 01 00 08 */ stw r0, 8(r1)
/* 802B5530 002B2470  80 6D 85 E0 */ lwz r3, lbl_80450B60-_SDA_BASE_(r13)
/* 802B5534 002B2474  38 81 00 08 */ addi r4, r1, 8
/* 802B5538 002B2478  7F E5 FB 78 */ mr r5, r31
/* 802B553C 002B247C  38 C0 00 00 */ li r6, 0
/* 802B5540 002B2480  81 83 00 00 */ lwz r12, 0(r3)
/* 802B5544 002B2484  81 8C 00 08 */ lwz r12, 8(r12)
/* 802B5548 002B2488  7D 89 03 A6 */ mtctr r12
/* 802B554C 002B248C  4E 80 04 21 */ bctrl
/* 802B5550 002B2490  38 00 00 00 */ li r0, 0
/* 802B5554 002B2494  98 1F 00 BC */ stb r0, 0xbc(r31)
lbl_802B5558:
/* 802B5558 002B2498  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 802B555C 002B249C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802B5560 002B24A0  7C 08 03 A6 */ mtlr r0
/* 802B5564 002B24A4  38 21 00 20 */ addi r1, r1, 0x20
/* 802B5568 002B24A8  4E 80 00 20 */ blr

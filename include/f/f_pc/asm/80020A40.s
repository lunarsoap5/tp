/* 80020A40 0001D980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020A44 0001D984  7C 08 02 A6 */	mflr r0
/* 80020A48 0001D988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020A4C 0001D98C  7C 85 23 78 */	mr r5, r4
/* 80020A50 0001D990  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80020A54 0001D994  80 64 00 44 */	lwz r3, 0x44(r4)
/* 80020A58 0001D998  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80020A5C 0001D99C  80 05 00 00 */	lwz r0, 0(r5)
/* 80020A60 0001D9A0  7C 03 00 40 */	cmplw r3, r0
/* 80020A64 0001D9A4  40 82 00 1C */	bne lbl_80020A80
/* 80020A68 0001D9A8  80 64 00 40 */	lwz r3, 0x40(r4)
/* 80020A6C 0001D9AC  80 85 00 08 */	lwz r4, 8(r5)
/* 80020A70 0001D9B0  81 85 00 04 */	lwz r12, 4(r5)
/* 80020A74 0001D9B4  7D 89 03 A6 */	mtctr r12
/* 80020A78 0001D9B8  4E 80 04 21 */	bctrl 
/* 80020A7C 0001D9BC  48 00 00 08 */	b lbl_80020A84
lbl_80020A80:
/* 80020A80 0001D9C0  38 60 00 00 */	li r3, 0
lbl_80020A84:
/* 80020A84 0001D9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020A88 0001D9C8  7C 08 03 A6 */	mtlr r0
/* 80020A8C 0001D9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80020A90 0001D9D0  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax" # 8007e5a8


.global __ct__9dBgW_BaseFv
__ct__9dBgW_BaseFv:
/* 8007E5A8 0007B4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007E5AC 0007B4EC  7C 08 02 A6 */	mflr r0
/* 8007E5B0 0007B4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007E5B4 0007B4F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007E5B8 0007B4F8  7C 7F 1B 78 */	mr r31, r3
/* 8007E5BC 0007B4FC  3C 80 80 3B */	lis r4, lbl_803ABDB8@ha
/* 8007E5C0 0007B500  38 04 BD B8 */	addi r0, r4, lbl_803ABDB8@l
/* 8007E5C4 0007B504  90 03 00 04 */	stw r0, 4(r3)
/* 8007E5C8 0007B508  38 00 01 00 */	li r0, 0x100
/* 8007E5CC 0007B50C  B0 03 00 00 */	sth r0, 0(r3)
/* 8007E5D0 0007B510  3C 80 80 3B */	lis r4, lbl_803ABCC8@ha
/* 8007E5D4 0007B514  38 04 BC C8 */	addi r0, r4, lbl_803ABCC8@l
/* 8007E5D8 0007B518  90 03 00 04 */	stw r0, 4(r3)
/* 8007E5DC 0007B51C  48 00 00 C1 */	bl ClrDBgWBase__9dBgW_BaseFv
/* 8007E5E0 0007B520  7F E3 FB 78 */	mr r3, r31
/* 8007E5E4 0007B524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007E5E8 0007B528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007E5EC 0007B52C  7C 08 03 A6 */	mtlr r0
/* 8007E5F0 0007B530  38 21 00 10 */	addi r1, r1, 0x10
/* 8007E5F4 0007B534  4E 80 00 20 */	blr 
/* 8007E5F8 0007B538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007E5FC 0007B53C  7C 08 02 A6 */	mflr r0
/* 8007E600 0007B540  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007E604 0007B544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007E608 0007B548  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007E60C 0007B54C  41 82 00 1C */	beq lbl_8007E628
/* 8007E610 0007B550  3C A0 80 3B */	lis r5, lbl_803ABDB8@ha
/* 8007E614 0007B554  38 05 BD B8 */	addi r0, r5, lbl_803ABDB8@l
/* 8007E618 0007B558  90 1F 00 04 */	stw r0, 4(r31)
/* 8007E61C 0007B55C  7C 80 07 35 */	extsh. r0, r4
/* 8007E620 0007B560  40 81 00 08 */	ble lbl_8007E628
/* 8007E624 0007B564  48 25 07 19 */	bl __dl__FPv
lbl_8007E628:
/* 8007E628 0007B568  7F E3 FB 78 */	mr r3, r31
/* 8007E62C 0007B56C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007E630 0007B570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007E634 0007B574  7C 08 03 A6 */	mtlr r0
/* 8007E638 0007B578  38 21 00 10 */	addi r1, r1, 0x10
/* 8007E63C 0007B57C  4E 80 00 20 */	blr 

.global __dt__9dBgW_BaseFv
__dt__9dBgW_BaseFv:
/* 8007E640 0007B580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007E644 0007B584  7C 08 02 A6 */	mflr r0
/* 8007E648 0007B588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007E64C 0007B58C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007E650 0007B590  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007E654 0007B594  41 82 00 30 */	beq lbl_8007E684
/* 8007E658 0007B598  3C 60 80 3B */	lis r3, lbl_803ABCC8@ha
/* 8007E65C 0007B59C  38 03 BC C8 */	addi r0, r3, lbl_803ABCC8@l
/* 8007E660 0007B5A0  90 1F 00 04 */	stw r0, 4(r31)
/* 8007E664 0007B5A4  41 82 00 10 */	beq lbl_8007E674
/* 8007E668 0007B5A8  3C 60 80 3B */	lis r3, lbl_803ABDB8@ha
/* 8007E66C 0007B5AC  38 03 BD B8 */	addi r0, r3, lbl_803ABDB8@l
/* 8007E670 0007B5B0  90 1F 00 04 */	stw r0, 4(r31)
lbl_8007E674:
/* 8007E674 0007B5B4  7C 80 07 35 */	extsh. r0, r4
/* 8007E678 0007B5B8  40 81 00 0C */	ble lbl_8007E684
/* 8007E67C 0007B5BC  7F E3 FB 78 */	mr r3, r31
/* 8007E680 0007B5C0  48 25 06 BD */	bl __dl__FPv
lbl_8007E684:
/* 8007E684 0007B5C4  7F E3 FB 78 */	mr r3, r31
/* 8007E688 0007B5C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007E68C 0007B5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007E690 0007B5D0  7C 08 03 A6 */	mtlr r0
/* 8007E694 0007B5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8007E698 0007B5D8  4E 80 00 20 */	blr 

.global ClrDBgWBase__9dBgW_BaseFv
ClrDBgWBase__9dBgW_BaseFv:
/* 8007E69C 0007B5DC  38 80 00 FF */	li r4, 0xff
/* 8007E6A0 0007B5E0  98 83 00 09 */	stb r4, 9(r3)
/* 8007E6A4 0007B5E4  38 00 00 02 */	li r0, 2
/* 8007E6A8 0007B5E8  98 03 00 08 */	stb r0, 8(r3)
/* 8007E6AC 0007B5EC  98 83 00 0A */	stb r4, 0xa(r3)
/* 8007E6B0 0007B5F0  38 80 00 00 */	li r4, 0
/* 8007E6B4 0007B5F4  B0 83 00 0E */	sth r4, 0xe(r3)
/* 8007E6B8 0007B5F8  B0 83 00 0C */	sth r4, 0xc(r3)
/* 8007E6BC 0007B5FC  90 83 00 10 */	stw r4, 0x10(r3)
/* 8007E6C0 0007B600  38 00 00 01 */	li r0, 1
/* 8007E6C4 0007B604  98 03 00 14 */	stb r0, 0x14(r3)
/* 8007E6C8 0007B608  98 83 00 0B */	stb r4, 0xb(r3)
/* 8007E6CC 0007B60C  4E 80 00 20 */	blr 
/* 8007E6D0 0007B610  38 60 00 00 */	li r3, 0
/* 8007E6D4 0007B614  4E 80 00 20 */	blr 
/* 8007E6D8 0007B618  4E 80 00 20 */	blr 
/* 8007E6DC 0007B61C  4E 80 00 20 */	blr 

.global CalcDiffShapeAngleY__9dBgW_BaseFs
CalcDiffShapeAngleY__9dBgW_BaseFs:
/* 8007E6E0 0007B620  A8 03 00 0C */	lha r0, 0xc(r3)
/* 8007E6E4 0007B624  7C 00 20 50 */	subf r0, r0, r4
/* 8007E6E8 0007B628  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8007E6EC 0007B62C  B0 83 00 0C */	sth r4, 0xc(r3)
/* 8007E6F0 0007B630  4E 80 00 20 */	blr 

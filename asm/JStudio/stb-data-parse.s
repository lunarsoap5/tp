.include "macros.inc"

.section .text, "ax" # 802899bc


.global getData__Q47JStudio3stb4data16TParse_TSequenceCFPQ57JStudio3stb4data16TParse_TSequence5TData
getData__Q47JStudio3stb4data16TParse_TSequenceCFPQ57JStudio3stb4data16TParse_TSequence5TData:
/* 802899BC 002868FC  38 00 00 00 */	li r0, 0
/* 802899C0 00286900  90 04 00 08 */	stw r0, 8(r4)
/* 802899C4 00286904  90 04 00 0C */	stw r0, 0xc(r4)
/* 802899C8 00286908  80 63 00 00 */	lwz r3, 0(r3)
/* 802899CC 0028690C  80 A3 00 00 */	lwz r5, 0(r3)
/* 802899D0 00286910  54 A0 46 3F */	rlwinm. r0, r5, 8, 0x18, 0x1f
/* 802899D4 00286914  54 A5 02 3E */	clrlwi r5, r5, 8
/* 802899D8 00286918  98 04 00 00 */	stb r0, 0(r4)
/* 802899DC 0028691C  90 A4 00 04 */	stw r5, 4(r4)
/* 802899E0 00286920  4D 82 00 20 */	beqlr 
/* 802899E4 00286924  38 63 00 04 */	addi r3, r3, 4
/* 802899E8 00286928  28 00 00 7F */	cmplwi r0, 0x7f
/* 802899EC 0028692C  41 81 00 0C */	bgt lbl_802899F8
/* 802899F0 00286930  90 64 00 0C */	stw r3, 0xc(r4)
/* 802899F4 00286934  4E 80 00 20 */	blr 
lbl_802899F8:
/* 802899F8 00286938  90 64 00 08 */	stw r3, 8(r4)
/* 802899FC 0028693C  7C 03 2A 14 */	add r0, r3, r5
/* 80289A00 00286940  90 04 00 0C */	stw r0, 0xc(r4)
/* 80289A04 00286944  4E 80 00 20 */	blr 

.global getData__Q47JStudio3stb4data17TParse_TParagraphCFPQ57JStudio3stb4data17TParse_TParagraph5TData
getData__Q47JStudio3stb4data17TParse_TParagraphCFPQ57JStudio3stb4data17TParse_TParagraph5TData:
/* 80289A08 00286948  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80289A0C 0028694C  7C 08 02 A6 */	mflr r0
/* 80289A10 00286950  90 01 00 24 */	stw r0, 0x24(r1)
/* 80289A14 00286954  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80289A18 00286958  7C 9F 23 78 */	mr r31, r4
/* 80289A1C 0028695C  80 63 00 00 */	lwz r3, 0(r3)
/* 80289A20 00286960  38 81 00 08 */	addi r4, r1, 8
/* 80289A24 00286964  7F E5 FB 78 */	mr r5, r31
/* 80289A28 00286968  38 C0 00 00 */	li r6, 0
/* 80289A2C 0028696C  48 05 2E 39 */	bl parseVariableUInt_16_32_following__Q27JGadget6binaryFPCvPUlPUlPQ37JGadget6binary5TEBit
/* 80289A30 00286970  80 01 00 08 */	lwz r0, 8(r1)
/* 80289A34 00286974  90 1F 00 04 */	stw r0, 4(r31)
/* 80289A38 00286978  80 01 00 08 */	lwz r0, 8(r1)
/* 80289A3C 0028697C  28 00 00 00 */	cmplwi r0, 0
/* 80289A40 00286980  40 82 00 14 */	bne lbl_80289A54
/* 80289A44 00286984  38 00 00 00 */	li r0, 0
/* 80289A48 00286988  90 1F 00 08 */	stw r0, 8(r31)
/* 80289A4C 0028698C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 80289A50 00286990  48 00 00 1C */	b lbl_80289A6C
lbl_80289A54:
/* 80289A54 00286994  90 7F 00 08 */	stw r3, 8(r31)
/* 80289A58 00286998  80 81 00 08 */	lwz r4, 8(r1)
/* 80289A5C 0028699C  38 04 00 03 */	addi r0, r4, 3
/* 80289A60 002869A0  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80289A64 002869A4  7C 03 02 14 */	add r0, r3, r0
/* 80289A68 002869A8  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80289A6C:
/* 80289A6C 002869AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80289A70 002869B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80289A74 002869B4  7C 08 03 A6 */	mtlr r0
/* 80289A78 002869B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80289A7C 002869BC  4E 80 00 20 */	blr 

.global getData__Q47JStudio3stb4data22TParse_TParagraph_dataCFPQ57JStudio3stb4data22TParse_TParagraph_data5TData
getData__Q47JStudio3stb4data22TParse_TParagraph_dataCFPQ57JStudio3stb4data22TParse_TParagraph_data5TData:
/* 80289A80 002869C0  38 00 00 00 */	li r0, 0
/* 80289A84 002869C4  90 04 00 04 */	stw r0, 4(r4)
/* 80289A88 002869C8  90 04 00 08 */	stw r0, 8(r4)
/* 80289A8C 002869CC  90 04 00 0C */	stw r0, 0xc(r4)
/* 80289A90 002869D0  90 04 00 10 */	stw r0, 0x10(r4)
/* 80289A94 002869D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80289A98 002869D8  28 03 00 00 */	cmplwi r3, 0
/* 80289A9C 002869DC  4D 82 00 20 */	beqlr 
/* 80289AA0 002869E0  88 C3 00 00 */	lbz r6, 0(r3)
/* 80289AA4 002869E4  54 C0 07 76 */	rlwinm r0, r6, 0, 0x1d, 0x1b
/* 80289AA8 002869E8  98 04 00 00 */	stb r0, 0(r4)
/* 80289AAC 002869EC  28 06 00 00 */	cmplwi r6, 0
/* 80289AB0 002869F0  4D 82 00 20 */	beqlr 
/* 80289AB4 002869F4  38 E0 00 01 */	li r7, 1
/* 80289AB8 002869F8  54 C0 07 39 */	rlwinm. r0, r6, 0, 0x1c, 0x1c
/* 80289ABC 002869FC  38 A3 00 01 */	addi r5, r3, 1
/* 80289AC0 00286A00  41 82 00 0C */	beq lbl_80289ACC
/* 80289AC4 00286A04  88 E5 00 00 */	lbz r7, 0(r5)
/* 80289AC8 00286A08  38 A5 00 01 */	addi r5, r5, 1
lbl_80289ACC:
/* 80289ACC 00286A0C  90 E4 00 08 */	stw r7, 8(r4)
/* 80289AD0 00286A10  90 A4 00 0C */	stw r5, 0xc(r4)
/* 80289AD4 00286A14  54 C0 07 7F */	clrlwi. r0, r6, 0x1d
/* 80289AD8 00286A18  4D 82 00 20 */	beqlr 
/* 80289ADC 00286A1C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80289AE0 00286A20  3C 60 80 3A */	lis r3, lbl_8039AB88@ha
/* 80289AE4 00286A24  38 63 AB 88 */	addi r3, r3, lbl_8039AB88@l
/* 80289AE8 00286A28  7C 03 00 2E */	lwzx r0, r3, r0
/* 80289AEC 00286A2C  90 04 00 04 */	stw r0, 4(r4)
/* 80289AF0 00286A30  7C 00 39 D6 */	mullw r0, r0, r7
/* 80289AF4 00286A34  7C 05 02 14 */	add r0, r5, r0
/* 80289AF8 00286A38  90 04 00 10 */	stw r0, 0x10(r4)
/* 80289AFC 00286A3C  4E 80 00 20 */	blr 

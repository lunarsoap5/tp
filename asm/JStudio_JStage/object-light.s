.include "macros.inc"

.section .text, "ax" # 8028cb50


.global __ct__Q214JStudio_JStage14TAdaptor_lightFPCQ26JStage7TSystemPQ26JStage6TLight
__ct__Q214JStudio_JStage14TAdaptor_lightFPCQ26JStage7TSystemPQ26JStage6TLight:
/* 8028CB50 00289A90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028CB54 00289A94  7C 08 02 A6 */	mflr r0
/* 8028CB58 00289A98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028CB5C 00289A9C  39 61 00 20 */	addi r11, r1, 0x20
/* 8028CB60 00289AA0  48 0D 56 7D */	bl _savegpr_29
/* 8028CB64 00289AA4  7C 7D 1B 78 */	mr r29, r3
/* 8028CB68 00289AA8  7C 9E 23 78 */	mr r30, r4
/* 8028CB6C 00289AAC  7C BF 2B 78 */	mr r31, r5
/* 8028CB70 00289AB0  7F A5 EB 78 */	mr r5, r29
/* 8028CB74 00289AB4  3C 60 80 3C */	lis r3, lbl_803C5610@ha
/* 8028CB78 00289AB8  38 03 56 10 */	addi r0, r3, lbl_803C5610@l
/* 8028CB7C 00289ABC  90 1D 00 00 */	stw r0, 0(r29)
/* 8028CB80 00289AC0  38 00 00 00 */	li r0, 0
/* 8028CB84 00289AC4  90 1D 00 04 */	stw r0, 4(r29)
/* 8028CB88 00289AC8  38 65 00 10 */	addi r3, r5, 0x10
/* 8028CB8C 00289ACC  90 7D 00 08 */	stw r3, 8(r29)
/* 8028CB90 00289AD0  38 00 00 0D */	li r0, 0xd
/* 8028CB94 00289AD4  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8028CB98 00289AD8  3C 80 80 3C */	lis r4, lbl_803C547C@ha
/* 8028CB9C 00289ADC  38 04 54 7C */	addi r0, r4, lbl_803C547C@l
/* 8028CBA0 00289AE0  90 1D 00 00 */	stw r0, 0(r29)
.global __ct__Q27JStudio14TVariableValueFv
/* 8028CBA4 00289AE4  3C 80 80 29 */	lis r4, __ct__Q27JStudio14TVariableValueFv@ha
.global __ct__Q27JStudio14TVariableValueFv
/* 8028CBA8 00289AE8  38 84 B5 68 */	addi r4, r4, __ct__Q27JStudio14TVariableValueFv@l
/* 8028CBAC 00289AEC  38 A0 00 00 */	li r5, 0
/* 8028CBB0 00289AF0  38 C0 00 14 */	li r6, 0x14
/* 8028CBB4 00289AF4  38 E0 00 0D */	li r7, 0xd
/* 8028CBB8 00289AF8  48 0D 51 A9 */	bl __construct_array
/* 8028CBBC 00289AFC  93 DD 01 14 */	stw r30, 0x114(r29)
/* 8028CBC0 00289B00  93 FD 01 18 */	stw r31, 0x118(r29)
/* 8028CBC4 00289B04  3C 60 80 3C */	lis r3, lbl_803C5A40@ha
/* 8028CBC8 00289B08  38 03 5A 40 */	addi r0, r3, lbl_803C5A40@l
/* 8028CBCC 00289B0C  90 1D 00 00 */	stw r0, 0(r29)
/* 8028CBD0 00289B10  38 00 00 00 */	li r0, 0
/* 8028CBD4 00289B14  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 8028CBD8 00289B18  7F A3 EB 78 */	mr r3, r29
/* 8028CBDC 00289B1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8028CBE0 00289B20  48 0D 56 49 */	bl _restgpr_29
/* 8028CBE4 00289B24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028CBE8 00289B28  7C 08 03 A6 */	mtlr r0
/* 8028CBEC 00289B2C  38 21 00 20 */	addi r1, r1, 0x20
/* 8028CBF0 00289B30  4E 80 00 20 */	blr 
/* 8028CBF4 00289B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028CBF8 00289B38  7C 08 02 A6 */	mflr r0
/* 8028CBFC 00289B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028CC00 00289B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028CC04 00289B44  93 C1 00 08 */	stw r30, 8(r1)
/* 8028CC08 00289B48  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028CC0C 00289B4C  7C 9F 23 78 */	mr r31, r4
/* 8028CC10 00289B50  41 82 00 3C */	beq lbl_8028CC4C
/* 8028CC14 00289B54  3C 80 80 3C */	lis r4, lbl_803C5A40@ha
/* 8028CC18 00289B58  38 04 5A 40 */	addi r0, r4, lbl_803C5A40@l
/* 8028CC1C 00289B5C  90 1E 00 00 */	stw r0, 0(r30)
/* 8028CC20 00289B60  81 83 00 00 */	lwz r12, 0(r3)
/* 8028CC24 00289B64  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028CC28 00289B68  7D 89 03 A6 */	mtctr r12
/* 8028CC2C 00289B6C  4E 80 04 21 */	bctrl 
/* 8028CC30 00289B70  7F C3 F3 78 */	mr r3, r30
/* 8028CC34 00289B74  38 80 00 00 */	li r4, 0
/* 8028CC38 00289B78  4B FF A6 D1 */	bl __dt__Q27JStudio14TAdaptor_lightFv
/* 8028CC3C 00289B7C  7F E0 07 35 */	extsh. r0, r31
/* 8028CC40 00289B80  40 81 00 0C */	ble lbl_8028CC4C
/* 8028CC44 00289B84  7F C3 F3 78 */	mr r3, r30
/* 8028CC48 00289B88  48 04 20 F5 */	bl __dl__FPv
lbl_8028CC4C:
/* 8028CC4C 00289B8C  7F C3 F3 78 */	mr r3, r30
/* 8028CC50 00289B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028CC54 00289B94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028CC58 00289B98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028CC5C 00289B9C  7C 08 03 A6 */	mtlr r0
/* 8028CC60 00289BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8028CC64 00289BA4  4E 80 00 20 */	blr 
/* 8028CC68 00289BA8  3C 80 80 43 */	lis r4, lbl_80431448@ha
/* 8028CC6C 00289BAC  38 04 14 48 */	addi r0, r4, lbl_80431448@l
/* 8028CC70 00289BB0  7C 05 03 78 */	mr r5, r0
/* 8028CC74 00289BB4  48 00 00 2C */	b lbl_8028CCA0
lbl_8028CC78:
/* 8028CC78 00289BB8  80 83 00 08 */	lwz r4, 8(r3)
/* 8028CC7C 00289BBC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028CC80 00289BC0  7C 84 02 14 */	add r4, r4, r0
/* 8028CC84 00289BC4  28 05 00 00 */	cmplwi r5, 0
/* 8028CC88 00289BC8  41 82 00 0C */	beq lbl_8028CC94
/* 8028CC8C 00289BCC  7C A0 2B 78 */	mr r0, r5
/* 8028CC90 00289BD0  48 00 00 08 */	b lbl_8028CC98
lbl_8028CC94:
/* 8028CC94 00289BD4  38 0D 8C 70 */	addi r0, r13, lbl_804511F0-_SDA_BASE_
lbl_8028CC98:
/* 8028CC98 00289BD8  90 04 00 10 */	stw r0, 0x10(r4)
/* 8028CC9C 00289BDC  38 A5 00 0C */	addi r5, r5, 0xc
lbl_8028CCA0:
/* 8028CCA0 00289BE0  80 05 00 04 */	lwz r0, 4(r5)
/* 8028CCA4 00289BE4  2C 00 FF FF */	cmpwi r0, -1
/* 8028CCA8 00289BE8  40 82 FF D0 */	bne lbl_8028CC78
/* 8028CCAC 00289BEC  4E 80 00 20 */	blr 
/* 8028CCB0 00289BF0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8028CCB4 00289BF4  7C 08 02 A6 */	mflr r0
/* 8028CCB8 00289BF8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8028CCBC 00289BFC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8028CCC0 00289C00  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8028CCC4 00289C04  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8028CCC8 00289C08  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 8028CCCC 00289C0C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8028CCD0 00289C10  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 8028CCD4 00289C14  39 61 00 60 */	addi r11, r1, 0x60
/* 8028CCD8 00289C18  48 0D 55 05 */	bl _savegpr_29
/* 8028CCDC 00289C1C  7C 7E 1B 78 */	mr r30, r3
/* 8028CCE0 00289C20  83 E3 01 18 */	lwz r31, 0x118(r3)
/* 8028CCE4 00289C24  7F E3 FB 78 */	mr r3, r31
/* 8028CCE8 00289C28  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CCEC 00289C2C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028CCF0 00289C30  7D 89 03 A6 */	mtctr r12
/* 8028CCF4 00289C34  4E 80 04 21 */	bctrl 
/* 8028CCF8 00289C38  60 64 00 01 */	ori r4, r3, 1
/* 8028CCFC 00289C3C  7F E3 FB 78 */	mr r3, r31
/* 8028CD00 00289C40  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CD04 00289C44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028CD08 00289C48  7D 89 03 A6 */	mtctr r12
/* 8028CD0C 00289C4C  4E 80 04 21 */	bctrl 
/* 8028CD10 00289C50  83 FE 01 18 */	lwz r31, 0x118(r30)
/* 8028CD14 00289C54  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028CD18 00289C58  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 8028CD1C 00289C5C  7F E3 FB 78 */	mr r3, r31
/* 8028CD20 00289C60  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CD24 00289C64  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8028CD28 00289C68  7D 89 03 A6 */	mtctr r12
/* 8028CD2C 00289C6C  4E 80 04 21 */	bctrl 
/* 8028CD30 00289C70  90 61 00 0C */	stw r3, 0xc(r1)
/* 8028CD34 00289C74  7F C3 F3 78 */	mr r3, r30
/* 8028CD38 00289C78  3C 80 80 3A */	lis r4, lbl_8039AAE8@ha
/* 8028CD3C 00289C7C  38 84 AA E8 */	addi r4, r4, lbl_8039AAE8@l
/* 8028CD40 00289C80  38 A1 00 0C */	addi r5, r1, 0xc
/* 8028CD44 00289C84  4B FF 95 69 */	bl adaptor_setVariableValue_GXColor__Q27JStudio8TAdaptorFPCUlRC8_GXColor
/* 8028CD48 00289C88  7F E3 FB 78 */	mr r3, r31
/* 8028CD4C 00289C8C  38 81 00 34 */	addi r4, r1, 0x34
/* 8028CD50 00289C90  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CD54 00289C94  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8028CD58 00289C98  7D 89 03 A6 */	mtctr r12
/* 8028CD5C 00289C9C  4E 80 04 21 */	bctrl 
/* 8028CD60 00289CA0  7F E3 FB 78 */	mr r3, r31
/* 8028CD64 00289CA4  3B E1 00 40 */	addi r31, r1, 0x40
/* 8028CD68 00289CA8  7F E4 FB 78 */	mr r4, r31
/* 8028CD6C 00289CAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8028CD70 00289CB0  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8028CD74 00289CB4  7D 89 03 A6 */	mtctr r12
/* 8028CD78 00289CB8  4E 80 04 21 */	bctrl 
/* 8028CD7C 00289CBC  88 1D 00 89 */	lbz r0, 0x89(r29)
/* 8028CD80 00289CC0  28 00 00 00 */	cmplwi r0, 0
/* 8028CD84 00289CC4  40 82 00 0C */	bne lbl_8028CD90
/* 8028CD88 00289CC8  3B E1 00 34 */	addi r31, r1, 0x34
/* 8028CD8C 00289CCC  48 00 00 28 */	b lbl_8028CDB4
lbl_8028CD90:
/* 8028CD90 00289CD0  38 7D 00 DC */	addi r3, r29, 0xdc
/* 8028CD94 00289CD4  38 81 00 34 */	addi r4, r1, 0x34
/* 8028CD98 00289CD8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8028CD9C 00289CDC  48 0B 9F D1 */	bl PSMTXMultVec
/* 8028CDA0 00289CE0  38 7D 00 DC */	addi r3, r29, 0xdc
/* 8028CDA4 00289CE4  7F E4 FB 78 */	mr r4, r31
/* 8028CDA8 00289CE8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8028CDAC 00289CEC  48 0B A0 A1 */	bl PSMTXMultVecSR
/* 8028CDB0 00289CF0  3B E1 00 1C */	addi r31, r1, 0x1c
lbl_8028CDB4:
/* 8028CDB4 00289CF4  7F C3 F3 78 */	mr r3, r30
/* 8028CDB8 00289CF8  3C 80 80 3A */	lis r4, lbl_8039AAF8@ha
/* 8028CDBC 00289CFC  38 84 AA F8 */	addi r4, r4, lbl_8039AAF8@l
/* 8028CDC0 00289D00  7F E5 FB 78 */	mr r5, r31
/* 8028CDC4 00289D04  4B FF 94 41 */	bl adaptor_setVariableValue_Vec__Q27JStudio8TAdaptorFPCUlRC3Vec
/* 8028CDC8 00289D08  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8028CDCC 00289D0C  C3 DF 00 10 */	lfs f30, 0x10(r31)
/* 8028CDD0 00289D10  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8028CDD4 00289D14  EC 61 00 72 */	fmuls f3, f1, f1
/* 8028CDD8 00289D18  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8028CDDC 00289D1C  EF E3 00 2A */	fadds f31, f3, f0
/* 8028CDE0 00289D20  C0 02 BA E8 */	lfs f0, lbl_804554E8-_SDA2_BASE_(r2)
/* 8028CDE4 00289D24  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8028CDE8 00289D28  40 81 00 58 */	ble lbl_8028CE40
/* 8028CDEC 00289D2C  FC 00 F8 34 */	frsqrte f0, f31
/* 8028CDF0 00289D30  C8 A2 BA F0 */	lfd f5, lbl_804554F0-_SDA2_BASE_(r2)
/* 8028CDF4 00289D34  FC 65 00 32 */	fmul f3, f5, f0
/* 8028CDF8 00289D38  C8 82 BA F8 */	lfd f4, lbl_804554F8-_SDA2_BASE_(r2)
/* 8028CDFC 00289D3C  FC 00 00 32 */	fmul f0, f0, f0
/* 8028CE00 00289D40  FC 1F 00 32 */	fmul f0, f31, f0
/* 8028CE04 00289D44  FC 04 00 28 */	fsub f0, f4, f0
/* 8028CE08 00289D48  FC 03 00 32 */	fmul f0, f3, f0
/* 8028CE0C 00289D4C  FC 65 00 32 */	fmul f3, f5, f0
/* 8028CE10 00289D50  FC 00 00 32 */	fmul f0, f0, f0
/* 8028CE14 00289D54  FC 1F 00 32 */	fmul f0, f31, f0
/* 8028CE18 00289D58  FC 04 00 28 */	fsub f0, f4, f0
/* 8028CE1C 00289D5C  FC 03 00 32 */	fmul f0, f3, f0
/* 8028CE20 00289D60  FC 65 00 32 */	fmul f3, f5, f0
/* 8028CE24 00289D64  FC 00 00 32 */	fmul f0, f0, f0
/* 8028CE28 00289D68  FC 1F 00 32 */	fmul f0, f31, f0
/* 8028CE2C 00289D6C  FC 04 00 28 */	fsub f0, f4, f0
/* 8028CE30 00289D70  FC 03 00 32 */	fmul f0, f3, f0
/* 8028CE34 00289D74  FF FF 00 32 */	fmul f31, f31, f0
/* 8028CE38 00289D78  FF E0 F8 18 */	frsp f31, f31
/* 8028CE3C 00289D7C  48 00 00 88 */	b lbl_8028CEC4
lbl_8028CE40:
/* 8028CE40 00289D80  C8 02 BB 00 */	lfd f0, lbl_80455500-_SDA2_BASE_(r2)
/* 8028CE44 00289D84  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8028CE48 00289D88  40 80 00 10 */	bge lbl_8028CE58
/* 8028CE4C 00289D8C  3C 60 80 45 */	lis r3, lbl_80450AE0@ha
/* 8028CE50 00289D90  C3 E3 0A E0 */	lfs f31, lbl_80450AE0@l(r3)
/* 8028CE54 00289D94  48 00 00 70 */	b lbl_8028CEC4
lbl_8028CE58:
/* 8028CE58 00289D98  D3 E1 00 08 */	stfs f31, 8(r1)
/* 8028CE5C 00289D9C  80 81 00 08 */	lwz r4, 8(r1)
/* 8028CE60 00289DA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8028CE64 00289DA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8028CE68 00289DA8  7C 03 00 00 */	cmpw r3, r0
/* 8028CE6C 00289DAC  41 82 00 14 */	beq lbl_8028CE80
/* 8028CE70 00289DB0  40 80 00 40 */	bge lbl_8028CEB0
/* 8028CE74 00289DB4  2C 03 00 00 */	cmpwi r3, 0
/* 8028CE78 00289DB8  41 82 00 20 */	beq lbl_8028CE98
/* 8028CE7C 00289DBC  48 00 00 34 */	b lbl_8028CEB0
lbl_8028CE80:
/* 8028CE80 00289DC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8028CE84 00289DC4  41 82 00 0C */	beq lbl_8028CE90
/* 8028CE88 00289DC8  38 00 00 01 */	li r0, 1
/* 8028CE8C 00289DCC  48 00 00 28 */	b lbl_8028CEB4
lbl_8028CE90:
/* 8028CE90 00289DD0  38 00 00 02 */	li r0, 2
/* 8028CE94 00289DD4  48 00 00 20 */	b lbl_8028CEB4
lbl_8028CE98:
/* 8028CE98 00289DD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8028CE9C 00289DDC  41 82 00 0C */	beq lbl_8028CEA8
/* 8028CEA0 00289DE0  38 00 00 05 */	li r0, 5
/* 8028CEA4 00289DE4  48 00 00 10 */	b lbl_8028CEB4
lbl_8028CEA8:
/* 8028CEA8 00289DE8  38 00 00 03 */	li r0, 3
/* 8028CEAC 00289DEC  48 00 00 08 */	b lbl_8028CEB4
lbl_8028CEB0:
/* 8028CEB0 00289DF0  38 00 00 04 */	li r0, 4
lbl_8028CEB4:
/* 8028CEB4 00289DF4  2C 00 00 01 */	cmpwi r0, 1
/* 8028CEB8 00289DF8  40 82 00 0C */	bne lbl_8028CEC4
/* 8028CEBC 00289DFC  3C 60 80 45 */	lis r3, lbl_80450AE0@ha
/* 8028CEC0 00289E00  C3 E3 0A E0 */	lfs f31, lbl_80450AE0@l(r3)
lbl_8028CEC4:
/* 8028CEC4 00289E04  48 0D F8 5D */	bl atan2
/* 8028CEC8 00289E08  FF A0 08 18 */	frsp f29, f1
/* 8028CECC 00289E0C  FC 20 F0 90 */	fmr f1, f30
/* 8028CED0 00289E10  FC 40 F8 90 */	fmr f2, f31
/* 8028CED4 00289E14  48 0D F8 4D */	bl atan2
/* 8028CED8 00289E18  FC 40 08 18 */	frsp f2, f1
/* 8028CEDC 00289E1C  80 BE 00 08 */	lwz r5, 8(r30)
.global update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued
/* 8028CEE0 00289E20  3C 60 80 28 */	lis r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha
.global update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued
/* 8028CEE4 00289E24  38 83 5E B8 */	addi r4, r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l
/* 8028CEE8 00289E28  90 85 00 D0 */	stw r4, 0xd0(r5)
/* 8028CEEC 00289E2C  38 00 00 00 */	li r0, 0
/* 8028CEF0 00289E30  90 05 00 CC */	stw r0, 0xcc(r5)
/* 8028CEF4 00289E34  C0 22 BB 08 */	lfs f1, lbl_80455508-_SDA2_BASE_(r2)
/* 8028CEF8 00289E38  EC 01 07 72 */	fmuls f0, f1, f29
/* 8028CEFC 00289E3C  D0 05 00 D4 */	stfs f0, 0xd4(r5)
/* 8028CF00 00289E40  80 7E 00 08 */	lwz r3, 8(r30)
/* 8028CF04 00289E44  90 83 00 E4 */	stw r4, 0xe4(r3)
/* 8028CF08 00289E48  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 8028CF0C 00289E4C  EC 01 00 B2 */	fmuls f0, f1, f2
/* 8028CF10 00289E50  D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 8028CF14 00289E54  7F E3 FB 78 */	mr r3, r31
/* 8028CF18 00289E58  38 9F 00 0C */	addi r4, r31, 0xc
/* 8028CF1C 00289E5C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8028CF20 00289E60  48 0B A1 71 */	bl PSVECAdd
/* 8028CF24 00289E64  7F C3 F3 78 */	mr r3, r30
/* 8028CF28 00289E68  3C 80 80 3A */	lis r4, lbl_8039AB04@ha
/* 8028CF2C 00289E6C  38 84 AB 04 */	addi r4, r4, lbl_8039AB04@l
/* 8028CF30 00289E70  38 A1 00 10 */	addi r5, r1, 0x10
/* 8028CF34 00289E74  4B FF 92 D1 */	bl adaptor_setVariableValue_Vec__Q27JStudio8TAdaptorFPCUlRC3Vec
/* 8028CF38 00289E78  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 8028CF3C 00289E7C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8028CF40 00289E80  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 8028CF44 00289E84  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8028CF48 00289E88  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 8028CF4C 00289E8C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8028CF50 00289E90  39 61 00 60 */	addi r11, r1, 0x60
/* 8028CF54 00289E94  48 0D 52 D5 */	bl _restgpr_29
/* 8028CF58 00289E98  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8028CF5C 00289E9C  7C 08 03 A6 */	mtlr r0
/* 8028CF60 00289EA0  38 21 00 90 */	addi r1, r1, 0x90
/* 8028CF64 00289EA4  4E 80 00 20 */	blr 
/* 8028CF68 00289EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028CF6C 00289EAC  7C 08 02 A6 */	mflr r0
/* 8028CF70 00289EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028CF74 00289EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028CF78 00289EB8  83 E3 01 18 */	lwz r31, 0x118(r3)
/* 8028CF7C 00289EBC  7F E3 FB 78 */	mr r3, r31
/* 8028CF80 00289EC0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CF84 00289EC4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028CF88 00289EC8  7D 89 03 A6 */	mtctr r12
/* 8028CF8C 00289ECC  4E 80 04 21 */	bctrl 
/* 8028CF90 00289ED0  54 64 00 3C */	rlwinm r4, r3, 0, 0, 0x1e
/* 8028CF94 00289ED4  7F E3 FB 78 */	mr r3, r31
/* 8028CF98 00289ED8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028CF9C 00289EDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028CFA0 00289EE0  7D 89 03 A6 */	mtctr r12
/* 8028CFA4 00289EE4  4E 80 04 21 */	bctrl 
/* 8028CFA8 00289EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028CFAC 00289EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028CFB0 00289EF0  7C 08 03 A6 */	mtlr r0
/* 8028CFB4 00289EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8028CFB8 00289EF8  4E 80 00 20 */	blr 
/* 8028CFBC 00289EFC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8028CFC0 00289F00  7C 08 02 A6 */	mflr r0
/* 8028CFC4 00289F04  90 01 00 94 */	stw r0, 0x94(r1)
/* 8028CFC8 00289F08  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8028CFCC 00289F0C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8028CFD0 00289F10  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8028CFD4 00289F14  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 8028CFD8 00289F18  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8028CFDC 00289F1C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 8028CFE0 00289F20  39 61 00 60 */	addi r11, r1, 0x60
/* 8028CFE4 00289F24  48 0D 51 F9 */	bl _savegpr_29
/* 8028CFE8 00289F28  7C 7D 1B 78 */	mr r29, r3
/* 8028CFEC 00289F2C  83 C3 01 18 */	lwz r30, 0x118(r3)
/* 8028CFF0 00289F30  80 83 00 04 */	lwz r4, 4(r3)
/* 8028CFF4 00289F34  83 E4 00 14 */	lwz r31, 0x14(r4)
/* 8028CFF8 00289F38  38 81 00 0C */	addi r4, r1, 0xc
/* 8028CFFC 00289F3C  3C A0 80 3A */	lis r5, lbl_8039AAE8@ha
/* 8028D000 00289F40  38 A5 AA E8 */	addi r5, r5, lbl_8039AAE8@l
/* 8028D004 00289F44  4B FF 93 89 */	bl adaptor_getVariableValue_GXColor__Q27JStudio8TAdaptorCFP8_GXColorPCUl
/* 8028D008 00289F48  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8028D00C 00289F4C  90 01 00 08 */	stw r0, 8(r1)
/* 8028D010 00289F50  7F C3 F3 78 */	mr r3, r30
/* 8028D014 00289F54  38 81 00 08 */	addi r4, r1, 8
/* 8028D018 00289F58  81 9E 00 00 */	lwz r12, 0(r30)
/* 8028D01C 00289F5C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8028D020 00289F60  7D 89 03 A6 */	mtctr r12
/* 8028D024 00289F64  4E 80 04 21 */	bctrl 
/* 8028D028 00289F68  7F A3 EB 78 */	mr r3, r29
/* 8028D02C 00289F6C  38 81 00 34 */	addi r4, r1, 0x34
/* 8028D030 00289F70  3C A0 80 3A */	lis r5, lbl_8039AAF8@ha
/* 8028D034 00289F74  38 A5 AA F8 */	addi r5, r5, lbl_8039AAF8@l
/* 8028D038 00289F78  4B FF 92 3D */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028D03C 00289F7C  80 1D 01 1C */	lwz r0, 0x11c(r29)
/* 8028D040 00289F80  2C 00 00 02 */	cmpwi r0, 2
/* 8028D044 00289F84  41 82 00 78 */	beq lbl_8028D0BC
/* 8028D048 00289F88  40 80 00 98 */	bge lbl_8028D0E0
/* 8028D04C 00289F8C  2C 00 00 01 */	cmpwi r0, 1
/* 8028D050 00289F90  40 80 00 08 */	bge lbl_8028D058
/* 8028D054 00289F94  48 00 00 8C */	b lbl_8028D0E0
lbl_8028D058:
/* 8028D058 00289F98  80 7D 00 08 */	lwz r3, 8(r29)
/* 8028D05C 00289F9C  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 8028D060 00289FA0  C0 23 00 DC */	lfs f1, 0xdc(r3)
/* 8028D064 00289FA4  C0 02 BB 0C */	lfs f0, lbl_8045550C-_SDA2_BASE_(r2)
/* 8028D068 00289FA8  EF A0 00 72 */	fmuls f29, f0, f1
/* 8028D06C 00289FAC  FC 20 E8 90 */	fmr f1, f29
/* 8028D070 00289FB0  48 0D EF B9 */	bl cos
/* 8028D074 00289FB4  FF C0 08 18 */	frsp f30, f1
/* 8028D078 00289FB8  FC 20 E8 90 */	fmr f1, f29
/* 8028D07C 00289FBC  48 0D F5 15 */	bl sin
/* 8028D080 00289FC0  FF A0 08 18 */	frsp f29, f1
/* 8028D084 00289FC4  C0 02 BB 0C */	lfs f0, lbl_8045550C-_SDA2_BASE_(r2)
/* 8028D088 00289FC8  EF E0 07 F2 */	fmuls f31, f0, f31
/* 8028D08C 00289FCC  FC 20 F8 90 */	fmr f1, f31
/* 8028D090 00289FD0  48 0D F5 01 */	bl sin
/* 8028D094 00289FD4  FC 00 08 18 */	frsp f0, f1
/* 8028D098 00289FD8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8028D09C 00289FDC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8028D0A0 00289FE0  D3 A1 00 44 */	stfs f29, 0x44(r1)
/* 8028D0A4 00289FE4  FC 20 F8 90 */	fmr f1, f31
/* 8028D0A8 00289FE8  48 0D EF 81 */	bl cos
/* 8028D0AC 00289FEC  FC 00 08 18 */	frsp f0, f1
/* 8028D0B0 00289FF0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8028D0B4 00289FF4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8028D0B8 00289FF8  48 00 00 28 */	b lbl_8028D0E0
lbl_8028D0BC:
/* 8028D0BC 00289FFC  7F A3 EB 78 */	mr r3, r29
/* 8028D0C0 0028A000  38 81 00 10 */	addi r4, r1, 0x10
/* 8028D0C4 0028A004  3C A0 80 3A */	lis r5, lbl_8039AB04@ha
/* 8028D0C8 0028A008  38 A5 AB 04 */	addi r5, r5, lbl_8039AB04@l
/* 8028D0CC 0028A00C  4B FF 91 A9 */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028D0D0 0028A010  38 61 00 10 */	addi r3, r1, 0x10
/* 8028D0D4 0028A014  38 81 00 34 */	addi r4, r1, 0x34
/* 8028D0D8 0028A018  38 A1 00 40 */	addi r5, r1, 0x40
/* 8028D0DC 0028A01C  48 0B 9F D9 */	bl PSVECSubtract
lbl_8028D0E0:
/* 8028D0E0 0028A020  88 1F 00 88 */	lbz r0, 0x88(r31)
/* 8028D0E4 0028A024  28 00 00 00 */	cmplwi r0, 0
/* 8028D0E8 0028A028  40 82 00 0C */	bne lbl_8028D0F4
/* 8028D0EC 0028A02C  3B E1 00 34 */	addi r31, r1, 0x34
/* 8028D0F0 0028A030  48 00 00 28 */	b lbl_8028D118
lbl_8028D0F4:
/* 8028D0F4 0028A034  38 7F 00 AC */	addi r3, r31, 0xac
/* 8028D0F8 0028A038  38 81 00 34 */	addi r4, r1, 0x34
/* 8028D0FC 0028A03C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8028D100 0028A040  48 0B 9C 6D */	bl PSMTXMultVec
/* 8028D104 0028A044  38 7F 00 AC */	addi r3, r31, 0xac
/* 8028D108 0028A048  38 81 00 40 */	addi r4, r1, 0x40
/* 8028D10C 0028A04C  38 A1 00 28 */	addi r5, r1, 0x28
/* 8028D110 0028A050  48 0B 9D 3D */	bl PSMTXMultVecSR
/* 8028D114 0028A054  3B E1 00 1C */	addi r31, r1, 0x1c
lbl_8028D118:
/* 8028D118 0028A058  7F C3 F3 78 */	mr r3, r30
/* 8028D11C 0028A05C  7F E4 FB 78 */	mr r4, r31
/* 8028D120 0028A060  81 9E 00 00 */	lwz r12, 0(r30)
/* 8028D124 0028A064  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8028D128 0028A068  7D 89 03 A6 */	mtctr r12
/* 8028D12C 0028A06C  4E 80 04 21 */	bctrl 
/* 8028D130 0028A070  7F C3 F3 78 */	mr r3, r30
/* 8028D134 0028A074  38 9F 00 0C */	addi r4, r31, 0xc
/* 8028D138 0028A078  81 9E 00 00 */	lwz r12, 0(r30)
/* 8028D13C 0028A07C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8028D140 0028A080  7D 89 03 A6 */	mtctr r12
/* 8028D144 0028A084  4E 80 04 21 */	bctrl 
/* 8028D148 0028A088  80 7D 01 18 */	lwz r3, 0x118(r29)
/* 8028D14C 0028A08C  81 83 00 00 */	lwz r12, 0(r3)
/* 8028D150 0028A090  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028D154 0028A094  7D 89 03 A6 */	mtctr r12
/* 8028D158 0028A098  4E 80 04 21 */	bctrl 
/* 8028D15C 0028A09C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 8028D160 0028A0A0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8028D164 0028A0A4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 8028D168 0028A0A8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8028D16C 0028A0AC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 8028D170 0028A0B0  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8028D174 0028A0B4  39 61 00 60 */	addi r11, r1, 0x60
/* 8028D178 0028A0B8  48 0D 50 B1 */	bl _restgpr_29
/* 8028D17C 0028A0BC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8028D180 0028A0C0  7C 08 03 A6 */	mtlr r0
/* 8028D184 0028A0C4  38 21 00 90 */	addi r1, r1, 0x90
/* 8028D188 0028A0C8  4E 80 00 20 */	blr 
/* 8028D18C 0028A0CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D190 0028A0D0  7C 08 02 A6 */	mflr r0
/* 8028D194 0028A0D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D198 0028A0D8  38 63 01 14 */	addi r3, r3, 0x114
/* 8028D19C 0028A0DC  4B FF D2 D5 */	bl adaptor_object_data___Q214JStudio_JStage16TAdaptor_object_FPCvUlPCvUl
/* 8028D1A0 0028A0E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D1A4 0028A0E4  7C 08 03 A6 */	mtlr r0
/* 8028D1A8 0028A0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D1AC 0028A0EC  4E 80 00 20 */	blr 
/* 8028D1B0 0028A0F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D1B4 0028A0F4  7C 08 02 A6 */	mflr r0
/* 8028D1B8 0028A0F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D1BC 0028A0FC  2C 04 00 02 */	cmpwi r4, 2
/* 8028D1C0 0028A100  41 82 00 08 */	beq lbl_8028D1C8
/* 8028D1C4 0028A104  48 00 00 54 */	b lbl_8028D218
lbl_8028D1C8:
/* 8028D1C8 0028A108  80 05 00 00 */	lwz r0, 0(r5)
/* 8028D1CC 0028A10C  2C 00 03 02 */	cmpwi r0, 0x302
/* 8028D1D0 0028A110  41 82 00 28 */	beq lbl_8028D1F8
/* 8028D1D4 0028A114  40 80 00 10 */	bge lbl_8028D1E4
/* 8028D1D8 0028A118  2C 00 03 01 */	cmpwi r0, 0x301
/* 8028D1DC 0028A11C  40 80 00 14 */	bge lbl_8028D1F0
/* 8028D1E0 0028A120  48 00 00 38 */	b lbl_8028D218
lbl_8028D1E4:
/* 8028D1E4 0028A124  2C 00 03 04 */	cmpwi r0, 0x304
/* 8028D1E8 0028A128  40 80 00 30 */	bge lbl_8028D218
/* 8028D1EC 0028A12C  48 00 00 14 */	b lbl_8028D200
lbl_8028D1F0:
/* 8028D1F0 0028A130  38 80 00 01 */	li r4, 1
/* 8028D1F4 0028A134  48 00 00 10 */	b lbl_8028D204
lbl_8028D1F8:
/* 8028D1F8 0028A138  38 80 00 02 */	li r4, 2
/* 8028D1FC 0028A13C  48 00 00 08 */	b lbl_8028D204
lbl_8028D200:
/* 8028D200 0028A140  38 80 00 03 */	li r4, 3
lbl_8028D204:
/* 8028D204 0028A144  80 63 01 18 */	lwz r3, 0x118(r3)
/* 8028D208 0028A148  81 83 00 00 */	lwz r12, 0(r3)
/* 8028D20C 0028A14C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8028D210 0028A150  7D 89 03 A6 */	mtctr r12
/* 8028D214 0028A154  4E 80 04 21 */	bctrl 
lbl_8028D218:
/* 8028D218 0028A158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D21C 0028A15C  7C 08 03 A6 */	mtlr r0
/* 8028D220 0028A160  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D224 0028A164  4E 80 00 20 */	blr 
/* 8028D228 0028A168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D22C 0028A16C  7C 08 02 A6 */	mflr r0
/* 8028D230 0028A170  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D234 0028A174  38 63 01 14 */	addi r3, r3, 0x114
/* 8028D238 0028A178  4B FF D3 19 */	bl adaptor_object_ENABLE___Q214JStudio_JStage16TAdaptor_object_FQ37JStudio4data15TEOperationDataPCvUl
/* 8028D23C 0028A17C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D240 0028A180  7C 08 03 A6 */	mtlr r0
/* 8028D244 0028A184  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D248 0028A188  4E 80 00 20 */	blr 
/* 8028D24C 0028A18C  80 03 00 08 */	lwz r0, 8(r3)
/* 8028D250 0028A190  90 04 01 1C */	stw r0, 0x11c(r4)
/* 8028D254 0028A194  4E 80 00 20 */	blr 
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
__dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv:
/* 8028D258 0028A198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D25C 0028A19C  7C 08 02 A6 */	mflr r0
/* 8028D260 0028A1A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D264 0028A1A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028D268 0028A1A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8028D26C 0028A1AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028D270 0028A1B0  7C 9F 23 78 */	mr r31, r4
/* 8028D274 0028A1B4  41 82 00 28 */	beq lbl_8028D29C
/* 8028D278 0028A1B8  3C 80 80 3C */	lis r4, lbl_803C5A30@ha
/* 8028D27C 0028A1BC  38 04 5A 30 */	addi r0, r4, lbl_803C5A30@l
/* 8028D280 0028A1C0  90 1E 00 00 */	stw r0, 0(r30)
/* 8028D284 0028A1C4  38 80 00 00 */	li r4, 0
/* 8028D288 0028A1C8  4B FF 8B 85 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028D28C 0028A1CC  7F E0 07 35 */	extsh. r0, r31
/* 8028D290 0028A1D0  40 81 00 0C */	ble lbl_8028D29C
/* 8028D294 0028A1D4  7F C3 F3 78 */	mr r3, r30
/* 8028D298 0028A1D8  48 04 1A A5 */	bl __dl__FPv
lbl_8028D29C:
/* 8028D29C 0028A1DC  7F C3 F3 78 */	mr r3, r30
/* 8028D2A0 0028A1E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028D2A4 0028A1E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028D2A8 0028A1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D2AC 0028A1EC  7C 08 03 A6 */	mtlr r0
/* 8028D2B0 0028A1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D2B4 0028A1F4  4E 80 00 20 */	blr 
/* 8028D2B8 0028A1F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8028D2BC 0028A1FC  7C 08 02 A6 */	mflr r0
/* 8028D2C0 0028A200  90 01 00 64 */	stw r0, 0x64(r1)
/* 8028D2C4 0028A204  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8028D2C8 0028A208  3C 60 80 43 */	lis r3, lbl_80431400@ha
/* 8028D2CC 0028A20C  3B E3 14 00 */	addi r31, r3, lbl_80431400@l
/* 8028D2D0 0028A210  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 8028D2D4 0028A214  38 A3 56 40 */	addi r5, r3, lbl_803C5640@l
/* 8028D2D8 0028A218  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8028D2DC 0028A21C  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D2E0 0028A220  38 63 5A 30 */	addi r3, r3, lbl_803C5A30@l
/* 8028D2E4 0028A224  90 61 00 44 */	stw r3, 0x44(r1)
/* 8028D2E8 0028A228  38 80 00 0A */	li r4, 0xa
/* 8028D2EC 0028A22C  90 81 00 48 */	stw r4, 0x48(r1)
/* 8028D2F0 0028A230  38 00 00 01 */	li r0, 1
/* 8028D2F4 0028A234  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8028D2F8 0028A238  90 BF 00 48 */	stw r5, 0x48(r31)
/* 8028D2FC 0028A23C  90 7F 00 48 */	stw r3, 0x48(r31)
/* 8028D300 0028A240  38 7F 00 48 */	addi r3, r31, 0x48
/* 8028D304 0028A244  90 83 00 04 */	stw r4, 4(r3)
/* 8028D308 0028A248  90 03 00 08 */	stw r0, 8(r3)
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D30C 0028A24C  3C 80 80 29 */	lis r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@ha
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D310 0028A250  38 84 D2 58 */	addi r4, r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@l
/* 8028D314 0028A254  38 BF 00 00 */	addi r5, r31, 0
/* 8028D318 0028A258  48 0D 49 0D */	bl func_80361C24
/* 8028D31C 0028A25C  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D320 0028A260  38 03 5A 30 */	addi r0, r3, lbl_803C5A30@l
/* 8028D324 0028A264  90 01 00 44 */	stw r0, 0x44(r1)
/* 8028D328 0028A268  38 61 00 44 */	addi r3, r1, 0x44
/* 8028D32C 0028A26C  38 80 00 00 */	li r4, 0
/* 8028D330 0028A270  4B FF 8A DD */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028D334 0028A274  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 8028D338 0028A278  38 C3 56 40 */	addi r6, r3, lbl_803C5640@l
/* 8028D33C 0028A27C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8028D340 0028A280  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D344 0028A284  38 A3 5A 30 */	addi r5, r3, lbl_803C5A30@l
/* 8028D348 0028A288  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8028D34C 0028A28C  38 80 00 0B */	li r4, 0xb
/* 8028D350 0028A290  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8028D354 0028A294  38 00 00 01 */	li r0, 1
/* 8028D358 0028A298  90 01 00 40 */	stw r0, 0x40(r1)
/* 8028D35C 0028A29C  38 7F 00 48 */	addi r3, r31, 0x48
/* 8028D360 0028A2A0  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8028D364 0028A2A4  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8028D368 0028A2A8  90 83 00 10 */	stw r4, 0x10(r3)
/* 8028D36C 0028A2AC  90 03 00 14 */	stw r0, 0x14(r3)
/* 8028D370 0028A2B0  38 63 00 0C */	addi r3, r3, 0xc
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D374 0028A2B4  3C 80 80 29 */	lis r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@ha
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D378 0028A2B8  38 84 D2 58 */	addi r4, r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@l
/* 8028D37C 0028A2BC  38 BF 00 0C */	addi r5, r31, 0xc
/* 8028D380 0028A2C0  48 0D 48 A5 */	bl func_80361C24
/* 8028D384 0028A2C4  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D388 0028A2C8  38 03 5A 30 */	addi r0, r3, lbl_803C5A30@l
/* 8028D38C 0028A2CC  90 01 00 38 */	stw r0, 0x38(r1)
/* 8028D390 0028A2D0  38 61 00 38 */	addi r3, r1, 0x38
/* 8028D394 0028A2D4  38 80 00 00 */	li r4, 0
/* 8028D398 0028A2D8  4B FF 8A 75 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028D39C 0028A2DC  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 8028D3A0 0028A2E0  38 C3 56 40 */	addi r6, r3, lbl_803C5640@l
/* 8028D3A4 0028A2E4  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8028D3A8 0028A2E8  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D3AC 0028A2EC  38 A3 5A 30 */	addi r5, r3, lbl_803C5A30@l
/* 8028D3B0 0028A2F0  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8028D3B4 0028A2F4  38 80 00 07 */	li r4, 7
/* 8028D3B8 0028A2F8  90 81 00 30 */	stw r4, 0x30(r1)
/* 8028D3BC 0028A2FC  38 00 00 02 */	li r0, 2
/* 8028D3C0 0028A300  90 01 00 34 */	stw r0, 0x34(r1)
/* 8028D3C4 0028A304  38 7F 00 48 */	addi r3, r31, 0x48
/* 8028D3C8 0028A308  90 C3 00 18 */	stw r6, 0x18(r3)
/* 8028D3CC 0028A30C  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8028D3D0 0028A310  90 83 00 1C */	stw r4, 0x1c(r3)
/* 8028D3D4 0028A314  90 03 00 20 */	stw r0, 0x20(r3)
/* 8028D3D8 0028A318  38 63 00 18 */	addi r3, r3, 0x18
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D3DC 0028A31C  3C 80 80 29 */	lis r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@ha
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D3E0 0028A320  38 84 D2 58 */	addi r4, r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@l
/* 8028D3E4 0028A324  38 BF 00 18 */	addi r5, r31, 0x18
/* 8028D3E8 0028A328  48 0D 48 3D */	bl func_80361C24
/* 8028D3EC 0028A32C  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D3F0 0028A330  38 03 5A 30 */	addi r0, r3, lbl_803C5A30@l
/* 8028D3F4 0028A334  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8028D3F8 0028A338  38 61 00 2C */	addi r3, r1, 0x2c
/* 8028D3FC 0028A33C  38 80 00 00 */	li r4, 0
/* 8028D400 0028A340  4B FF 8A 0D */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028D404 0028A344  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 8028D408 0028A348  38 C3 56 40 */	addi r6, r3, lbl_803C5640@l
/* 8028D40C 0028A34C  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8028D410 0028A350  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D414 0028A354  38 A3 5A 30 */	addi r5, r3, lbl_803C5A30@l
/* 8028D418 0028A358  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8028D41C 0028A35C  38 80 00 08 */	li r4, 8
/* 8028D420 0028A360  90 81 00 24 */	stw r4, 0x24(r1)
/* 8028D424 0028A364  38 00 00 02 */	li r0, 2
/* 8028D428 0028A368  90 01 00 28 */	stw r0, 0x28(r1)
/* 8028D42C 0028A36C  38 7F 00 48 */	addi r3, r31, 0x48
/* 8028D430 0028A370  90 C3 00 24 */	stw r6, 0x24(r3)
/* 8028D434 0028A374  90 A3 00 24 */	stw r5, 0x24(r3)
/* 8028D438 0028A378  90 83 00 28 */	stw r4, 0x28(r3)
/* 8028D43C 0028A37C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8028D440 0028A380  38 63 00 24 */	addi r3, r3, 0x24
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D444 0028A384  3C 80 80 29 */	lis r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@ha
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D448 0028A388  38 84 D2 58 */	addi r4, r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@l
/* 8028D44C 0028A38C  38 BF 00 24 */	addi r5, r31, 0x24
/* 8028D450 0028A390  48 0D 47 D5 */	bl func_80361C24
/* 8028D454 0028A394  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D458 0028A398  38 03 5A 30 */	addi r0, r3, lbl_803C5A30@l
/* 8028D45C 0028A39C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8028D460 0028A3A0  38 61 00 20 */	addi r3, r1, 0x20
/* 8028D464 0028A3A4  38 80 00 00 */	li r4, 0
/* 8028D468 0028A3A8  4B FF 89 A5 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028D46C 0028A3AC  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 8028D470 0028A3B0  38 C3 56 40 */	addi r6, r3, lbl_803C5640@l
/* 8028D474 0028A3B4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8028D478 0028A3B8  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D47C 0028A3BC  38 A3 5A 30 */	addi r5, r3, lbl_803C5A30@l
/* 8028D480 0028A3C0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8028D484 0028A3C4  38 80 00 09 */	li r4, 9
/* 8028D488 0028A3C8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8028D48C 0028A3CC  38 00 00 02 */	li r0, 2
/* 8028D490 0028A3D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8028D494 0028A3D4  38 7F 00 48 */	addi r3, r31, 0x48
/* 8028D498 0028A3D8  90 C3 00 30 */	stw r6, 0x30(r3)
/* 8028D49C 0028A3DC  90 A3 00 30 */	stw r5, 0x30(r3)
/* 8028D4A0 0028A3E0  90 83 00 34 */	stw r4, 0x34(r3)
/* 8028D4A4 0028A3E4  90 03 00 38 */	stw r0, 0x38(r3)
/* 8028D4A8 0028A3E8  38 63 00 30 */	addi r3, r3, 0x30
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D4AC 0028A3EC  3C 80 80 29 */	lis r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@ha
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D4B0 0028A3F0  38 84 D2 58 */	addi r4, r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@l
/* 8028D4B4 0028A3F4  38 BF 00 30 */	addi r5, r31, 0x30
/* 8028D4B8 0028A3F8  48 0D 47 6D */	bl func_80361C24
/* 8028D4BC 0028A3FC  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D4C0 0028A400  38 03 5A 30 */	addi r0, r3, lbl_803C5A30@l
/* 8028D4C4 0028A404  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D4C8 0028A408  38 61 00 14 */	addi r3, r1, 0x14
/* 8028D4CC 0028A40C  38 80 00 00 */	li r4, 0
/* 8028D4D0 0028A410  4B FF 89 3D */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028D4D4 0028A414  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 8028D4D8 0028A418  38 C3 56 40 */	addi r6, r3, lbl_803C5640@l
/* 8028D4DC 0028A41C  90 C1 00 08 */	stw r6, 8(r1)
/* 8028D4E0 0028A420  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D4E4 0028A424  38 A3 5A 30 */	addi r5, r3, lbl_803C5A30@l
/* 8028D4E8 0028A428  90 A1 00 08 */	stw r5, 8(r1)
/* 8028D4EC 0028A42C  38 80 FF FF */	li r4, -1
/* 8028D4F0 0028A430  90 81 00 0C */	stw r4, 0xc(r1)
/* 8028D4F4 0028A434  38 00 00 00 */	li r0, 0
/* 8028D4F8 0028A438  90 01 00 10 */	stw r0, 0x10(r1)
/* 8028D4FC 0028A43C  38 7F 00 48 */	addi r3, r31, 0x48
/* 8028D500 0028A440  90 C3 00 3C */	stw r6, 0x3c(r3)
/* 8028D504 0028A444  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 8028D508 0028A448  90 83 00 40 */	stw r4, 0x40(r3)
/* 8028D50C 0028A44C  90 03 00 44 */	stw r0, 0x44(r3)
/* 8028D510 0028A450  38 63 00 3C */	addi r3, r3, 0x3c
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D514 0028A454  3C 80 80 29 */	lis r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@ha
.global __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv
/* 8028D518 0028A458  38 84 D2 58 */	addi r4, r4, __dt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_Fv@l
/* 8028D51C 0028A45C  38 BF 00 3C */	addi r5, r31, 0x3c
/* 8028D520 0028A460  48 0D 47 05 */	bl func_80361C24
/* 8028D524 0028A464  3C 60 80 3C */	lis r3, lbl_803C5A30@ha
/* 8028D528 0028A468  38 03 5A 30 */	addi r0, r3, lbl_803C5A30@l
/* 8028D52C 0028A46C  90 01 00 08 */	stw r0, 8(r1)
/* 8028D530 0028A470  38 61 00 08 */	addi r3, r1, 8
/* 8028D534 0028A474  38 80 00 00 */	li r4, 0
/* 8028D538 0028A478  4B FF 88 D5 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028D53C 0028A47C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8028D540 0028A480  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8028D544 0028A484  7C 08 03 A6 */	mtlr r0
/* 8028D548 0028A488  38 21 00 60 */	addi r1, r1, 0x60
/* 8028D54C 0028A48C  4E 80 00 20 */	blr 

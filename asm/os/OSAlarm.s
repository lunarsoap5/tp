.include "macros.inc"

.section .text, "ax" # 8033a8a0


.global OSInitAlarm
OSInitAlarm:
/* 8033A8A0 003377E0  7C 08 02 A6 */	mflr r0
/* 8033A8A4 003377E4  38 60 00 08 */	li r3, 8
/* 8033A8A8 003377E8  90 01 00 04 */	stw r0, 4(r1)
/* 8033A8AC 003377EC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033A8B0 003377F0  4B FF FE 55 */	bl __OSGetExceptionHandler
.global DecrementerExceptionHandler
/* 8033A8B4 003377F4  3C 80 80 34 */	lis r4, DecrementerExceptionHandler@ha
.global DecrementerExceptionHandler
/* 8033A8B8 003377F8  38 84 AF 88 */	addi r4, r4, DecrementerExceptionHandler@l
/* 8033A8BC 003377FC  7C 03 20 40 */	cmplw r3, r4
/* 8033A8C0 00337800  41 82 00 28 */	beq lbl_8033A8E8
/* 8033A8C4 00337804  38 00 00 00 */	li r0, 0
/* 8033A8C8 00337808  38 6D 90 B8 */	addi r3, r13, lbl_80451638-_SDA_BASE_
/* 8033A8CC 0033780C  90 03 00 04 */	stw r0, 4(r3)
/* 8033A8D0 00337810  38 60 00 08 */	li r3, 8
/* 8033A8D4 00337814  90 0D 90 B8 */	stw r0, lbl_80451638-_SDA_BASE_(r13)
/* 8033A8D8 00337818  4B FF FE 11 */	bl __OSDBJUMPEND 
/* 8033A8DC 0033781C  3C 60 80 3D */	lis r3, lbl_803CF480@ha
/* 8033A8E0 00337820  38 63 F4 80 */	addi r3, r3, lbl_803CF480@l
/* 8033A8E4 00337824  48 00 4D 7D */	bl OSRegisterResetFunction
lbl_8033A8E8:
/* 8033A8E8 00337828  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033A8EC 0033782C  38 21 00 08 */	addi r1, r1, 8
/* 8033A8F0 00337830  7C 08 03 A6 */	mtlr r0
/* 8033A8F4 00337834  4E 80 00 20 */	blr 

.global OSCreateAlarm
OSCreateAlarm:
/* 8033A8F8 00337838  38 00 00 00 */	li r0, 0
/* 8033A8FC 0033783C  90 03 00 00 */	stw r0, 0(r3)
/* 8033A900 00337840  90 03 00 04 */	stw r0, 4(r3)
/* 8033A904 00337844  4E 80 00 20 */	blr 

.global InsertAlarm
InsertAlarm:
/* 8033A908 00337848  7C 08 02 A6 */	mflr r0
/* 8033A90C 0033784C  90 01 00 04 */	stw r0, 4(r1)
/* 8033A910 00337850  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8033A914 00337854  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 8033A918 00337858  3B 80 00 00 */	li r28, 0
/* 8033A91C 0033785C  7C 7D 1B 78 */	mr r29, r3
/* 8033A920 00337860  6F 84 80 00 */	xoris r4, r28, 0x8000
/* 8033A924 00337864  3B 25 00 00 */	addi r25, r5, 0
/* 8033A928 00337868  3B C6 00 00 */	addi r30, r6, 0
/* 8033A92C 0033786C  3B E7 00 00 */	addi r31, r7, 0
/* 8033A930 00337870  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8033A934 00337874  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 8033A938 00337878  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8033A93C 0033787C  7C 08 E0 10 */	subfc r0, r8, r28
/* 8033A940 00337880  7C 63 21 10 */	subfe r3, r3, r4
/* 8033A944 00337884  7C 64 21 10 */	subfe r3, r4, r4
/* 8033A948 00337888  7C 63 00 D1 */	neg. r3, r3
/* 8033A94C 0033788C  41 82 00 7C */	beq lbl_8033A9C8
/* 8033A950 00337890  48 00 7D CD */	bl __OSGetSystemTime
/* 8033A954 00337894  80 FD 00 20 */	lwz r7, 0x20(r29)
/* 8033A958 00337898  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8033A95C 0033789C  81 1D 00 24 */	lwz r8, 0x24(r29)
/* 8033A960 003378A0  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 8033A964 003378A4  7C 04 40 10 */	subfc r0, r4, r8
/* 8033A968 003378A8  7C A5 31 10 */	subfe r5, r5, r6
/* 8033A96C 003378AC  7C A6 31 10 */	subfe r5, r6, r6
/* 8033A970 003378B0  7C A5 00 D1 */	neg. r5, r5
/* 8033A974 003378B4  3B C8 00 00 */	addi r30, r8, 0
/* 8033A978 003378B8  3B 27 00 00 */	addi r25, r7, 0
/* 8033A97C 003378BC  41 82 00 4C */	beq lbl_8033A9C8
/* 8033A980 003378C0  83 7D 00 18 */	lwz r27, 0x18(r29)
/* 8033A984 003378C4  7C 88 20 10 */	subfc r4, r8, r4
/* 8033A988 003378C8  83 5D 00 1C */	lwz r26, 0x1c(r29)
/* 8033A98C 003378CC  7C 67 19 10 */	subfe r3, r7, r3
/* 8033A990 003378D0  38 BB 00 00 */	addi r5, r27, 0
/* 8033A994 003378D4  38 DA 00 00 */	addi r6, r26, 0
/* 8033A998 003378D8  48 02 79 8D */	bl __div2i
/* 8033A99C 003378DC  38 00 00 01 */	li r0, 1
/* 8033A9A0 003378E0  7C A4 00 14 */	addc r5, r4, r0
/* 8033A9A4 003378E4  7C 9B 29 D6 */	mullw r4, r27, r5
/* 8033A9A8 003378E8  7C 1A 28 16 */	mulhwu r0, r26, r5
/* 8033A9AC 003378EC  7C 63 E1 14 */	adde r3, r3, r28
/* 8033A9B0 003378F0  7C 84 02 14 */	add r4, r4, r0
/* 8033A9B4 003378F4  7C 1A 19 D6 */	mullw r0, r26, r3
/* 8033A9B8 003378F8  7C 7A 29 D6 */	mullw r3, r26, r5
/* 8033A9BC 003378FC  7C 04 02 14 */	add r0, r4, r0
/* 8033A9C0 00337900  7F DE 18 14 */	addc r30, r30, r3
/* 8033A9C4 00337904  7F 39 01 14 */	adde r25, r25, r0
lbl_8033A9C8:
/* 8033A9C8 00337908  93 FD 00 00 */	stw r31, 0(r29)
/* 8033A9CC 0033790C  6F 24 80 00 */	xoris r4, r25, 0x8000
/* 8033A9D0 00337910  93 DD 00 0C */	stw r30, 0xc(r29)
/* 8033A9D4 00337914  93 3D 00 08 */	stw r25, 8(r29)
/* 8033A9D8 00337918  80 CD 90 B8 */	lwz r6, lbl_80451638-_SDA_BASE_(r13)
/* 8033A9DC 0033791C  48 00 00 C4 */	b lbl_8033AAA0
lbl_8033A9E0:
/* 8033A9E0 00337920  80 06 00 08 */	lwz r0, 8(r6)
/* 8033A9E4 00337924  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 8033A9E8 00337928  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8033A9EC 0033792C  7C 05 F0 10 */	subfc r0, r5, r30
/* 8033A9F0 00337930  7C 63 21 10 */	subfe r3, r3, r4
/* 8033A9F4 00337934  7C 64 21 10 */	subfe r3, r4, r4
/* 8033A9F8 00337938  7C 63 00 D1 */	neg. r3, r3
/* 8033A9FC 0033793C  41 82 00 A0 */	beq lbl_8033AA9C
/* 8033AA00 00337940  80 06 00 10 */	lwz r0, 0x10(r6)
/* 8033AA04 00337944  90 1D 00 10 */	stw r0, 0x10(r29)
/* 8033AA08 00337948  93 A6 00 10 */	stw r29, 0x10(r6)
/* 8033AA0C 0033794C  90 DD 00 14 */	stw r6, 0x14(r29)
/* 8033AA10 00337950  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8033AA14 00337954  28 03 00 00 */	cmplwi r3, 0
/* 8033AA18 00337958  41 82 00 0C */	beq lbl_8033AA24
/* 8033AA1C 0033795C  93 A3 00 14 */	stw r29, 0x14(r3)
/* 8033AA20 00337960  48 00 01 24 */	b lbl_8033AB44
lbl_8033AA24:
/* 8033AA24 00337964  93 AD 90 B8 */	stw r29, lbl_80451638-_SDA_BASE_(r13)
/* 8033AA28 00337968  48 00 7C F5 */	bl __OSGetSystemTime
/* 8033AA2C 0033796C  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 8033AA30 00337970  38 E0 00 00 */	li r7, 0
/* 8033AA34 00337974  80 1D 00 08 */	lwz r0, 8(r29)
/* 8033AA38 00337978  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8033AA3C 0033797C  7D 04 30 10 */	subfc r8, r4, r6
/* 8033AA40 00337980  7C 03 01 10 */	subfe r0, r3, r0
/* 8033AA44 00337984  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8033AA48 00337988  7C 07 40 10 */	subfc r0, r7, r8
/* 8033AA4C 0033798C  7C A5 31 10 */	subfe r5, r5, r6
/* 8033AA50 00337990  7C A6 31 10 */	subfe r5, r6, r6
/* 8033AA54 00337994  7C A5 00 D1 */	neg. r5, r5
/* 8033AA58 00337998  41 82 00 10 */	beq lbl_8033AA68
/* 8033AA5C 0033799C  38 60 00 00 */	li r3, 0
/* 8033AA60 003379A0  4B FF F2 91 */	bl PPCMtdec
/* 8033AA64 003379A4  48 00 00 E0 */	b lbl_8033AB44
lbl_8033AA68:
/* 8033AA68 003379A8  3C 80 80 00 */	lis r4, 0x8000
/* 8033AA6C 003379AC  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8033AA70 003379B0  7C 04 40 10 */	subfc r0, r4, r8
/* 8033AA74 003379B4  7C 63 31 10 */	subfe r3, r3, r6
/* 8033AA78 003379B8  7C 66 31 10 */	subfe r3, r6, r6
/* 8033AA7C 003379BC  7C 63 00 D1 */	neg. r3, r3
/* 8033AA80 003379C0  41 82 00 10 */	beq lbl_8033AA90
/* 8033AA84 003379C4  7D 03 43 78 */	mr r3, r8
/* 8033AA88 003379C8  4B FF F2 69 */	bl PPCMtdec
/* 8033AA8C 003379CC  48 00 00 B8 */	b lbl_8033AB44
lbl_8033AA90:
/* 8033AA90 003379D0  38 64 FF FF */	addi r3, r4, -1
/* 8033AA94 003379D4  4B FF F2 5D */	bl PPCMtdec
/* 8033AA98 003379D8  48 00 00 AC */	b lbl_8033AB44
lbl_8033AA9C:
/* 8033AA9C 003379DC  80 C6 00 14 */	lwz r6, 0x14(r6)
lbl_8033AAA0:
/* 8033AAA0 003379E0  28 06 00 00 */	cmplwi r6, 0
/* 8033AAA4 003379E4  40 82 FF 3C */	bne lbl_8033A9E0
/* 8033AAA8 003379E8  3B C0 00 00 */	li r30, 0
/* 8033AAAC 003379EC  93 DD 00 14 */	stw r30, 0x14(r29)
/* 8033AAB0 003379F0  38 6D 90 B8 */	addi r3, r13, lbl_80451638-_SDA_BASE_
/* 8033AAB4 003379F4  80 83 00 04 */	lwz r4, 4(r3)
/* 8033AAB8 003379F8  97 A3 00 04 */	stwu r29, 4(r3)
/* 8033AABC 003379FC  28 04 00 00 */	cmplwi r4, 0
/* 8033AAC0 00337A00  90 9D 00 10 */	stw r4, 0x10(r29)
/* 8033AAC4 00337A04  41 82 00 0C */	beq lbl_8033AAD0
/* 8033AAC8 00337A08  93 A4 00 14 */	stw r29, 0x14(r4)
/* 8033AACC 00337A0C  48 00 00 78 */	b lbl_8033AB44
lbl_8033AAD0:
/* 8033AAD0 00337A10  93 A3 00 00 */	stw r29, 0(r3)
/* 8033AAD4 00337A14  93 AD 90 B8 */	stw r29, lbl_80451638-_SDA_BASE_(r13)
/* 8033AAD8 00337A18  48 00 7C 45 */	bl __OSGetSystemTime
/* 8033AADC 00337A1C  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 8033AAE0 00337A20  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 8033AAE4 00337A24  80 1D 00 08 */	lwz r0, 8(r29)
/* 8033AAE8 00337A28  7C E4 30 10 */	subfc r7, r4, r6
/* 8033AAEC 00337A2C  7C 03 01 10 */	subfe r0, r3, r0
/* 8033AAF0 00337A30  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8033AAF4 00337A34  7C 1E 38 10 */	subfc r0, r30, r7
/* 8033AAF8 00337A38  7C A5 31 10 */	subfe r5, r5, r6
/* 8033AAFC 00337A3C  7C A6 31 10 */	subfe r5, r6, r6
/* 8033AB00 00337A40  7C A5 00 D1 */	neg. r5, r5
/* 8033AB04 00337A44  41 82 00 10 */	beq lbl_8033AB14
/* 8033AB08 00337A48  38 60 00 00 */	li r3, 0
/* 8033AB0C 00337A4C  4B FF F1 E5 */	bl PPCMtdec
/* 8033AB10 00337A50  48 00 00 34 */	b lbl_8033AB44
lbl_8033AB14:
/* 8033AB14 00337A54  3C 80 80 00 */	lis r4, 0x8000
/* 8033AB18 00337A58  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 8033AB1C 00337A5C  7C 04 38 10 */	subfc r0, r4, r7
/* 8033AB20 00337A60  7C 63 31 10 */	subfe r3, r3, r6
/* 8033AB24 00337A64  7C 66 31 10 */	subfe r3, r6, r6
/* 8033AB28 00337A68  7C 63 00 D1 */	neg. r3, r3
/* 8033AB2C 00337A6C  41 82 00 10 */	beq lbl_8033AB3C
/* 8033AB30 00337A70  7C E3 3B 78 */	mr r3, r7
/* 8033AB34 00337A74  4B FF F1 BD */	bl PPCMtdec
/* 8033AB38 00337A78  48 00 00 0C */	b lbl_8033AB44
lbl_8033AB3C:
/* 8033AB3C 00337A7C  38 64 FF FF */	addi r3, r4, -1
/* 8033AB40 00337A80  4B FF F1 B1 */	bl PPCMtdec
lbl_8033AB44:
/* 8033AB44 00337A84  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 8033AB48 00337A88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8033AB4C 00337A8C  38 21 00 40 */	addi r1, r1, 0x40
/* 8033AB50 00337A90  7C 08 03 A6 */	mtlr r0
/* 8033AB54 00337A94  4E 80 00 20 */	blr 

.global OSSetAlarm
OSSetAlarm:
/* 8033AB58 00337A98  7C 08 02 A6 */	mflr r0
/* 8033AB5C 00337A9C  90 01 00 04 */	stw r0, 4(r1)
/* 8033AB60 00337AA0  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8033AB64 00337AA4  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 8033AB68 00337AA8  3B 63 00 00 */	addi r27, r3, 0
/* 8033AB6C 00337AAC  3B A5 00 00 */	addi r29, r5, 0
/* 8033AB70 00337AB0  3B 86 00 00 */	addi r28, r6, 0
/* 8033AB74 00337AB4  3B C7 00 00 */	addi r30, r7, 0
/* 8033AB78 00337AB8  48 00 2B 7D */	bl __RAS_OSDisableInterrupts_begin 
/* 8033AB7C 00337ABC  38 00 00 00 */	li r0, 0
/* 8033AB80 00337AC0  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 8033AB84 00337AC4  7C 7F 1B 78 */	mr r31, r3
/* 8033AB88 00337AC8  90 1B 00 18 */	stw r0, 0x18(r27)
/* 8033AB8C 00337ACC  48 00 7B 91 */	bl __OSGetSystemTime
/* 8033AB90 00337AD0  7C DC 20 14 */	addc r6, r28, r4
/* 8033AB94 00337AD4  7C BD 19 14 */	adde r5, r29, r3
/* 8033AB98 00337AD8  38 7B 00 00 */	addi r3, r27, 0
/* 8033AB9C 00337ADC  38 FE 00 00 */	addi r7, r30, 0
/* 8033ABA0 00337AE0  4B FF FD 69 */	bl InsertAlarm
/* 8033ABA4 00337AE4  7F E3 FB 78 */	mr r3, r31
/* 8033ABA8 00337AE8  48 00 2B 75 */	bl OSRestoreInterrupts
/* 8033ABAC 00337AEC  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 8033ABB0 00337AF0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8033ABB4 00337AF4  38 21 00 38 */	addi r1, r1, 0x38
/* 8033ABB8 00337AF8  7C 08 03 A6 */	mtlr r0
/* 8033ABBC 00337AFC  4E 80 00 20 */	blr 

.global OSSetPeriodicAlarm
OSSetPeriodicAlarm:
/* 8033ABC0 00337B00  7C 08 02 A6 */	mflr r0
/* 8033ABC4 00337B04  90 01 00 04 */	stw r0, 4(r1)
/* 8033ABC8 00337B08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8033ABCC 00337B0C  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 8033ABD0 00337B10  3B 43 00 00 */	addi r26, r3, 0
/* 8033ABD4 00337B14  3B 85 00 00 */	addi r28, r5, 0
/* 8033ABD8 00337B18  3B 66 00 00 */	addi r27, r6, 0
/* 8033ABDC 00337B1C  3B A7 00 00 */	addi r29, r7, 0
/* 8033ABE0 00337B20  3B E8 00 00 */	addi r31, r8, 0
/* 8033ABE4 00337B24  3B C9 00 00 */	addi r30, r9, 0
/* 8033ABE8 00337B28  48 00 2B 0D */	bl __RAS_OSDisableInterrupts_begin 
/* 8033ABEC 00337B2C  93 FA 00 1C */	stw r31, 0x1c(r26)
/* 8033ABF0 00337B30  7C 7F 1B 78 */	mr r31, r3
/* 8033ABF4 00337B34  38 9B 00 00 */	addi r4, r27, 0
/* 8033ABF8 00337B38  93 BA 00 18 */	stw r29, 0x18(r26)
/* 8033ABFC 00337B3C  38 7C 00 00 */	addi r3, r28, 0
/* 8033AC00 00337B40  48 00 7B 81 */	bl __OSTimeToSystemTime
/* 8033AC04 00337B44  90 9A 00 24 */	stw r4, 0x24(r26)
/* 8033AC08 00337B48  38 FE 00 00 */	addi r7, r30, 0
/* 8033AC0C 00337B4C  38 C0 00 00 */	li r6, 0
/* 8033AC10 00337B50  90 7A 00 20 */	stw r3, 0x20(r26)
/* 8033AC14 00337B54  38 7A 00 00 */	addi r3, r26, 0
/* 8033AC18 00337B58  38 A0 00 00 */	li r5, 0
/* 8033AC1C 00337B5C  4B FF FC ED */	bl InsertAlarm
/* 8033AC20 00337B60  7F E3 FB 78 */	mr r3, r31
/* 8033AC24 00337B64  48 00 2A F9 */	bl OSRestoreInterrupts
/* 8033AC28 00337B68  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 8033AC2C 00337B6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8033AC30 00337B70  38 21 00 40 */	addi r1, r1, 0x40
/* 8033AC34 00337B74  7C 08 03 A6 */	mtlr r0
/* 8033AC38 00337B78  4E 80 00 20 */	blr 

.global OSCancelAlarm
OSCancelAlarm:
/* 8033AC3C 00337B7C  7C 08 02 A6 */	mflr r0
/* 8033AC40 00337B80  90 01 00 04 */	stw r0, 4(r1)
/* 8033AC44 00337B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033AC48 00337B88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033AC4C 00337B8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033AC50 00337B90  7C 7E 1B 78 */	mr r30, r3
/* 8033AC54 00337B94  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033AC58 00337B98  48 00 2A 9D */	bl __RAS_OSDisableInterrupts_begin 
/* 8033AC5C 00337B9C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8033AC60 00337BA0  3B E3 00 00 */	addi r31, r3, 0
/* 8033AC64 00337BA4  28 00 00 00 */	cmplwi r0, 0
/* 8033AC68 00337BA8  40 82 00 10 */	bne lbl_8033AC78
/* 8033AC6C 00337BAC  7F E3 FB 78 */	mr r3, r31
/* 8033AC70 00337BB0  48 00 2A AD */	bl OSRestoreInterrupts
/* 8033AC74 00337BB4  48 00 00 C8 */	b lbl_8033AD3C
lbl_8033AC78:
/* 8033AC78 00337BB8  83 BE 00 14 */	lwz r29, 0x14(r30)
/* 8033AC7C 00337BBC  28 1D 00 00 */	cmplwi r29, 0
/* 8033AC80 00337BC0  40 82 00 14 */	bne lbl_8033AC94
/* 8033AC84 00337BC4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8033AC88 00337BC8  38 6D 90 B8 */	addi r3, r13, lbl_80451638-_SDA_BASE_
/* 8033AC8C 00337BCC  90 03 00 04 */	stw r0, 4(r3)
/* 8033AC90 00337BD0  48 00 00 0C */	b lbl_8033AC9C
lbl_8033AC94:
/* 8033AC94 00337BD4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8033AC98 00337BD8  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_8033AC9C:
/* 8033AC9C 00337BDC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8033ACA0 00337BE0  28 03 00 00 */	cmplwi r3, 0
/* 8033ACA4 00337BE4  41 82 00 0C */	beq lbl_8033ACB0
/* 8033ACA8 00337BE8  93 A3 00 14 */	stw r29, 0x14(r3)
/* 8033ACAC 00337BEC  48 00 00 80 */	b lbl_8033AD2C
lbl_8033ACB0:
/* 8033ACB0 00337BF0  28 1D 00 00 */	cmplwi r29, 0
/* 8033ACB4 00337BF4  93 AD 90 B8 */	stw r29, lbl_80451638-_SDA_BASE_(r13)
/* 8033ACB8 00337BF8  41 82 00 74 */	beq lbl_8033AD2C
/* 8033ACBC 00337BFC  48 00 7A 61 */	bl __OSGetSystemTime
/* 8033ACC0 00337C00  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 8033ACC4 00337C04  38 E0 00 00 */	li r7, 0
/* 8033ACC8 00337C08  80 1D 00 08 */	lwz r0, 8(r29)
/* 8033ACCC 00337C0C  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8033ACD0 00337C10  7D 04 30 10 */	subfc r8, r4, r6
/* 8033ACD4 00337C14  7C 03 01 10 */	subfe r0, r3, r0
/* 8033ACD8 00337C18  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8033ACDC 00337C1C  7C 07 40 10 */	subfc r0, r7, r8
/* 8033ACE0 00337C20  7C A5 31 10 */	subfe r5, r5, r6
/* 8033ACE4 00337C24  7C A6 31 10 */	subfe r5, r6, r6
/* 8033ACE8 00337C28  7C A5 00 D1 */	neg. r5, r5
/* 8033ACEC 00337C2C  41 82 00 10 */	beq lbl_8033ACFC
/* 8033ACF0 00337C30  38 60 00 00 */	li r3, 0
/* 8033ACF4 00337C34  4B FF EF FD */	bl PPCMtdec
/* 8033ACF8 00337C38  48 00 00 34 */	b lbl_8033AD2C
lbl_8033ACFC:
/* 8033ACFC 00337C3C  3C 80 80 00 */	lis r4, 0x8000
/* 8033AD00 00337C40  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8033AD04 00337C44  7C 04 40 10 */	subfc r0, r4, r8
/* 8033AD08 00337C48  7C 63 31 10 */	subfe r3, r3, r6
/* 8033AD0C 00337C4C  7C 66 31 10 */	subfe r3, r6, r6
/* 8033AD10 00337C50  7C 63 00 D1 */	neg. r3, r3
/* 8033AD14 00337C54  41 82 00 10 */	beq lbl_8033AD24
/* 8033AD18 00337C58  7D 03 43 78 */	mr r3, r8
/* 8033AD1C 00337C5C  4B FF EF D5 */	bl PPCMtdec
/* 8033AD20 00337C60  48 00 00 0C */	b lbl_8033AD2C
lbl_8033AD24:
/* 8033AD24 00337C64  38 64 FF FF */	addi r3, r4, -1
/* 8033AD28 00337C68  4B FF EF C9 */	bl PPCMtdec
lbl_8033AD2C:
/* 8033AD2C 00337C6C  38 00 00 00 */	li r0, 0
/* 8033AD30 00337C70  90 1E 00 00 */	stw r0, 0(r30)
/* 8033AD34 00337C74  7F E3 FB 78 */	mr r3, r31
/* 8033AD38 00337C78  48 00 29 E5 */	bl OSRestoreInterrupts
lbl_8033AD3C:
/* 8033AD3C 00337C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033AD40 00337C80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033AD44 00337C84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033AD48 00337C88  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033AD4C 00337C8C  38 21 00 20 */	addi r1, r1, 0x20
/* 8033AD50 00337C90  7C 08 03 A6 */	mtlr r0
/* 8033AD54 00337C94  4E 80 00 20 */	blr 
.global DecrementerExceptionCallback
DecrementerExceptionCallback:
/* 8033AD58 00337C98  7C 08 02 A6 */	mflr r0
/* 8033AD5C 00337C9C  90 01 00 04 */	stw r0, 4(r1)
/* 8033AD60 00337CA0  94 21 FD 10 */	stwu r1, -0x2f0(r1)
/* 8033AD64 00337CA4  93 E1 02 EC */	stw r31, 0x2ec(r1)
/* 8033AD68 00337CA8  93 C1 02 E8 */	stw r30, 0x2e8(r1)
/* 8033AD6C 00337CAC  93 A1 02 E4 */	stw r29, 0x2e4(r1)
/* 8033AD70 00337CB0  7C 9D 23 78 */	mr r29, r4
/* 8033AD74 00337CB4  93 81 02 E0 */	stw r28, 0x2e0(r1)
/* 8033AD78 00337CB8  48 00 79 A5 */	bl __OSGetSystemTime
/* 8033AD7C 00337CBC  80 0D 90 B8 */	lwz r0, lbl_80451638-_SDA_BASE_(r13)
/* 8033AD80 00337CC0  3B 84 00 00 */	addi r28, r4, 0
/* 8033AD84 00337CC4  3B C3 00 00 */	addi r30, r3, 0
/* 8033AD88 00337CC8  28 00 00 00 */	cmplwi r0, 0
/* 8033AD8C 00337CCC  7C 1F 03 78 */	mr r31, r0
/* 8033AD90 00337CD0  40 82 00 0C */	bne lbl_8033AD9C
/* 8033AD94 00337CD4  7F A3 EB 78 */	mr r3, r29
/* 8033AD98 00337CD8  48 00 11 89 */	bl OSLoadContext
lbl_8033AD9C:
/* 8033AD9C 00337CDC  80 1F 00 08 */	lwz r0, 8(r31)
/* 8033ADA0 00337CE0  6F C4 80 00 */	xoris r4, r30, 0x8000
/* 8033ADA4 00337CE4  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8033ADA8 00337CE8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8033ADAC 00337CEC  7C 05 E0 10 */	subfc r0, r5, r28
/* 8033ADB0 00337CF0  7C 63 21 10 */	subfe r3, r3, r4
/* 8033ADB4 00337CF4  7C 64 21 10 */	subfe r3, r4, r4
/* 8033ADB8 00337CF8  7C 63 00 D1 */	neg. r3, r3
/* 8033ADBC 00337CFC  41 82 00 7C */	beq lbl_8033AE38
/* 8033ADC0 00337D00  48 00 79 5D */	bl __OSGetSystemTime
/* 8033ADC4 00337D04  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 8033ADC8 00337D08  38 E0 00 00 */	li r7, 0
/* 8033ADCC 00337D0C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8033ADD0 00337D10  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8033ADD4 00337D14  7D 04 30 10 */	subfc r8, r4, r6
/* 8033ADD8 00337D18  7C 03 01 10 */	subfe r0, r3, r0
/* 8033ADDC 00337D1C  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8033ADE0 00337D20  7C 07 40 10 */	subfc r0, r7, r8
/* 8033ADE4 00337D24  7C A5 31 10 */	subfe r5, r5, r6
/* 8033ADE8 00337D28  7C A6 31 10 */	subfe r5, r6, r6
/* 8033ADEC 00337D2C  7C A5 00 D1 */	neg. r5, r5
/* 8033ADF0 00337D30  41 82 00 10 */	beq lbl_8033AE00
/* 8033ADF4 00337D34  38 60 00 00 */	li r3, 0
/* 8033ADF8 00337D38  4B FF EE F9 */	bl PPCMtdec
/* 8033ADFC 00337D3C  48 00 00 34 */	b lbl_8033AE30
lbl_8033AE00:
/* 8033AE00 00337D40  3C 80 80 00 */	lis r4, 0x8000
/* 8033AE04 00337D44  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8033AE08 00337D48  7C 04 40 10 */	subfc r0, r4, r8
/* 8033AE0C 00337D4C  7C 63 31 10 */	subfe r3, r3, r6
/* 8033AE10 00337D50  7C 66 31 10 */	subfe r3, r6, r6
/* 8033AE14 00337D54  7C 63 00 D1 */	neg. r3, r3
/* 8033AE18 00337D58  41 82 00 10 */	beq lbl_8033AE28
/* 8033AE1C 00337D5C  7D 03 43 78 */	mr r3, r8
/* 8033AE20 00337D60  4B FF EE D1 */	bl PPCMtdec
/* 8033AE24 00337D64  48 00 00 0C */	b lbl_8033AE30
lbl_8033AE28:
/* 8033AE28 00337D68  38 64 FF FF */	addi r3, r4, -1
/* 8033AE2C 00337D6C  4B FF EE C5 */	bl PPCMtdec
lbl_8033AE30:
/* 8033AE30 00337D70  7F A3 EB 78 */	mr r3, r29
/* 8033AE34 00337D74  48 00 10 ED */	bl OSLoadContext
lbl_8033AE38:
/* 8033AE38 00337D78  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8033AE3C 00337D7C  28 03 00 00 */	cmplwi r3, 0
/* 8033AE40 00337D80  90 6D 90 B8 */	stw r3, lbl_80451638-_SDA_BASE_(r13)
/* 8033AE44 00337D84  40 82 00 14 */	bne lbl_8033AE58
/* 8033AE48 00337D88  38 00 00 00 */	li r0, 0
/* 8033AE4C 00337D8C  38 6D 90 B8 */	addi r3, r13, lbl_80451638-_SDA_BASE_
/* 8033AE50 00337D90  90 03 00 04 */	stw r0, 4(r3)
/* 8033AE54 00337D94  48 00 00 0C */	b lbl_8033AE60
lbl_8033AE58:
/* 8033AE58 00337D98  38 00 00 00 */	li r0, 0
/* 8033AE5C 00337D9C  90 03 00 10 */	stw r0, 0x10(r3)
lbl_8033AE60:
/* 8033AE60 00337DA0  83 DF 00 00 */	lwz r30, 0(r31)
/* 8033AE64 00337DA4  38 C0 00 00 */	li r6, 0
/* 8033AE68 00337DA8  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 8033AE6C 00337DAC  90 DF 00 00 */	stw r6, 0(r31)
/* 8033AE70 00337DB0  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8033AE74 00337DB4  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 8033AE78 00337DB8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8033AE7C 00337DBC  7C 05 30 10 */	subfc r0, r5, r6
/* 8033AE80 00337DC0  7C 63 21 10 */	subfe r3, r3, r4
/* 8033AE84 00337DC4  7C 64 21 10 */	subfe r3, r4, r4
/* 8033AE88 00337DC8  7C 63 00 D1 */	neg. r3, r3
/* 8033AE8C 00337DCC  41 82 00 18 */	beq lbl_8033AEA4
/* 8033AE90 00337DD0  38 7F 00 00 */	addi r3, r31, 0
/* 8033AE94 00337DD4  38 FE 00 00 */	addi r7, r30, 0
/* 8033AE98 00337DD8  38 C0 00 00 */	li r6, 0
/* 8033AE9C 00337DDC  38 A0 00 00 */	li r5, 0
/* 8033AEA0 00337DE0  4B FF FA 69 */	bl InsertAlarm
lbl_8033AEA4:
/* 8033AEA4 00337DE4  83 8D 90 B8 */	lwz r28, lbl_80451638-_SDA_BASE_(r13)
/* 8033AEA8 00337DE8  28 1C 00 00 */	cmplwi r28, 0
/* 8033AEAC 00337DEC  41 82 00 74 */	beq lbl_8033AF20
/* 8033AEB0 00337DF0  48 00 78 6D */	bl __OSGetSystemTime
/* 8033AEB4 00337DF4  80 DC 00 0C */	lwz r6, 0xc(r28)
/* 8033AEB8 00337DF8  38 E0 00 00 */	li r7, 0
/* 8033AEBC 00337DFC  80 1C 00 08 */	lwz r0, 8(r28)
/* 8033AEC0 00337E00  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8033AEC4 00337E04  7D 04 30 10 */	subfc r8, r4, r6
/* 8033AEC8 00337E08  7C 03 01 10 */	subfe r0, r3, r0
/* 8033AECC 00337E0C  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8033AED0 00337E10  7C 07 40 10 */	subfc r0, r7, r8
/* 8033AED4 00337E14  7C A5 31 10 */	subfe r5, r5, r6
/* 8033AED8 00337E18  7C A6 31 10 */	subfe r5, r6, r6
/* 8033AEDC 00337E1C  7C A5 00 D1 */	neg. r5, r5
/* 8033AEE0 00337E20  41 82 00 10 */	beq lbl_8033AEF0
/* 8033AEE4 00337E24  38 60 00 00 */	li r3, 0
/* 8033AEE8 00337E28  4B FF EE 09 */	bl PPCMtdec
/* 8033AEEC 00337E2C  48 00 00 34 */	b lbl_8033AF20
lbl_8033AEF0:
/* 8033AEF0 00337E30  3C 80 80 00 */	lis r4, 0x8000
/* 8033AEF4 00337E34  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8033AEF8 00337E38  7C 04 40 10 */	subfc r0, r4, r8
/* 8033AEFC 00337E3C  7C 63 31 10 */	subfe r3, r3, r6
/* 8033AF00 00337E40  7C 66 31 10 */	subfe r3, r6, r6
/* 8033AF04 00337E44  7C 63 00 D1 */	neg. r3, r3
/* 8033AF08 00337E48  41 82 00 10 */	beq lbl_8033AF18
/* 8033AF0C 00337E4C  7D 03 43 78 */	mr r3, r8
/* 8033AF10 00337E50  4B FF ED E1 */	bl PPCMtdec
/* 8033AF14 00337E54  48 00 00 0C */	b lbl_8033AF20
lbl_8033AF18:
/* 8033AF18 00337E58  38 64 FF FF */	addi r3, r4, -1
/* 8033AF1C 00337E5C  4B FF ED D5 */	bl PPCMtdec
lbl_8033AF20:
/* 8033AF20 00337E60  48 00 5D A5 */	bl OSDisableScheduler
/* 8033AF24 00337E64  38 61 00 18 */	addi r3, r1, 0x18
/* 8033AF28 00337E68  48 00 10 D9 */	bl OSClearContext
/* 8033AF2C 00337E6C  38 61 00 18 */	addi r3, r1, 0x18
/* 8033AF30 00337E70  48 00 0F 09 */	bl OSSetCurrentContext
/* 8033AF34 00337E74  39 9E 00 00 */	addi r12, r30, 0
/* 8033AF38 00337E78  7D 88 03 A6 */	mtlr r12
/* 8033AF3C 00337E7C  38 7F 00 00 */	addi r3, r31, 0
/* 8033AF40 00337E80  38 9D 00 00 */	addi r4, r29, 0
/* 8033AF44 00337E84  4E 80 00 21 */	blrl 
/* 8033AF48 00337E88  38 61 00 18 */	addi r3, r1, 0x18
/* 8033AF4C 00337E8C  48 00 10 B5 */	bl OSClearContext
/* 8033AF50 00337E90  7F A3 EB 78 */	mr r3, r29
/* 8033AF54 00337E94  48 00 0E E5 */	bl OSSetCurrentContext
/* 8033AF58 00337E98  48 00 5D AD */	bl OSEnableScheduler
/* 8033AF5C 00337E9C  48 00 62 C5 */	bl __OSReschedule
/* 8033AF60 00337EA0  7F A3 EB 78 */	mr r3, r29
/* 8033AF64 00337EA4  48 00 0F BD */	bl OSLoadContext
/* 8033AF68 00337EA8  80 01 02 F4 */	lwz r0, 0x2f4(r1)
/* 8033AF6C 00337EAC  83 E1 02 EC */	lwz r31, 0x2ec(r1)
/* 8033AF70 00337EB0  83 C1 02 E8 */	lwz r30, 0x2e8(r1)
/* 8033AF74 00337EB4  83 A1 02 E4 */	lwz r29, 0x2e4(r1)
/* 8033AF78 00337EB8  83 81 02 E0 */	lwz r28, 0x2e0(r1)
/* 8033AF7C 00337EBC  38 21 02 F0 */	addi r1, r1, 0x2f0
/* 8033AF80 00337EC0  7C 08 03 A6 */	mtlr r0
/* 8033AF84 00337EC4  4E 80 00 20 */	blr 
.global DecrementerExceptionHandler
DecrementerExceptionHandler:
/* 8033AF88 00337EC8  90 04 00 00 */	stw r0, 0(r4)
/* 8033AF8C 00337ECC  90 24 00 04 */	stw r1, 4(r4)
/* 8033AF90 00337ED0  90 44 00 08 */	stw r2, 8(r4)
/* 8033AF94 00337ED4  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 8033AF98 00337ED8  7C 11 E2 A6 */	mfspr r0, 0x391
/* 8033AF9C 00337EDC  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 8033AFA0 00337EE0  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8033AFA4 00337EE4  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 8033AFA8 00337EE8  7C 13 E2 A6 */	mfspr r0, 0x393
/* 8033AFAC 00337EEC  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 8033AFB0 00337EF0  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8033AFB4 00337EF4  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 8033AFB8 00337EF8  7C 15 E2 A6 */	mfspr r0, 0x395
/* 8033AFBC 00337EFC  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 8033AFC0 00337F00  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8033AFC4 00337F04  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 8033AFC8 00337F08  7C 17 E2 A6 */	mfspr r0, 0x397
/* 8033AFCC 00337F0C  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 8033AFD0 00337F10  94 21 FF F8 */	stwu r1, -8(r1)
.global DecrementerExceptionCallback
/* 8033AFD4 00337F14  4B FF FD 84 */	b DecrementerExceptionCallback
/* 8033AFD8 00337F18  7C 08 02 A6 */	mflr r0
/* 8033AFDC 00337F1C  90 01 00 04 */	stw r0, 4(r1)
/* 8033AFE0 00337F20  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8033AFE4 00337F24  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8033AFE8 00337F28  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8033AFEC 00337F2C  2C 03 00 00 */	cmpwi r3, 0
/* 8033AFF0 00337F30  41 82 00 6C */	beq lbl_8033B05C
/* 8033AFF4 00337F34  80 0D 90 B8 */	lwz r0, lbl_80451638-_SDA_BASE_(r13)
/* 8033AFF8 00337F38  28 00 00 00 */	cmplwi r0, 0
/* 8033AFFC 00337F3C  7C 1F 03 78 */	mr r31, r0
/* 8033B000 00337F40  41 82 00 0C */	beq lbl_8033B00C
/* 8033B004 00337F44  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8033B008 00337F48  48 00 00 08 */	b lbl_8033B010
lbl_8033B00C:
/* 8033B00C 00337F4C  38 00 00 00 */	li r0, 0
lbl_8033B010:
/* 8033B010 00337F50  7C 1E 03 78 */	mr r30, r0
/* 8033B014 00337F54  48 00 00 04 */	b lbl_8033B018
lbl_8033B018:
/* 8033B018 00337F58  48 00 00 04 */	b lbl_8033B01C
lbl_8033B01C:
/* 8033B01C 00337F5C  48 00 00 38 */	b lbl_8033B054
lbl_8033B020:
/* 8033B020 00337F60  7F E3 FB 78 */	mr r3, r31
/* 8033B024 00337F64  48 01 08 19 */	bl __DVDTestAlarm
/* 8033B028 00337F68  2C 03 00 00 */	cmpwi r3, 0
/* 8033B02C 00337F6C  40 82 00 0C */	bne lbl_8033B038
/* 8033B030 00337F70  7F E3 FB 78 */	mr r3, r31
/* 8033B034 00337F74  4B FF FC 09 */	bl OSCancelAlarm
lbl_8033B038:
/* 8033B038 00337F78  28 1E 00 00 */	cmplwi r30, 0
/* 8033B03C 00337F7C  7F DF F3 78 */	mr r31, r30
/* 8033B040 00337F80  41 82 00 0C */	beq lbl_8033B04C
/* 8033B044 00337F84  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8033B048 00337F88  48 00 00 08 */	b lbl_8033B050
lbl_8033B04C:
/* 8033B04C 00337F8C  38 00 00 00 */	li r0, 0
lbl_8033B050:
/* 8033B050 00337F90  7C 1E 03 78 */	mr r30, r0
lbl_8033B054:
/* 8033B054 00337F94  28 1F 00 00 */	cmplwi r31, 0
/* 8033B058 00337F98  40 82 FF C8 */	bne lbl_8033B020
lbl_8033B05C:
/* 8033B05C 00337F9C  38 60 00 01 */	li r3, 1
/* 8033B060 00337FA0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8033B064 00337FA4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8033B068 00337FA8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8033B06C 00337FAC  38 21 00 18 */	addi r1, r1, 0x18
/* 8033B070 00337FB0  7C 08 03 A6 */	mtlr r0
/* 8033B074 00337FB4  4E 80 00 20 */	blr 


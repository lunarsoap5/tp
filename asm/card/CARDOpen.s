.include "macros.inc"

.section .text, "ax" # 80357c74


.global __CARDCompareFileName
__CARDCompareFileName:
/* 80357C74 00354BB4  38 A3 00 08 */	addi r5, r3, 8
/* 80357C78 00354BB8  38 E0 00 20 */	li r7, 0x20
/* 80357C7C 00354BBC  48 00 00 3C */	b lbl_80357CB8
lbl_80357C80:
/* 80357C80 00354BC0  88 05 00 00 */	lbz r0, 0(r5)
/* 80357C84 00354BC4  38 A5 00 01 */	addi r5, r5, 1
/* 80357C88 00354BC8  88 C4 00 00 */	lbz r6, 0(r4)
/* 80357C8C 00354BCC  38 84 00 01 */	addi r4, r4, 1
/* 80357C90 00354BD0  7C 03 07 74 */	extsb r3, r0
/* 80357C94 00354BD4  7C C0 07 74 */	extsb r0, r6
/* 80357C98 00354BD8  7C 03 00 00 */	cmpw r3, r0
/* 80357C9C 00354BDC  41 82 00 0C */	beq lbl_80357CA8
/* 80357CA0 00354BE0  38 60 00 00 */	li r3, 0
/* 80357CA4 00354BE4  4E 80 00 20 */	blr 
lbl_80357CA8:
/* 80357CA8 00354BE8  7C C0 07 75 */	extsb. r0, r6
/* 80357CAC 00354BEC  40 82 00 0C */	bne lbl_80357CB8
/* 80357CB0 00354BF0  38 60 00 01 */	li r3, 1
/* 80357CB4 00354BF4  4E 80 00 20 */	blr 
lbl_80357CB8:
/* 80357CB8 00354BF8  34 E7 FF FF */	addic. r7, r7, -1
/* 80357CBC 00354BFC  40 80 FF C4 */	bge lbl_80357C80
/* 80357CC0 00354C00  88 04 00 00 */	lbz r0, 0(r4)
/* 80357CC4 00354C04  7C 00 07 75 */	extsb. r0, r0
/* 80357CC8 00354C08  40 82 00 0C */	bne lbl_80357CD4
/* 80357CCC 00354C0C  38 60 00 01 */	li r3, 1
/* 80357CD0 00354C10  4E 80 00 20 */	blr 
lbl_80357CD4:
/* 80357CD4 00354C14  38 60 00 00 */	li r3, 0
/* 80357CD8 00354C18  4E 80 00 20 */	blr 

.global __CARDAccess
__CARDAccess:
/* 80357CDC 00354C1C  7C 08 02 A6 */	mflr r0
/* 80357CE0 00354C20  90 01 00 04 */	stw r0, 4(r1)
/* 80357CE4 00354C24  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80357CE8 00354C28  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80357CEC 00354C2C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80357CF0 00354C30  7C 9E 23 78 */	mr r30, r4
/* 80357CF4 00354C34  88 04 00 00 */	lbz r0, 0(r4)
/* 80357CF8 00354C38  83 E3 01 0C */	lwz r31, 0x10c(r3)
/* 80357CFC 00354C3C  28 00 00 FF */	cmplwi r0, 0xff
/* 80357D00 00354C40  40 82 00 0C */	bne lbl_80357D0C
/* 80357D04 00354C44  38 60 FF FC */	li r3, -4
/* 80357D08 00354C48  48 00 00 50 */	b lbl_80357D58
lbl_80357D0C:
/* 80357D0C 00354C4C  3C 60 80 45 */	lis r3, lbl_8044CDE0@ha
/* 80357D10 00354C50  38 03 CD E0 */	addi r0, r3, lbl_8044CDE0@l
/* 80357D14 00354C54  7C 1F 00 40 */	cmplw r31, r0
/* 80357D18 00354C58  41 82 00 34 */	beq lbl_80357D4C
/* 80357D1C 00354C5C  38 7E 00 00 */	addi r3, r30, 0
/* 80357D20 00354C60  38 9F 00 00 */	addi r4, r31, 0
/* 80357D24 00354C64  38 A0 00 04 */	li r5, 4
/* 80357D28 00354C68  48 00 E3 65 */	bl memcmp
/* 80357D2C 00354C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80357D30 00354C70  40 82 00 24 */	bne lbl_80357D54
/* 80357D34 00354C74  38 7E 00 04 */	addi r3, r30, 4
/* 80357D38 00354C78  38 9F 00 04 */	addi r4, r31, 4
/* 80357D3C 00354C7C  38 A0 00 02 */	li r5, 2
/* 80357D40 00354C80  48 00 E3 4D */	bl memcmp
/* 80357D44 00354C84  2C 03 00 00 */	cmpwi r3, 0
/* 80357D48 00354C88  40 82 00 0C */	bne lbl_80357D54
lbl_80357D4C:
/* 80357D4C 00354C8C  38 60 00 00 */	li r3, 0
/* 80357D50 00354C90  48 00 00 08 */	b lbl_80357D58
lbl_80357D54:
/* 80357D54 00354C94  38 60 FF F6 */	li r3, -10
lbl_80357D58:
/* 80357D58 00354C98  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80357D5C 00354C9C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80357D60 00354CA0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80357D64 00354CA4  38 21 00 18 */	addi r1, r1, 0x18
/* 80357D68 00354CA8  7C 08 03 A6 */	mtlr r0
/* 80357D6C 00354CAC  4E 80 00 20 */	blr 

.global __CARDIsWritable
__CARDIsWritable:
/* 80357D70 00354CB0  7C 08 02 A6 */	mflr r0
/* 80357D74 00354CB4  90 01 00 04 */	stw r0, 4(r1)
/* 80357D78 00354CB8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80357D7C 00354CBC  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 80357D80 00354CC0  7C 9B 23 78 */	mr r27, r4
/* 80357D84 00354CC4  88 04 00 00 */	lbz r0, 0(r4)
/* 80357D88 00354CC8  83 A3 01 0C */	lwz r29, 0x10c(r3)
/* 80357D8C 00354CCC  28 00 00 FF */	cmplwi r0, 0xff
/* 80357D90 00354CD0  40 82 00 0C */	bne lbl_80357D9C
/* 80357D94 00354CD4  3B C0 FF FC */	li r30, -4
/* 80357D98 00354CD8  48 00 00 50 */	b lbl_80357DE8
lbl_80357D9C:
/* 80357D9C 00354CDC  3C 60 80 45 */	lis r3, lbl_8044CDE0@ha
/* 80357DA0 00354CE0  38 03 CD E0 */	addi r0, r3, lbl_8044CDE0@l
/* 80357DA4 00354CE4  7C 1D 00 40 */	cmplw r29, r0
/* 80357DA8 00354CE8  41 82 00 34 */	beq lbl_80357DDC
/* 80357DAC 00354CEC  38 7B 00 00 */	addi r3, r27, 0
/* 80357DB0 00354CF0  38 9D 00 00 */	addi r4, r29, 0
/* 80357DB4 00354CF4  38 A0 00 04 */	li r5, 4
/* 80357DB8 00354CF8  48 00 E2 D5 */	bl memcmp
/* 80357DBC 00354CFC  2C 03 00 00 */	cmpwi r3, 0
/* 80357DC0 00354D00  40 82 00 24 */	bne lbl_80357DE4
/* 80357DC4 00354D04  38 7B 00 04 */	addi r3, r27, 4
/* 80357DC8 00354D08  38 9D 00 04 */	addi r4, r29, 4
/* 80357DCC 00354D0C  38 A0 00 02 */	li r5, 2
/* 80357DD0 00354D10  48 00 E2 BD */	bl memcmp
/* 80357DD4 00354D14  2C 03 00 00 */	cmpwi r3, 0
/* 80357DD8 00354D18  40 82 00 0C */	bne lbl_80357DE4
lbl_80357DDC:
/* 80357DDC 00354D1C  3B C0 00 00 */	li r30, 0
/* 80357DE0 00354D20  48 00 00 08 */	b lbl_80357DE8
lbl_80357DE4:
/* 80357DE4 00354D24  3B C0 FF F6 */	li r30, -10
lbl_80357DE8:
/* 80357DE8 00354D28  2C 1E FF F6 */	cmpwi r30, -10
/* 80357DEC 00354D2C  40 82 00 A0 */	bne lbl_80357E8C
/* 80357DF0 00354D30  88 7B 00 34 */	lbz r3, 0x34(r27)
/* 80357DF4 00354D34  88 0D 84 F2 */	lbz r0, lbl_80450A72-_SDA_BASE_(r13)
/* 80357DF8 00354D38  7C 60 00 38 */	and r0, r3, r0
/* 80357DFC 00354D3C  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80357E00 00354D40  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80357E04 00354D44  41 82 00 44 */	beq lbl_80357E48
/* 80357E08 00354D48  3C 60 80 45 */	lis r3, lbl_8044CDE0@ha
/* 80357E0C 00354D4C  3B E3 CD E0 */	addi r31, r3, lbl_8044CDE0@l
/* 80357E10 00354D50  38 7B 00 00 */	addi r3, r27, 0
/* 80357E14 00354D54  38 9F 00 00 */	addi r4, r31, 0
/* 80357E18 00354D58  38 A0 00 04 */	li r5, 4
/* 80357E1C 00354D5C  48 00 E2 71 */	bl memcmp
/* 80357E20 00354D60  2C 03 00 00 */	cmpwi r3, 0
/* 80357E24 00354D64  40 82 00 24 */	bne lbl_80357E48
/* 80357E28 00354D68  38 7B 00 04 */	addi r3, r27, 4
/* 80357E2C 00354D6C  38 9F 00 04 */	addi r4, r31, 4
/* 80357E30 00354D70  38 A0 00 02 */	li r5, 2
/* 80357E34 00354D74  48 00 E2 59 */	bl memcmp
/* 80357E38 00354D78  2C 03 00 00 */	cmpwi r3, 0
/* 80357E3C 00354D7C  40 82 00 0C */	bne lbl_80357E48
/* 80357E40 00354D80  38 60 00 00 */	li r3, 0
/* 80357E44 00354D84  48 00 00 4C */	b lbl_80357E90
lbl_80357E48:
/* 80357E48 00354D88  57 80 06 73 */	rlwinm. r0, r28, 0, 0x19, 0x19
/* 80357E4C 00354D8C  41 82 00 40 */	beq lbl_80357E8C
/* 80357E50 00354D90  3C 60 80 45 */	lis r3, lbl_8044CDE0@ha
/* 80357E54 00354D94  38 83 CD E0 */	addi r4, r3, lbl_8044CDE0@l
/* 80357E58 00354D98  38 7B 00 00 */	addi r3, r27, 0
/* 80357E5C 00354D9C  38 A0 00 04 */	li r5, 4
/* 80357E60 00354DA0  48 00 E2 2D */	bl memcmp
/* 80357E64 00354DA4  2C 03 00 00 */	cmpwi r3, 0
/* 80357E68 00354DA8  40 82 00 24 */	bne lbl_80357E8C
/* 80357E6C 00354DAC  38 7B 00 04 */	addi r3, r27, 4
/* 80357E70 00354DB0  38 9D 00 04 */	addi r4, r29, 4
/* 80357E74 00354DB4  38 A0 00 02 */	li r5, 2
/* 80357E78 00354DB8  48 00 E2 15 */	bl memcmp
/* 80357E7C 00354DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80357E80 00354DC0  40 82 00 0C */	bne lbl_80357E8C
/* 80357E84 00354DC4  38 60 00 00 */	li r3, 0
/* 80357E88 00354DC8  48 00 00 08 */	b lbl_80357E90
lbl_80357E8C:
/* 80357E8C 00354DCC  7F C3 F3 78 */	mr r3, r30
lbl_80357E90:
/* 80357E90 00354DD0  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 80357E94 00354DD4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80357E98 00354DD8  38 21 00 28 */	addi r1, r1, 0x28
/* 80357E9C 00354DDC  7C 08 03 A6 */	mtlr r0
/* 80357EA0 00354DE0  4E 80 00 20 */	blr 

.global __CARDIsReadable
__CARDIsReadable:
/* 80357EA4 00354DE4  7C 08 02 A6 */	mflr r0
/* 80357EA8 00354DE8  90 01 00 04 */	stw r0, 4(r1)
/* 80357EAC 00354DEC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80357EB0 00354DF0  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 80357EB4 00354DF4  7C 9B 23 78 */	mr r27, r4
/* 80357EB8 00354DF8  83 83 01 0C */	lwz r28, 0x10c(r3)
/* 80357EBC 00354DFC  4B FF FE 21 */	bl __CARDAccess
/* 80357EC0 00354E00  3B A3 00 00 */	addi r29, r3, 0
/* 80357EC4 00354E04  2C 1D FF F6 */	cmpwi r29, -10
/* 80357EC8 00354E08  40 82 00 9C */	bne lbl_80357F64
/* 80357ECC 00354E0C  88 7B 00 34 */	lbz r3, 0x34(r27)
/* 80357ED0 00354E10  88 0D 84 F2 */	lbz r0, lbl_80450A72-_SDA_BASE_(r13)
/* 80357ED4 00354E14  7C 60 00 38 */	and r0, r3, r0
/* 80357ED8 00354E18  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80357EDC 00354E1C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80357EE0 00354E20  41 82 00 44 */	beq lbl_80357F24
/* 80357EE4 00354E24  3C 60 80 45 */	lis r3, lbl_8044CDE0@ha
/* 80357EE8 00354E28  3B E3 CD E0 */	addi r31, r3, lbl_8044CDE0@l
/* 80357EEC 00354E2C  38 7B 00 00 */	addi r3, r27, 0
/* 80357EF0 00354E30  38 9F 00 00 */	addi r4, r31, 0
/* 80357EF4 00354E34  38 A0 00 04 */	li r5, 4
/* 80357EF8 00354E38  48 00 E1 95 */	bl memcmp
/* 80357EFC 00354E3C  2C 03 00 00 */	cmpwi r3, 0
/* 80357F00 00354E40  40 82 00 24 */	bne lbl_80357F24
/* 80357F04 00354E44  38 7B 00 04 */	addi r3, r27, 4
/* 80357F08 00354E48  38 9F 00 04 */	addi r4, r31, 4
/* 80357F0C 00354E4C  38 A0 00 02 */	li r5, 2
/* 80357F10 00354E50  48 00 E1 7D */	bl memcmp
/* 80357F14 00354E54  2C 03 00 00 */	cmpwi r3, 0
/* 80357F18 00354E58  40 82 00 0C */	bne lbl_80357F24
/* 80357F1C 00354E5C  3B A0 00 00 */	li r29, 0
/* 80357F20 00354E60  48 00 00 44 */	b lbl_80357F64
lbl_80357F24:
/* 80357F24 00354E64  57 C0 06 73 */	rlwinm. r0, r30, 0, 0x19, 0x19
/* 80357F28 00354E68  41 82 00 3C */	beq lbl_80357F64
/* 80357F2C 00354E6C  3C 60 80 45 */	lis r3, lbl_8044CDE0@ha
/* 80357F30 00354E70  38 83 CD E0 */	addi r4, r3, lbl_8044CDE0@l
/* 80357F34 00354E74  38 7B 00 00 */	addi r3, r27, 0
/* 80357F38 00354E78  38 A0 00 04 */	li r5, 4
/* 80357F3C 00354E7C  48 00 E1 51 */	bl memcmp
/* 80357F40 00354E80  2C 03 00 00 */	cmpwi r3, 0
/* 80357F44 00354E84  40 82 00 20 */	bne lbl_80357F64
/* 80357F48 00354E88  38 7B 00 04 */	addi r3, r27, 4
/* 80357F4C 00354E8C  38 9C 00 04 */	addi r4, r28, 4
/* 80357F50 00354E90  38 A0 00 02 */	li r5, 2
/* 80357F54 00354E94  48 00 E1 39 */	bl memcmp
/* 80357F58 00354E98  2C 03 00 00 */	cmpwi r3, 0
/* 80357F5C 00354E9C  40 82 00 08 */	bne lbl_80357F64
/* 80357F60 00354EA0  3B A0 00 00 */	li r29, 0
lbl_80357F64:
/* 80357F64 00354EA4  2C 1D FF F6 */	cmpwi r29, -10
/* 80357F68 00354EA8  40 82 00 18 */	bne lbl_80357F80
/* 80357F6C 00354EAC  88 1B 00 34 */	lbz r0, 0x34(r27)
/* 80357F70 00354EB0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80357F74 00354EB4  41 82 00 0C */	beq lbl_80357F80
/* 80357F78 00354EB8  38 60 00 00 */	li r3, 0
/* 80357F7C 00354EBC  48 00 00 08 */	b lbl_80357F84
lbl_80357F80:
/* 80357F80 00354EC0  7F A3 EB 78 */	mr r3, r29
lbl_80357F84:
/* 80357F84 00354EC4  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 80357F88 00354EC8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80357F8C 00354ECC  38 21 00 28 */	addi r1, r1, 0x28
/* 80357F90 00354ED0  7C 08 03 A6 */	mtlr r0
/* 80357F94 00354ED4  4E 80 00 20 */	blr 

.global CARDOpen
CARDOpen:
/* 80357F98 00354ED8  7C 08 02 A6 */	mflr r0
/* 80357F9C 00354EDC  90 01 00 04 */	stw r0, 4(r1)
/* 80357FA0 00354EE0  38 00 FF FF */	li r0, -1
/* 80357FA4 00354EE4  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80357FA8 00354EE8  BF 21 00 1C */	stmw r25, 0x1c(r1)
/* 80357FAC 00354EEC  3B 24 00 00 */	addi r25, r4, 0
/* 80357FB0 00354EF0  3B C5 00 00 */	addi r30, r5, 0
/* 80357FB4 00354EF4  3B A3 00 00 */	addi r29, r3, 0
/* 80357FB8 00354EF8  38 81 00 14 */	addi r4, r1, 0x14
/* 80357FBC 00354EFC  90 05 00 00 */	stw r0, 0(r5)
/* 80357FC0 00354F00  4B FF BB F5 */	bl __CARDGetControlBlock
/* 80357FC4 00354F04  2C 03 00 00 */	cmpwi r3, 0
/* 80357FC8 00354F08  40 80 00 08 */	bge lbl_80357FD0
/* 80357FCC 00354F0C  48 00 00 D4 */	b lbl_803580A0
lbl_80357FD0:
/* 80357FD0 00354F10  83 41 00 14 */	lwz r26, 0x14(r1)
/* 80357FD4 00354F14  80 1A 00 00 */	lwz r0, 0(r26)
/* 80357FD8 00354F18  2C 00 00 00 */	cmpwi r0, 0
/* 80357FDC 00354F1C  40 82 00 0C */	bne lbl_80357FE8
/* 80357FE0 00354F20  3B 40 FF FD */	li r26, -3
/* 80357FE4 00354F24  48 00 00 5C */	b lbl_80358040
lbl_80357FE8:
/* 80357FE8 00354F28  7F 43 D3 78 */	mr r3, r26
/* 80357FEC 00354F2C  4B FF D7 91 */	bl __CARDGetDirBlock
/* 80357FF0 00354F30  3B 63 00 00 */	addi r27, r3, 0
/* 80357FF4 00354F34  3B 80 00 00 */	li r28, 0
lbl_80357FF8:
/* 80357FF8 00354F38  38 7A 00 00 */	addi r3, r26, 0
/* 80357FFC 00354F3C  38 9B 00 00 */	addi r4, r27, 0
/* 80358000 00354F40  4B FF FC DD */	bl __CARDAccess
/* 80358004 00354F44  2C 03 00 00 */	cmpwi r3, 0
/* 80358008 00354F48  41 80 00 24 */	blt lbl_8035802C
/* 8035800C 00354F4C  38 7B 00 00 */	addi r3, r27, 0
/* 80358010 00354F50  38 99 00 00 */	addi r4, r25, 0
/* 80358014 00354F54  4B FF FC 61 */	bl __CARDCompareFileName
/* 80358018 00354F58  2C 03 00 00 */	cmpwi r3, 0
/* 8035801C 00354F5C  41 82 00 10 */	beq lbl_8035802C
/* 80358020 00354F60  3B FC 00 00 */	addi r31, r28, 0
/* 80358024 00354F64  3B 40 00 00 */	li r26, 0
/* 80358028 00354F68  48 00 00 18 */	b lbl_80358040
lbl_8035802C:
/* 8035802C 00354F6C  3B 9C 00 01 */	addi r28, r28, 1
/* 80358030 00354F70  2C 1C 00 7F */	cmpwi r28, 0x7f
/* 80358034 00354F74  3B 7B 00 40 */	addi r27, r27, 0x40
/* 80358038 00354F78  41 80 FF C0 */	blt lbl_80357FF8
/* 8035803C 00354F7C  3B 40 FF FC */	li r26, -4
lbl_80358040:
/* 80358040 00354F80  2C 1A 00 00 */	cmpwi r26, 0
/* 80358044 00354F84  41 80 00 50 */	blt lbl_80358094
/* 80358048 00354F88  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8035804C 00354F8C  4B FF D7 31 */	bl __CARDGetDirBlock
/* 80358050 00354F90  57 E0 30 32 */	slwi r0, r31, 6
/* 80358054 00354F94  7C A3 02 14 */	add r5, r3, r0
/* 80358058 00354F98  A0 85 00 36 */	lhz r4, 0x36(r5)
/* 8035805C 00354F9C  28 04 00 05 */	cmplwi r4, 5
/* 80358060 00354FA0  41 80 00 14 */	blt lbl_80358074
/* 80358064 00354FA4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80358068 00354FA8  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8035806C 00354FAC  7C 04 00 40 */	cmplw r4, r0
/* 80358070 00354FB0  41 80 00 0C */	blt lbl_8035807C
lbl_80358074:
/* 80358074 00354FB4  3B 40 FF FA */	li r26, -6
/* 80358078 00354FB8  48 00 00 1C */	b lbl_80358094
lbl_8035807C:
/* 8035807C 00354FBC  93 BE 00 00 */	stw r29, 0(r30)
/* 80358080 00354FC0  38 00 00 00 */	li r0, 0
/* 80358084 00354FC4  93 FE 00 04 */	stw r31, 4(r30)
/* 80358088 00354FC8  90 1E 00 08 */	stw r0, 8(r30)
/* 8035808C 00354FCC  A0 05 00 36 */	lhz r0, 0x36(r5)
/* 80358090 00354FD0  B0 1E 00 10 */	sth r0, 0x10(r30)
lbl_80358094:
/* 80358094 00354FD4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80358098 00354FD8  7F 44 D3 78 */	mr r4, r26
/* 8035809C 00354FDC  4B FF BB D1 */	bl __CARDPutControlBlock
lbl_803580A0:
/* 803580A0 00354FE0  BB 21 00 1C */	lmw r25, 0x1c(r1)
/* 803580A4 00354FE4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 803580A8 00354FE8  38 21 00 38 */	addi r1, r1, 0x38
/* 803580AC 00354FEC  7C 08 03 A6 */	mtlr r0
/* 803580B0 00354FF0  4E 80 00 20 */	blr 

.global CARDClose
CARDClose:
/* 803580B4 00354FF4  7C 08 02 A6 */	mflr r0
/* 803580B8 00354FF8  90 01 00 04 */	stw r0, 4(r1)
/* 803580BC 00354FFC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803580C0 00355000  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803580C4 00355004  7C 7F 1B 78 */	mr r31, r3
/* 803580C8 00355008  38 81 00 0C */	addi r4, r1, 0xc
/* 803580CC 0035500C  80 63 00 00 */	lwz r3, 0(r3)
/* 803580D0 00355010  4B FF BA E5 */	bl __CARDGetControlBlock
/* 803580D4 00355014  2C 03 00 00 */	cmpwi r3, 0
/* 803580D8 00355018  40 80 00 08 */	bge lbl_803580E0
/* 803580DC 0035501C  48 00 00 18 */	b lbl_803580F4
lbl_803580E0:
/* 803580E0 00355020  38 00 FF FF */	li r0, -1
/* 803580E4 00355024  90 1F 00 00 */	stw r0, 0(r31)
/* 803580E8 00355028  38 80 00 00 */	li r4, 0
/* 803580EC 0035502C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803580F0 00355030  4B FF BB 7D */	bl __CARDPutControlBlock
lbl_803580F4:
/* 803580F4 00355034  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803580F8 00355038  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803580FC 0035503C  38 21 00 18 */	addi r1, r1, 0x18
/* 80358100 00355040  7C 08 03 A6 */	mtlr r0
/* 80358104 00355044  4E 80 00 20 */	blr 

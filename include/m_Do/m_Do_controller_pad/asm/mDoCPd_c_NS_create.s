/* 80007954 00004894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007958 00004898  7C 08 02 A6 */	mflr r0
/* 8000795C 0000489C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007960 000048A0  38 60 00 B0 */	li r3, 0xb0
/* 80007964 000048A4  48 2C 72 E9 */	bl __nw__FUl
/* 80007968 000048A8  7C 60 1B 79 */	or. r0, r3, r3
/* 8000796C 000048AC  41 82 00 10 */	beq lbl_8000797C
/* 80007970 000048B0  38 80 00 00 */	li r4, 0
/* 80007974 000048B4  48 2D 8D 69 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 80007978 000048B8  7C 60 1B 78 */	mr r0, r3
lbl_8000797C:
/* 8000797C 000048BC  3C 60 80 3E */	lis r3, m_gamePad@ha
/* 80007980 000048C0  94 03 D2 D8 */	stwu r0, m_gamePad@l(r3)
/* 80007984 000048C4  88 0D 80 00 */	lbz r0, lbl_80450580-_SDA_BASE_(r13)
/* 80007988 000048C8  7C 00 07 75 */	extsb. r0, r0
/* 8000798C 000048CC  41 82 00 80 */	beq lbl_80007A0C
/* 80007990 000048D0  38 60 00 B0 */	li r3, 0xb0
/* 80007994 000048D4  48 2C 72 B9 */	bl __nw__FUl
/* 80007998 000048D8  7C 60 1B 79 */	or. r0, r3, r3
/* 8000799C 000048DC  41 82 00 10 */	beq lbl_800079AC
/* 800079A0 000048E0  38 80 00 01 */	li r4, 1
/* 800079A4 000048E4  48 2D 8D 39 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 800079A8 000048E8  7C 60 1B 78 */	mr r0, r3
lbl_800079AC:
/* 800079AC 000048EC  3C 60 80 3E */	lis r3, m_gamePad@ha
/* 800079B0 000048F0  38 63 D2 D8 */	addi r3, r3, m_gamePad@l
/* 800079B4 000048F4  90 03 00 04 */	stw r0, 4(r3)
/* 800079B8 000048F8  38 60 00 B0 */	li r3, 0xb0
/* 800079BC 000048FC  48 2C 72 91 */	bl __nw__FUl
/* 800079C0 00004900  7C 60 1B 79 */	or. r0, r3, r3
/* 800079C4 00004904  41 82 00 10 */	beq lbl_800079D4
/* 800079C8 00004908  38 80 00 02 */	li r4, 2
/* 800079CC 0000490C  48 2D 8D 11 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 800079D0 00004910  7C 60 1B 78 */	mr r0, r3
lbl_800079D4:
/* 800079D4 00004914  3C 60 80 3E */	lis r3, m_gamePad@ha
/* 800079D8 00004918  38 63 D2 D8 */	addi r3, r3, m_gamePad@l
/* 800079DC 0000491C  90 03 00 08 */	stw r0, 8(r3)
/* 800079E0 00004920  38 60 00 B0 */	li r3, 0xb0
/* 800079E4 00004924  48 2C 72 69 */	bl __nw__FUl
/* 800079E8 00004928  7C 60 1B 79 */	or. r0, r3, r3
/* 800079EC 0000492C  41 82 00 10 */	beq lbl_800079FC
/* 800079F0 00004930  38 80 00 03 */	li r4, 3
/* 800079F4 00004934  48 2D 8C E9 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 800079F8 00004938  7C 60 1B 78 */	mr r0, r3
lbl_800079FC:
/* 800079FC 0000493C  3C 60 80 3E */	lis r3, m_gamePad@ha
/* 80007A00 00004940  38 63 D2 D8 */	addi r3, r3, m_gamePad@l
/* 80007A04 00004944  90 03 00 0C */	stw r0, 0xc(r3)
/* 80007A08 00004948  48 00 00 14 */	b lbl_80007A1C
lbl_80007A0C:
/* 80007A0C 0000494C  38 00 00 00 */	li r0, 0
/* 80007A10 00004950  90 03 00 04 */	stw r0, 4(r3)
/* 80007A14 00004954  90 03 00 08 */	stw r0, 8(r3)
/* 80007A18 00004958  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80007A1C:
/* 80007A1C 0000495C  80 6D 86 F8 */	lwz r3, m_Do_Reset_NS_mDoRst_NS_mResetData-_SDA_BASE_(r13)
/* 80007A20 00004960  80 03 00 00 */	lwz r0, 0(r3)
/* 80007A24 00004964  2C 00 00 00 */	cmpwi r0, 0
/* 80007A28 00004968  40 82 00 1C */	bne lbl_80007A44
/* 80007A2C 0000496C  38 80 00 00 */	li r4, 0
/* 80007A30 00004970  98 8D 8F 81 */	stb r4, lbl_80451501-_SDA_BASE_(r13)
/* 80007A34 00004974  3C 60 80 01 */	lis r3, mDoRst_resetCallBack__FiPv@ha
/* 80007A38 00004978  38 03 57 4C */	addi r0, r3, mDoRst_resetCallBack__FiPv@l
/* 80007A3C 0000497C  90 0D 8F 6C */	stw r0, lbl_804514EC-_SDA_BASE_(r13)
/* 80007A40 00004980  90 8D 8F 70 */	stw r4, lbl_804514F0-_SDA_BASE_(r13)
lbl_80007A44:
/* 80007A44 00004984  38 00 00 03 */	li r0, 3
/* 80007A48 00004988  90 0D 8F 5C */	stw r0, sAnalogMode-_SDA_BASE_(r13)
/* 80007A4C 0000498C  38 60 00 03 */	li r3, 3
/* 80007A50 00004990  48 34 7F C1 */	bl PADSetAnalogMode
/* 80007A54 00004994  3C 60 80 3E */	lis r3, m_cpadInfo@ha
/* 80007A58 00004998  38 03 D2 E8 */	addi r0, r3, m_cpadInfo@l
/* 80007A5C 0000499C  7C 04 03 78 */	mr r4, r0
/* 80007A60 000049A0  38 60 00 00 */	li r3, 0
/* 80007A64 000049A4  38 00 00 04 */	li r0, 4
/* 80007A68 000049A8  7C 09 03 A6 */	mtctr r0
lbl_80007A6C:
/* 80007A6C 000049AC  98 64 00 3A */	stb r3, 0x3a(r4)
/* 80007A70 000049B0  98 64 00 39 */	stb r3, 0x39(r4)
/* 80007A74 000049B4  98 64 00 3C */	stb r3, 0x3c(r4)
/* 80007A78 000049B8  98 64 00 3B */	stb r3, 0x3b(r4)
/* 80007A7C 000049BC  38 84 00 40 */	addi r4, r4, 0x40
/* 80007A80 000049C0  42 00 FF EC */	bdnz lbl_80007A6C
/* 80007A84 000049C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007A88 000049C8  7C 08 03 A6 */	mtlr r0
/* 80007A8C 000049CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80007A90 000049D0  4E 80 00 20 */	blr 
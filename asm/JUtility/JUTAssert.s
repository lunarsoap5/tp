.include "macros.inc"

.section .text, "ax" # 802e495c


.global create__12JUTAssertionFv
create__12JUTAssertionFv:
/* 802E495C 002E189C  4E 80 00 20 */	blr 

.global flush_subroutine__12JUTAssertionFv
flush_subroutine__12JUTAssertionFv:
/* 802E4960 002E18A0  80 6D 8F B0 */	lwz r3, lbl_80451530-_SDA_BASE_(r13)
/* 802E4964 002E18A4  28 03 00 00 */	cmplwi r3, 0
/* 802E4968 002E18A8  40 82 00 0C */	bne lbl_802E4974
/* 802E496C 002E18AC  38 60 00 00 */	li r3, 0
/* 802E4970 002E18B0  4E 80 00 20 */	blr 
lbl_802E4974:
/* 802E4974 002E18B4  3C 03 00 01 */	addis r0, r3, 1
/* 802E4978 002E18B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 802E497C 002E18BC  41 82 00 0C */	beq lbl_802E4988
/* 802E4980 002E18C0  38 03 FF FF */	addi r0, r3, -1
/* 802E4984 002E18C4  90 0D 8F B0 */	stw r0, lbl_80451530-_SDA_BASE_(r13)
lbl_802E4988:
/* 802E4988 002E18C8  80 6D 8F B0 */	lwz r3, lbl_80451530-_SDA_BASE_(r13)
/* 802E498C 002E18CC  28 03 00 05 */	cmplwi r3, 5
/* 802E4990 002E18D0  4C 80 00 20 */	bgelr 
/* 802E4994 002E18D4  38 60 00 00 */	li r3, 0
/* 802E4998 002E18D8  4E 80 00 20 */	blr 

.global flushMessage__12JUTAssertionFv
flushMessage__12JUTAssertionFv:
/* 802E499C 002E18DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E49A0 002E18E0  7C 08 02 A6 */	mflr r0
/* 802E49A4 002E18E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E49A8 002E18E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E49AC 002E18EC  4B FF FF B5 */	bl flush_subroutine__12JUTAssertionFv
/* 802E49B0 002E18F0  28 03 00 00 */	cmplwi r3, 0
/* 802E49B4 002E18F4  41 82 00 8C */	beq lbl_802E4A40
/* 802E49B8 002E18F8  88 0D 83 78 */	lbz r0, lbl_804508F8-_SDA_BASE_(r13)
/* 802E49BC 002E18FC  28 00 00 01 */	cmplwi r0, 1
/* 802E49C0 002E1900  40 82 00 80 */	bne lbl_802E4A40
/* 802E49C4 002E1904  83 ED 8F A8 */	lwz r31, lbl_80451528-_SDA_BASE_(r13)
/* 802E49C8 002E1908  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 802E49CC 002E190C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E49D0 002E1910  38 60 00 FF */	li r3, 0xff
/* 802E49D4 002E1914  98 61 00 0C */	stb r3, 0xc(r1)
/* 802E49D8 002E1918  38 00 00 C8 */	li r0, 0xc8
/* 802E49DC 002E191C  98 01 00 0D */	stb r0, 0xd(r1)
/* 802E49E0 002E1920  98 01 00 0E */	stb r0, 0xe(r1)
/* 802E49E4 002E1924  98 61 00 0F */	stb r3, 0xf(r1)
/* 802E49E8 002E1928  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E49EC 002E192C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E49F0 002E1930  7F E3 FB 78 */	mr r3, r31
/* 802E49F4 002E1934  38 81 00 10 */	addi r4, r1, 0x10
/* 802E49F8 002E1938  4B FF FD A1 */	bl setCharColor__14JUTDirectPrintFQ28JUtility6TColor
/* 802E49FC 002E193C  7F E3 FB 78 */	mr r3, r31
/* 802E4A00 002E1940  38 80 00 10 */	li r4, 0x10
/* 802E4A04 002E1944  38 A0 00 10 */	li r5, 0x10
/* 802E4A08 002E1948  3C C0 80 43 */	lis r6, lbl_80434870@ha
/* 802E4A0C 002E194C  38 C6 48 70 */	addi r6, r6, lbl_80434870@l
/* 802E4A10 002E1950  4B FF FC C9 */	bl drawString__14JUTDirectPrintFUsUsPc
/* 802E4A14 002E1954  7F E3 FB 78 */	mr r3, r31
/* 802E4A18 002E1958  38 80 00 10 */	li r4, 0x10
/* 802E4A1C 002E195C  38 A0 00 18 */	li r5, 0x18
/* 802E4A20 002E1960  3C C0 80 43 */	lis r6, lbl_804348B0@ha
/* 802E4A24 002E1964  38 C6 48 B0 */	addi r6, r6, lbl_804348B0@l
/* 802E4A28 002E1968  4B FF FC B1 */	bl drawString__14JUTDirectPrintFUsUsPc
/* 802E4A2C 002E196C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4A30 002E1970  90 01 00 08 */	stw r0, 8(r1)
/* 802E4A34 002E1974  7F E3 FB 78 */	mr r3, r31
/* 802E4A38 002E1978  38 81 00 08 */	addi r4, r1, 8
/* 802E4A3C 002E197C  4B FF FD 5D */	bl setCharColor__14JUTDirectPrintFQ28JUtility6TColor
lbl_802E4A40:
/* 802E4A40 002E1980  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E4A44 002E1984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E4A48 002E1988  7C 08 03 A6 */	mtlr r0
/* 802E4A4C 002E198C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E4A50 002E1990  4E 80 00 20 */	blr 

.global flushMessage_dbPrint__12JUTAssertionFv
flushMessage_dbPrint__12JUTAssertionFv:
/* 802E4A54 002E1994  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802E4A58 002E1998  7C 08 02 A6 */	mflr r0
/* 802E4A5C 002E199C  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E4A60 002E19A0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802E4A64 002E19A4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 802E4A68 002E19A8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802E4A6C 002E19AC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802E4A70 002E19B0  4B FF FE F1 */	bl flush_subroutine__12JUTAssertionFv
/* 802E4A74 002E19B4  28 03 00 00 */	cmplwi r3, 0
/* 802E4A78 002E19B8  41 82 01 9C */	beq lbl_802E4C14
/* 802E4A7C 002E19BC  88 0D 83 78 */	lbz r0, lbl_804508F8-_SDA_BASE_(r13)
/* 802E4A80 002E19C0  28 00 00 01 */	cmplwi r0, 1
/* 802E4A84 002E19C4  40 82 01 90 */	bne lbl_802E4C14
/* 802E4A88 002E19C8  80 6D 8F 48 */	lwz r3, lbl_804514C8-_SDA_BASE_(r13)
/* 802E4A8C 002E19CC  28 03 00 00 */	cmplwi r3, 0
/* 802E4A90 002E19D0  41 82 01 84 */	beq lbl_802E4C14
/* 802E4A94 002E19D4  83 E3 00 04 */	lwz r31, 4(r3)
/* 802E4A98 002E19D8  28 1F 00 00 */	cmplwi r31, 0
/* 802E4A9C 002E19DC  41 82 01 78 */	beq lbl_802E4C14
/* 802E4AA0 002E19E0  48 06 8E 1D */	bl VIGetRetraceCount
/* 802E4AA4 002E19E4  54 60 16 36 */	rlwinm r0, r3, 2, 0x18, 0x1b
/* 802E4AA8 002E19E8  60 00 00 0F */	ori r0, r0, 0xf
/* 802E4AAC 002E19EC  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 802E4AB0 002E19F0  7F E3 FB 78 */	mr r3, r31
/* 802E4AB4 002E19F4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E4AB8 002E19F8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E4ABC 002E19FC  7D 89 03 A6 */	mtctr r12
/* 802E4AC0 002E1A00  4E 80 04 21 */	bctrl 
/* 802E4AC4 002E1A04  38 00 00 FF */	li r0, 0xff
/* 802E4AC8 002E1A08  98 01 00 08 */	stb r0, 8(r1)
/* 802E4ACC 002E1A0C  9B C1 00 09 */	stb r30, 9(r1)
/* 802E4AD0 002E1A10  9B C1 00 0A */	stb r30, 0xa(r1)
/* 802E4AD4 002E1A14  98 01 00 0B */	stb r0, 0xb(r1)
/* 802E4AD8 002E1A18  80 01 00 08 */	lwz r0, 8(r1)
/* 802E4ADC 002E1A1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E4AE0 002E1A20  7F E3 FB 78 */	mr r3, r31
/* 802E4AE4 002E1A24  38 81 00 0C */	addi r4, r1, 0xc
/* 802E4AE8 002E1A28  4B FF A2 89 */	bl setCharColor__7JUTFontFQ28JUtility6TColor
/* 802E4AEC 002E1A2C  3C 60 80 43 */	lis r3, lbl_80434870@ha
/* 802E4AF0 002E1A30  38 63 48 70 */	addi r3, r3, lbl_80434870@l
/* 802E4AF4 002E1A34  48 08 40 F1 */	bl strlen
/* 802E4AF8 002E1A38  7C 7E 1B 78 */	mr r30, r3
/* 802E4AFC 002E1A3C  7F E3 FB 78 */	mr r3, r31
/* 802E4B00 002E1A40  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E4B04 002E1A44  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802E4B08 002E1A48  7D 89 03 A6 */	mtctr r12
/* 802E4B0C 002E1A4C  4E 80 04 21 */	bctrl 
/* 802E4B10 002E1A50  C8 22 C6 C8 */	lfd f1, lbl_804560C8-_SDA2_BASE_(r2)
/* 802E4B14 002E1A54  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E4B18 002E1A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4B1C 002E1A5C  3C 00 43 30 */	lis r0, 0x4330
/* 802E4B20 002E1A60  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E4B24 002E1A64  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802E4B28 002E1A68  EF E0 08 28 */	fsubs f31, f0, f1
/* 802E4B2C 002E1A6C  7F E3 FB 78 */	mr r3, r31
/* 802E4B30 002E1A70  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E4B34 002E1A74  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802E4B38 002E1A78  7D 89 03 A6 */	mtctr r12
/* 802E4B3C 002E1A7C  4E 80 04 21 */	bctrl 
/* 802E4B40 002E1A80  C8 22 C6 C8 */	lfd f1, lbl_804560C8-_SDA2_BASE_(r2)
/* 802E4B44 002E1A84  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E4B48 002E1A88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E4B4C 002E1A8C  3C 00 43 30 */	lis r0, 0x4330
/* 802E4B50 002E1A90  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E4B54 002E1A94  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802E4B58 002E1A98  EC 60 08 28 */	fsubs f3, f0, f1
/* 802E4B5C 002E1A9C  7F E3 FB 78 */	mr r3, r31
/* 802E4B60 002E1AA0  C0 22 C6 B8 */	lfs f1, lbl_804560B8-_SDA2_BASE_(r2)
/* 802E4B64 002E1AA4  C0 42 C6 BC */	lfs f2, lbl_804560BC-_SDA2_BASE_(r2)
/* 802E4B68 002E1AA8  FC 80 F8 90 */	fmr f4, f31
/* 802E4B6C 002E1AAC  3C 80 80 43 */	lis r4, lbl_80434870@ha
/* 802E4B70 002E1AB0  38 84 48 70 */	addi r4, r4, lbl_80434870@l
/* 802E4B74 002E1AB4  7F C5 F3 78 */	mr r5, r30
/* 802E4B78 002E1AB8  38 C0 00 01 */	li r6, 1
/* 802E4B7C 002E1ABC  4B FF A2 AD */	bl drawString_size_scale__7JUTFontFffffPCcUlb
/* 802E4B80 002E1AC0  3C 60 80 43 */	lis r3, lbl_804348B0@ha
/* 802E4B84 002E1AC4  38 63 48 B0 */	addi r3, r3, lbl_804348B0@l
/* 802E4B88 002E1AC8  48 08 40 5D */	bl strlen
/* 802E4B8C 002E1ACC  7C 7E 1B 78 */	mr r30, r3
/* 802E4B90 002E1AD0  7F E3 FB 78 */	mr r3, r31
/* 802E4B94 002E1AD4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E4B98 002E1AD8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802E4B9C 002E1ADC  7D 89 03 A6 */	mtctr r12
/* 802E4BA0 002E1AE0  4E 80 04 21 */	bctrl 
/* 802E4BA4 002E1AE4  C8 22 C6 C8 */	lfd f1, lbl_804560C8-_SDA2_BASE_(r2)
/* 802E4BA8 002E1AE8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E4BAC 002E1AEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E4BB0 002E1AF0  3C 00 43 30 */	lis r0, 0x4330
/* 802E4BB4 002E1AF4  90 01 00 20 */	stw r0, 0x20(r1)
/* 802E4BB8 002E1AF8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802E4BBC 002E1AFC  EF E0 08 28 */	fsubs f31, f0, f1
/* 802E4BC0 002E1B00  7F E3 FB 78 */	mr r3, r31
/* 802E4BC4 002E1B04  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E4BC8 002E1B08  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802E4BCC 002E1B0C  7D 89 03 A6 */	mtctr r12
/* 802E4BD0 002E1B10  4E 80 04 21 */	bctrl 
/* 802E4BD4 002E1B14  C8 22 C6 C8 */	lfd f1, lbl_804560C8-_SDA2_BASE_(r2)
/* 802E4BD8 002E1B18  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E4BDC 002E1B1C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802E4BE0 002E1B20  3C 00 43 30 */	lis r0, 0x4330
/* 802E4BE4 002E1B24  90 01 00 28 */	stw r0, 0x28(r1)
/* 802E4BE8 002E1B28  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802E4BEC 002E1B2C  EC 60 08 28 */	fsubs f3, f0, f1
/* 802E4BF0 002E1B30  7F E3 FB 78 */	mr r3, r31
/* 802E4BF4 002E1B34  C0 22 C6 B8 */	lfs f1, lbl_804560B8-_SDA2_BASE_(r2)
/* 802E4BF8 002E1B38  C0 42 C6 C0 */	lfs f2, lbl_804560C0-_SDA2_BASE_(r2)
/* 802E4BFC 002E1B3C  FC 80 F8 90 */	fmr f4, f31
/* 802E4C00 002E1B40  3C 80 80 43 */	lis r4, lbl_804348B0@ha
/* 802E4C04 002E1B44  38 84 48 B0 */	addi r4, r4, lbl_804348B0@l
/* 802E4C08 002E1B48  7F C5 F3 78 */	mr r5, r30
/* 802E4C0C 002E1B4C  38 C0 00 01 */	li r6, 1
/* 802E4C10 002E1B50  4B FF A2 19 */	bl drawString_size_scale__7JUTFontFffffPCcUlb
lbl_802E4C14:
/* 802E4C14 002E1B54  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 802E4C18 002E1B58  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802E4C1C 002E1B5C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802E4C20 002E1B60  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802E4C24 002E1B64  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802E4C28 002E1B68  7C 08 03 A6 */	mtlr r0
/* 802E4C2C 002E1B6C  38 21 00 50 */	addi r1, r1, 0x50
/* 802E4C30 002E1B70  4E 80 00 20 */	blr 

.global setVisible__12JUTAssertionFb
setVisible__12JUTAssertionFb:
/* 802E4C34 002E1B74  98 6D 83 78 */	stb r3, lbl_804508F8-_SDA_BASE_(r13)
/* 802E4C38 002E1B78  4E 80 00 20 */	blr 

.global setMessageCount__12JUTAssertionFi
setMessageCount__12JUTAssertionFi:
/* 802E4C3C 002E1B7C  7C 03 00 D0 */	neg r0, r3
/* 802E4C40 002E1B80  7C 60 03 38 */	orc r0, r3, r0
/* 802E4C44 002E1B84  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 802E4C48 002E1B88  7C 60 00 78 */	andc r0, r3, r0
/* 802E4C4C 002E1B8C  90 0D 8F B0 */	stw r0, lbl_80451530-_SDA_BASE_(r13)
/* 802E4C50 002E1B90  4E 80 00 20 */	blr 


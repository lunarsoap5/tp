/* 80033754 00030694  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033758 00030698  7C 08 02 A6 */	mflr r0
/* 8003375C 0003069C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80033760 000306A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80033764 000306A4  48 32 EA 71 */	bl _savegpr_27
/* 80033768 000306A8  3B 60 00 00 */	li r27, 0
/* 8003376C 000306AC  3B E0 00 00 */	li r31, 0
/* 80033770 000306B0  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80033774 000306B4  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80033778 000306B8  3B A3 00 CC */	addi r29, r3, 0xcc
/* 8003377C 000306BC  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 80033780 000306C0  3C 60 80 3A */	lis r3, lbl_803A7288@ha
/* 80033784 000306C4  3B C3 72 88 */	addi r30, r3, lbl_803A7288@l
lbl_80033788:
/* 80033788 000306C8  7F A3 EB 78 */	mr r3, r29
/* 8003378C 000306CC  38 1B 00 C0 */	addi r0, r27, 0xc0
/* 80033790 000306D0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80033794 000306D4  48 00 07 35 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80033798 000306D8  2C 03 00 00 */	cmpwi r3, 0
/* 8003379C 000306DC  41 82 00 24 */	beq lbl_800337C0
/* 800337A0 000306E0  7F 83 E3 78 */	mr r3, r28
/* 800337A4 000306E4  7C 9E FA 14 */	add r4, r30, r31
/* 800337A8 000306E8  A0 84 03 22 */	lhz r4, 0x322(r4)
/* 800337AC 000306EC  48 00 12 11 */	bl dSv_event_c_NS_isEventBit
/* 800337B0 000306F0  2C 03 00 00 */	cmpwi r3, 0
/* 800337B4 000306F4  40 82 00 0C */	bne lbl_800337C0
/* 800337B8 000306F8  38 60 00 01 */	li r3, 1
/* 800337BC 000306FC  48 00 00 18 */	b lbl_800337D4
lbl_800337C0:
/* 800337C0 00030700  3B 7B 00 01 */	addi r27, r27, 1
/* 800337C4 00030704  2C 1B 00 18 */	cmpwi r27, 0x18
/* 800337C8 00030708  3B FF 00 02 */	addi r31, r31, 2
/* 800337CC 0003070C  41 80 FF BC */	blt lbl_80033788
/* 800337D0 00030710  38 60 00 00 */	li r3, 0
lbl_800337D4:
/* 800337D4 00030714  39 61 00 20 */	addi r11, r1, 0x20
/* 800337D8 00030718  48 32 EA 49 */	bl _restgpr_27
/* 800337DC 0003071C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800337E0 00030720  7C 08 03 A6 */	mtlr r0
/* 800337E4 00030724  38 21 00 20 */	addi r1, r1, 0x20
/* 800337E8 00030728  4E 80 00 20 */	blr 
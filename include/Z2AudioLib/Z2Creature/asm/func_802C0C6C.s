/* 802C0C6C 002BDBAC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C0C70 002BDBB0  7C 08 02 A6 */ mflr r0
/* 802C0C74 002BDBB4  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C0C78 002BDBB8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802C0C7C 002BDBBC  93 C1 00 08 */ stw r30, 8(r1)
/* 802C0C80 002BDBC0  7C 7E 1B 79 */ or. r30, r3, r3
/* 802C0C84 002BDBC4  7C 9F 23 78 */ mr r31, r4
/* 802C0C88 002BDBC8  41 82 00 40 */ beq lbl_802C0CC8
/* 802C0C8C 002BDBCC  3C 60 80 3D */ lis r3, lbl_803CB890@ha
/* 802C0C90 002BDBD0  38 03 B8 90 */ addi r0, r3, lbl_803CB890@l
/* 802C0C94 002BDBD4  90 1E 00 00 */ stw r0, 0(r30)
/* 802C0C98 002BDBD8  34 1E 00 90 */ addic. r0, r30, 0x90
/* 802C0C9C 002BDBDC  41 82 00 10 */ beq lbl_802C0CAC
/* 802C0CA0 002BDBE0  38 7E 00 90 */ addi r3, r30, 0x90
/* 802C0CA4 002BDBE4  38 80 00 00 */ li r4, 0
/* 802C0CA8 002BDBE8  48 01 B1 6D */ bl __dt__10JSUPtrLinkFv
lbl_802C0CAC:
/* 802C0CAC 002BDBEC  7F C3 F3 78 */ mr r3, r30
/* 802C0CB0 002BDBF0  38 80 00 00 */ li r4, 0
/* 802C0CB4 002BDBF4  4B FF F7 6D */ bl __dt__10Z2CreatureFv
/* 802C0CB8 002BDBF8  7F E0 07 35 */ extsh. r0, r31
/* 802C0CBC 002BDBFC  40 81 00 0C */ ble lbl_802C0CC8
/* 802C0CC0 002BDC00  7F C3 F3 78 */ mr r3, r30
/* 802C0CC4 002BDC04  48 00 E0 79 */ bl __dl__FPv
lbl_802C0CC8:
/* 802C0CC8 002BDC08  7F C3 F3 78 */ mr r3, r30
/* 802C0CCC 002BDC0C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802C0CD0 002BDC10  83 C1 00 08 */ lwz r30, 8(r1)
/* 802C0CD4 002BDC14  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C0CD8 002BDC18  7C 08 03 A6 */ mtlr r0
/* 802C0CDC 002BDC1C  38 21 00 10 */ addi r1, r1, 0x10
/* 802C0CE0 002BDC20  4E 80 00 20 */ blr

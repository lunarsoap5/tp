/* 8020DC50 0020AB90  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8020DC54 0020AB94  7C 08 02 A6 */ mflr r0
/* 8020DC58 0020AB98  90 01 00 14 */ stw r0, 0x14(r1)
/* 8020DC5C 0020AB9C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8020DC60 0020ABA0  7C 7F 1B 78 */ mr r31, r3
/* 8020DC64 0020ABA4  80 63 00 04 */ lwz r3, 4(r3)
/* 8020DC68 0020ABA8  28 03 00 00 */ cmplwi r3, 0
/* 8020DC6C 0020ABAC  41 82 00 1C */ beq lbl_8020DC88
/* 8020DC70 0020ABB0  41 82 00 18 */ beq lbl_8020DC88
/* 8020DC74 0020ABB4  38 80 00 01 */ li r4, 1
/* 8020DC78 0020ABB8  81 83 00 00 */ lwz r12, 0(r3)
/* 8020DC7C 0020ABBC  81 8C 00 08 */ lwz r12, 8(r12)
/* 8020DC80 0020ABC0  7D 89 03 A6 */ mtctr r12
/* 8020DC84 0020ABC4  4E 80 04 21 */ bctrl
lbl_8020DC88:
/* 8020DC88 0020ABC8  80 7F 00 08 */ lwz r3, 8(r31)
/* 8020DC8C 0020ABCC  28 03 00 00 */ cmplwi r3, 0
/* 8020DC90 0020ABD0  41 82 00 1C */ beq lbl_8020DCAC
/* 8020DC94 0020ABD4  41 82 00 18 */ beq lbl_8020DCAC
/* 8020DC98 0020ABD8  38 80 00 01 */ li r4, 1
/* 8020DC9C 0020ABDC  81 83 00 00 */ lwz r12, 0(r3)
/* 8020DCA0 0020ABE0  81 8C 00 0C */ lwz r12, 0xc(r12)
/* 8020DCA4 0020ABE4  7D 89 03 A6 */ mtctr r12
/* 8020DCA8 0020ABE8  4E 80 04 21 */ bctrl
lbl_8020DCAC:
/* 8020DCAC 0020ABEC  4B FF F9 A5 */ bl isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
/* 8020DCB0 0020ABF0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8020DCB4 0020ABF4  41 82 00 1C */ beq lbl_8020DCD0
/* 8020DCB8 0020ABF8  88 1F 00 2D */ lbz r0, 0x2d(r31)
/* 8020DCBC 0020ABFC  28 00 00 00 */ cmplwi r0, 0
/* 8020DCC0 0020AC00  41 82 00 0C */ beq lbl_8020DCCC
/* 8020DCC4 0020AC04  4B E2 03 85 */ bl dComIfGp_mapShow__Fv
/* 8020DCC8 0020AC08  48 00 00 08 */ b lbl_8020DCD0
lbl_8020DCCC:
/* 8020DCCC 0020AC0C  4B E2 03 AD */ bl dComIfGp_mapHide__Fv
lbl_8020DCD0:
/* 8020DCD0 0020AC10  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8020DCD4 0020AC14  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8020DCD8 0020AC18  7C 08 03 A6 */ mtlr r0
/* 8020DCDC 0020AC1C  38 21 00 10 */ addi r1, r1, 0x10
/* 8020DCE0 0020AC20  4E 80 00 20 */ blr

/* 80110F88 0010DEC8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80110F8C 0010DECC  7C 08 02 A6 */ mflr r0
/* 80110F90 0010DED0  90 01 00 14 */ stw r0, 0x14(r1)
/* 80110F94 0010DED4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80110F98 0010DED8  7C 7F 1B 78 */ mr r31, r3
/* 80110F9C 0010DEDC  38 80 00 00 */ li r4, 0
/* 80110FA0 0010DEE0  38 A0 00 01 */ li r5, 1
/* 80110FA4 0010DEE4  4B FB 03 39 */ bl deleteEquipItem__9daAlink_cFii
/* 80110FA8 0010DEE8  A8 1F 30 0E */ lha r0, 0x300e(r31)
/* 80110FAC 0010DEEC  2C 00 00 00 */ cmpwi r0, 0
/* 80110FB0 0010DEF0  41 82 00 14 */ beq lbl_80110FC4
/* 80110FB4 0010DEF4  7F E3 FB 78 */ mr r3, r31
/* 80110FB8 0010DEF8  4B FF FE CD */ bl setKandelaarModel__9daAlink_cFv
/* 80110FBC 0010DEFC  38 00 00 48 */ li r0, 0x48
/* 80110FC0 0010DF00  B0 1F 2F DC */ sth r0, 0x2fdc(r31)
lbl_80110FC4:
/* 80110FC4 0010DF04  7F E3 FB 78 */ mr r3, r31
/* 80110FC8 0010DF08  4B FA E8 BD */ bl returnKeepItemData__9daAlink_cFv
/* 80110FCC 0010DF0C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80110FD0 0010DF10  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80110FD4 0010DF14  7C 08 03 A6 */ mtlr r0
/* 80110FD8 0010DF18  38 21 00 10 */ addi r1, r1, 0x10
/* 80110FDC 0010DF1C  4E 80 00 20 */ blr

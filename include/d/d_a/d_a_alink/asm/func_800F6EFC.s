/* 800F6EFC 000F3E3C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F6F00 000F3E40  7C 08 02 A6 */ mflr r0
/* 800F6F04 000F3E44  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F6F08 000F3E48  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F6F0C 000F3E4C  7C 7F 1B 78 */ mr r31, r3
/* 800F6F10 000F3E50  4B FF D8 C9 */ bl canoeCommon__9daAlink_cFv
/* 800F6F14 000F3E54  2C 03 00 00 */ cmpwi r3, 0
/* 800F6F18 000F3E58  41 82 00 0C */ beq lbl_800F6F24
/* 800F6F1C 000F3E5C  38 60 00 01 */ li r3, 1
/* 800F6F20 000F3E60  48 00 00 70 */ b lbl_800F6F90
lbl_800F6F24:
/* 800F6F24 000F3E64  80 1F 28 30 */ lwz r0, 0x2830(r31)
/* 800F6F28 000F3E68  28 00 00 00 */ cmplwi r0, 0
/* 800F6F2C 000F3E6C  40 82 00 24 */ bne lbl_800F6F50
/* 800F6F30 000F3E70  7F E3 FB 78 */ mr r3, r31
/* 800F6F34 000F3E74  4B FE CD 39 */ bl checkGrabAnime__9daAlink_cCFv
/* 800F6F38 000F3E78  2C 03 00 00 */ cmpwi r3, 0
/* 800F6F3C 000F3E7C  41 82 00 14 */ beq lbl_800F6F50
/* 800F6F40 000F3E80  7F E3 FB 78 */ mr r3, r31
/* 800F6F44 000F3E84  38 80 00 02 */ li r4, 2
/* 800F6F48 000F3E88  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800F6F4C 000F3E8C  4B FB 67 D9 */ bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800F6F50:
/* 800F6F50 000F3E90  7F E3 FB 78 */ mr r3, r31
/* 800F6F54 000F3E94  4B FE CC C9 */ bl checkGrabThrowAnime__9daAlink_cCFv
/* 800F6F58 000F3E98  2C 03 00 00 */ cmpwi r3, 0
/* 800F6F5C 000F3E9C  41 82 00 28 */ beq lbl_800F6F84
/* 800F6F60 000F3EA0  7F E3 FB 78 */ mr r3, r31
/* 800F6F64 000F3EA4  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800F6F68 000F3EA8  4B FE E8 45 */ bl checkUpperGrabItemThrow__9daAlink_cFf
/* 800F6F6C 000F3EAC  2C 03 00 00 */ cmpwi r3, 0
/* 800F6F70 000F3EB0  41 82 00 1C */ beq lbl_800F6F8C
/* 800F6F74 000F3EB4  7F E3 FB 78 */ mr r3, r31
/* 800F6F78 000F3EB8  38 80 00 00 */ li r4, 0
/* 800F6F7C 000F3EBC  4B FF E2 69 */ bl procCanoeWaitInit__9daAlink_cFi
/* 800F6F80 000F3EC0  48 00 00 0C */ b lbl_800F6F8C
lbl_800F6F84:
/* 800F6F84 000F3EC4  7F E3 FB 78 */ mr r3, r31
/* 800F6F88 000F3EC8  4B FF D9 9D */ bl checkNextActionCanoe__9daAlink_cFv
lbl_800F6F8C:
/* 800F6F8C 000F3ECC  38 60 00 01 */ li r3, 1
lbl_800F6F90:
/* 800F6F90 000F3ED0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F6F94 000F3ED4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F6F98 000F3ED8  7C 08 03 A6 */ mtlr r0
/* 800F6F9C 000F3EDC  38 21 00 10 */ addi r1, r1, 0x10
/* 800F6FA0 000F3EE0  4E 80 00 20 */ blr

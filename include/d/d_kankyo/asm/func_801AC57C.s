/* 801AC57C 001A94BC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801AC580 001A94C0  7C 08 02 A6 */ mflr r0
/* 801AC584 001A94C4  90 01 00 14 */ stw r0, 0x14(r1)
/* 801AC588 001A94C8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801AC58C 001A94CC  3B E0 00 00 */ li r31, 0
/* 801AC590 001A94D0  4B E8 2F 89 */ bl dComIfGp_world_dark_get__Fv
/* 801AC594 001A94D4  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 801AC598 001A94D8  28 00 00 01 */ cmplwi r0, 1
/* 801AC59C 001A94DC  40 82 00 08 */ bne lbl_801AC5A4
/* 801AC5A0 001A94E0  3B E0 00 01 */ li r31, 1
lbl_801AC5A4:
/* 801AC5A4 001A94E4  7F E3 FB 78 */ mr r3, r31
/* 801AC5A8 001A94E8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801AC5AC 001A94EC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801AC5B0 001A94F0  7C 08 03 A6 */ mtlr r0
/* 801AC5B4 001A94F4  38 21 00 10 */ addi r1, r1, 0x10
/* 801AC5B8 001A94F8  4E 80 00 20 */ blr

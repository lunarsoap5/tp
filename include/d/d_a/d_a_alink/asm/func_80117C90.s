/* 80117C90 00114BD0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80117C94 00114BD4  7C 08 02 A6 */ mflr r0
/* 80117C98 00114BD8  90 01 00 14 */ stw r0, 0x14(r1)
/* 80117C9C 00114BDC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80117CA0 00114BE0  93 C1 00 08 */ stw r30, 8(r1)
/* 80117CA4 00114BE4  7C 7E 1B 78 */ mr r30, r3
/* 80117CA8 00114BE8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80117CAC 00114BEC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80117CB0 00114BF0  38 63 4E C8 */ addi r3, r3, 0x4ec8
/* 80117CB4 00114BF4  4B F2 A7 B5 */ bl reset__14dEvt_control_cFv
/* 80117CB8 00114BF8  28 1E 00 00 */ cmplwi r30, 0
/* 80117CBC 00114BFC  41 82 00 0C */ beq lbl_80117CC8
/* 80117CC0 00114C00  83 FE 00 04 */ lwz r31, 4(r30)
/* 80117CC4 00114C04  48 00 00 08 */ b lbl_80117CCC
lbl_80117CC8:
/* 80117CC8 00114C08  3B E0 FF FF */ li r31, -1
lbl_80117CCC:
/* 80117CCC 00114C0C  48 06 99 75 */ bl dCam_getBody__Fv
/* 80117CD0 00114C10  7F E4 FB 78 */ mr r4, r31
/* 80117CD4 00114C14  4B F7 0E E9 */ bl EndEventCamera__9dCamera_cFi
/* 80117CD8 00114C18  7F C3 F3 78 */ mr r3, r30
/* 80117CDC 00114C1C  48 00 00 1D */ bl endDemoMode__9daAlink_cFv
/* 80117CE0 00114C20  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80117CE4 00114C24  83 C1 00 08 */ lwz r30, 8(r1)
/* 80117CE8 00114C28  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80117CEC 00114C2C  7C 08 03 A6 */ mtlr r0
/* 80117CF0 00114C30  38 21 00 10 */ addi r1, r1, 0x10
/* 80117CF4 00114C34  4E 80 00 20 */ blr

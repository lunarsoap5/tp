/* 80207C34 00204B74  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80207C38 00204B78  7C 08 02 A6 */ mflr r0
/* 80207C3C 00204B7C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80207C40 00204B80  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80207C44 00204B84  7C 7F 1B 78 */ mr r31, r3
/* 80207C48 00204B88  80 63 00 38 */ lwz r3, 0x38(r3)
/* 80207C4C 00204B8C  48 04 DB DD */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207C50 00204B90  C0 02 AD 4C */ lfs f0, lbl_8045474C-_SDA2_BASE_(r2)
/* 80207C54 00204B94  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80207C58 00204B98  41 82 00 B4 */ beq lbl_80207D0C
/* 80207C5C 00204B9C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80207C60 00204BA0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80207C64 00204BA4  88 03 5E 5E */ lbz r0, 0x5e5e(r3)
/* 80207C68 00204BA8  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 80207C6C 00204BAC  41 82 00 20 */ beq lbl_80207C8C
/* 80207C70 00204BB0  80 7F 00 38 */ lwz r3, 0x38(r31)
/* 80207C74 00204BB4  FC 20 00 90 */ fmr f1, f0
/* 80207C78 00204BB8  48 04 DB 59 */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207C7C 00204BBC  38 00 00 05 */ li r0, 5
/* 80207C80 00204BC0  80 7F 00 38 */ lwz r3, 0x38(r31)
/* 80207C84 00204BC4  B0 03 00 16 */ sth r0, 0x16(r3)
/* 80207C88 00204BC8  48 00 00 2C */ b lbl_80207CB4
lbl_80207C8C:
/* 80207C8C 00204BCC  80 7F 00 38 */ lwz r3, 0x38(r31)
/* 80207C90 00204BD0  FC 20 00 90 */ fmr f1, f0
/* 80207C94 00204BD4  48 04 DB 3D */ bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207C98 00204BD8  3C 60 80 43 */ lis r3, g_meter2_info@ha
/* 80207C9C 00204BDC  38 63 01 88 */ addi r3, r3, g_meter2_info@l
/* 80207CA0 00204BE0  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 80207CA4 00204BE4  80 63 01 0C */ lwz r3, 0x10c(r3)
/* 80207CA8 00204BE8  80 9F 00 38 */ lwz r4, 0x38(r31)
/* 80207CAC 00204BEC  38 A0 00 05 */ li r5, 5
/* 80207CB0 00204BF0  48 01 2D F5 */ bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80207CB4:
/* 80207CB4 00204BF4  80 7F 00 38 */ lwz r3, 0x38(r31)
/* 80207CB8 00204BF8  48 04 DB 71 */ bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207CBC 00204BFC  C0 42 AD 4C */ lfs f2, lbl_8045474C-_SDA2_BASE_(r2)
/* 80207CC0 00204C00  FC 02 08 00 */ fcmpu cr0, f2, f1
/* 80207CC4 00204C04  40 82 00 48 */ bne lbl_80207D0C
/* 80207CC8 00204C08  88 1F 04 C7 */ lbz r0, 0x4c7(r31)
/* 80207CCC 00204C0C  28 00 00 00 */ cmplwi r0, 0
/* 80207CD0 00204C10  40 82 00 3C */ bne lbl_80207D0C
/* 80207CD4 00204C14  38 00 00 56 */ li r0, 0x56
/* 80207CD8 00204C18  90 01 00 08 */ stw r0, 8(r1)
/* 80207CDC 00204C1C  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80207CE0 00204C20  38 81 00 08 */ addi r4, r1, 8
/* 80207CE4 00204C24  38 A0 00 00 */ li r5, 0
/* 80207CE8 00204C28  38 C0 00 00 */ li r6, 0
/* 80207CEC 00204C2C  38 E0 00 00 */ li r7, 0
/* 80207CF0 00204C30  FC 20 10 90 */ fmr f1, f2
/* 80207CF4 00204C34  C0 62 AD 58 */ lfs f3, lbl_80454758-_SDA2_BASE_(r2)
/* 80207CF8 00204C38  FC 80 18 90 */ fmr f4, f3
/* 80207CFC 00204C3C  39 00 00 00 */ li r8, 0
/* 80207D00 00204C40  48 0A 3C 85 */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80207D04 00204C44  38 00 00 01 */ li r0, 1
/* 80207D08 00204C48  98 1F 04 C7 */ stb r0, 0x4c7(r31)
lbl_80207D0C:
/* 80207D0C 00204C4C  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80207D10 00204C50  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80207D14 00204C54  7C 08 03 A6 */ mtlr r0
/* 80207D18 00204C58  38 21 00 20 */ addi r1, r1, 0x20
/* 80207D1C 00204C5C  4E 80 00 20 */ blr

/* 800C3D38 000C0C78  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C3D3C 000C0C7C  7C 08 02 A6 */ mflr r0
/* 800C3D40 000C0C80  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C3D44 000C0C84  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800C3D48 000C0C88  7C 7F 1B 78 */ mr r31, r3
/* 800C3D4C 000C0C8C  4B FF 02 89 */ bl setSpeedAndAngleNormal__9daAlink_cFv
/* 800C3D50 000C0C90  38 7F 04 E6 */ addi r3, r31, 0x4e6
/* 800C3D54 000C0C94  A8 9F 04 DE */ lha r4, 0x4de(r31)
/* 800C3D58 000C0C98  A8 BF 30 0A */ lha r5, 0x300a(r31)
/* 800C3D5C 000C0C9C  A8 DF 30 0E */ lha r6, 0x300e(r31)
/* 800C3D60 000C0CA0  A8 FF 30 10 */ lha r7, 0x3010(r31)
/* 800C3D64 000C0CA4  48 1A C7 DD */ bl cLib_addCalcAngleS__FPsssss
/* 800C3D68 000C0CA8  7F E3 FB 78 */ mr r3, r31
/* 800C3D6C 000C0CAC  38 80 00 00 */ li r4, 0
/* 800C3D70 000C0CB0  4B FF 63 61 */ bl checkNextAction__9daAlink_cFi
/* 800C3D74 000C0CB4  2C 03 00 00 */ cmpwi r3, 0
/* 800C3D78 000C0CB8  40 82 00 10 */ bne lbl_800C3D88
/* 800C3D7C 000C0CBC  7F E3 FB 78 */ mr r3, r31
/* 800C3D80 000C0CC0  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800C3D84 000C0CC4  4B FE A0 91 */ bl setBlendMoveAnime__9daAlink_cFf
lbl_800C3D88:
/* 800C3D88 000C0CC8  38 60 00 01 */ li r3, 1
/* 800C3D8C 000C0CCC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C3D90 000C0CD0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C3D94 000C0CD4  7C 08 03 A6 */ mtlr r0
/* 800C3D98 000C0CD8  38 21 00 10 */ addi r1, r1, 0x10
/* 800C3D9C 000C0CDC  4E 80 00 20 */ blr

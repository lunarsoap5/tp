/* 8013C8C8 00139808  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8013C8CC 0013980C  7C 08 02 A6 */ mflr r0
/* 8013C8D0 00139810  90 01 00 34 */ stw r0, 0x34(r1)
/* 8013C8D4 00139814  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 8013C8D8 00139818  7C 7F 1B 78 */ mr r31, r3
/* 8013C8DC 0013981C  38 80 01 34 */ li r4, 0x134
/* 8013C8E0 00139820  4B F8 56 8D */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013C8E4 00139824  7F E3 FB 78 */ mr r3, r31
/* 8013C8E8 00139828  38 80 00 74 */ li r4, 0x74
/* 8013C8EC 0013982C  4B FE CD 8D */ bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8013C8F0 00139830  7F E3 FB 78 */ mr r3, r31
/* 8013C8F4 00139834  38 80 00 9A */ li r4, 0x9a
/* 8013C8F8 00139838  4B F7 2F A9 */ bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8013C8FC 0013983C  3C 60 80 39 */ lis r3, lbl_8038F7A4@ha
/* 8013C900 00139840  38 63 F7 A4 */ addi r3, r3, lbl_8038F7A4@l
/* 8013C904 00139844  C0 03 00 28 */ lfs f0, 0x28(r3)
/* 8013C908 00139848  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 8013C90C 0013984C  C0 03 00 2C */ lfs f0, 0x2c(r3)
/* 8013C910 00139850  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 8013C914 00139854  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 8013C918 00139858  3C 63 00 01 */ addis r3, r3, 1
/* 8013C91C 0013985C  38 03 80 00 */ addi r0, r3, -32768
/* 8013C920 00139860  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 8013C924 00139864  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013C928 00139868  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 8013C92C 0013986C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8013C930 00139870  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8013C934 00139874  D0 21 00 1C */ stfs f1, 0x1c(r1)
/* 8013C938 00139878  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013C93C 0013987C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013C940 00139880  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 8013C944 00139884  38 80 00 05 */ li r4, 5
/* 8013C948 00139888  38 A0 00 0F */ li r5, 0xf
/* 8013C94C 0013988C  38 C1 00 14 */ addi r6, r1, 0x14
/* 8013C950 00139890  4B F3 30 D5 */ bl StartShock__12dVibration_cFii4cXyz
/* 8013C954 00139894  C0 1F 04 D0 */ lfs f0, 0x4d0(r31)
/* 8013C958 00139898  D0 01 00 08 */ stfs f0, 8(r1)
/* 8013C95C 0013989C  C0 1F 04 D4 */ lfs f0, 0x4d4(r31)
/* 8013C960 001398A0  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8013C964 001398A4  C0 1F 04 D8 */ lfs f0, 0x4d8(r31)
/* 8013C968 001398A8  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8013C96C 001398AC  38 61 00 08 */ addi r3, r1, 8
/* 8013C970 001398B0  38 80 00 64 */ li r4, 0x64
/* 8013C974 001398B4  28 1F 00 00 */ cmplwi r31, 0
/* 8013C978 001398B8  41 82 00 0C */ beq lbl_8013C984
/* 8013C97C 001398BC  80 BF 00 04 */ lwz r5, 4(r31)
/* 8013C980 001398C0  48 00 00 08 */ b lbl_8013C988
lbl_8013C984:
/* 8013C984 001398C4  38 A0 FF FF */ li r5, -1
lbl_8013C988:
/* 8013C988 001398C8  38 C0 00 05 */ li r6, 5
/* 8013C98C 001398CC  48 06 B8 35 */ bl dKy_Sound_set__F4cXyziUii
/* 8013C990 001398D0  7F E3 FB 78 */ mr r3, r31
/* 8013C994 001398D4  3C 80 00 02 */ lis r4, 0x00020054@ha
/* 8013C998 001398D8  38 84 00 54 */ addi r4, r4, 0x00020054@l
/* 8013C99C 001398DC  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8013C9A0 001398E0  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 8013C9A4 001398E4  7D 89 03 A6 */ mtctr r12
/* 8013C9A8 001398E8  4E 80 04 21 */ bctrl
/* 8013C9AC 001398EC  80 1F 05 84 */ lwz r0, 0x584(r31)
/* 8013C9B0 001398F0  60 00 00 01 */ ori r0, r0, 1
/* 8013C9B4 001398F4  90 1F 05 84 */ stw r0, 0x584(r31)
/* 8013C9B8 001398F8  3C 60 80 42 */ lis r3, lbl_8042561C@ha
/* 8013C9BC 001398FC  C4 03 56 1C */ lfsu f0, lbl_8042561C@l(r3)
/* 8013C9C0 00139900  D0 1F 35 88 */ stfs f0, 0x3588(r31)
/* 8013C9C4 00139904  C0 03 00 04 */ lfs f0, 4(r3)
/* 8013C9C8 00139908  D0 1F 35 8C */ stfs f0, 0x358c(r31)
/* 8013C9CC 0013990C  C0 03 00 08 */ lfs f0, 8(r3)
/* 8013C9D0 00139910  D0 1F 35 90 */ stfs f0, 0x3590(r31)
/* 8013C9D4 00139914  38 60 00 01 */ li r3, 1
/* 8013C9D8 00139918  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 8013C9DC 0013991C  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8013C9E0 00139920  7C 08 03 A6 */ mtlr r0
/* 8013C9E4 00139924  38 21 00 30 */ addi r1, r1, 0x30
/* 8013C9E8 00139928  4E 80 00 20 */ blr
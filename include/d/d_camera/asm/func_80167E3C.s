/* 80167E3C 00164D7C  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 80167E40 00164D80  7C 08 02 A6 */ mflr r0
/* 80167E44 00164D84  90 01 00 64 */ stw r0, 0x64(r1)
/* 80167E48 00164D88  93 E1 00 5C */ stw r31, 0x5c(r1)
/* 80167E4C 00164D8C  7C 65 1B 78 */ mr r5, r3
/* 80167E50 00164D90  7C 9F 23 78 */ mr r31, r4
/* 80167E54 00164D94  38 61 00 34 */ addi r3, r1, 0x34
/* 80167E58 00164D98  7C A4 2B 78 */ mr r4, r5
/* 80167E5C 00164D9C  80 A5 01 80 */ lwz r5, 0x180(r5)
/* 80167E60 00164DA0  4B F2 F8 BD */ bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80167E64 00164DA4  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 80167E68 00164DA8  D0 01 00 40 */ stfs f0, 0x40(r1)
/* 80167E6C 00164DAC  C0 01 00 38 */ lfs f0, 0x38(r1)
/* 80167E70 00164DB0  D0 01 00 44 */ stfs f0, 0x44(r1)
/* 80167E74 00164DB4  C0 01 00 3C */ lfs f0, 0x3c(r1)
/* 80167E78 00164DB8  D0 01 00 48 */ stfs f0, 0x48(r1)
/* 80167E7C 00164DBC  38 61 00 28 */ addi r3, r1, 0x28
/* 80167E80 00164DC0  7F E4 FB 78 */ mr r4, r31
/* 80167E84 00164DC4  38 A1 00 40 */ addi r5, r1, 0x40
/* 80167E88 00164DC8  48 0F EC AD */ bl __mi__4cXyzCFRC3Vec
/* 80167E8C 00164DCC  38 61 00 08 */ addi r3, r1, 8
/* 80167E90 00164DD0  38 81 00 28 */ addi r4, r1, 0x28
/* 80167E94 00164DD4  48 10 99 ED */ bl __ct__7cSGlobeFRC4cXyz
/* 80167E98 00164DD8  C0 21 00 08 */ lfs f1, 8(r1)
/* 80167E9C 00164DDC  C0 02 9D 34 */ lfs f0, lbl_80453734-_SDA2_BASE_(r2)
/* 80167EA0 00164DE0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80167EA4 00164DE4  40 80 00 3C */ bge lbl_80167EE0
/* 80167EA8 00164DE8  D0 01 00 08 */ stfs f0, 8(r1)
/* 80167EAC 00164DEC  38 61 00 1C */ addi r3, r1, 0x1c
/* 80167EB0 00164DF0  38 81 00 08 */ addi r4, r1, 8
/* 80167EB4 00164DF4  48 10 9C 01 */ bl Xyz__7cSGlobeCFv
/* 80167EB8 00164DF8  38 61 00 10 */ addi r3, r1, 0x10
/* 80167EBC 00164DFC  38 81 00 40 */ addi r4, r1, 0x40
/* 80167EC0 00164E00  38 A1 00 1C */ addi r5, r1, 0x1c
/* 80167EC4 00164E04  48 0F EC 21 */ bl __pl__4cXyzCFRC3Vec
/* 80167EC8 00164E08  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 80167ECC 00164E0C  D0 1F 00 00 */ stfs f0, 0(r31)
/* 80167ED0 00164E10  C0 01 00 14 */ lfs f0, 0x14(r1)
/* 80167ED4 00164E14  D0 1F 00 04 */ stfs f0, 4(r31)
/* 80167ED8 00164E18  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 80167EDC 00164E1C  D0 1F 00 08 */ stfs f0, 8(r31)
lbl_80167EE0:
/* 80167EE0 00164E20  83 E1 00 5C */ lwz r31, 0x5c(r1)
/* 80167EE4 00164E24  80 01 00 64 */ lwz r0, 0x64(r1)
/* 80167EE8 00164E28  7C 08 03 A6 */ mtlr r0
/* 80167EEC 00164E2C  38 21 00 60 */ addi r1, r1, 0x60
/* 80167EF0 00164E30  4E 80 00 20 */ blr

/* 800D58A0 000D27E0  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 800D58A4 000D27E4  7C 08 02 A6 */ mflr r0
/* 800D58A8 000D27E8  90 01 00 44 */ stw r0, 0x44(r1)
/* 800D58AC 000D27EC  93 E1 00 3C */ stw r31, 0x3c(r1)
/* 800D58B0 000D27F0  93 C1 00 38 */ stw r30, 0x38(r1)
/* 800D58B4 000D27F4  7C 7F 1B 78 */ mr r31, r3
/* 800D58B8 000D27F8  7C 9E 23 78 */ mr r30, r4
/* 800D58BC 000D27FC  38 80 00 2C */ li r4, 0x2c
/* 800D58C0 000D2800  4B FE C6 AD */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D58C4 000D2804  7F E3 FB 78 */ mr r3, r31
/* 800D58C8 000D2808  48 00 17 19 */ bl checkCutLandDamage__9daAlink_cFv
/* 800D58CC 000D280C  7F E3 FB 78 */ mr r3, r31
/* 800D58D0 000D2810  38 80 00 7A */ li r4, 0x7a
/* 800D58D4 000D2814  3C A0 80 39 */ lis r5, lbl_8038DD44@ha
/* 800D58D8 000D2818  38 A5 DD 44 */ addi r5, r5, lbl_8038DD44@l
/* 800D58DC 000D281C  38 A5 00 28 */ addi r5, r5, 0x28
/* 800D58E0 000D2820  4B FD 78 15 */ bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D58E4 000D2824  80 1F 06 14 */ lwz r0, 0x614(r31)
/* 800D58E8 000D2828  28 00 00 51 */ cmplwi r0, 0x51
/* 800D58EC 000D282C  41 82 00 7C */ beq lbl_800D5968
/* 800D58F0 000D2830  28 1E 00 00 */ cmplwi r30, 0
/* 800D58F4 000D2834  41 82 01 14 */ beq lbl_800D5A08
/* 800D58F8 000D2838  A0 1E 05 8E */ lhz r0, 0x58e(r30)
/* 800D58FC 000D283C  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800D5900 000D2840  41 82 01 08 */ beq lbl_800D5A08
/* 800D5904 000D2844  C0 5F 05 C4 */ lfs f2, 0x5c4(r31)
/* 800D5908 000D2848  C0 1F 05 BC */ lfs f0, 0x5bc(r31)
/* 800D590C 000D284C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 800D5910 000D2850  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D5914 000D2854  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 800D5918 000D2858  D0 41 00 18 */ stfs f2, 0x18(r1)
/* 800D591C 000D285C  C0 5E 05 70 */ lfs f2, 0x570(r30)
/* 800D5920 000D2860  C0 1E 05 68 */ lfs f0, 0x568(r30)
/* 800D5924 000D2864  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 800D5928 000D2868  D0 21 00 20 */ stfs f1, 0x20(r1)
/* 800D592C 000D286C  D0 41 00 24 */ stfs f2, 0x24(r1)
/* 800D5930 000D2870  38 61 00 10 */ addi r3, r1, 0x10
/* 800D5934 000D2874  38 81 00 1C */ addi r4, r1, 0x1c
/* 800D5938 000D2878  48 27 1A 65 */ bl PSVECSquareDistance
/* 800D593C 000D287C  C0 02 93 5C */ lfs f0, lbl_80452D5C-_SDA2_BASE_(r2)
/* 800D5940 000D2880  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D5944 000D2884  40 80 00 C4 */ bge lbl_800D5A08
/* 800D5948 000D2888  C0 3E 04 D4 */ lfs f1, 0x4d4(r30)
/* 800D594C 000D288C  C0 1F 04 D4 */ lfs f0, 0x4d4(r31)
/* 800D5950 000D2890  EC 01 00 28 */ fsubs f0, f1, f0
/* 800D5954 000D2894  FC 00 02 10 */ fabs f0, f0
/* 800D5958 000D2898  FC 20 00 18 */ frsp f1, f0
/* 800D595C 000D289C  C0 02 93 50 */ lfs f0, lbl_80452D50-_SDA2_BASE_(r2)
/* 800D5960 000D28A0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D5964 000D28A4  40 80 00 A4 */ bge lbl_800D5A08
lbl_800D5968:
/* 800D5968 000D28A8  38 00 00 01 */ li r0, 1
/* 800D596C 000D28AC  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 800D5970 000D28B0  28 1E 00 00 */ cmplwi r30, 0
/* 800D5974 000D28B4  41 82 00 4C */ beq lbl_800D59C0
/* 800D5978 000D28B8  A0 1E 05 8E */ lhz r0, 0x58e(r30)
/* 800D597C 000D28BC  60 00 00 02 */ ori r0, r0, 2
/* 800D5980 000D28C0  B0 1E 05 8E */ sth r0, 0x58e(r30)
/* 800D5984 000D28C4  38 61 00 08 */ addi r3, r1, 8
/* 800D5988 000D28C8  38 80 40 00 */ li r4, 0x4000
/* 800D598C 000D28CC  A8 BF 04 E6 */ lha r5, 0x4e6(r31)
/* 800D5990 000D28D0  38 C0 00 00 */ li r6, 0
/* 800D5994 000D28D4  48 19 1A 61 */ bl __ct__5csXyzFsss
/* 800D5998 000D28D8  38 DE 05 68 */ addi r6, r30, 0x568
/* 800D599C 000D28DC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D59A0 000D28E0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D59A4 000D28E4  80 63 5D 3C */ lwz r3, 0x5d3c(r3)
/* 800D59A8 000D28E8  38 80 00 03 */ li r4, 3
/* 800D59AC 000D28EC  38 A0 00 00 */ li r5, 0
/* 800D59B0 000D28F0  38 E1 00 08 */ addi r7, r1, 8
/* 800D59B4 000D28F4  39 00 00 00 */ li r8, 0
/* 800D59B8 000D28F8  39 20 00 00 */ li r9, 0
/* 800D59BC 000D28FC  4B F7 68 5D */ bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_800D59C0:
/* 800D59C0 000D2900  3B C0 00 20 */ li r30, 0x20
/* 800D59C4 000D2904  3C 60 80 39 */ lis r3, lbl_8038DD44@ha
/* 800D59C8 000D2908  38 63 DD 44 */ addi r3, r3, lbl_8038DD44@l
/* 800D59CC 000D290C  A8 03 00 64 */ lha r0, 0x64(r3)
/* 800D59D0 000D2910  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 800D59D4 000D2914  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D59D8 000D2918  D0 21 00 28 */ stfs f1, 0x28(r1)
/* 800D59DC 000D291C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800D59E0 000D2920  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 800D59E4 000D2924  D0 21 00 30 */ stfs f1, 0x30(r1)
/* 800D59E8 000D2928  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D59EC 000D292C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D59F0 000D2930  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800D59F4 000D2934  38 80 00 04 */ li r4, 4
/* 800D59F8 000D2938  38 A0 00 1F */ li r5, 0x1f
/* 800D59FC 000D293C  38 C1 00 28 */ addi r6, r1, 0x28
/* 800D5A00 000D2940  4B F9 A0 25 */ bl StartShock__12dVibration_cFii4cXyz
/* 800D5A04 000D2944  48 00 00 20 */ b lbl_800D5A24
lbl_800D5A08:
/* 800D5A08 000D2948  8B DF 2F A5 */ lbz r30, 0x2fa5(r31)
/* 800D5A0C 000D294C  38 00 00 00 */ li r0, 0
/* 800D5A10 000D2950  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 800D5A14 000D2954  3C 60 80 39 */ lis r3, lbl_8038DD44@ha
/* 800D5A18 000D2958  38 63 DD 44 */ addi r3, r3, lbl_8038DD44@l
/* 800D5A1C 000D295C  A8 03 00 66 */ lha r0, 0x66(r3)
/* 800D5A20 000D2960  B0 1F 30 08 */ sth r0, 0x3008(r31)
lbl_800D5A24:
/* 800D5A24 000D2964  38 7F 2C A8 */ addi r3, r31, 0x2ca8
/* 800D5A28 000D2968  3C 80 00 04 */ lis r4, 0x00040001@ha
/* 800D5A2C 000D296C  38 84 00 01 */ addi r4, r4, 0x00040001@l
/* 800D5A30 000D2970  7F C5 F3 78 */ mr r5, r30
/* 800D5A34 000D2974  81 9F 2C A8 */ lwz r12, 0x2ca8(r31)
/* 800D5A38 000D2978  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 800D5A3C 000D297C  7D 89 03 A6 */ mtctr r12
/* 800D5A40 000D2980  4E 80 04 21 */ bctrl
/* 800D5A44 000D2984  38 00 00 00 */ li r0, 0
/* 800D5A48 000D2988  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800D5A4C 000D298C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D5A50 000D2990  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800D5A54 000D2994  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 800D5A58 000D2998  54 00 01 46 */ rlwinm r0, r0, 0, 5, 3
/* 800D5A5C 000D299C  90 1F 05 80 */ stw r0, 0x580(r31)
/* 800D5A60 000D29A0  38 00 00 04 */ li r0, 4
/* 800D5A64 000D29A4  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
/* 800D5A68 000D29A8  7F E3 FB 78 */ mr r3, r31
/* 800D5A6C 000D29AC  38 80 00 02 */ li r4, 2
/* 800D5A70 000D29B0  48 04 B7 51 */ bl setFootEffectProcType__9daAlink_cFi
/* 800D5A74 000D29B4  80 1F 05 84 */ lwz r0, 0x584(r31)
/* 800D5A78 000D29B8  60 00 00 30 */ ori r0, r0, 0x30
/* 800D5A7C 000D29BC  90 1F 05 84 */ stw r0, 0x584(r31)
/* 800D5A80 000D29C0  38 00 00 00 */ li r0, 0
/* 800D5A84 000D29C4  B0 1F 30 10 */ sth r0, 0x3010(r31)
/* 800D5A88 000D29C8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D5A8C 000D29CC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D5A90 000D29D0  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 800D5A94 000D29D4  64 00 00 40 */ oris r0, r0, 0x40
/* 800D5A98 000D29D8  90 03 5F 1C */ stw r0, 0x5f1c(r3)
/* 800D5A9C 000D29DC  3C 60 80 42 */ lis r3, lbl_80425544@ha
/* 800D5AA0 000D29E0  C4 03 55 44 */ lfsu f0, lbl_80425544@l(r3)
/* 800D5AA4 000D29E4  D0 1F 35 88 */ stfs f0, 0x3588(r31)
/* 800D5AA8 000D29E8  C0 03 00 04 */ lfs f0, 4(r3)
/* 800D5AAC 000D29EC  D0 1F 35 8C */ stfs f0, 0x358c(r31)
/* 800D5AB0 000D29F0  C0 03 00 08 */ lfs f0, 8(r3)
/* 800D5AB4 000D29F4  D0 1F 35 90 */ stfs f0, 0x3590(r31)
/* 800D5AB8 000D29F8  38 00 00 04 */ li r0, 4
/* 800D5ABC 000D29FC  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 800D5AC0 000D2A00  38 60 00 01 */ li r3, 1
/* 800D5AC4 000D2A04  83 E1 00 3C */ lwz r31, 0x3c(r1)
/* 800D5AC8 000D2A08  83 C1 00 38 */ lwz r30, 0x38(r1)
/* 800D5ACC 000D2A0C  80 01 00 44 */ lwz r0, 0x44(r1)
/* 800D5AD0 000D2A10  7C 08 03 A6 */ mtlr r0
/* 800D5AD4 000D2A14  38 21 00 40 */ addi r1, r1, 0x40
/* 800D5AD8 000D2A18  4E 80 00 20 */ blr
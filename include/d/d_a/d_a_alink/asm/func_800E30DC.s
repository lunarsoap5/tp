/* 800E30DC 000E001C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800E30E0 000E0020  7C 08 02 A6 */ mflr r0
/* 800E30E4 000E0024  90 01 00 24 */ stw r0, 0x24(r1)
/* 800E30E8 000E0028  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800E30EC 000E002C  93 C1 00 18 */ stw r30, 0x18(r1)
/* 800E30F0 000E0030  7C 7E 1B 78 */ mr r30, r3
/* 800E30F4 000E0034  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800E30F8 000E0038  80 03 05 88 */ lwz r0, 0x588(r3)
/* 800E30FC 000E003C  64 00 08 00 */ oris r0, r0, 0x800
/* 800E3100 000E0040  90 03 05 88 */ stw r0, 0x588(r3)
/* 800E3104 000E0044  7F E3 FB 78 */ mr r3, r31
/* 800E3108 000E0048  48 07 B3 C5 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E310C 000E004C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E3110 000E0050  41 82 00 14 */ beq lbl_800E3124
/* 800E3114 000E0054  7F C3 F3 78 */ mr r3, r30
/* 800E3118 000E0058  38 80 00 00 */ li r4, 0
/* 800E311C 000E005C  4B FD 6F B5 */ bl checkNextAction__9daAlink_cFi
/* 800E3120 000E0060  48 00 00 DC */ b lbl_800E31FC
lbl_800E3124:
/* 800E3124 000E0064  7F E3 FB 78 */ mr r3, r31
/* 800E3128 000E0068  C0 22 93 30 */ lfs f1, lbl_80452D30-_SDA2_BASE_(r2)
/* 800E312C 000E006C  48 24 53 01 */ bl checkPass__12J3DFrameCtrlFf
/* 800E3130 000E0070  2C 03 00 00 */ cmpwi r3, 0
/* 800E3134 000E0074  41 82 00 14 */ beq lbl_800E3148
/* 800E3138 000E0078  7F C3 F3 78 */ mr r3, r30
/* 800E313C 000E007C  38 80 00 01 */ li r4, 1
/* 800E3140 000E0080  4B FF F4 41 */ bl setHeavyBoots__9daAlink_cFi
/* 800E3144 000E0084  48 00 00 B8 */ b lbl_800E31FC
lbl_800E3148:
/* 800E3148 000E0088  7F E3 FB 78 */ mr r3, r31
/* 800E314C 000E008C  C0 22 94 04 */ lfs f1, lbl_80452E04-_SDA2_BASE_(r2)
/* 800E3150 000E0090  48 24 52 DD */ bl checkPass__12J3DFrameCtrlFf
/* 800E3154 000E0094  2C 03 00 00 */ cmpwi r3, 0
/* 800E3158 000E0098  41 82 00 50 */ beq lbl_800E31A8
/* 800E315C 000E009C  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800E3160 000E00A0  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800E3164 000E00A4  41 82 00 34 */ beq lbl_800E3198
/* 800E3168 000E00A8  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800E316C 000E00AC  D0 21 00 08 */ stfs f1, 8(r1)
/* 800E3170 000E00B0  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E3174 000E00B4  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800E3178 000E00B8  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800E317C 000E00BC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800E3180 000E00C0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800E3184 000E00C4  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800E3188 000E00C8  38 80 00 03 */ li r4, 3
/* 800E318C 000E00CC  38 A0 00 01 */ li r5, 1
/* 800E3190 000E00D0  38 C1 00 08 */ addi r6, r1, 8
/* 800E3194 000E00D4  4B F8 C8 91 */ bl StartShock__12dVibration_cFii4cXyz
lbl_800E3198:
/* 800E3198 000E00D8  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800E319C 000E00DC  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800E31A0 000E00E0  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800E31A4 000E00E4  48 00 00 58 */ b lbl_800E31FC
lbl_800E31A8:
/* 800E31A8 000E00E8  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800E31AC 000E00EC  3C 60 80 39 */ lis r3, lbl_8038E7F4@ha
/* 800E31B0 000E00F0  38 63 E7 F4 */ addi r3, r3, lbl_8038E7F4@l
/* 800E31B4 000E00F4  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 800E31B8 000E00F8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E31BC 000E00FC  40 81 00 20 */ ble lbl_800E31DC
/* 800E31C0 000E0100  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800E31C4 000E0104  60 00 00 04 */ ori r0, r0, 4
/* 800E31C8 000E0108  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800E31CC 000E010C  7F C3 F3 78 */ mr r3, r30
/* 800E31D0 000E0110  38 80 00 01 */ li r4, 1
/* 800E31D4 000E0114  4B FD 6E FD */ bl checkNextAction__9daAlink_cFi
/* 800E31D8 000E0118  48 00 00 24 */ b lbl_800E31FC
lbl_800E31DC:
/* 800E31DC 000E011C  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800E31E0 000E0120  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E31E4 000E0124  4C 41 13 82 */ cror 2, 1, 2
/* 800E31E8 000E0128  40 82 00 14 */ bne lbl_800E31FC
/* 800E31EC 000E012C  38 00 00 01 */ li r0, 1
/* 800E31F0 000E0130  98 1E 2F 92 */ stb r0, 0x2f92(r30)
/* 800E31F4 000E0134  38 00 00 06 */ li r0, 6
/* 800E31F8 000E0138  98 1E 2F 93 */ stb r0, 0x2f93(r30)
lbl_800E31FC:
/* 800E31FC 000E013C  38 60 00 01 */ li r3, 1
/* 800E3200 000E0140  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800E3204 000E0144  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 800E3208 000E0148  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800E320C 000E014C  7C 08 03 A6 */ mtlr r0
/* 800E3210 000E0150  38 21 00 20 */ addi r1, r1, 0x20
/* 800E3214 000E0154  4E 80 00 20 */ blr

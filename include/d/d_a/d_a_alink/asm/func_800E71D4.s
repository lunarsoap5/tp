/* 800E71D4 000E4114  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E71D8 000E4118  7C 08 02 A6 */ mflr r0
/* 800E71DC 000E411C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E71E0 000E4120  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E71E4 000E4124  93 C1 00 08 */ stw r30, 8(r1)
/* 800E71E8 000E4128  7C 7E 1B 78 */ mr r30, r3
/* 800E71EC 000E412C  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800E71F0 000E4130  7F E3 FB 78 */ mr r3, r31
/* 800E71F4 000E4134  48 07 72 D9 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E71F8 000E4138  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E71FC 000E413C  41 82 00 14 */ beq lbl_800E7210
/* 800E7200 000E4140  7F C3 F3 78 */ mr r3, r30
/* 800E7204 000E4144  38 80 00 00 */ li r4, 0
/* 800E7208 000E4148  4B FD 2E C9 */ bl checkNextAction__9daAlink_cFi
/* 800E720C 000E414C  48 00 00 2C */ b lbl_800E7238
lbl_800E7210:
/* 800E7210 000E4150  7F E3 FB 78 */ mr r3, r31
/* 800E7214 000E4154  C0 3E 34 78 */ lfs f1, 0x3478(r30)
/* 800E7218 000E4158  48 24 12 15 */ bl checkPass__12J3DFrameCtrlFf
/* 800E721C 000E415C  2C 03 00 00 */ cmpwi r3, 0
/* 800E7220 000E4160  41 82 00 18 */ beq lbl_800E7238
/* 800E7224 000E4164  80 7E 28 10 */ lwz r3, 0x2810(r30)
/* 800E7228 000E4168  28 03 00 00 */ cmplwi r3, 0
/* 800E722C 000E416C  41 82 00 0C */ beq lbl_800E7238
/* 800E7230 000E4170  38 80 00 00 */ li r4, 0
/* 800E7234 000E4174  4B F3 59 15 */ bl fopAcM_setCarryNow__FP10fopAc_ac_ci
lbl_800E7238:
/* 800E7238 000E4178  38 60 00 01 */ li r3, 1
/* 800E723C 000E417C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E7240 000E4180  83 C1 00 08 */ lwz r30, 8(r1)
/* 800E7244 000E4184  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E7248 000E4188  7C 08 03 A6 */ mtlr r0
/* 800E724C 000E418C  38 21 00 10 */ addi r1, r1, 0x10
/* 800E7250 000E4190  4E 80 00 20 */ blr

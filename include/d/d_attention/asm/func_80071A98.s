/* 80071A98 0006E9D8  94 21 FF 90 */ stwu r1, -0x70(r1)
/* 80071A9C 0006E9DC  7C 08 02 A6 */ mflr r0
/* 80071AA0 0006E9E0  90 01 00 74 */ stw r0, 0x74(r1)
/* 80071AA4 0006E9E4  DB E1 00 60 */ stfd f31, 0x60(r1)
/* 80071AA8 0006E9E8  F3 E1 00 68 */ psq_st f31, 104(r1), 0, 0
/* 80071AAC 0006E9EC  39 61 00 60 */ addi r11, r1, 0x60
/* 80071AB0 0006E9F0  48 2F 07 29 */ bl _savegpr_28
/* 80071AB4 0006E9F4  7C 7D 1B 78 */ mr r29, r3
/* 80071AB8 0006E9F8  80 03 03 DC */ lwz r0, 0x3dc(r3)
/* 80071ABC 0006E9FC  1F E0 00 14 */ mulli r31, r0, 0x14
/* 80071AC0 0006EA00  3B 9F 03 38 */ addi r28, r31, 0x338
/* 80071AC4 0006EA04  7F 9D E2 14 */ add r28, r29, r28
/* 80071AC8 0006EA08  7F 83 E3 78 */ mr r3, r28
/* 80071ACC 0006EA0C  48 00 1D 99 */ bl dAttList_c_NS_getActor
/* 80071AD0 0006EA10  7C 7E 1B 79 */ or. r30, r3, r3
/* 80071AD4 0006EA14  40 82 00 0C */ bne lbl_80071AE0
/* 80071AD8 0006EA18  38 60 00 00 */ li r3, 0
/* 80071ADC 0006EA1C  48 00 01 C4 */ b lbl_80071CA0
lbl_80071AE0:
/* 80071AE0 0006EA20  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 80071AE4 0006EA24  54 00 04 63 */ rlwinm. r0, r0, 0, 0x11, 0x11
/* 80071AE8 0006EA28  40 82 01 A8 */ bne lbl_80071C90
/* 80071AEC 0006EA2C  38 61 00 38 */ addi r3, r1, 0x38
/* 80071AF0 0006EA30  38 9E 05 50 */ addi r4, r30, 0x550
/* 80071AF4 0006EA34  38 BD 03 1C */ addi r5, r29, 0x31c
/* 80071AF8 0006EA38  48 1F 50 3D */ bl cXyz_NS___mi
/* 80071AFC 0006EA3C  38 61 00 24 */ addi r3, r1, 0x24
/* 80071B00 0006EA40  38 81 00 38 */ addi r4, r1, 0x38
/* 80071B04 0006EA44  48 1F FD 7D */ bl cSGlobe_X4_
/* 80071B08 0006EA48  80 BD 00 00 */ lwz r5, 0(r29)
/* 80071B0C 0006EA4C  38 61 00 0C */ addi r3, r1, 0xc
/* 80071B10 0006EA50  38 81 00 2A */ addi r4, r1, 0x2a
/* 80071B14 0006EA54  A8 A5 04 E6 */ lha r5, 0x4e6(r5)
/* 80071B18 0006EA58  48 1F F7 11 */ bl cSAngle_NS___mi_X2_
/* 80071B1C 0006EA5C  A8 01 00 0C */ lha r0, 0xc(r1)
/* 80071B20 0006EA60  B0 01 00 14 */ sth r0, 0x14(r1)
/* 80071B24 0006EA64  38 61 00 2C */ addi r3, r1, 0x2c
/* 80071B28 0006EA68  38 9D 03 1C */ addi r4, r29, 0x31c
/* 80071B2C 0006EA6C  38 BE 05 50 */ addi r5, r30, 0x550
/* 80071B30 0006EA70  48 1F 50 05 */ bl cXyz_NS___mi
/* 80071B34 0006EA74  38 61 00 1C */ addi r3, r1, 0x1c
/* 80071B38 0006EA78  38 81 00 2C */ addi r4, r1, 0x2c
/* 80071B3C 0006EA7C  48 1F FD 45 */ bl cSGlobe_X4_
/* 80071B40 0006EA80  38 61 00 08 */ addi r3, r1, 8
/* 80071B44 0006EA84  38 81 00 22 */ addi r4, r1, 0x22
/* 80071B48 0006EA88  A8 BE 04 E6 */ lha r5, 0x4e6(r30)
/* 80071B4C 0006EA8C  48 1F F6 DD */ bl cSAngle_NS___mi_X2_
/* 80071B50 0006EA90  A8 01 00 08 */ lha r0, 8(r1)
/* 80071B54 0006EA94  B0 01 00 10 */ sth r0, 0x10(r1)
/* 80071B58 0006EA98  7F A3 EB 78 */ mr r3, r29
/* 80071B5C 0006EA9C  38 80 00 4C */ li r4, 0x4c
/* 80071B60 0006EAA0  7F C5 F3 78 */ mr r5, r30
/* 80071B64 0006EAA4  C0 21 00 24 */ lfs f1, 0x24(r1)
/* 80071B68 0006EAA8  A8 C1 00 14 */ lha r6, 0x14(r1)
/* 80071B6C 0006EAAC  7C 07 07 34 */ extsh r7, r0
/* 80071B70 0006EAB0  39 01 00 18 */ addi r8, r1, 0x18
/* 80071B74 0006EAB4  4B FF F3 1D */ bl dAttention_c_NS_calcWeight
/* 80071B78 0006EAB8  FF E0 08 90 */ fmr f31, f1
/* 80071B7C 0006EABC  C0 02 8C 50 */ lfs f0, lbl_80452650-_SDA2_BASE_(r2)
/* 80071B80 0006EAC0  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 80071B84 0006EAC4  4C 40 13 82 */ cror 2, 0, 2
/* 80071B88 0006EAC8  40 82 00 DC */ bne lbl_80071C64
/* 80071B8C 0006EACC  7C 7D FA 14 */ add r3, r29, r31
/* 80071B90 0006EAD0  80 83 03 44 */ lwz r4, 0x344(r3)
/* 80071B94 0006EAD4  90 81 00 18 */ stw r4, 0x18(r1)
/* 80071B98 0006EAD8  7C 7E 22 14 */ add r3, r30, r4
/* 80071B9C 0006EADC  8B 83 05 44 */ lbz r28, 0x544(r3)
/* 80071BA0 0006EAE0  7F A3 EB 78 */ mr r3, r29
/* 80071BA4 0006EAE4  80 BE 05 5C */ lwz r5, 0x55c(r30)
/* 80071BA8 0006EAE8  4B FF EE C9 */ bl dAttention_c_NS_chkAttMask
/* 80071BAC 0006EAEC  2C 03 00 00 */ cmpwi r3, 0
/* 80071BB0 0006EAF0  40 82 00 0C */ bne lbl_80071BBC
/* 80071BB4 0006EAF4  38 60 00 00 */ li r3, 0
/* 80071BB8 0006EAF8  48 00 00 E8 */ b lbl_80071CA0
lbl_80071BBC:
/* 80071BBC 0006EAFC  80 61 00 18 */ lwz r3, 0x18(r1)
/* 80071BC0 0006EB00  A0 9E 00 FA */ lhz r4, 0xfa(r30)
/* 80071BC4 0006EB04  4B FF EE FD */ bl check_event_condition
/* 80071BC8 0006EB08  2C 03 00 00 */ cmpwi r3, 0
/* 80071BCC 0006EB0C  41 82 00 0C */ beq lbl_80071BD8
/* 80071BD0 0006EB10  38 60 00 00 */ li r3, 0
/* 80071BD4 0006EB14  48 00 00 CC */ b lbl_80071CA0
lbl_80071BD8:
/* 80071BD8 0006EB18  3C 60 80 3B */ lis r3, lbl_803A9C70@ha
/* 80071BDC 0006EB1C  38 03 9C 70 */ addi r0, r3, lbl_803A9C70@l
/* 80071BE0 0006EB20  1F 9C 00 1C */ mulli r28, r28, 0x1c
/* 80071BE4 0006EB24  7C 60 E2 14 */ add r3, r0, r28
/* 80071BE8 0006EB28  80 63 00 18 */ lwz r3, 0x18(r3)
/* 80071BEC 0006EB2C  A8 81 00 14 */ lha r4, 0x14(r1)
/* 80071BF0 0006EB30  A8 A1 00 10 */ lha r5, 0x10(r1)
/* 80071BF4 0006EB34  4B FF EF 39 */ bl check_flontofplayer
/* 80071BF8 0006EB38  2C 03 00 00 */ cmpwi r3, 0
/* 80071BFC 0006EB3C  41 82 00 0C */ beq lbl_80071C08
/* 80071C00 0006EB40  38 60 00 00 */ li r3, 0
/* 80071C04 0006EB44  48 00 00 9C */ b lbl_80071CA0
lbl_80071C08:
/* 80071C08 0006EB48  38 7D 03 1C */ addi r3, r29, 0x31c
/* 80071C0C 0006EB4C  A8 81 00 14 */ lha r4, 0x14(r1)
/* 80071C10 0006EB50  38 BE 05 50 */ addi r5, r30, 0x550
/* 80071C14 0006EB54  3C C0 80 3B */ lis r6, lbl_803A9C70@ha
/* 80071C18 0006EB58  38 06 9C 70 */ addi r0, r6, lbl_803A9C70@l
/* 80071C1C 0006EB5C  7C C0 E2 14 */ add r6, r0, r28
/* 80071C20 0006EB60  C0 26 00 04 */ lfs f1, 4(r6)
/* 80071C24 0006EB64  C0 46 00 08 */ lfs f2, 8(r6)
/* 80071C28 0006EB68  C0 66 00 0C */ lfs f3, 0xc(r6)
/* 80071C2C 0006EB6C  C0 86 00 10 */ lfs f4, 0x10(r6)
/* 80071C30 0006EB70  4B FF F0 71 */ bl check_distace
/* 80071C34 0006EB74  2C 03 00 00 */ cmpwi r3, 0
/* 80071C38 0006EB78  41 82 00 24 */ beq lbl_80071C5C
/* 80071C3C 0006EB7C  C0 21 00 24 */ lfs f1, 0x24(r1)
/* 80071C40 0006EB80  A8 61 00 14 */ lha r3, 0x14(r1)
/* 80071C44 0006EB84  C0 42 8C 94 */ lfs f2, lbl_80452694-_SDA2_BASE_(r2)
/* 80071C48 0006EB88  4B FF EF AD */ bl distace_weight
/* 80071C4C 0006EB8C  7C 7D FA 14 */ add r3, r29, r31
/* 80071C50 0006EB90  D0 23 03 38 */ stfs f1, 0x338(r3)
/* 80071C54 0006EB94  38 60 00 01 */ li r3, 1
/* 80071C58 0006EB98  48 00 00 48 */ b lbl_80071CA0
lbl_80071C5C:
/* 80071C5C 0006EB9C  38 60 00 00 */ li r3, 0
/* 80071C60 0006EBA0  48 00 00 40 */ b lbl_80071CA0
lbl_80071C64:
/* 80071C64 0006EBA4  7F 83 E3 78 */ mr r3, r28
/* 80071C68 0006EBA8  7F C4 F3 78 */ mr r4, r30
/* 80071C6C 0006EBAC  48 00 1C 2D */ bl dAttList_c_NS_setActor
/* 80071C70 0006EBB0  7C 7D FA 14 */ add r3, r29, r31
/* 80071C74 0006EBB4  D3 E3 03 38 */ stfs f31, 0x338(r3)
/* 80071C78 0006EBB8  C0 01 00 24 */ lfs f0, 0x24(r1)
/* 80071C7C 0006EBBC  D0 03 03 3C */ stfs f0, 0x33c(r3)
/* 80071C80 0006EBC0  80 01 00 18 */ lwz r0, 0x18(r1)
/* 80071C84 0006EBC4  90 03 03 44 */ stw r0, 0x344(r3)
/* 80071C88 0006EBC8  38 60 00 01 */ li r3, 1
/* 80071C8C 0006EBCC  48 00 00 14 */ b lbl_80071CA0
lbl_80071C90:
/* 80071C90 0006EBD0  80 1E 05 5C */ lwz r0, 0x55c(r30)
/* 80071C94 0006EBD4  54 03 07 7E */ clrlwi r3, r0, 0x1d
/* 80071C98 0006EBD8  30 03 FF FF */ addic r0, r3, -1
/* 80071C9C 0006EBDC  7C 60 19 10 */ subfe r3, r0, r3
lbl_80071CA0:
/* 80071CA0 0006EBE0  E3 E1 00 68 */ psq_l f31, 104(r1), 0, 0
/* 80071CA4 0006EBE4  CB E1 00 60 */ lfd f31, 0x60(r1)
/* 80071CA8 0006EBE8  39 61 00 60 */ addi r11, r1, 0x60
/* 80071CAC 0006EBEC  48 2F 05 79 */ bl _restgpr_28
/* 80071CB0 0006EBF0  80 01 00 74 */ lwz r0, 0x74(r1)
/* 80071CB4 0006EBF4  7C 08 03 A6 */ mtlr r0
/* 80071CB8 0006EBF8  38 21 00 70 */ addi r1, r1, 0x70
/* 80071CBC 0006EBFC  4E 80 00 20 */ blr

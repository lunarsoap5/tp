/* 80026C34 00023B74  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80026C38 00023B78  7C 08 02 A6 */ mflr r0
/* 80026C3C 00023B7C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80026C40 00023B80  39 61 00 20 */ addi r11, r1, 0x20
/* 80026C44 00023B84  48 33 B5 99 */ bl _savegpr_29
/* 80026C48 00023B88  7C 7D 1B 78 */ mr r29, r3
/* 80026C4C 00023B8C  7C 9E 23 78 */ mr r30, r4
/* 80026C50 00023B90  7C BF 2B 78 */ mr r31, r5
/* 80026C54 00023B94  3C A0 80 3A */ lis r5, lbl_803A689C@ha
/* 80026C58 00023B98  38 A5 68 9C */ addi r5, r5, lbl_803A689C@l
/* 80026C5C 00023B9C  38 C0 00 08 */ li r6, 8
/* 80026C60 00023BA0  4B FF F4 55 */ bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
/* 80026C64 00023BA4  7F A3 EB 78 */ mr r3, r29
/* 80026C68 00023BA8  7F C4 F3 78 */ mr r4, r30
/* 80026C6C 00023BAC  7F E5 FB 78 */ mr r5, r31
/* 80026C70 00023BB0  4B FF FE 81 */ bl layerActorLoader__FPvP11dStage_dt_ci
/* 80026C74 00023BB4  39 61 00 20 */ addi r11, r1, 0x20
/* 80026C78 00023BB8  48 33 B5 B1 */ bl _restgpr_29
/* 80026C7C 00023BBC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80026C80 00023BC0  7C 08 03 A6 */ mtlr r0
/* 80026C84 00023BC4  38 21 00 20 */ addi r1, r1, 0x20
/* 80026C88 00023BC8  4E 80 00 20 */ blr

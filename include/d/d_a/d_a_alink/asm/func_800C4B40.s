/* 800C4B40 000C1A80  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 800C4B44 000C1A84  7C 08 02 A6 */ mflr r0
/* 800C4B48 000C1A88  90 01 00 44 */ stw r0, 0x44(r1)
/* 800C4B4C 000C1A8C  39 61 00 40 */ addi r11, r1, 0x40
/* 800C4B50 000C1A90  48 29 D6 8D */ bl _savegpr_29
/* 800C4B54 000C1A94  7C 7E 1B 78 */ mr r30, r3
/* 800C4B58 000C1A98  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800C4B5C 000C1A9C  80 03 05 88 */ lwz r0, 0x588(r3)
/* 800C4B60 000C1AA0  64 00 08 00 */ oris r0, r0, 0x800
/* 800C4B64 000C1AA4  90 03 05 88 */ stw r0, 0x588(r3)
/* 800C4B68 000C1AA8  3C 80 80 3A */ lis r4, lbl_803A37C0@ha
/* 800C4B6C 000C1AAC  38 04 37 C0 */ addi r0, r4, lbl_803A37C0@l
/* 800C4B70 000C1AB0  90 01 00 24 */ stw r0, 0x24(r1)
/* 800C4B74 000C1AB4  38 81 00 14 */ addi r4, r1, 0x14
/* 800C4B78 000C1AB8  4B FE D4 61 */ bl getSlidePolygon__9daAlink_cFP8cM3dGPla
/* 800C4B7C 000C1ABC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C4B80 000C1AC0  41 82 00 14 */ beq lbl_800C4B94
/* 800C4B84 000C1AC4  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800C4B88 000C1AC8  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C4B8C 000C1ACC  C0 42 93 D8 */ lfs f2, lbl_80452DD8-_SDA2_BASE_(r2)
/* 800C4B90 000C1AD0  48 1A BB B1 */ bl cLib_chaseF__FPfff
lbl_800C4B94:
/* 800C4B94 000C1AD4  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 800C4B98 000C1AD8  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800C4B9C 000C1ADC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C4BA0 000C1AE0  40 81 00 2C */ ble lbl_800C4BCC
/* 800C4BA4 000C1AE4  38 7E 04 DE */ addi r3, r30, 0x4de
/* 800C4BA8 000C1AE8  A8 9E 2F E2 */ lha r4, 0x2fe2(r30)
/* 800C4BAC 000C1AEC  3C A0 80 39 */ lis r5, lbl_8038D7BC@ha
/* 800C4BB0 000C1AF0  38 E5 D7 BC */ addi r7, r5, lbl_8038D7BC@l
/* 800C4BB4 000C1AF4  A8 A7 00 3E */ lha r5, 0x3e(r7)
/* 800C4BB8 000C1AF8  A8 C7 00 40 */ lha r6, 0x40(r7)
/* 800C4BBC 000C1AFC  A8 E7 00 42 */ lha r7, 0x42(r7)
/* 800C4BC0 000C1B00  48 1A B9 81 */ bl cLib_addCalcAngleS__FPsssss
/* 800C4BC4 000C1B04  A8 1E 04 DE */ lha r0, 0x4de(r30)
/* 800C4BC8 000C1B08  B0 1E 04 E6 */ sth r0, 0x4e6(r30)
lbl_800C4BCC:
/* 800C4BCC 000C1B0C  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800C4BD0 000C1B10  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800C4BD4 000C1B14  41 82 00 10 */ beq lbl_800C4BE4
/* 800C4BD8 000C1B18  7F C3 F3 78 */ mr r3, r30
/* 800C4BDC 000C1B1C  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800C4BE0 000C1B20  48 01 84 29 */ bl setUpperGuardAnime__9daAlink_cFf
lbl_800C4BE4:
/* 800C4BE4 000C1B24  7F E3 FB 78 */ mr r3, r31
/* 800C4BE8 000C1B28  48 09 98 E5 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C4BEC 000C1B2C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C4BF0 000C1B30  41 82 00 74 */ beq lbl_800C4C64
/* 800C4BF4 000C1B34  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 800C4BF8 000C1B38  28 00 00 28 */ cmplwi r0, 0x28
/* 800C4BFC 000C1B3C  40 82 00 1C */ bne lbl_800C4C18
/* 800C4C00 000C1B40  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C4C04 000C1B44  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C4C08 000C1B48  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 800C4C0C 000C1B4C  80 9E 31 84 */ lwz r4, 0x3184(r30)
/* 800C4C10 000C1B50  4B F8 35 6D */ bl cutEnd__16dEvent_manager_cFi
/* 800C4C14 000C1B54  48 00 02 D8 */ b lbl_800C4EEC
lbl_800C4C18:
/* 800C4C18 000C1B58  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 800C4C1C 000C1B5C  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800C4C20 000C1B60  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C4C24 000C1B64  41 81 00 30 */ bgt lbl_800C4C54
/* 800C4C28 000C1B68  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 800C4C2C 000C1B6C  3C 60 80 39 */ lis r3, lbl_8038D7BC@ha
/* 800C4C30 000C1B70  38 63 D7 BC */ addi r3, r3, lbl_8038D7BC@l
/* 800C4C34 000C1B74  C0 03 00 4C */ lfs f0, 0x4c(r3)
/* 800C4C38 000C1B78  EC 01 00 28 */ fsubs f0, f1, f0
/* 800C4C3C 000C1B7C  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800C4C40 000C1B80  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 800C4C44 000C1B84  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C4C48 000C1B88  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C4C4C 000C1B8C  40 80 00 08 */ bge lbl_800C4C54
/* 800C4C50 000C1B90  D0 1E 33 98 */ stfs f0, 0x3398(r30)
lbl_800C4C54:
/* 800C4C54 000C1B94  7F C3 F3 78 */ mr r3, r30
/* 800C4C58 000C1B98  38 80 00 00 */ li r4, 0
/* 800C4C5C 000C1B9C  4B FF 54 75 */ bl checkNextAction__9daAlink_cFi
/* 800C4C60 000C1BA0  48 00 02 8C */ b lbl_800C4EEC
lbl_800C4C64:
/* 800C4C64 000C1BA4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800C4C68 000C1BA8  3C 60 80 39 */ lis r3, lbl_8038D7BC@ha
/* 800C4C6C 000C1BAC  38 63 D7 BC */ addi r3, r3, lbl_8038D7BC@l
/* 800C4C70 000C1BB0  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 800C4C74 000C1BB4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C4C78 000C1BB8  40 81 00 80 */ ble lbl_800C4CF8
/* 800C4C7C 000C1BBC  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800C4C80 000C1BC0  60 00 00 04 */ ori r0, r0, 4
/* 800C4C84 000C1BC4  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800C4C88 000C1BC8  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800C4C8C 000C1BCC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C4C90 000C1BD0  C0 42 93 D8 */ lfs f2, lbl_80452DD8-_SDA2_BASE_(r2)
/* 800C4C94 000C1BD4  48 1A BA AD */ bl cLib_chaseF__FPfff
/* 800C4C98 000C1BD8  7F C3 F3 78 */ mr r3, r30
/* 800C4C9C 000C1BDC  4B FE EC 69 */ bl checkZeroSpeedF__9daAlink_cCFv
/* 800C4CA0 000C1BE0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C4CA4 000C1BE4  41 82 00 10 */ beq lbl_800C4CB4
/* 800C4CA8 000C1BE8  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800C4CAC 000C1BEC  60 00 00 01 */ ori r0, r0, 1
/* 800C4CB0 000C1BF0  90 1E 31 A0 */ stw r0, 0x31a0(r30)
lbl_800C4CB4:
/* 800C4CB4 000C1BF4  A8 1E 30 0C */ lha r0, 0x300c(r30)
/* 800C4CB8 000C1BF8  2C 00 00 00 */ cmpwi r0, 0
/* 800C4CBC 000C1BFC  41 82 00 14 */ beq lbl_800C4CD0
/* 800C4CC0 000C1C00  7F C3 F3 78 */ mr r3, r30
/* 800C4CC4 000C1C04  38 80 00 02 */ li r4, 2
/* 800C4CC8 000C1C08  48 00 E8 11 */ bl procCutFinishInit__9daAlink_cFi
/* 800C4CCC 000C1C0C  48 00 02 20 */ b lbl_800C4EEC
lbl_800C4CD0:
/* 800C4CD0 000C1C10  7F C3 F3 78 */ mr r3, r30
/* 800C4CD4 000C1C14  38 80 00 01 */ li r4, 1
/* 800C4CD8 000C1C18  4B FF 53 F9 */ bl checkNextAction__9daAlink_cFi
/* 800C4CDC 000C1C1C  2C 03 00 00 */ cmpwi r3, 0
/* 800C4CE0 000C1C20  40 82 02 0C */ bne lbl_800C4EEC
/* 800C4CE4 000C1C24  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800C4CE8 000C1C28  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C4CEC 000C1C2C  C0 42 93 D8 */ lfs f2, lbl_80452DD8-_SDA2_BASE_(r2)
/* 800C4CF0 000C1C30  48 1A BA 51 */ bl cLib_chaseF__FPfff
/* 800C4CF4 000C1C34  48 00 01 F8 */ b lbl_800C4EEC
lbl_800C4CF8:
/* 800C4CF8 000C1C38  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 800C4CFC 000C1C3C  28 00 00 28 */ cmplwi r0, 0x28
/* 800C4D00 000C1C40  41 82 01 38 */ beq lbl_800C4E38
/* 800C4D04 000C1C44  C0 3E 05 2C */ lfs f1, 0x52c(r30)
/* 800C4D08 000C1C48  C0 03 00 50 */ lfs f0, 0x50(r3)
/* 800C4D0C 000C1C4C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C4D10 000C1C50  4C 41 13 82 */ cror 2, 1, 2
/* 800C4D14 000C1C54  40 82 01 24 */ bne lbl_800C4E38
/* 800C4D18 000C1C58  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800C4D1C 000C1C5C  54 00 06 F9 */ rlwinm. r0, r0, 0, 0x1b, 0x1c
/* 800C4D20 000C1C60  40 82 00 94 */ bne lbl_800C4DB4
/* 800C4D24 000C1C64  80 1E 18 C0 */ lwz r0, 0x18c0(r30)
/* 800C4D28 000C1C68  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800C4D2C 000C1C6C  41 82 01 0C */ beq lbl_800C4E38
/* 800C4D30 000C1C70  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C4D34 000C1C74  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C4D38 000C1C78  3B A3 0F 38 */ addi r29, r3, 0xf38
/* 800C4D3C 000C1C7C  7F A3 EB 78 */ mr r3, r29
/* 800C4D40 000C1C80  38 9E 18 B0 */ addi r4, r30, 0x18b0
/* 800C4D44 000C1C84  4B FB 04 59 */ bl GetPolyAttackThrough__4dBgSFRC13cBgS_PolyInfo
/* 800C4D48 000C1C88  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C4D4C 000C1C8C  40 82 00 EC */ bne lbl_800C4E38
/* 800C4D50 000C1C90  7F A3 EB 78 */ mr r3, r29
/* 800C4D54 000C1C94  38 9E 18 B0 */ addi r4, r30, 0x18b0
/* 800C4D58 000C1C98  4B FB 00 A9 */ bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800C4D5C 000C1C9C  2C 03 00 07 */ cmpwi r3, 7
/* 800C4D60 000C1CA0  41 82 00 D8 */ beq lbl_800C4E38
/* 800C4D64 000C1CA4  A8 7E 04 DE */ lha r3, 0x4de(r30)
/* 800C4D68 000C1CA8  3C 63 00 01 */ addis r3, r3, 1
/* 800C4D6C 000C1CAC  38 03 80 00 */ addi r0, r3, -32768
/* 800C4D70 000C1CB0  7C 03 07 34 */ extsh r3, r0
/* 800C4D74 000C1CB4  A8 9E 18 EC */ lha r4, 0x18ec(r30)
/* 800C4D78 000C1CB8  48 1A C0 AD */ bl cLib_distanceAngleS__Fss
/* 800C4D7C 000C1CBC  3C 80 80 39 */ lis r4, lbl_8038D7BC@ha
/* 800C4D80 000C1CC0  38 84 D7 BC */ addi r4, r4, lbl_8038D7BC@l
/* 800C4D84 000C1CC4  A8 04 00 3C */ lha r0, 0x3c(r4)
/* 800C4D88 000C1CC8  7C 03 00 00 */ cmpw r3, r0
/* 800C4D8C 000C1CCC  41 81 00 AC */ bgt lbl_800C4E38
/* 800C4D90 000C1CD0  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800C4D94 000C1CD4  C0 04 00 54 */ lfs f0, 0x54(r4)
/* 800C4D98 000C1CD8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C4D9C 000C1CDC  4C 41 13 82 */ cror 2, 1, 2
/* 800C4DA0 000C1CE0  40 82 00 98 */ bne lbl_800C4E38
/* 800C4DA4 000C1CE4  C0 04 00 58 */ lfs f0, 0x58(r4)
/* 800C4DA8 000C1CE8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C4DAC 000C1CEC  4C 40 13 82 */ cror 2, 0, 2
/* 800C4DB0 000C1CF0  40 82 00 88 */ bne lbl_800C4E38
lbl_800C4DB4:
/* 800C4DB4 000C1CF4  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800C4DB8 000C1CF8  54 00 06 F9 */ rlwinm. r0, r0, 0, 0x1b, 0x1c
/* 800C4DBC 000C1CFC  40 82 00 10 */ bne lbl_800C4DCC
/* 800C4DC0 000C1D00  38 7E 18 B0 */ addi r3, r30, 0x18b0
/* 800C4DC4 000C1D04  48 0E 66 FD */ bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 800C4DC8 000C1D08  98 7E 2F A4 */ stb r3, 0x2fa4(r30)
lbl_800C4DCC:
/* 800C4DCC 000C1D0C  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800C4DD0 000C1D10  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C4DD4 000C1D14  40 82 00 4C */ bne lbl_800C4E20
/* 800C4DD8 000C1D18  80 1E 19 9C */ lwz r0, 0x199c(r30)
/* 800C4DDC 000C1D1C  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C4DE0 000C1D20  41 82 00 4C */ beq lbl_800C4E2C
/* 800C4DE4 000C1D24  80 1E 18 C0 */ lwz r0, 0x18c0(r30)
/* 800C4DE8 000C1D28  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800C4DEC 000C1D2C  41 82 00 40 */ beq lbl_800C4E2C
/* 800C4DF0 000C1D30  38 7E 18 B0 */ addi r3, r30, 0x18b0
/* 800C4DF4 000C1D34  38 80 00 00 */ li r4, 0
/* 800C4DF8 000C1D38  4B FD D3 E9 */ bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800C4DFC 000C1D3C  7C 60 07 34 */ extsh r0, r3
/* 800C4E00 000C1D40  2C 00 00 33 */ cmpwi r0, 0x33
/* 800C4E04 000C1D44  41 82 00 1C */ beq lbl_800C4E20
/* 800C4E08 000C1D48  38 7E 18 B0 */ addi r3, r30, 0x18b0
/* 800C4E0C 000C1D4C  38 80 00 00 */ li r4, 0
/* 800C4E10 000C1D50  4B FD D3 D1 */ bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800C4E14 000C1D54  7C 60 07 34 */ extsh r0, r3
/* 800C4E18 000C1D58  2C 00 00 3F */ cmpwi r0, 0x3f
/* 800C4E1C 000C1D5C  40 82 00 10 */ bne lbl_800C4E2C
lbl_800C4E20:
/* 800C4E20 000C1D60  7F C3 F3 78 */ mr r3, r30
/* 800C4E24 000C1D64  48 00 03 3D */ bl procFrontRollSuccessInit__9daAlink_cFv
/* 800C4E28 000C1D68  48 00 00 C4 */ b lbl_800C4EEC
lbl_800C4E2C:
/* 800C4E2C 000C1D6C  7F C3 F3 78 */ mr r3, r30
/* 800C4E30 000C1D70  48 00 00 E5 */ bl procFrontRollCrashInit__9daAlink_cFv
/* 800C4E34 000C1D74  48 00 00 B8 */ b lbl_800C4EEC
lbl_800C4E38:
/* 800C4E38 000C1D78  7F E3 FB 78 */ mr r3, r31
/* 800C4E3C 000C1D7C  C0 22 93 F0 */ lfs f1, lbl_80452DF0-_SDA2_BASE_(r2)
/* 800C4E40 000C1D80  48 26 35 ED */ bl checkPass__12J3DFrameCtrlFf
/* 800C4E44 000C1D84  2C 03 00 00 */ cmpwi r3, 0
/* 800C4E48 000C1D88  41 82 00 34 */ beq lbl_800C4E7C
/* 800C4E4C 000C1D8C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C4E50 000C1D90  D0 21 00 08 */ stfs f1, 8(r1)
/* 800C4E54 000C1D94  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800C4E58 000C1D98  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800C4E5C 000C1D9C  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800C4E60 000C1DA0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C4E64 000C1DA4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C4E68 000C1DA8  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800C4E6C 000C1DAC  38 80 00 01 */ li r4, 1
/* 800C4E70 000C1DB0  38 A0 00 01 */ li r5, 1
/* 800C4E74 000C1DB4  38 C1 00 08 */ addi r6, r1, 8
/* 800C4E78 000C1DB8  4B FA AB AD */ bl StartShock__12dVibration_cFii4cXyz
lbl_800C4E7C:
/* 800C4E7C 000C1DBC  7F C3 F3 78 */ mr r3, r30
/* 800C4E80 000C1DC0  48 00 D2 35 */ bl checkForceSwordSwing__9daAlink_cFv
/* 800C4E84 000C1DC4  2C 03 00 00 */ cmpwi r3, 0
/* 800C4E88 000C1DC8  41 82 00 0C */ beq lbl_800C4E94
/* 800C4E8C 000C1DCC  38 00 00 01 */ li r0, 1
/* 800C4E90 000C1DD0  B0 1E 30 0C */ sth r0, 0x300c(r30)
lbl_800C4E94:
/* 800C4E94 000C1DD4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800C4E98 000C1DD8  C0 02 94 04 */ lfs f0, lbl_80452E04-_SDA2_BASE_(r2)
/* 800C4E9C 000C1DDC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C4EA0 000C1DE0  40 81 00 38 */ ble lbl_800C4ED8
/* 800C4EA4 000C1DE4  C0 02 93 C0 */ lfs f0, lbl_80452DC0-_SDA2_BASE_(r2)
/* 800C4EA8 000C1DE8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C4EAC 000C1DEC  4C 41 13 82 */ cror 2, 1, 2
/* 800C4EB0 000C1DF0  40 82 00 14 */ bne lbl_800C4EC4
/* 800C4EB4 000C1DF4  38 00 00 01 */ li r0, 1
/* 800C4EB8 000C1DF8  98 1E 2F 92 */ stb r0, 0x2f92(r30)
/* 800C4EBC 000C1DFC  38 00 00 06 */ li r0, 6
/* 800C4EC0 000C1E00  98 1E 2F 93 */ stb r0, 0x2f93(r30)
lbl_800C4EC4:
/* 800C4EC4 000C1E04  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800C4EC8 000C1E08  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C4ECC 000C1E0C  C0 42 92 B8 */ lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800C4ED0 000C1E10  48 1A B8 71 */ bl cLib_chaseF__FPfff
/* 800C4ED4 000C1E14  48 00 00 18 */ b lbl_800C4EEC
lbl_800C4ED8:
/* 800C4ED8 000C1E18  C0 02 93 44 */ lfs f0, lbl_80452D44-_SDA2_BASE_(r2)
/* 800C4EDC 000C1E1C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C4EE0 000C1E20  40 81 00 0C */ ble lbl_800C4EEC
/* 800C4EE4 000C1E24  38 00 00 04 */ li r0, 4
/* 800C4EE8 000C1E28  98 1E 2F 9D */ stb r0, 0x2f9d(r30)
lbl_800C4EEC:
/* 800C4EEC 000C1E2C  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800C4EF0 000C1E30  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800C4EF4 000C1E34  90 01 00 24 */ stw r0, 0x24(r1)
/* 800C4EF8 000C1E38  38 60 00 01 */ li r3, 1
/* 800C4EFC 000C1E3C  39 61 00 40 */ addi r11, r1, 0x40
/* 800C4F00 000C1E40  48 29 D3 29 */ bl _restgpr_29
/* 800C4F04 000C1E44  80 01 00 44 */ lwz r0, 0x44(r1)
/* 800C4F08 000C1E48  7C 08 03 A6 */ mtlr r0
/* 800C4F0C 000C1E4C  38 21 00 40 */ addi r1, r1, 0x40
/* 800C4F10 000C1E50  4E 80 00 20 */ blr

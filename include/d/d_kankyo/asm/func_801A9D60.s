/* 801A9D60 001A6CA0  94 21 FF 80 */ stwu r1, -0x80(r1)
/* 801A9D64 001A6CA4  7C 08 02 A6 */ mflr r0
/* 801A9D68 001A6CA8  90 01 00 84 */ stw r0, 0x84(r1)
/* 801A9D6C 001A6CAC  DB E1 00 70 */ stfd f31, 0x70(r1)
/* 801A9D70 001A6CB0  F3 E1 00 78 */ psq_st f31, 120(r1), 0, 0
/* 801A9D74 001A6CB4  DB C1 00 60 */ stfd f30, 0x60(r1)
/* 801A9D78 001A6CB8  F3 C1 00 68 */ psq_st f30, 104(r1), 0, 0
/* 801A9D7C 001A6CBC  39 61 00 60 */ addi r11, r1, 0x60
/* 801A9D80 001A6CC0  48 1B 84 3D */ bl _savegpr_21
/* 801A9D84 001A6CC4  7C 76 1B 78 */ mr r22, r3
/* 801A9D88 001A6CC8  7C 97 23 78 */ mr r23, r4
/* 801A9D8C 001A6CCC  FF E0 08 90 */ fmr f31, f1
/* 801A9D90 001A6CD0  7C B8 2B 78 */ mr r24, r5
/* 801A9D94 001A6CD4  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A9D98 001A6CD8  3B 83 CA 54 */ addi r28, r3, lbl_8042CA54@l
/* 801A9D9C 001A6CDC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801A9DA0 001A6CE0  3A A3 61 C0 */ addi r21, r3, g_dComIfG_gameInfo@l
/* 801A9DA4 001A6CE4  83 75 5D 74 */ lwz r27, 0x5d74(r21)
/* 801A9DA8 001A6CE8  3B 40 00 00 */ li r26, 0
/* 801A9DAC 001A6CEC  C3 C2 A2 0C */ lfs f30, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801A9DB0 001A6CF0  3B 20 00 FF */ li r25, 0xff
/* 801A9DB4 001A6CF4  3B A0 00 00 */ li r29, 0
/* 801A9DB8 001A6CF8  3B D5 4E 00 */ addi r30, r21, 0x4e00
/* 801A9DBC 001A6CFC  7F C3 F3 78 */ mr r3, r30
/* 801A9DC0 001A6D00  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 801A9DC4 001A6D04  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 801A9DC8 001A6D08  38 84 02 49 */ addi r4, r4, 0x249
/* 801A9DCC 001A6D0C  48 1B EB C9 */ bl strcmp
/* 801A9DD0 001A6D10  2C 03 00 00 */ cmpwi r3, 0
/* 801A9DD4 001A6D14  41 82 00 58 */ beq lbl_801A9E2C
/* 801A9DD8 001A6D18  88 8D 87 E4 */ lbz r4, lbl_80450D64-_SDA_BASE_(r13)
/* 801A9DDC 001A6D1C  3B B5 4E C4 */ addi r29, r21, 0x4ec4
/* 801A9DE0 001A6D20  7F A3 EB 78 */ mr r3, r29
/* 801A9DE4 001A6D24  7C 95 23 78 */ mr r21, r4
/* 801A9DE8 001A6D28  4B E7 A5 9D */ bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A9DEC 001A6D2C  28 03 00 00 */ cmplwi r3, 0
/* 801A9DF0 001A6D30  40 82 00 0C */ bne lbl_801A9DFC
/* 801A9DF4 001A6D34  38 60 00 00 */ li r3, 0
/* 801A9DF8 001A6D38  48 00 08 44 */ b lbl_801AA63C
lbl_801A9DFC:
/* 801A9DFC 001A6D3C  7F A3 EB 78 */ mr r3, r29
/* 801A9E00 001A6D40  7E A4 AB 78 */ mr r4, r21
/* 801A9E04 001A6D44  4B E7 A5 81 */ bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A9E08 001A6D48  81 83 00 00 */ lwz r12, 0(r3)
/* 801A9E0C 001A6D4C  81 8C 00 B4 */ lwz r12, 0xb4(r12)
/* 801A9E10 001A6D50  7D 89 03 A6 */ mtctr r12
/* 801A9E14 001A6D54  4E 80 04 21 */ bctrl
/* 801A9E18 001A6D58  7C 7D 1B 79 */ or. r29, r3, r3
/* 801A9E1C 001A6D5C  41 80 00 0C */ blt lbl_801A9E28
/* 801A9E20 001A6D60  2C 1D 00 06 */ cmpwi r29, 6
/* 801A9E24 001A6D64  40 81 00 08 */ ble lbl_801A9E2C
lbl_801A9E28:
/* 801A9E28 001A6D68  3B A0 00 06 */ li r29, 6
lbl_801A9E2C:
/* 801A9E2C 001A6D6C  57 00 06 3F */ clrlwi. r0, r24, 0x18
/* 801A9E30 001A6D70  40 82 00 0C */ bne lbl_801A9E3C
/* 801A9E34 001A6D74  3B 1C 0C 18 */ addi r24, r28, 0xc18
/* 801A9E38 001A6D78  48 00 00 08 */ b lbl_801A9E40
lbl_801A9E3C:
/* 801A9E3C 001A6D7C  3B 1C 0D 58 */ addi r24, r28, 0xd58
lbl_801A9E40:
/* 801A9E40 001A6D80  38 60 00 28 */ li r3, 0x28
/* 801A9E44 001A6D84  23 FD 00 06 */ subfic r31, r29, 6
/* 801A9E48 001A6D88  38 1F FF FF */ addi r0, r31, -1
/* 801A9E4C 001A6D8C  7C 09 03 A6 */ mtctr r0
/* 801A9E50 001A6D90  2C 1F 00 01 */ cmpwi r31, 1
/* 801A9E54 001A6D94  40 81 00 54 */ ble lbl_801A9EA8
lbl_801A9E58:
/* 801A9E58 001A6D98  7C 98 1A 14 */ add r4, r24, r3
/* 801A9E5C 001A6D9C  88 04 00 26 */ lbz r0, 0x26(r4)
/* 801A9E60 001A6DA0  28 00 00 01 */ cmplwi r0, 1
/* 801A9E64 001A6DA4  40 82 00 3C */ bne lbl_801A9EA0
/* 801A9E68 001A6DA8  C0 36 00 00 */ lfs f1, 0(r22)
/* 801A9E6C 001A6DAC  C0 04 00 00 */ lfs f0, 0(r4)
/* 801A9E70 001A6DB0  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 801A9E74 001A6DB4  40 82 00 2C */ bne lbl_801A9EA0
/* 801A9E78 001A6DB8  C0 36 00 04 */ lfs f1, 4(r22)
/* 801A9E7C 001A6DBC  C0 04 00 04 */ lfs f0, 4(r4)
/* 801A9E80 001A6DC0  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 801A9E84 001A6DC4  40 82 00 1C */ bne lbl_801A9EA0
/* 801A9E88 001A6DC8  C0 36 00 08 */ lfs f1, 8(r22)
/* 801A9E8C 001A6DCC  C0 04 00 08 */ lfs f0, 8(r4)
/* 801A9E90 001A6DD0  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 801A9E94 001A6DD4  40 82 00 0C */ bne lbl_801A9EA0
/* 801A9E98 001A6DD8  38 60 00 00 */ li r3, 0
/* 801A9E9C 001A6DDC  48 00 07 A0 */ b lbl_801AA63C
lbl_801A9EA0:
/* 801A9EA0 001A6DE0  38 63 00 28 */ addi r3, r3, 0x28
/* 801A9EA4 001A6DE4  42 00 FF B4 */ bdnz lbl_801A9E58
lbl_801A9EA8:
/* 801A9EA8 001A6DE8  38 60 00 28 */ li r3, 0x28
/* 801A9EAC 001A6DEC  38 1F FF FF */ addi r0, r31, -1
/* 801A9EB0 001A6DF0  7C 09 03 A6 */ mtctr r0
/* 801A9EB4 001A6DF4  2C 1F 00 01 */ cmpwi r31, 1
/* 801A9EB8 001A6DF8  40 81 00 94 */ ble lbl_801A9F4C
lbl_801A9EBC:
/* 801A9EBC 001A6DFC  7C 98 1A 14 */ add r4, r24, r3
/* 801A9EC0 001A6E00  88 04 00 26 */ lbz r0, 0x26(r4)
/* 801A9EC4 001A6E04  28 00 00 00 */ cmplwi r0, 0
/* 801A9EC8 001A6E08  40 82 00 7C */ bne lbl_801A9F44
/* 801A9ECC 001A6E0C  C0 16 00 00 */ lfs f0, 0(r22)
/* 801A9ED0 001A6E10  D0 04 00 00 */ stfs f0, 0(r4)
/* 801A9ED4 001A6E14  C0 16 00 04 */ lfs f0, 4(r22)
/* 801A9ED8 001A6E18  D0 04 00 04 */ stfs f0, 4(r4)
/* 801A9EDC 001A6E1C  C0 16 00 08 */ lfs f0, 8(r22)
/* 801A9EE0 001A6E20  D0 04 00 08 */ stfs f0, 8(r4)
/* 801A9EE4 001A6E24  88 17 00 00 */ lbz r0, 0(r23)
/* 801A9EE8 001A6E28  98 04 00 0C */ stb r0, 0xc(r4)
/* 801A9EEC 001A6E2C  88 17 00 01 */ lbz r0, 1(r23)
/* 801A9EF0 001A6E30  98 04 00 0D */ stb r0, 0xd(r4)
/* 801A9EF4 001A6E34  88 17 00 02 */ lbz r0, 2(r23)
/* 801A9EF8 001A6E38  98 04 00 0E */ stb r0, 0xe(r4)
/* 801A9EFC 001A6E3C  38 00 00 FF */ li r0, 0xff
/* 801A9F00 001A6E40  98 04 00 0F */ stb r0, 0xf(r4)
/* 801A9F04 001A6E44  D3 E4 00 10 */ stfs f31, 0x10(r4)
/* 801A9F08 001A6E48  C0 02 A2 90 */ lfs f0, lbl_80453C90-_SDA2_BASE_(r2)
/* 801A9F0C 001A6E4C  D0 04 00 14 */ stfs f0, 0x14(r4)
/* 801A9F10 001A6E50  C0 02 A2 2C */ lfs f0, lbl_80453C2C-_SDA2_BASE_(r2)
/* 801A9F14 001A6E54  D0 04 00 18 */ stfs f0, 0x18(r4)
/* 801A9F18 001A6E58  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801A9F1C 001A6E5C  D0 04 00 1C */ stfs f0, 0x1c(r4)
/* 801A9F20 001A6E60  D0 04 00 20 */ stfs f0, 0x20(r4)
/* 801A9F24 001A6E64  38 00 00 00 */ li r0, 0
/* 801A9F28 001A6E68  98 04 00 24 */ stb r0, 0x24(r4)
/* 801A9F2C 001A6E6C  38 00 00 03 */ li r0, 3
/* 801A9F30 001A6E70  98 04 00 25 */ stb r0, 0x25(r4)
/* 801A9F34 001A6E74  38 00 00 01 */ li r0, 1
/* 801A9F38 001A6E78  98 04 00 26 */ stb r0, 0x26(r4)
/* 801A9F3C 001A6E7C  3B 40 00 01 */ li r26, 1
/* 801A9F40 001A6E80  48 00 00 0C */ b lbl_801A9F4C
lbl_801A9F44:
/* 801A9F44 001A6E84  38 63 00 28 */ addi r3, r3, 0x28
/* 801A9F48 001A6E88  42 00 FF 74 */ bdnz lbl_801A9EBC
lbl_801A9F4C:
/* 801A9F4C 001A6E8C  3B 80 00 01 */ li r28, 1
/* 801A9F50 001A6E90  3A A0 00 28 */ li r21, 0x28
/* 801A9F54 001A6E94  48 00 05 4C */ b lbl_801AA4A0
lbl_801A9F58:
/* 801A9F58 001A6E98  7F B8 AA 14 */ add r29, r24, r21
/* 801A9F5C 001A6E9C  88 1D 00 26 */ lbz r0, 0x26(r29)
/* 801A9F60 001A6EA0  28 00 00 00 */ cmplwi r0, 0
/* 801A9F64 001A6EA4  41 82 05 34 */ beq lbl_801AA498
/* 801A9F68 001A6EA8  C0 1D 00 00 */ lfs f0, 0(r29)
/* 801A9F6C 001A6EAC  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 801A9F70 001A6EB0  C0 1D 00 04 */ lfs f0, 4(r29)
/* 801A9F74 001A6EB4  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 801A9F78 001A6EB8  C0 1D 00 08 */ lfs f0, 8(r29)
/* 801A9F7C 001A6EBC  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 801A9F80 001A6EC0  7F C3 F3 78 */ mr r3, r30
/* 801A9F84 001A6EC4  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 801A9F88 001A6EC8  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 801A9F8C 001A6ECC  38 84 01 0E */ addi r4, r4, 0x10e
/* 801A9F90 001A6ED0  48 1B EA 05 */ bl strcmp
/* 801A9F94 001A6ED4  2C 03 00 00 */ cmpwi r3, 0
/* 801A9F98 001A6ED8  40 82 03 10 */ bne lbl_801AA2A8
/* 801A9F9C 001A6EDC  C0 1B 00 D8 */ lfs f0, 0xd8(r27)
/* 801A9FA0 001A6EE0  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 801A9FA4 001A6EE4  C0 1B 00 E0 */ lfs f0, 0xe0(r27)
/* 801A9FA8 001A6EE8  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 801A9FAC 001A6EEC  38 61 00 20 */ addi r3, r1, 0x20
/* 801A9FB0 001A6EF0  38 9B 00 D8 */ addi r4, r27, 0xd8
/* 801A9FB4 001A6EF4  48 19 D3 E9 */ bl PSVECSquareDistance
/* 801A9FB8 001A6EF8  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801A9FBC 001A6EFC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801A9FC0 001A6F00  40 81 00 58 */ ble lbl_801AA018
/* 801A9FC4 001A6F04  FC 00 08 34 */ frsqrte f0, f1
/* 801A9FC8 001A6F08  C8 82 A2 10 */ lfd f4, lbl_80453C10-_SDA2_BASE_(r2)
/* 801A9FCC 001A6F0C  FC 44 00 32 */ fmul f2, f4, f0
/* 801A9FD0 001A6F10  C8 62 A2 18 */ lfd f3, lbl_80453C18-_SDA2_BASE_(r2)
/* 801A9FD4 001A6F14  FC 00 00 32 */ fmul f0, f0, f0
/* 801A9FD8 001A6F18  FC 01 00 32 */ fmul f0, f1, f0
/* 801A9FDC 001A6F1C  FC 03 00 28 */ fsub f0, f3, f0
/* 801A9FE0 001A6F20  FC 02 00 32 */ fmul f0, f2, f0
/* 801A9FE4 001A6F24  FC 44 00 32 */ fmul f2, f4, f0
/* 801A9FE8 001A6F28  FC 00 00 32 */ fmul f0, f0, f0
/* 801A9FEC 001A6F2C  FC 01 00 32 */ fmul f0, f1, f0
/* 801A9FF0 001A6F30  FC 03 00 28 */ fsub f0, f3, f0
/* 801A9FF4 001A6F34  FC 02 00 32 */ fmul f0, f2, f0
/* 801A9FF8 001A6F38  FC 44 00 32 */ fmul f2, f4, f0
/* 801A9FFC 001A6F3C  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA000 001A6F40  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA004 001A6F44  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA008 001A6F48  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA00C 001A6F4C  FC 21 00 32 */ fmul f1, f1, f0
/* 801AA010 001A6F50  FC 20 08 18 */ frsp f1, f1
/* 801AA014 001A6F54  48 00 00 88 */ b lbl_801AA09C
lbl_801AA018:
/* 801AA018 001A6F58  C8 02 A2 20 */ lfd f0, lbl_80453C20-_SDA2_BASE_(r2)
/* 801AA01C 001A6F5C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA020 001A6F60  40 80 00 10 */ bge lbl_801AA030
/* 801AA024 001A6F64  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA028 001A6F68  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 801AA02C 001A6F6C  48 00 00 70 */ b lbl_801AA09C
lbl_801AA030:
/* 801AA030 001A6F70  D0 21 00 1C */ stfs f1, 0x1c(r1)
/* 801AA034 001A6F74  80 81 00 1C */ lwz r4, 0x1c(r1)
/* 801AA038 001A6F78  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 801AA03C 001A6F7C  3C 00 7F 80 */ lis r0, 0x7f80
/* 801AA040 001A6F80  7C 03 00 00 */ cmpw r3, r0
/* 801AA044 001A6F84  41 82 00 14 */ beq lbl_801AA058
/* 801AA048 001A6F88  40 80 00 40 */ bge lbl_801AA088
/* 801AA04C 001A6F8C  2C 03 00 00 */ cmpwi r3, 0
/* 801AA050 001A6F90  41 82 00 20 */ beq lbl_801AA070
/* 801AA054 001A6F94  48 00 00 34 */ b lbl_801AA088
lbl_801AA058:
/* 801AA058 001A6F98  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA05C 001A6F9C  41 82 00 0C */ beq lbl_801AA068
/* 801AA060 001A6FA0  38 00 00 01 */ li r0, 1
/* 801AA064 001A6FA4  48 00 00 28 */ b lbl_801AA08C
lbl_801AA068:
/* 801AA068 001A6FA8  38 00 00 02 */ li r0, 2
/* 801AA06C 001A6FAC  48 00 00 20 */ b lbl_801AA08C
lbl_801AA070:
/* 801AA070 001A6FB0  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA074 001A6FB4  41 82 00 0C */ beq lbl_801AA080
/* 801AA078 001A6FB8  38 00 00 05 */ li r0, 5
/* 801AA07C 001A6FBC  48 00 00 10 */ b lbl_801AA08C
lbl_801AA080:
/* 801AA080 001A6FC0  38 00 00 03 */ li r0, 3
/* 801AA084 001A6FC4  48 00 00 08 */ b lbl_801AA08C
lbl_801AA088:
/* 801AA088 001A6FC8  38 00 00 04 */ li r0, 4
lbl_801AA08C:
/* 801AA08C 001A6FCC  2C 00 00 01 */ cmpwi r0, 1
/* 801AA090 001A6FD0  40 82 00 0C */ bne lbl_801AA09C
/* 801AA094 001A6FD4  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA098 001A6FD8  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_801AA09C:
/* 801AA09C 001A6FDC  C0 02 A1 EC */ lfs f0, lbl_80453BEC-_SDA2_BASE_(r2)
/* 801AA0A0 001A6FE0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA0A4 001A6FE4  40 81 00 10 */ ble lbl_801AA0B4
/* 801AA0A8 001A6FE8  C3 C2 A2 88 */ lfs f30, lbl_80453C88-_SDA2_BASE_(r2)
/* 801AA0AC 001A6FEC  57 99 06 3E */ clrlwi r25, r28, 0x18
/* 801AA0B0 001A6FF0  48 00 03 F8 */ b lbl_801AA4A8
lbl_801AA0B4:
/* 801AA0B4 001A6FF4  7F A3 EB 78 */ mr r3, r29
/* 801AA0B8 001A6FF8  38 9B 00 D8 */ addi r4, r27, 0xd8
/* 801AA0BC 001A6FFC  48 19 D2 E1 */ bl PSVECSquareDistance
/* 801AA0C0 001A7000  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801AA0C4 001A7004  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA0C8 001A7008  40 81 00 58 */ ble lbl_801AA120
/* 801AA0CC 001A700C  FC 00 08 34 */ frsqrte f0, f1
/* 801AA0D0 001A7010  C8 82 A2 10 */ lfd f4, lbl_80453C10-_SDA2_BASE_(r2)
/* 801AA0D4 001A7014  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA0D8 001A7018  C8 62 A2 18 */ lfd f3, lbl_80453C18-_SDA2_BASE_(r2)
/* 801AA0DC 001A701C  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA0E0 001A7020  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA0E4 001A7024  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA0E8 001A7028  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA0EC 001A702C  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA0F0 001A7030  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA0F4 001A7034  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA0F8 001A7038  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA0FC 001A703C  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA100 001A7040  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA104 001A7044  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA108 001A7048  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA10C 001A704C  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA110 001A7050  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA114 001A7054  FC 21 00 32 */ fmul f1, f1, f0
/* 801AA118 001A7058  FC 20 08 18 */ frsp f1, f1
/* 801AA11C 001A705C  48 00 00 88 */ b lbl_801AA1A4
lbl_801AA120:
/* 801AA120 001A7060  C8 02 A2 20 */ lfd f0, lbl_80453C20-_SDA2_BASE_(r2)
/* 801AA124 001A7064  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA128 001A7068  40 80 00 10 */ bge lbl_801AA138
/* 801AA12C 001A706C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA130 001A7070  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 801AA134 001A7074  48 00 00 70 */ b lbl_801AA1A4
lbl_801AA138:
/* 801AA138 001A7078  D0 21 00 18 */ stfs f1, 0x18(r1)
/* 801AA13C 001A707C  80 81 00 18 */ lwz r4, 0x18(r1)
/* 801AA140 001A7080  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 801AA144 001A7084  3C 00 7F 80 */ lis r0, 0x7f80
/* 801AA148 001A7088  7C 03 00 00 */ cmpw r3, r0
/* 801AA14C 001A708C  41 82 00 14 */ beq lbl_801AA160
/* 801AA150 001A7090  40 80 00 40 */ bge lbl_801AA190
/* 801AA154 001A7094  2C 03 00 00 */ cmpwi r3, 0
/* 801AA158 001A7098  41 82 00 20 */ beq lbl_801AA178
/* 801AA15C 001A709C  48 00 00 34 */ b lbl_801AA190
lbl_801AA160:
/* 801AA160 001A70A0  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA164 001A70A4  41 82 00 0C */ beq lbl_801AA170
/* 801AA168 001A70A8  38 00 00 01 */ li r0, 1
/* 801AA16C 001A70AC  48 00 00 28 */ b lbl_801AA194
lbl_801AA170:
/* 801AA170 001A70B0  38 00 00 02 */ li r0, 2
/* 801AA174 001A70B4  48 00 00 20 */ b lbl_801AA194
lbl_801AA178:
/* 801AA178 001A70B8  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA17C 001A70BC  41 82 00 0C */ beq lbl_801AA188
/* 801AA180 001A70C0  38 00 00 05 */ li r0, 5
/* 801AA184 001A70C4  48 00 00 10 */ b lbl_801AA194
lbl_801AA188:
/* 801AA188 001A70C8  38 00 00 03 */ li r0, 3
/* 801AA18C 001A70CC  48 00 00 08 */ b lbl_801AA194
lbl_801AA190:
/* 801AA190 001A70D0  38 00 00 04 */ li r0, 4
lbl_801AA194:
/* 801AA194 001A70D4  2C 00 00 01 */ cmpwi r0, 1
/* 801AA198 001A70D8  40 82 00 0C */ bne lbl_801AA1A4
/* 801AA19C 001A70DC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA1A0 001A70E0  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_801AA1A4:
/* 801AA1A4 001A70E4  FC 01 F0 40 */ fcmpo cr0, f1, f30
/* 801AA1A8 001A70E8  40 81 02 F0 */ ble lbl_801AA498
/* 801AA1AC 001A70EC  7F A3 EB 78 */ mr r3, r29
/* 801AA1B0 001A70F0  38 9B 00 D8 */ addi r4, r27, 0xd8
/* 801AA1B4 001A70F4  48 19 D1 E9 */ bl PSVECSquareDistance
/* 801AA1B8 001A70F8  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801AA1BC 001A70FC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA1C0 001A7100  40 81 00 58 */ ble lbl_801AA218
/* 801AA1C4 001A7104  FC 00 08 34 */ frsqrte f0, f1
/* 801AA1C8 001A7108  C8 82 A2 10 */ lfd f4, lbl_80453C10-_SDA2_BASE_(r2)
/* 801AA1CC 001A710C  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA1D0 001A7110  C8 62 A2 18 */ lfd f3, lbl_80453C18-_SDA2_BASE_(r2)
/* 801AA1D4 001A7114  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA1D8 001A7118  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA1DC 001A711C  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA1E0 001A7120  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA1E4 001A7124  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA1E8 001A7128  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA1EC 001A712C  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA1F0 001A7130  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA1F4 001A7134  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA1F8 001A7138  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA1FC 001A713C  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA200 001A7140  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA204 001A7144  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA208 001A7148  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA20C 001A714C  FC 21 00 32 */ fmul f1, f1, f0
/* 801AA210 001A7150  FC 20 08 18 */ frsp f1, f1
/* 801AA214 001A7154  48 00 00 88 */ b lbl_801AA29C
lbl_801AA218:
/* 801AA218 001A7158  C8 02 A2 20 */ lfd f0, lbl_80453C20-_SDA2_BASE_(r2)
/* 801AA21C 001A715C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA220 001A7160  40 80 00 10 */ bge lbl_801AA230
/* 801AA224 001A7164  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA228 001A7168  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 801AA22C 001A716C  48 00 00 70 */ b lbl_801AA29C
lbl_801AA230:
/* 801AA230 001A7170  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 801AA234 001A7174  80 81 00 14 */ lwz r4, 0x14(r1)
/* 801AA238 001A7178  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 801AA23C 001A717C  3C 00 7F 80 */ lis r0, 0x7f80
/* 801AA240 001A7180  7C 03 00 00 */ cmpw r3, r0
/* 801AA244 001A7184  41 82 00 14 */ beq lbl_801AA258
/* 801AA248 001A7188  40 80 00 40 */ bge lbl_801AA288
/* 801AA24C 001A718C  2C 03 00 00 */ cmpwi r3, 0
/* 801AA250 001A7190  41 82 00 20 */ beq lbl_801AA270
/* 801AA254 001A7194  48 00 00 34 */ b lbl_801AA288
lbl_801AA258:
/* 801AA258 001A7198  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA25C 001A719C  41 82 00 0C */ beq lbl_801AA268
/* 801AA260 001A71A0  38 00 00 01 */ li r0, 1
/* 801AA264 001A71A4  48 00 00 28 */ b lbl_801AA28C
lbl_801AA268:
/* 801AA268 001A71A8  38 00 00 02 */ li r0, 2
/* 801AA26C 001A71AC  48 00 00 20 */ b lbl_801AA28C
lbl_801AA270:
/* 801AA270 001A71B0  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA274 001A71B4  41 82 00 0C */ beq lbl_801AA280
/* 801AA278 001A71B8  38 00 00 05 */ li r0, 5
/* 801AA27C 001A71BC  48 00 00 10 */ b lbl_801AA28C
lbl_801AA280:
/* 801AA280 001A71C0  38 00 00 03 */ li r0, 3
/* 801AA284 001A71C4  48 00 00 08 */ b lbl_801AA28C
lbl_801AA288:
/* 801AA288 001A71C8  38 00 00 04 */ li r0, 4
lbl_801AA28C:
/* 801AA28C 001A71CC  2C 00 00 01 */ cmpwi r0, 1
/* 801AA290 001A71D0  40 82 00 0C */ bne lbl_801AA29C
/* 801AA294 001A71D4  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA298 001A71D8  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_801AA29C:
/* 801AA29C 001A71DC  FF C0 08 90 */ fmr f30, f1
/* 801AA2A0 001A71E0  57 99 06 3E */ clrlwi r25, r28, 0x18
/* 801AA2A4 001A71E4  48 00 01 F4 */ b lbl_801AA498
lbl_801AA2A8:
/* 801AA2A8 001A71E8  7F A3 EB 78 */ mr r3, r29
/* 801AA2AC 001A71EC  38 9B 00 D8 */ addi r4, r27, 0xd8
/* 801AA2B0 001A71F0  48 19 D0 ED */ bl PSVECSquareDistance
/* 801AA2B4 001A71F4  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801AA2B8 001A71F8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA2BC 001A71FC  40 81 00 58 */ ble lbl_801AA314
/* 801AA2C0 001A7200  FC 00 08 34 */ frsqrte f0, f1
/* 801AA2C4 001A7204  C8 82 A2 10 */ lfd f4, lbl_80453C10-_SDA2_BASE_(r2)
/* 801AA2C8 001A7208  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA2CC 001A720C  C8 62 A2 18 */ lfd f3, lbl_80453C18-_SDA2_BASE_(r2)
/* 801AA2D0 001A7210  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA2D4 001A7214  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA2D8 001A7218  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA2DC 001A721C  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA2E0 001A7220  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA2E4 001A7224  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA2E8 001A7228  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA2EC 001A722C  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA2F0 001A7230  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA2F4 001A7234  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA2F8 001A7238  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA2FC 001A723C  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA300 001A7240  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA304 001A7244  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA308 001A7248  FC 21 00 32 */ fmul f1, f1, f0
/* 801AA30C 001A724C  FC 20 08 18 */ frsp f1, f1
/* 801AA310 001A7250  48 00 00 88 */ b lbl_801AA398
lbl_801AA314:
/* 801AA314 001A7254  C8 02 A2 20 */ lfd f0, lbl_80453C20-_SDA2_BASE_(r2)
/* 801AA318 001A7258  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA31C 001A725C  40 80 00 10 */ bge lbl_801AA32C
/* 801AA320 001A7260  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA324 001A7264  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 801AA328 001A7268  48 00 00 70 */ b lbl_801AA398
lbl_801AA32C:
/* 801AA32C 001A726C  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 801AA330 001A7270  80 81 00 10 */ lwz r4, 0x10(r1)
/* 801AA334 001A7274  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 801AA338 001A7278  3C 00 7F 80 */ lis r0, 0x7f80
/* 801AA33C 001A727C  7C 03 00 00 */ cmpw r3, r0
/* 801AA340 001A7280  41 82 00 14 */ beq lbl_801AA354
/* 801AA344 001A7284  40 80 00 40 */ bge lbl_801AA384
/* 801AA348 001A7288  2C 03 00 00 */ cmpwi r3, 0
/* 801AA34C 001A728C  41 82 00 20 */ beq lbl_801AA36C
/* 801AA350 001A7290  48 00 00 34 */ b lbl_801AA384
lbl_801AA354:
/* 801AA354 001A7294  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA358 001A7298  41 82 00 0C */ beq lbl_801AA364
/* 801AA35C 001A729C  38 00 00 01 */ li r0, 1
/* 801AA360 001A72A0  48 00 00 28 */ b lbl_801AA388
lbl_801AA364:
/* 801AA364 001A72A4  38 00 00 02 */ li r0, 2
/* 801AA368 001A72A8  48 00 00 20 */ b lbl_801AA388
lbl_801AA36C:
/* 801AA36C 001A72AC  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA370 001A72B0  41 82 00 0C */ beq lbl_801AA37C
/* 801AA374 001A72B4  38 00 00 05 */ li r0, 5
/* 801AA378 001A72B8  48 00 00 10 */ b lbl_801AA388
lbl_801AA37C:
/* 801AA37C 001A72BC  38 00 00 03 */ li r0, 3
/* 801AA380 001A72C0  48 00 00 08 */ b lbl_801AA388
lbl_801AA384:
/* 801AA384 001A72C4  38 00 00 04 */ li r0, 4
lbl_801AA388:
/* 801AA388 001A72C8  2C 00 00 01 */ cmpwi r0, 1
/* 801AA38C 001A72CC  40 82 00 0C */ bne lbl_801AA398
/* 801AA390 001A72D0  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA394 001A72D4  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_801AA398:
/* 801AA398 001A72D8  FC 01 F0 40 */ fcmpo cr0, f1, f30
/* 801AA39C 001A72DC  40 81 00 FC */ ble lbl_801AA498
/* 801AA3A0 001A72E0  7F A3 EB 78 */ mr r3, r29
/* 801AA3A4 001A72E4  38 9B 00 D8 */ addi r4, r27, 0xd8
/* 801AA3A8 001A72E8  48 19 CF F5 */ bl PSVECSquareDistance
/* 801AA3AC 001A72EC  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801AA3B0 001A72F0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA3B4 001A72F4  40 81 00 58 */ ble lbl_801AA40C
/* 801AA3B8 001A72F8  FC 00 08 34 */ frsqrte f0, f1
/* 801AA3BC 001A72FC  C8 82 A2 10 */ lfd f4, lbl_80453C10-_SDA2_BASE_(r2)
/* 801AA3C0 001A7300  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA3C4 001A7304  C8 62 A2 18 */ lfd f3, lbl_80453C18-_SDA2_BASE_(r2)
/* 801AA3C8 001A7308  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA3CC 001A730C  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA3D0 001A7310  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA3D4 001A7314  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA3D8 001A7318  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA3DC 001A731C  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA3E0 001A7320  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA3E4 001A7324  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA3E8 001A7328  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA3EC 001A732C  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA3F0 001A7330  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA3F4 001A7334  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA3F8 001A7338  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA3FC 001A733C  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA400 001A7340  FC 21 00 32 */ fmul f1, f1, f0
/* 801AA404 001A7344  FC 20 08 18 */ frsp f1, f1
/* 801AA408 001A7348  48 00 00 88 */ b lbl_801AA490
lbl_801AA40C:
/* 801AA40C 001A734C  C8 02 A2 20 */ lfd f0, lbl_80453C20-_SDA2_BASE_(r2)
/* 801AA410 001A7350  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA414 001A7354  40 80 00 10 */ bge lbl_801AA424
/* 801AA418 001A7358  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA41C 001A735C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 801AA420 001A7360  48 00 00 70 */ b lbl_801AA490
lbl_801AA424:
/* 801AA424 001A7364  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 801AA428 001A7368  80 81 00 0C */ lwz r4, 0xc(r1)
/* 801AA42C 001A736C  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 801AA430 001A7370  3C 00 7F 80 */ lis r0, 0x7f80
/* 801AA434 001A7374  7C 03 00 00 */ cmpw r3, r0
/* 801AA438 001A7378  41 82 00 14 */ beq lbl_801AA44C
/* 801AA43C 001A737C  40 80 00 40 */ bge lbl_801AA47C
/* 801AA440 001A7380  2C 03 00 00 */ cmpwi r3, 0
/* 801AA444 001A7384  41 82 00 20 */ beq lbl_801AA464
/* 801AA448 001A7388  48 00 00 34 */ b lbl_801AA47C
lbl_801AA44C:
/* 801AA44C 001A738C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA450 001A7390  41 82 00 0C */ beq lbl_801AA45C
/* 801AA454 001A7394  38 00 00 01 */ li r0, 1
/* 801AA458 001A7398  48 00 00 28 */ b lbl_801AA480
lbl_801AA45C:
/* 801AA45C 001A739C  38 00 00 02 */ li r0, 2
/* 801AA460 001A73A0  48 00 00 20 */ b lbl_801AA480
lbl_801AA464:
/* 801AA464 001A73A4  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA468 001A73A8  41 82 00 0C */ beq lbl_801AA474
/* 801AA46C 001A73AC  38 00 00 05 */ li r0, 5
/* 801AA470 001A73B0  48 00 00 10 */ b lbl_801AA480
lbl_801AA474:
/* 801AA474 001A73B4  38 00 00 03 */ li r0, 3
/* 801AA478 001A73B8  48 00 00 08 */ b lbl_801AA480
lbl_801AA47C:
/* 801AA47C 001A73BC  38 00 00 04 */ li r0, 4
lbl_801AA480:
/* 801AA480 001A73C0  2C 00 00 01 */ cmpwi r0, 1
/* 801AA484 001A73C4  40 82 00 0C */ bne lbl_801AA490
/* 801AA488 001A73C8  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA48C 001A73CC  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_801AA490:
/* 801AA490 001A73D0  FF C0 08 90 */ fmr f30, f1
/* 801AA494 001A73D4  57 99 06 3E */ clrlwi r25, r28, 0x18
lbl_801AA498:
/* 801AA498 001A73D8  3B 9C 00 01 */ addi r28, r28, 1
/* 801AA49C 001A73DC  3A B5 00 28 */ addi r21, r21, 0x28
lbl_801AA4A0:
/* 801AA4A0 001A73E0  7C 1C F8 00 */ cmpw r28, r31
/* 801AA4A4 001A73E4  41 80 FA B4 */ blt lbl_801A9F58
lbl_801AA4A8:
/* 801AA4A8 001A73E8  2C 1A 00 00 */ cmpwi r26, 0
/* 801AA4AC 001A73EC  40 82 01 8C */ bne lbl_801AA638
/* 801AA4B0 001A73F0  57 35 06 3E */ clrlwi r21, r25, 0x18
/* 801AA4B4 001A73F4  28 15 00 FF */ cmplwi r21, 0xff
/* 801AA4B8 001A73F8  41 82 01 80 */ beq lbl_801AA638
/* 801AA4BC 001A73FC  2C 15 00 06 */ cmpwi r21, 6
/* 801AA4C0 001A7400  40 80 01 78 */ bge lbl_801AA638
/* 801AA4C4 001A7404  7E C3 B3 78 */ mr r3, r22
/* 801AA4C8 001A7408  38 9B 00 D8 */ addi r4, r27, 0xd8
/* 801AA4CC 001A740C  48 19 CE D1 */ bl PSVECSquareDistance
/* 801AA4D0 001A7410  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801AA4D4 001A7414  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA4D8 001A7418  40 81 00 58 */ ble lbl_801AA530
/* 801AA4DC 001A741C  FC 00 08 34 */ frsqrte f0, f1
/* 801AA4E0 001A7420  C8 82 A2 10 */ lfd f4, lbl_80453C10-_SDA2_BASE_(r2)
/* 801AA4E4 001A7424  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA4E8 001A7428  C8 62 A2 18 */ lfd f3, lbl_80453C18-_SDA2_BASE_(r2)
/* 801AA4EC 001A742C  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA4F0 001A7430  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA4F4 001A7434  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA4F8 001A7438  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA4FC 001A743C  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA500 001A7440  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA504 001A7444  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA508 001A7448  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA50C 001A744C  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA510 001A7450  FC 44 00 32 */ fmul f2, f4, f0
/* 801AA514 001A7454  FC 00 00 32 */ fmul f0, f0, f0
/* 801AA518 001A7458  FC 01 00 32 */ fmul f0, f1, f0
/* 801AA51C 001A745C  FC 03 00 28 */ fsub f0, f3, f0
/* 801AA520 001A7460  FC 02 00 32 */ fmul f0, f2, f0
/* 801AA524 001A7464  FC 21 00 32 */ fmul f1, f1, f0
/* 801AA528 001A7468  FC 20 08 18 */ frsp f1, f1
/* 801AA52C 001A746C  48 00 00 88 */ b lbl_801AA5B4
lbl_801AA530:
/* 801AA530 001A7470  C8 02 A2 20 */ lfd f0, lbl_80453C20-_SDA2_BASE_(r2)
/* 801AA534 001A7474  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801AA538 001A7478  40 80 00 10 */ bge lbl_801AA548
/* 801AA53C 001A747C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA540 001A7480  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 801AA544 001A7484  48 00 00 70 */ b lbl_801AA5B4
lbl_801AA548:
/* 801AA548 001A7488  D0 21 00 08 */ stfs f1, 8(r1)
/* 801AA54C 001A748C  80 81 00 08 */ lwz r4, 8(r1)
/* 801AA550 001A7490  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 801AA554 001A7494  3C 00 7F 80 */ lis r0, 0x7f80
/* 801AA558 001A7498  7C 03 00 00 */ cmpw r3, r0
/* 801AA55C 001A749C  41 82 00 14 */ beq lbl_801AA570
/* 801AA560 001A74A0  40 80 00 40 */ bge lbl_801AA5A0
/* 801AA564 001A74A4  2C 03 00 00 */ cmpwi r3, 0
/* 801AA568 001A74A8  41 82 00 20 */ beq lbl_801AA588
/* 801AA56C 001A74AC  48 00 00 34 */ b lbl_801AA5A0
lbl_801AA570:
/* 801AA570 001A74B0  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA574 001A74B4  41 82 00 0C */ beq lbl_801AA580
/* 801AA578 001A74B8  38 00 00 01 */ li r0, 1
/* 801AA57C 001A74BC  48 00 00 28 */ b lbl_801AA5A4
lbl_801AA580:
/* 801AA580 001A74C0  38 00 00 02 */ li r0, 2
/* 801AA584 001A74C4  48 00 00 20 */ b lbl_801AA5A4
lbl_801AA588:
/* 801AA588 001A74C8  54 80 02 7F */ clrlwi. r0, r4, 9
/* 801AA58C 001A74CC  41 82 00 0C */ beq lbl_801AA598
/* 801AA590 001A74D0  38 00 00 05 */ li r0, 5
/* 801AA594 001A74D4  48 00 00 10 */ b lbl_801AA5A4
lbl_801AA598:
/* 801AA598 001A74D8  38 00 00 03 */ li r0, 3
/* 801AA59C 001A74DC  48 00 00 08 */ b lbl_801AA5A4
lbl_801AA5A0:
/* 801AA5A0 001A74E0  38 00 00 04 */ li r0, 4
lbl_801AA5A4:
/* 801AA5A4 001A74E4  2C 00 00 01 */ cmpwi r0, 1
/* 801AA5A8 001A74E8  40 82 00 0C */ bne lbl_801AA5B4
/* 801AA5AC 001A74EC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 801AA5B0 001A74F0  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_801AA5B4:
/* 801AA5B4 001A74F4  FC 01 F0 40 */ fcmpo cr0, f1, f30
/* 801AA5B8 001A74F8  40 80 00 80 */ bge lbl_801AA638
/* 801AA5BC 001A74FC  C0 16 00 00 */ lfs f0, 0(r22)
/* 801AA5C0 001A7500  1C 15 00 28 */ mulli r0, r21, 0x28
/* 801AA5C4 001A7504  7C 18 05 2E */ stfsx f0, r24, r0
/* 801AA5C8 001A7508  C0 16 00 04 */ lfs f0, 4(r22)
/* 801AA5CC 001A750C  7C 78 02 14 */ add r3, r24, r0
/* 801AA5D0 001A7510  D0 03 00 04 */ stfs f0, 4(r3)
/* 801AA5D4 001A7514  C0 16 00 08 */ lfs f0, 8(r22)
/* 801AA5D8 001A7518  D0 03 00 08 */ stfs f0, 8(r3)
/* 801AA5DC 001A751C  88 17 00 00 */ lbz r0, 0(r23)
/* 801AA5E0 001A7520  98 03 00 0C */ stb r0, 0xc(r3)
/* 801AA5E4 001A7524  88 17 00 01 */ lbz r0, 1(r23)
/* 801AA5E8 001A7528  98 03 00 0D */ stb r0, 0xd(r3)
/* 801AA5EC 001A752C  88 17 00 02 */ lbz r0, 2(r23)
/* 801AA5F0 001A7530  98 03 00 0E */ stb r0, 0xe(r3)
/* 801AA5F4 001A7534  38 00 00 FF */ li r0, 0xff
/* 801AA5F8 001A7538  98 03 00 0F */ stb r0, 0xf(r3)
/* 801AA5FC 001A753C  D3 E3 00 10 */ stfs f31, 0x10(r3)
/* 801AA600 001A7540  C0 02 A2 90 */ lfs f0, lbl_80453C90-_SDA2_BASE_(r2)
/* 801AA604 001A7544  D0 03 00 14 */ stfs f0, 0x14(r3)
/* 801AA608 001A7548  C0 02 A2 2C */ lfs f0, lbl_80453C2C-_SDA2_BASE_(r2)
/* 801AA60C 001A754C  D0 03 00 18 */ stfs f0, 0x18(r3)
/* 801AA610 001A7550  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801AA614 001A7554  D0 03 00 1C */ stfs f0, 0x1c(r3)
/* 801AA618 001A7558  D0 03 00 20 */ stfs f0, 0x20(r3)
/* 801AA61C 001A755C  38 00 00 00 */ li r0, 0
/* 801AA620 001A7560  98 03 00 24 */ stb r0, 0x24(r3)
/* 801AA624 001A7564  38 00 00 03 */ li r0, 3
/* 801AA628 001A7568  98 03 00 25 */ stb r0, 0x25(r3)
/* 801AA62C 001A756C  38 00 00 01 */ li r0, 1
/* 801AA630 001A7570  98 03 00 26 */ stb r0, 0x26(r3)
/* 801AA634 001A7574  3B 40 00 01 */ li r26, 1
lbl_801AA638:
/* 801AA638 001A7578  7F 43 D3 78 */ mr r3, r26
lbl_801AA63C:
/* 801AA63C 001A757C  E3 E1 00 78 */ psq_l f31, 120(r1), 0, 0
/* 801AA640 001A7580  CB E1 00 70 */ lfd f31, 0x70(r1)
/* 801AA644 001A7584  E3 C1 00 68 */ psq_l f30, 104(r1), 0, 0
/* 801AA648 001A7588  CB C1 00 60 */ lfd f30, 0x60(r1)
/* 801AA64C 001A758C  39 61 00 60 */ addi r11, r1, 0x60
/* 801AA650 001A7590  48 1B 7B B9 */ bl _restgpr_21
/* 801AA654 001A7594  80 01 00 84 */ lwz r0, 0x84(r1)
/* 801AA658 001A7598  7C 08 03 A6 */ mtlr r0
/* 801AA65C 001A759C  38 21 00 80 */ addi r1, r1, 0x80
/* 801AA660 001A75A0  4E 80 00 20 */ blr
/* 8002E22C 0002B16C  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8002E230 0002B170  7C 08 02 A6 */ mflr r0
/* 8002E234 0002B174  90 01 00 34 */ stw r0, 0x34(r1)
/* 8002E238 0002B178  39 61 00 30 */ addi r11, r1, 0x30
/* 8002E23C 0002B17C  48 33 3F 95 */ bl _savegpr_26
/* 8002E240 0002B180  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002E244 0002B184  3B A3 61 C0 */ addi r29, r3, g_dComIfG_gameInfo@l
/* 8002E248 0002B188  80 7D 5E BC */ lwz r3, 0x5ebc(r29)
/* 8002E24C 0002B18C  48 2A 05 39 */ bl getTotalFreeSize__7JKRHeapCFv
/* 8002E250 0002B190  C8 22 83 10 */ lfd f1, lbl_80451D10-_SDA2_BASE_(r2)
/* 8002E254 0002B194  6C 60 80 00 */ xoris r0, r3, 0x8000
/* 8002E258 0002B198  90 01 00 0C */ stw r0, 0xc(r1)
/* 8002E25C 0002B19C  3C 00 43 30 */ lis r0, 0x4330
/* 8002E260 0002B1A0  90 01 00 08 */ stw r0, 8(r1)
/* 8002E264 0002B1A4  C8 01 00 08 */ lfd f0, 8(r1)
/* 8002E268 0002B1A8  EC 20 08 28 */ fsubs f1, f0, f1
/* 8002E26C 0002B1AC  C0 02 83 08 */ lfs f0, lbl_80451D08-_SDA2_BASE_(r2)
/* 8002E270 0002B1B0  EC 20 00 72 */ fmuls f1, f0, f1
/* 8002E274 0002B1B4  48 33 3E 39 */ bl __cvt_fp2unsigned
/* 8002E278 0002B1B8  7C 7B 1B 78 */ mr r27, r3
/* 8002E27C 0002B1BC  3B 40 00 00 */ li r26, 0
/* 8002E280 0002B1C0  3B E0 00 00 */ li r31, 0
/* 8002E284 0002B1C4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002E288 0002B1C8  3B C3 61 C0 */ addi r30, r3, g_dComIfG_gameInfo@l
lbl_8002E28C:
/* 8002E28C 0002B1CC  7C 7E FA 14 */ add r3, r30, r31
/* 8002E290 0002B1D0  3B 83 5E C0 */ addi r28, r3, 0x5ec0
/* 8002E294 0002B1D4  80 03 5E C0 */ lwz r0, 0x5ec0(r3)
/* 8002E298 0002B1D8  28 00 00 00 */ cmplwi r0, 0
/* 8002E29C 0002B1DC  40 82 00 18 */ bne lbl_8002E2B4
/* 8002E2A0 0002B1E0  7F 63 DB 78 */ mr r3, r27
/* 8002E2A4 0002B1E4  80 9D 5E BC */ lwz r4, 0x5ebc(r29)
/* 8002E2A8 0002B1E8  38 A0 00 00 */ li r5, 0
/* 8002E2AC 0002B1EC  48 2A 0B 81 */ bl create__10JKRExpHeapFUlP7JKRHeapb
/* 8002E2B0 0002B1F0  90 7C 00 00 */ stw r3, 0(r28)
lbl_8002E2B4:
/* 8002E2B4 0002B1F4  3B 5A 00 01 */ addi r26, r26, 1
/* 8002E2B8 0002B1F8  2C 1A 00 02 */ cmpwi r26, 2
/* 8002E2BC 0002B1FC  3B FF 00 04 */ addi r31, r31, 4
/* 8002E2C0 0002B200  41 80 FF CC */ blt lbl_8002E28C
/* 8002E2C4 0002B204  39 61 00 30 */ addi r11, r1, 0x30
/* 8002E2C8 0002B208  48 33 3F 55 */ bl _restgpr_26
/* 8002E2CC 0002B20C  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8002E2D0 0002B210  7C 08 03 A6 */ mtlr r0
/* 8002E2D4 0002B214  38 21 00 30 */ addi r1, r1, 0x30
/* 8002E2D8 0002B218  4E 80 00 20 */ blr

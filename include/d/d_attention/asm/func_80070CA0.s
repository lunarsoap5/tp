/* 80070CA0 0006DBE0  94 21 FF 80 */ stwu r1, -0x80(r1)
/* 80070CA4 0006DBE4  7C 08 02 A6 */ mflr r0
/* 80070CA8 0006DBE8  90 01 00 84 */ stw r0, 0x84(r1)
/* 80070CAC 0006DBEC  DB E1 00 70 */ stfd f31, 0x70(r1)
/* 80070CB0 0006DBF0  F3 E1 00 78 */ psq_st f31, 120(r1), 0, 0
/* 80070CB4 0006DBF4  DB C1 00 60 */ stfd f30, 0x60(r1)
/* 80070CB8 0006DBF8  F3 C1 00 68 */ psq_st f30, 104(r1), 0, 0
/* 80070CBC 0006DBFC  DB A1 00 50 */ stfd f29, 0x50(r1)
/* 80070CC0 0006DC00  F3 A1 00 58 */ psq_st f29, 88(r1), 0, 0
/* 80070CC4 0006DC04  DB 81 00 40 */ stfd f28, 0x40(r1)
/* 80070CC8 0006DC08  F3 81 00 48 */ psq_st f28, 72(r1), 0, 0
/* 80070CCC 0006DC0C  93 E1 00 3C */ stw r31, 0x3c(r1)
/* 80070CD0 0006DC10  7C 60 1B 78 */ mr r0, r3
/* 80070CD4 0006DC14  7C 9F 23 78 */ mr r31, r4
/* 80070CD8 0006DC18  FF 80 08 90 */ fmr f28, f1
/* 80070CDC 0006DC1C  FF A0 10 90 */ fmr f29, f2
/* 80070CE0 0006DC20  FF C0 18 90 */ fmr f30, f3
/* 80070CE4 0006DC24  FF E0 20 90 */ fmr f31, f4
/* 80070CE8 0006DC28  38 61 00 18 */ addi r3, r1, 0x18
/* 80070CEC 0006DC2C  7C A4 2B 78 */ mr r4, r5
/* 80070CF0 0006DC30  7C 05 03 78 */ mr r5, r0
/* 80070CF4 0006DC34  48 1F 5E 41 */ bl cXyz_NS___mi
/* 80070CF8 0006DC38  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 80070CFC 0006DC3C  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 80070D00 0006DC40  C0 21 00 1C */ lfs f1, 0x1c(r1)
/* 80070D04 0006DC44  D0 21 00 28 */ stfs f1, 0x28(r1)
/* 80070D08 0006DC48  C0 01 00 20 */ lfs f0, 0x20(r1)
/* 80070D0C 0006DC4C  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 80070D10 0006DC50  FC 01 F8 40 */ fcmpo cr0, f1, f31
/* 80070D14 0006DC54  4C 40 13 82 */ cror 2, 0, 2
/* 80070D18 0006DC58  41 82 00 10 */ beq lbl_80070D28
/* 80070D1C 0006DC5C  FC 01 F0 40 */ fcmpo cr0, f1, f30
/* 80070D20 0006DC60  4C 41 13 82 */ cror 2, 1, 2
/* 80070D24 0006DC64  40 82 00 0C */ bne lbl_80070D30
lbl_80070D28:
/* 80070D28 0006DC68  38 60 00 00 */ li r3, 0
/* 80070D2C 0006DC6C  48 00 01 30 */ b lbl_80070E5C
lbl_80070D30:
/* 80070D30 0006DC70  FC 20 E8 90 */ fmr f1, f29
/* 80070D34 0006DC74  7F E3 FB 78 */ mr r3, r31
/* 80070D38 0006DC78  C0 42 8C 58 */ lfs f2, lbl_80452658-_SDA2_BASE_(r2)
/* 80070D3C 0006DC7C  4B FF FF 05 */ bl distace_angle_adjust
/* 80070D40 0006DC80  EF FC 08 2A */ fadds f31, f28, f1
/* 80070D44 0006DC84  C0 01 00 24 */ lfs f0, 0x24(r1)
/* 80070D48 0006DC88  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80070D4C 0006DC8C  C0 02 8C 50 */ lfs f0, lbl_80452650-_SDA2_BASE_(r2)
/* 80070D50 0006DC90  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 80070D54 0006DC94  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 80070D58 0006DC98  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 80070D5C 0006DC9C  38 61 00 0C */ addi r3, r1, 0xc
/* 80070D60 0006DCA0  48 2D 63 D9 */ bl PSVECSquareMag
/* 80070D64 0006DCA4  C0 02 8C 50 */ lfs f0, lbl_80452650-_SDA2_BASE_(r2)
/* 80070D68 0006DCA8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80070D6C 0006DCAC  40 81 00 58 */ ble lbl_80070DC4
/* 80070D70 0006DCB0  FC 00 08 34 */ frsqrte f0, f1
/* 80070D74 0006DCB4  C8 82 8C 78 */ lfd f4, lbl_80452678-_SDA2_BASE_(r2)
/* 80070D78 0006DCB8  FC 44 00 32 */ fmul f2, f4, f0
/* 80070D7C 0006DCBC  C8 62 8C 80 */ lfd f3, lbl_80452680-_SDA2_BASE_(r2)
/* 80070D80 0006DCC0  FC 00 00 32 */ fmul f0, f0, f0
/* 80070D84 0006DCC4  FC 01 00 32 */ fmul f0, f1, f0
/* 80070D88 0006DCC8  FC 03 00 28 */ fsub f0, f3, f0
/* 80070D8C 0006DCCC  FC 02 00 32 */ fmul f0, f2, f0
/* 80070D90 0006DCD0  FC 44 00 32 */ fmul f2, f4, f0
/* 80070D94 0006DCD4  FC 00 00 32 */ fmul f0, f0, f0
/* 80070D98 0006DCD8  FC 01 00 32 */ fmul f0, f1, f0
/* 80070D9C 0006DCDC  FC 03 00 28 */ fsub f0, f3, f0
/* 80070DA0 0006DCE0  FC 02 00 32 */ fmul f0, f2, f0
/* 80070DA4 0006DCE4  FC 44 00 32 */ fmul f2, f4, f0
/* 80070DA8 0006DCE8  FC 00 00 32 */ fmul f0, f0, f0
/* 80070DAC 0006DCEC  FC 01 00 32 */ fmul f0, f1, f0
/* 80070DB0 0006DCF0  FC 03 00 28 */ fsub f0, f3, f0
/* 80070DB4 0006DCF4  FC 02 00 32 */ fmul f0, f2, f0
/* 80070DB8 0006DCF8  FC 21 00 32 */ fmul f1, f1, f0
/* 80070DBC 0006DCFC  FC 20 08 18 */ frsp f1, f1
/* 80070DC0 0006DD00  48 00 00 88 */ b lbl_80070E48
lbl_80070DC4:
/* 80070DC4 0006DD04  C8 02 8C 88 */ lfd f0, lbl_80452688-_SDA2_BASE_(r2)
/* 80070DC8 0006DD08  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80070DCC 0006DD0C  40 80 00 10 */ bge lbl_80070DDC
/* 80070DD0 0006DD10  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80070DD4 0006DD14  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 80070DD8 0006DD18  48 00 00 70 */ b lbl_80070E48
lbl_80070DDC:
/* 80070DDC 0006DD1C  D0 21 00 08 */ stfs f1, 8(r1)
/* 80070DE0 0006DD20  80 81 00 08 */ lwz r4, 8(r1)
/* 80070DE4 0006DD24  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 80070DE8 0006DD28  3C 00 7F 80 */ lis r0, 0x7f80
/* 80070DEC 0006DD2C  7C 03 00 00 */ cmpw r3, r0
/* 80070DF0 0006DD30  41 82 00 14 */ beq lbl_80070E04
/* 80070DF4 0006DD34  40 80 00 40 */ bge lbl_80070E34
/* 80070DF8 0006DD38  2C 03 00 00 */ cmpwi r3, 0
/* 80070DFC 0006DD3C  41 82 00 20 */ beq lbl_80070E1C
/* 80070E00 0006DD40  48 00 00 34 */ b lbl_80070E34
lbl_80070E04:
/* 80070E04 0006DD44  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80070E08 0006DD48  41 82 00 0C */ beq lbl_80070E14
/* 80070E0C 0006DD4C  38 00 00 01 */ li r0, 1
/* 80070E10 0006DD50  48 00 00 28 */ b lbl_80070E38
lbl_80070E14:
/* 80070E14 0006DD54  38 00 00 02 */ li r0, 2
/* 80070E18 0006DD58  48 00 00 20 */ b lbl_80070E38
lbl_80070E1C:
/* 80070E1C 0006DD5C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80070E20 0006DD60  41 82 00 0C */ beq lbl_80070E2C
/* 80070E24 0006DD64  38 00 00 05 */ li r0, 5
/* 80070E28 0006DD68  48 00 00 10 */ b lbl_80070E38
lbl_80070E2C:
/* 80070E2C 0006DD6C  38 00 00 03 */ li r0, 3
/* 80070E30 0006DD70  48 00 00 08 */ b lbl_80070E38
lbl_80070E34:
/* 80070E34 0006DD74  38 00 00 04 */ li r0, 4
lbl_80070E38:
/* 80070E38 0006DD78  2C 00 00 01 */ cmpwi r0, 1
/* 80070E3C 0006DD7C  40 82 00 0C */ bne lbl_80070E48
/* 80070E40 0006DD80  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80070E44 0006DD84  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_80070E48:
/* 80070E48 0006DD88  FC 1F 08 40 */ fcmpo cr0, f31, f1
/* 80070E4C 0006DD8C  7C 00 00 26 */ mfcr r0
/* 80070E50 0006DD90  54 00 0F FE */ srwi r0, r0, 0x1f
/* 80070E54 0006DD94  7C 00 00 34 */ cntlzw r0, r0
/* 80070E58 0006DD98  54 03 D9 7E */ srwi r3, r0, 5
lbl_80070E5C:
/* 80070E5C 0006DD9C  E3 E1 00 78 */ psq_l f31, 120(r1), 0, 0
/* 80070E60 0006DDA0  CB E1 00 70 */ lfd f31, 0x70(r1)
/* 80070E64 0006DDA4  E3 C1 00 68 */ psq_l f30, 104(r1), 0, 0
/* 80070E68 0006DDA8  CB C1 00 60 */ lfd f30, 0x60(r1)
/* 80070E6C 0006DDAC  E3 A1 00 58 */ psq_l f29, 88(r1), 0, 0
/* 80070E70 0006DDB0  CB A1 00 50 */ lfd f29, 0x50(r1)
/* 80070E74 0006DDB4  E3 81 00 48 */ psq_l f28, 72(r1), 0, 0
/* 80070E78 0006DDB8  CB 81 00 40 */ lfd f28, 0x40(r1)
/* 80070E7C 0006DDBC  83 E1 00 3C */ lwz r31, 0x3c(r1)
/* 80070E80 0006DDC0  80 01 00 84 */ lwz r0, 0x84(r1)
/* 80070E84 0006DDC4  7C 08 03 A6 */ mtlr r0
/* 80070E88 0006DDC8  38 21 00 80 */ addi r1, r1, 0x80
/* 80070E8C 0006DDCC  4E 80 00 20 */ blr

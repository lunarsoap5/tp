/* 80017360 000142A0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80017364 000142A4  7C 08 02 A6 */ mflr r0
/* 80017368 000142A8  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001736C 000142AC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80017370 000142B0  7C 7F 1B 78 */ mr r31, r3
/* 80017374 000142B4  2C 04 FF FB */ cmpwi r4, -5
/* 80017378 000142B8  41 82 00 48 */ beq lbl_800173C0
/* 8001737C 000142BC  40 80 00 28 */ bge lbl_800173A4
/* 80017380 000142C0  2C 04 FF F3 */ cmpwi r4, -13
/* 80017384 000142C4  41 82 00 70 */ beq lbl_800173F4
/* 80017388 000142C8  40 80 00 10 */ bge lbl_80017398
/* 8001738C 000142CC  2C 04 FF 80 */ cmpwi r4, -128
/* 80017390 000142D0  41 82 00 30 */ beq lbl_800173C0
/* 80017394 000142D4  48 00 00 74 */ b lbl_80017408
lbl_80017398:
/* 80017398 000142D8  2C 04 FF FA */ cmpwi r4, -6
/* 8001739C 000142DC  40 80 00 3C */ bge lbl_800173D8
/* 800173A0 000142E0  48 00 00 68 */ b lbl_80017408
lbl_800173A4:
/* 800173A4 000142E4  2C 04 00 00 */ cmpwi r4, 0
/* 800173A8 000142E8  41 82 00 30 */ beq lbl_800173D8
/* 800173AC 000142EC  40 80 00 5C */ bge lbl_80017408
/* 800173B0 000142F0  2C 04 FF FD */ cmpwi r4, -3
/* 800173B4 000142F4  41 82 00 18 */ beq lbl_800173CC
/* 800173B8 000142F8  40 80 00 50 */ bge lbl_80017408
/* 800173BC 000142FC  48 00 00 44 */ b lbl_80017400
lbl_800173C0:
/* 800173C0 00014300  38 00 00 0C */ li r0, 0xc
/* 800173C4 00014304  90 1F 1F C4 */ stw r0, 0x1fc4(r31)
/* 800173C8 00014308  48 00 00 40 */ b lbl_80017408
lbl_800173CC:
/* 800173CC 0001430C  38 00 00 00 */ li r0, 0
/* 800173D0 00014310  90 1F 1F C4 */ stw r0, 0x1fc4(r31)
/* 800173D4 00014314  48 00 00 34 */ b lbl_80017408
lbl_800173D8:
/* 800173D8 00014318  88 7F 1F BC */ lbz r3, 0x1fbc(r31)
/* 800173DC 0001431C  48 33 F5 19 */ bl CARDCheck
/* 800173E0 00014320  2C 03 00 00 */ cmpwi r3, 0
/* 800173E4 00014324  41 82 00 24 */ beq lbl_80017408
/* 800173E8 00014328  38 00 00 07 */ li r0, 7
/* 800173EC 0001432C  90 1F 1F C4 */ stw r0, 0x1fc4(r31)
/* 800173F0 00014330  48 00 00 18 */ b lbl_80017408
lbl_800173F4:
/* 800173F4 00014334  38 00 00 06 */ li r0, 6
/* 800173F8 00014338  90 1F 1F C4 */ stw r0, 0x1fc4(r31)
/* 800173FC 0001433C  48 00 00 0C */ b lbl_80017408
lbl_80017400:
/* 80017400 00014340  38 00 00 02 */ li r0, 2
/* 80017404 00014344  90 1F 1F C4 */ stw r0, 0x1fc4(r31)
lbl_80017408:
/* 80017408 00014348  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8001740C 0001434C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80017410 00014350  7C 08 03 A6 */ mtlr r0
/* 80017414 00014354  38 21 00 10 */ addi r1, r1, 0x10
/* 80017418 00014358  4E 80 00 20 */ blr
/* 800F24C8 000EF408  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F24CC 000EF40C  7C 08 02 A6 */ mflr r0
/* 800F24D0 000EF410  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F24D4 000EF414  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F24D8 000EF418  7C 7F 1B 78 */ mr r31, r3
/* 800F24DC 000EF41C  4B FC 4E 09 */ bl checkItemActorPointer__9daAlink_cFv
/* 800F24E0 000EF420  2C 03 00 00 */ cmpwi r3, 0
/* 800F24E4 000EF424  40 82 00 0C */ bne lbl_800F24F0
/* 800F24E8 000EF428  38 60 00 01 */ li r3, 1
/* 800F24EC 000EF42C  48 00 00 B4 */ b lbl_800F25A0
lbl_800F24F0:
/* 800F24F0 000EF430  38 60 00 00 */ li r3, 0
/* 800F24F4 000EF434  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800F24F8 000EF438  28 00 00 40 */ cmplwi r0, 0x40
/* 800F24FC 000EF43C  41 82 00 0C */ beq lbl_800F2508
/* 800F2500 000EF440  28 00 01 02 */ cmplwi r0, 0x102
/* 800F2504 000EF444  40 82 00 14 */ bne lbl_800F2518
lbl_800F2508:
/* 800F2508 000EF448  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800F250C 000EF44C  28 00 00 54 */ cmplwi r0, 0x54
/* 800F2510 000EF450  40 82 00 08 */ bne lbl_800F2518
/* 800F2514 000EF454  38 60 00 01 */ li r3, 1
lbl_800F2518:
/* 800F2518 000EF458  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800F251C 000EF45C  41 82 00 10 */ beq lbl_800F252C
/* 800F2520 000EF460  7F E3 FB 78 */ mr r3, r31
/* 800F2524 000EF464  38 80 00 12 */ li r4, 0x12
/* 800F2528 000EF468  4B FC 0D 29 */ bl setDoStatus__9daAlink_cFUc
lbl_800F252C:
/* 800F252C 000EF46C  7F E3 FB 78 */ mr r3, r31
/* 800F2530 000EF470  4B FF B4 F5 */ bl setSyncRidePos__9daAlink_cFv
/* 800F2534 000EF474  2C 03 00 00 */ cmpwi r3, 0
/* 800F2538 000EF478  40 82 00 0C */ bne lbl_800F2544
/* 800F253C 000EF47C  38 60 00 01 */ li r3, 1
/* 800F2540 000EF480  48 00 00 60 */ b lbl_800F25A0
lbl_800F2544:
/* 800F2544 000EF484  7F E3 FB 78 */ mr r3, r31
/* 800F2548 000EF488  4B FF B8 25 */ bl checkHorseSpecialProc__9daAlink_cFv
/* 800F254C 000EF48C  2C 03 00 00 */ cmpwi r3, 0
/* 800F2550 000EF490  41 82 00 0C */ beq lbl_800F255C
/* 800F2554 000EF494  38 60 00 01 */ li r3, 1
/* 800F2558 000EF498  48 00 00 48 */ b lbl_800F25A0
lbl_800F255C:
/* 800F255C 000EF49C  7F E3 FB 78 */ mr r3, r31
/* 800F2560 000EF4A0  4B FF C8 39 */ bl setBaseRideAnime__9daAlink_cFv
/* 800F2564 000EF4A4  7F E3 FB 78 */ mr r3, r31
/* 800F2568 000EF4A8  4B FF CE E9 */ bl checkNextActionHorse__9daAlink_cFv
/* 800F256C 000EF4AC  2C 03 00 00 */ cmpwi r3, 0
/* 800F2570 000EF4B0  40 82 00 24 */ bne lbl_800F2594
/* 800F2574 000EF4B4  7F E3 FB 78 */ mr r3, r31
/* 800F2578 000EF4B8  A8 9F 04 DE */ lha r4, 0x4de(r31)
/* 800F257C 000EF4BC  4B FF C9 B5 */ bl setRideSubjectAngle__9daAlink_cFs
/* 800F2580 000EF4C0  2C 03 00 00 */ cmpwi r3, 0
/* 800F2584 000EF4C4  41 82 00 18 */ beq lbl_800F259C
/* 800F2588 000EF4C8  7F E3 FB 78 */ mr r3, r31
/* 800F258C 000EF4CC  4B FE E8 D9 */ bl setBoomerangSight__9daAlink_cFv
/* 800F2590 000EF4D0  48 00 00 0C */ b lbl_800F259C
lbl_800F2594:
/* 800F2594 000EF4D4  38 00 00 00 */ li r0, 0
/* 800F2598 000EF4D8  98 1F 20 68 */ stb r0, 0x2068(r31)
lbl_800F259C:
/* 800F259C 000EF4DC  38 60 00 01 */ li r3, 1
lbl_800F25A0:
/* 800F25A0 000EF4E0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F25A4 000EF4E4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F25A8 000EF4E8  7C 08 03 A6 */ mtlr r0
/* 800F25AC 000EF4EC  38 21 00 10 */ addi r1, r1, 0x10
/* 800F25B0 000EF4F0  4E 80 00 20 */ blr

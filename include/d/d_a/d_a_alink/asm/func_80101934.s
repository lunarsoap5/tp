/* 80101934 000FE874  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80101938 000FE878  7C 08 02 A6 */ mflr r0
/* 8010193C 000FE87C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80101940 000FE880  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80101944 000FE884  7C 7F 1B 78 */ mr r31, r3
/* 80101948 000FE888  A0 63 2F DC */ lhz r3, 0x2fdc(r3)
/* 8010194C 000FE88C  48 05 D2 6D */ bl checkHookshotItem__9daPy_py_cFi
/* 80101950 000FE890  2C 03 00 00 */ cmpwi r3, 0
/* 80101954 000FE894  40 82 00 3C */ bne lbl_80101990
/* 80101958 000FE898  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 8010195C 000FE89C  28 00 01 03 */ cmplwi r0, 0x103
/* 80101960 000FE8A0  40 82 00 20 */ bne lbl_80101980
/* 80101964 000FE8A4  7F E3 FB 78 */ mr r3, r31
/* 80101968 000FE8A8  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8010196C 000FE8AC  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 80101970 000FE8B0  7D 89 03 A6 */ mtctr r12
/* 80101974 000FE8B4  4E 80 04 21 */ bctrl
/* 80101978 000FE8B8  2C 03 00 00 */ cmpwi r3, 0
/* 8010197C 000FE8BC  40 82 00 14 */ bne lbl_80101990
lbl_80101980:
/* 80101980 000FE8C0  7F E3 FB 78 */ mr r3, r31
/* 80101984 000FE8C4  38 80 00 01 */ li r4, 1
/* 80101988 000FE8C8  38 A0 00 01 */ li r5, 1
/* 8010198C 000FE8CC  4B FB F9 51 */ bl deleteEquipItem__9daAlink_cFii
lbl_80101990:
/* 80101990 000FE8D0  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 80101994 000FE8D4  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 80101998 000FE8D8  41 82 00 0C */ beq lbl_801019A4
/* 8010199C 000FE8DC  7F E3 FB 78 */ mr r3, r31
/* 801019A0 000FE8E0  48 00 EE A1 */ bl offKandelaarModel__9daAlink_cFv
lbl_801019A4:
/* 801019A4 000FE8E4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801019A8 000FE8E8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801019AC 000FE8EC  7C 08 03 A6 */ mtlr r0
/* 801019B0 000FE8F0  38 21 00 10 */ addi r1, r1, 0x10
/* 801019B4 000FE8F4  4E 80 00 20 */ blr

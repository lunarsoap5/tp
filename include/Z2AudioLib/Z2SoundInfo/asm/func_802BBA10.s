/* 802BBA10 002B8950  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 802BBA14 002B8954  7C 08 02 A6 */ mflr r0
/* 802BBA18 002B8958  90 01 00 24 */ stw r0, 0x24(r1)
/* 802BBA1C 002B895C  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 802BBA20 002B8960  7C 9F 23 78 */ mr r31, r4
/* 802BBA24 002B8964  80 04 00 00 */ lwz r0, 0(r4)
/* 802BBA28 002B8968  90 01 00 0C */ stw r0, 0xc(r1)
/* 802BBA2C 002B896C  80 6D 85 D8 */ lwz r3, lbl_80450B58-_SDA_BASE_(r13)
/* 802BBA30 002B8970  38 81 00 0C */ addi r4, r1, 0xc
/* 802BBA34 002B8974  4B FE B7 2D */ bl getTypeID__13JAUSoundTableCF10JAISoundID
/* 802BBA38 002B8978  54 60 06 36 */ rlwinm r0, r3, 0, 0x18, 0x1b
/* 802BBA3C 002B897C  2C 00 00 70 */ cmpwi r0, 0x70
/* 802BBA40 002B8980  41 82 00 08 */ beq lbl_802BBA48
/* 802BBA44 002B8984  48 00 00 2C */ b lbl_802BBA70
lbl_802BBA48:
/* 802BBA48 002B8988  80 1F 00 00 */ lwz r0, 0(r31)
/* 802BBA4C 002B898C  90 01 00 08 */ stw r0, 8(r1)
/* 802BBA50 002B8990  80 6D 85 D8 */ lwz r3, lbl_80450B58-_SDA_BASE_(r13)
/* 802BBA54 002B8994  38 81 00 08 */ addi r4, r1, 8
/* 802BBA58 002B8998  4B FE B8 35 */ bl getData__13JAUSoundTableCF10JAISoundID
/* 802BBA5C 002B899C  80 8D 85 D8 */ lwz r4, lbl_80450B58-_SDA_BASE_(r13)
/* 802BBA60 002B89A0  80 84 00 00 */ lwz r4, 0(r4)
/* 802BBA64 002B89A4  80 03 00 04 */ lwz r0, 4(r3)
/* 802BBA68 002B89A8  7C 64 02 14 */ add r3, r4, r0
/* 802BBA6C 002B89AC  48 00 00 08 */ b lbl_802BBA74
lbl_802BBA70:
/* 802BBA70 002B89B0  38 60 00 00 */ li r3, 0
lbl_802BBA74:
/* 802BBA74 002B89B4  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 802BBA78 002B89B8  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802BBA7C 002B89BC  7C 08 03 A6 */ mtlr r0
/* 802BBA80 002B89C0  38 21 00 20 */ addi r1, r1, 0x20
/* 802BBA84 002B89C4  4E 80 00 20 */ blr
/* 8000E0F0 0000B030  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8000E0F4 0000B034  7C 08 02 A6 */ mflr r0
/* 8000E0F8 0000B038  90 01 00 14 */ stw r0, 0x14(r1)
/* 8000E0FC 0000B03C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8000E100 0000B040  7C 7F 1B 78 */ mr r31, r3
/* 8000E104 0000B044  3C 80 80 3A */ lis r4, lbl_803A1F80@ha
/* 8000E108 0000B048  38 84 1F 80 */ addi r4, r4, lbl_803A1F80@l
/* 8000E10C 0000B04C  48 31 76 D1 */ bl __as__16J3DIndTexMtxInfoFRC16J3DIndTexMtxInfo
/* 8000E110 0000B050  7F E3 FB 78 */ mr r3, r31
/* 8000E114 0000B054  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8000E118 0000B058  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8000E11C 0000B05C  7C 08 03 A6 */ mtlr r0
/* 8000E120 0000B060  38 21 00 10 */ addi r1, r1, 0x10
/* 8000E124 0000B064  4E 80 00 20 */ blr
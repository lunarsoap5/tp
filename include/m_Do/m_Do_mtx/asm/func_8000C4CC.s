/* 8000C4CC 0000940C  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8000C4D0 00009410  7C 08 02 A6 */ mflr r0
/* 8000C4D4 00009414  90 01 00 44 */ stw r0, 0x44(r1)
/* 8000C4D8 00009418  93 E1 00 3C */ stw r31, 0x3c(r1)
/* 8000C4DC 0000941C  7C 7F 1B 78 */ mr r31, r3
/* 8000C4E0 00009420  38 61 00 08 */ addi r3, r1, 8
/* 8000C4E4 00009424  4B FF FF 91 */ bl mDoMtx_ZrotS__FPA4_fs
/* 8000C4E8 00009428  7F E3 FB 78 */ mr r3, r31
/* 8000C4EC 0000942C  38 81 00 08 */ addi r4, r1, 8
/* 8000C4F0 00009430  7F E5 FB 78 */ mr r5, r31
/* 8000C4F4 00009434  48 33 9F F1 */ bl PSMTXConcat
/* 8000C4F8 00009438  83 E1 00 3C */ lwz r31, 0x3c(r1)
/* 8000C4FC 0000943C  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8000C500 00009440  7C 08 03 A6 */ mtlr r0
/* 8000C504 00009444  38 21 00 40 */ addi r1, r1, 0x40
/* 8000C508 00009448  4E 80 00 20 */ blr

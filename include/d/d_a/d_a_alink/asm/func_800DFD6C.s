/* 800DFD6C 000DCCAC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800DFD70 000DCCB0  7C 08 02 A6 */ mflr r0
/* 800DFD74 000DCCB4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800DFD78 000DCCB8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800DFD7C 000DCCBC  7C 7F 1B 78 */ mr r31, r3
/* 800DFD80 000DCCC0  38 80 00 5E */ li r4, 0x5e
/* 800DFD84 000DCCC4  4B FE 30 21 */ bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DFD88 000DCCC8  2C 03 00 00 */ cmpwi r3, 0
/* 800DFD8C 000DCCCC  40 82 00 0C */ bne lbl_800DFD98
/* 800DFD90 000DCCD0  38 60 00 00 */ li r3, 0
/* 800DFD94 000DCCD4  48 00 00 34 */ b lbl_800DFDC8
lbl_800DFD98:
/* 800DFD98 000DCCD8  7F E3 FB 78 */ mr r3, r31
/* 800DFD9C 000DCCDC  38 80 00 11 */ li r4, 0x11
/* 800DFDA0 000DCCE0  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DFDA4 000DCCE4  3C A0 80 39 */ lis r5, lbl_8038E658@ha
/* 800DFDA8 000DCCE8  38 A5 E6 58 */ addi r5, r5, lbl_8038E658@l
/* 800DFDAC 000DCCEC  C0 45 00 30 */ lfs f2, 0x30(r5)
/* 800DFDB0 000DCCF0  4B FC D2 31 */ bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800DFDB4 000DCCF4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DFDB8 000DCCF8  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800DFDBC 000DCCFC  7F E3 FB 78 */ mr r3, r31
/* 800DFDC0 000DCD00  4B FF ED CD */ bl setBowOrSlingStatus__9daAlink_cFv
/* 800DFDC4 000DCD04  38 60 00 01 */ li r3, 1
lbl_800DFDC8:
/* 800DFDC8 000DCD08  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800DFDCC 000DCD0C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800DFDD0 000DCD10  7C 08 03 A6 */ mtlr r0
/* 800DFDD4 000DCD14  38 21 00 10 */ addi r1, r1, 0x10
/* 800DFDD8 000DCD18  4E 80 00 20 */ blr
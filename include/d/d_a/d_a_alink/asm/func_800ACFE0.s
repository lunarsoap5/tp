/* 800ACFE0 000A9F20  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800ACFE4 000A9F24  7C 08 02 A6 */ mflr r0
/* 800ACFE8 000A9F28  90 01 00 14 */ stw r0, 0x14(r1)
/* 800ACFEC 000A9F2C  FC 60 10 90 */ fmr f3, f2
/* 800ACFF0 000A9F30  C0 42 92 C0 */ lfs f2, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800ACFF4 000A9F34  38 A0 FF FF */ li r5, -1
/* 800ACFF8 000A9F38  48 00 00 15 */ bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800ACFFC 000A9F3C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800AD000 000A9F40  7C 08 03 A6 */ mtlr r0
/* 800AD004 000A9F44  38 21 00 10 */ addi r1, r1, 0x10
/* 800AD008 000A9F48  4E 80 00 20 */ blr

/* 8000CDD4 00009D14  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8000CDD8 00009D18  7C 08 02 A6 */ mflr r0
/* 8000CDDC 00009D1C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8000CDE0 00009D20  C0 23 00 00 */ lfs f1, 0(r3)
/* 8000CDE4 00009D24  C0 43 00 04 */ lfs f2, 4(r3)
/* 8000CDE8 00009D28  C0 63 00 08 */ lfs f3, 8(r3)
/* 8000CDEC 00009D2C  4B FF FF B1 */ bl transM__14mDoMtx_stack_cFfff
/* 8000CDF0 00009D30  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8000CDF4 00009D34  7C 08 03 A6 */ mtlr r0
/* 8000CDF8 00009D38  38 21 00 10 */ addi r1, r1, 0x10
/* 8000CDFC 00009D3C  4E 80 00 20 */ blr
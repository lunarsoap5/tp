/* 80057390 000542D0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80057394 000542D4  7C 08 02 A6 */ mflr r0
/* 80057398 000542D8  90 01 00 14 */ stw r0, 0x14(r1)
/* 8005739C 000542DC  7C 64 1B 78 */ mr r4, r3
/* 800573A0 000542E0  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 800573A4 000542E4  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 800573A8 000542E8  80 63 0F 1C */ lwz r3, 0xf1c(r3)
/* 800573AC 000542EC  4B FF F7 9D */ bl dKyw_setDrawPacketListSky__FP9J3DPacketi
/* 800573B0 000542F0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800573B4 000542F4  7C 08 03 A6 */ mtlr r0
/* 800573B8 000542F8  38 21 00 10 */ addi r1, r1, 0x10
/* 800573BC 000542FC  4E 80 00 20 */ blr

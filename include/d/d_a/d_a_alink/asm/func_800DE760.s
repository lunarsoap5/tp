/* 800DE760 000DB6A0  3C 60 80 39 */ lis r3, lbl_8038E658@ha
/* 800DE764 000DB6A4  38 63 E6 58 */ addi r3, r3, lbl_8038E658@l
/* 800DE768 000DB6A8  C0 23 00 60 */ lfs f1, 0x60(r3)
/* 800DE76C 000DB6AC  4E 80 00 20 */ blr
/* 8001F53C 0001C47C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001F540 0001C480  7C 08 02 A6 */ mflr r0
/* 8001F544 0001C484  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001F548 0001C488  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8001F54C 0001C48C  93 C1 00 08 */ stw r30, 8(r1)
/* 8001F550 0001C490  7C 7E 1B 78 */ mr r30, r3
/* 8001F554 0001C494  80 63 00 D8 */ lwz r3, 0xd8(r3)
/* 8001F558 0001C498  7F C4 F3 78 */ mr r4, r30
/* 8001F55C 0001C49C  48 00 2F 4D */ bl fpcMtd_Delete__FP20process_method_classPv
/* 8001F560 0001C4A0  7C 7F 1B 78 */ mr r31, r3
/* 8001F564 0001C4A4  38 7E 00 C4 */ addi r3, r30, 0xc4
/* 8001F568 0001C4A8  48 00 0F 6D */ bl fopDwTg_DrawQTo__FP16create_tag_class
/* 8001F56C 0001C4AC  7F E3 FB 78 */ mr r3, r31
/* 8001F570 0001C4B0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8001F574 0001C4B4  83 C1 00 08 */ lwz r30, 8(r1)
/* 8001F578 0001C4B8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001F57C 0001C4BC  7C 08 03 A6 */ mtlr r0
/* 8001F580 0001C4C0  38 21 00 10 */ addi r1, r1, 0x10
/* 8001F584 0001C4C4  4E 80 00 20 */ blr
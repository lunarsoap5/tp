/* 800E5150 000E2090  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E5154 000E2094  7C 08 02 A6 */ mflr r0
/* 800E5158 000E2098  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E515C 000E209C  4B FF EB 99 */ bl checkGrabCarryActor__9daAlink_cFv
/* 800E5160 000E20A0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E5164 000E20A4  7C 08 03 A6 */ mtlr r0
/* 800E5168 000E20A8  38 21 00 10 */ addi r1, r1, 0x10
/* 800E516C 000E20AC  4E 80 00 20 */ blr

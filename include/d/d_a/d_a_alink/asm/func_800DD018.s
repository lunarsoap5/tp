/* 800DD018 000D9F58  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800DD01C 000D9F5C  7C 08 02 A6 */ mflr r0
/* 800DD020 000D9F60  90 01 00 14 */ stw r0, 0x14(r1)
/* 800DD024 000D9F64  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800DD028 000D9F68  7C 7F 1B 78 */ mr r31, r3
/* 800DD02C 000D9F6C  A0 03 2F E8 */ lhz r0, 0x2fe8(r3)
/* 800DD030 000D9F70  28 00 00 1D */ cmplwi r0, 0x1d
/* 800DD034 000D9F74  40 82 00 10 */ bne lbl_800DD044
/* 800DD038 000D9F78  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800DD03C 000D9F7C  28 00 00 42 */ cmplwi r0, 0x42
/* 800DD040 000D9F80  40 82 00 A4 */ bne lbl_800DD0E4
lbl_800DD044:
/* 800DD044 000D9F84  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800DD048 000D9F88  28 00 00 16 */ cmplwi r0, 0x16
/* 800DD04C 000D9F8C  41 82 00 98 */ beq lbl_800DD0E4
/* 800DD050 000D9F90  7F E3 FB 78 */ mr r3, r31
/* 800DD054 000D9F94  4B FF FF 11 */ bl checkGuardAccept__9daAlink_cFv
/* 800DD058 000D9F98  2C 03 00 00 */ cmpwi r3, 0
/* 800DD05C 000D9F9C  41 82 00 98 */ beq lbl_800DD0F4
/* 800DD060 000D9FA0  7F E3 FB 78 */ mr r3, r31
/* 800DD064 000D9FA4  48 00 6C 09 */ bl checkGrabAnime__9daAlink_cCFv
/* 800DD068 000D9FA8  2C 03 00 00 */ cmpwi r3, 0
/* 800DD06C 000D9FAC  40 82 00 88 */ bne lbl_800DD0F4
/* 800DD070 000D9FB0  7F E3 FB 78 */ mr r3, r31
/* 800DD074 000D9FB4  4B FD DF 0D */ bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800DD078 000D9FB8  2C 03 00 00 */ cmpwi r3, 0
/* 800DD07C 000D9FBC  40 82 00 78 */ bne lbl_800DD0F4
/* 800DD080 000D9FC0  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800DD084 000D9FC4  28 00 02 62 */ cmplwi r0, 0x262
/* 800DD088 000D9FC8  41 82 00 6C */ beq lbl_800DD0F4
/* 800DD08C 000D9FCC  7F E3 FB 78 */ mr r3, r31
/* 800DD090 000D9FD0  4B FF 3E 3D */ bl checkCutDashAnime__9daAlink_cCFv
/* 800DD094 000D9FD4  2C 03 00 00 */ cmpwi r3, 0
/* 800DD098 000D9FD8  40 82 00 5C */ bne lbl_800DD0F4
/* 800DD09C 000D9FDC  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800DD0A0 000D9FE0  28 00 00 83 */ cmplwi r0, 0x83
/* 800DD0A4 000D9FE4  41 82 00 50 */ beq lbl_800DD0F4
/* 800DD0A8 000D9FE8  7F E3 FB 78 */ mr r3, r31
/* 800DD0AC 000D9FEC  4B FD C2 95 */ bl checkEquipAnime__9daAlink_cCFv
/* 800DD0B0 000D9FF0  2C 03 00 00 */ cmpwi r3, 0
/* 800DD0B4 000D9FF4  41 82 00 14 */ beq lbl_800DD0C8
/* 800DD0B8 000D9FF8  7F E3 FB 78 */ mr r3, r31
/* 800DD0BC 000D9FFC  4B FF FD 35 */ bl checkUpperGuardAnime__9daAlink_cCFv
/* 800DD0C0 000DA000  2C 03 00 00 */ cmpwi r3, 0
/* 800DD0C4 000DA004  41 82 00 30 */ beq lbl_800DD0F4
lbl_800DD0C8:
/* 800DD0C8 000DA008  88 1F 2F AA */ lbz r0, 0x2faa(r31)
/* 800DD0CC 000DA00C  28 00 00 00 */ cmplwi r0, 0
/* 800DD0D0 000DA010  40 82 00 24 */ bne lbl_800DD0F4
/* 800DD0D4 000DA014  7F E3 FB 78 */ mr r3, r31
/* 800DD0D8 000DA018  4B FF F5 A1 */ bl checkGuardActionChange__9daAlink_cFv
/* 800DD0DC 000DA01C  2C 03 00 00 */ cmpwi r3, 0
/* 800DD0E0 000DA020  41 82 00 14 */ beq lbl_800DD0F4
lbl_800DD0E4:
/* 800DD0E4 000DA024  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800DD0E8 000DA028  64 00 08 00 */ oris r0, r0, 0x800
/* 800DD0EC 000DA02C  90 1F 05 78 */ stw r0, 0x578(r31)
/* 800DD0F0 000DA030  48 00 00 10 */ b lbl_800DD100
lbl_800DD0F4:
/* 800DD0F4 000DA034  80 1F 05 78 */ lwz r0, 0x578(r31)
/* 800DD0F8 000DA038  54 00 01 46 */ rlwinm r0, r0, 0, 5, 3
/* 800DD0FC 000DA03C  90 1F 05 78 */ stw r0, 0x578(r31)
lbl_800DD100:
/* 800DD100 000DA040  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800DD104 000DA044  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800DD108 000DA048  7C 08 03 A6 */ mtlr r0
/* 800DD10C 000DA04C  38 21 00 10 */ addi r1, r1, 0x10
/* 800DD110 000DA050  4E 80 00 20 */ blr

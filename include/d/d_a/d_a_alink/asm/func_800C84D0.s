/* 800C84D0 000C5410  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C84D4 000C5414  7C 08 02 A6 */ mflr r0
/* 800C84D8 000C5418  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C84DC 000C541C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800C84E0 000C5420  93 C1 00 08 */ stw r30, 8(r1)
/* 800C84E4 000C5424  7C 7E 1B 78 */ mr r30, r3
/* 800C84E8 000C5428  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800C84EC 000C542C  7F E3 FB 78 */ mr r3, r31
/* 800C84F0 000C5430  48 09 5F DD */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C84F4 000C5434  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C84F8 000C5438  41 82 00 14 */ beq lbl_800C850C
/* 800C84FC 000C543C  7F C3 F3 78 */ mr r3, r30
/* 800C8500 000C5440  38 80 00 00 */ li r4, 0
/* 800C8504 000C5444  4B FF 1B CD */ bl checkNextAction__9daAlink_cFi
/* 800C8508 000C5448  48 00 00 28 */ b lbl_800C8530
lbl_800C850C:
/* 800C850C 000C544C  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800C8510 000C5450  3C 60 80 39 */ lis r3, lbl_8038E068@ha
/* 800C8514 000C5454  38 63 E0 68 */ addi r3, r3, lbl_8038E068@l
/* 800C8518 000C5458  C0 03 00 24 */ lfs f0, 0x24(r3)
/* 800C851C 000C545C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C8520 000C5460  40 81 00 10 */ ble lbl_800C8530
/* 800C8524 000C5464  7F C3 F3 78 */ mr r3, r30
/* 800C8528 000C5468  38 80 00 01 */ li r4, 1
/* 800C852C 000C546C  4B FF 1B A5 */ bl checkNextAction__9daAlink_cFi
lbl_800C8530:
/* 800C8530 000C5470  38 60 00 01 */ li r3, 1
/* 800C8534 000C5474  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C8538 000C5478  83 C1 00 08 */ lwz r30, 8(r1)
/* 800C853C 000C547C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C8540 000C5480  7C 08 03 A6 */ mtlr r0
/* 800C8544 000C5484  38 21 00 10 */ addi r1, r1, 0x10
/* 800C8548 000C5488  4E 80 00 20 */ blr

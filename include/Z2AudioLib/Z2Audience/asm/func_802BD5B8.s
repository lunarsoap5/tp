/* 802BD5B8 002BA4F8  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 802BD5BC 002BA4FC  7C 08 02 A6 */ mflr r0
/* 802BD5C0 002BA500  90 01 00 34 */ stw r0, 0x34(r1)
/* 802BD5C4 002BA504  39 61 00 30 */ addi r11, r1, 0x30
/* 802BD5C8 002BA508  48 0A 4C 05 */ bl _savegpr_25
/* 802BD5CC 002BA50C  7C 7C 1B 78 */ mr r28, r3
/* 802BD5D0 002BA510  7C 9F 23 78 */ mr r31, r4
/* 802BD5D4 002BA514  88 04 00 10 */ lbz r0, 0x10(r4)
/* 802BD5D8 002BA518  54 00 EF FF */ rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 802BD5DC 002BA51C  40 82 00 40 */ bne lbl_802BD61C
/* 802BD5E0 002BA520  3B 20 00 00 */ li r25, 0
/* 802BD5E4 002BA524  3B 40 00 00 */ li r26, 0
/* 802BD5E8 002BA528  48 00 00 20 */ b lbl_802BD608
lbl_802BD5EC:
/* 802BD5EC 002BA52C  38 7A 01 34 */ addi r3, r26, 0x134
/* 802BD5F0 002BA530  7C 7C 1A 14 */ add r3, r28, r3
/* 802BD5F4 002BA534  7F E4 FB 78 */ mr r4, r31
/* 802BD5F8 002BA538  7F 25 CB 78 */ mr r5, r25
/* 802BD5FC 002BA53C  4B FF F5 F1 */ bl convertAbsToRel__13Z2AudioCameraFP9Z2Audiblei
/* 802BD600 002BA540  3B 39 00 01 */ addi r25, r25, 1
/* 802BD604 002BA544  3B 5A 00 74 */ addi r26, r26, 0x74
lbl_802BD608:
/* 802BD608 002BA548  80 1C 01 D4 */ lwz r0, 0x1d4(r28)
/* 802BD60C 002BA54C  7C 19 00 00 */ cmpw r25, r0
/* 802BD610 002BA550  41 80 FF DC */ blt lbl_802BD5EC
/* 802BD614 002BA554  38 60 00 00 */ li r3, 0
/* 802BD618 002BA558  48 00 00 D4 */ b lbl_802BD6EC
lbl_802BD61C:
/* 802BD61C 002BA55C  3B C0 FF FF */ li r30, -1
/* 802BD620 002BA560  3B A0 00 00 */ li r29, 0
/* 802BD624 002BA564  3B 60 00 00 */ li r27, 0
/* 802BD628 002BA568  3B 40 00 00 */ li r26, 0
/* 802BD62C 002BA56C  48 00 00 78 */ b lbl_802BD6A4
lbl_802BD630:
/* 802BD630 002BA570  7F E3 FB 78 */ mr r3, r31
/* 802BD634 002BA574  7F A4 EB 78 */ mr r4, r29
/* 802BD638 002BA578  4B FF EB CD */ bl getChannel__9Z2AudibleFi
/* 802BD63C 002BA57C  7C 79 1B 79 */ or. r25, r3, r3
/* 802BD640 002BA580  41 82 00 58 */ beq lbl_802BD698
/* 802BD644 002BA584  38 7A 01 34 */ addi r3, r26, 0x134
/* 802BD648 002BA588  7C 7C 1A 14 */ add r3, r28, r3
/* 802BD64C 002BA58C  7F E4 FB 78 */ mr r4, r31
/* 802BD650 002BA590  7F A5 EB 78 */ mr r5, r29
/* 802BD654 002BA594  4B FF F5 99 */ bl convertAbsToRel__13Z2AudioCameraFP9Z2Audiblei
/* 802BD658 002BA598  7F E3 FB 78 */ mr r3, r31
/* 802BD65C 002BA59C  4B FF EB BD */ bl getDistVolBit__9Z2AudibleFv
/* 802BD660 002BA5A0  7C 64 1B 78 */ mr r4, r3
/* 802BD664 002BA5A4  7F 83 E3 78 */ mr r3, r28
/* 802BD668 002BA5A8  C0 39 00 24 */ lfs f1, 0x24(r25)
/* 802BD66C 002BA5AC  88 1F 00 10 */ lbz r0, 0x10(r31)
/* 802BD670 002BA5B0  54 05 07 FE */ clrlwi r5, r0, 0x1f
/* 802BD674 002BA5B4  30 05 FF FF */ addic r0, r5, -1
/* 802BD678 002BA5B8  7C 00 29 10 */ subfe r0, r0, r5
/* 802BD67C 002BA5BC  54 05 06 3E */ clrlwi r5, r0, 0x18
/* 802BD680 002BA5C0  48 00 05 C5 */ bl calcDeltaPriority___10Z2AudienceCFfib
/* 802BD684 002BA5C4  38 81 00 08 */ addi r4, r1, 8
/* 802BD688 002BA5C8  7C 64 D9 2E */ stwx r3, r4, r27
/* 802BD68C 002BA5CC  7C 03 F0 40 */ cmplw r3, r30
/* 802BD690 002BA5D0  40 80 00 08 */ bge lbl_802BD698
/* 802BD694 002BA5D4  7C 7E 1B 78 */ mr r30, r3
lbl_802BD698:
/* 802BD698 002BA5D8  3B BD 00 01 */ addi r29, r29, 1
/* 802BD69C 002BA5DC  3B 7B 00 04 */ addi r27, r27, 4
/* 802BD6A0 002BA5E0  3B 5A 00 74 */ addi r26, r26, 0x74
lbl_802BD6A4:
/* 802BD6A4 002BA5E4  80 1C 01 D4 */ lwz r0, 0x1d4(r28)
/* 802BD6A8 002BA5E8  7C 1D 00 00 */ cmpw r29, r0
/* 802BD6AC 002BA5EC  41 80 FF 84 */ blt lbl_802BD630
/* 802BD6B0 002BA5F0  88 1C 01 CD */ lbz r0, 0x1cd(r28)
/* 802BD6B4 002BA5F4  28 00 00 00 */ cmplwi r0, 0
/* 802BD6B8 002BA5F8  41 82 00 30 */ beq lbl_802BD6E8
/* 802BD6BC 002BA5FC  3B 3C 01 A8 */ addi r25, r28, 0x1a8
/* 802BD6C0 002BA600  7F 23 CB 78 */ mr r3, r25
/* 802BD6C4 002BA604  7F E4 FB 78 */ mr r4, r31
/* 802BD6C8 002BA608  4B FF F8 95 */ bl calcMicDist__9Z2SpotMicFP9Z2Audible
/* 802BD6CC 002BA60C  D0 3F 00 64 */ stfs f1, 0x64(r31)
/* 802BD6D0 002BA610  7F 23 CB 78 */ mr r3, r25
/* 802BD6D4 002BA614  C0 3F 00 64 */ lfs f1, 0x64(r31)
/* 802BD6D8 002BA618  4B FF F9 0D */ bl calcMicPriority__9Z2SpotMicFf
/* 802BD6DC 002BA61C  7C 03 F0 40 */ cmplw r3, r30
/* 802BD6E0 002BA620  40 80 00 08 */ bge lbl_802BD6E8
/* 802BD6E4 002BA624  7C 7E 1B 78 */ mr r30, r3
lbl_802BD6E8:
/* 802BD6E8 002BA628  7F C3 F3 78 */ mr r3, r30
lbl_802BD6EC:
/* 802BD6EC 002BA62C  39 61 00 30 */ addi r11, r1, 0x30
/* 802BD6F0 002BA630  48 0A 4B 29 */ bl _restgpr_25
/* 802BD6F4 002BA634  80 01 00 34 */ lwz r0, 0x34(r1)
/* 802BD6F8 002BA638  7C 08 03 A6 */ mtlr r0
/* 802BD6FC 002BA63C  38 21 00 30 */ addi r1, r1, 0x30
/* 802BD700 002BA640  4E 80 00 20 */ blr

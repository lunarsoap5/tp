/* 800DC678 000D95B8  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800DC67C 000D95BC  7C 08 02 A6 */ mflr r0
/* 800DC680 000D95C0  90 01 00 34 */ stw r0, 0x34(r1)
/* 800DC684 000D95C4  39 61 00 30 */ addi r11, r1, 0x30
/* 800DC688 000D95C8  48 28 5B 45 */ bl _savegpr_25
/* 800DC68C 000D95CC  7C 7E 1B 78 */ mr r30, r3
/* 800DC690 000D95D0  3B E0 00 00 */ li r31, 0
/* 800DC694 000D95D4  7F FC FB 78 */ mr r28, r31
/* 800DC698 000D95D8  7F FB FB 78 */ mr r27, r31
/* 800DC69C 000D95DC  7F FA FB 78 */ mr r26, r31
/* 800DC6A0 000D95E0  83 A3 27 E0 */ lwz r29, 0x27e0(r3)
/* 800DC6A4 000D95E4  3B 20 00 01 */ li r25, 1
/* 800DC6A8 000D95E8  7F A3 EB 78 */ mr r3, r29
/* 800DC6AC 000D95EC  4B F9 71 39 */ bl LockonTruth__12dAttention_cFv
/* 800DC6B0 000D95F0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DC6B4 000D95F4  40 82 00 14 */ bne lbl_800DC6C8
/* 800DC6B8 000D95F8  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 800DC6BC 000D95FC  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 800DC6C0 000D9600  40 82 00 08 */ bne lbl_800DC6C8
/* 800DC6C4 000D9604  3B 20 00 00 */ li r25, 0
lbl_800DC6C8:
/* 800DC6C8 000D9608  57 20 06 3F */ clrlwi. r0, r25, 0x18
/* 800DC6CC 000D960C  41 82 00 14 */ beq lbl_800DC6E0
/* 800DC6D0 000D9610  A0 1E 1F BC */ lhz r0, 0x1fbc(r30)
/* 800DC6D4 000D9614  28 00 01 9C */ cmplwi r0, 0x19c
/* 800DC6D8 000D9618  41 82 00 08 */ beq lbl_800DC6E0
/* 800DC6DC 000D961C  3B 40 00 01 */ li r26, 1
lbl_800DC6E0:
/* 800DC6E0 000D9620  57 40 06 3F */ clrlwi. r0, r26, 0x18
/* 800DC6E4 000D9624  41 82 00 18 */ beq lbl_800DC6FC
/* 800DC6E8 000D9628  7F C3 F3 78 */ mr r3, r30
/* 800DC6EC 000D962C  48 00 75 81 */ bl checkGrabAnime__9daAlink_cCFv
/* 800DC6F0 000D9630  2C 03 00 00 */ cmpwi r3, 0
/* 800DC6F4 000D9634  40 82 00 08 */ bne lbl_800DC6FC
/* 800DC6F8 000D9638  3B 60 00 01 */ li r27, 1
lbl_800DC6FC:
/* 800DC6FC 000D963C  57 60 06 3F */ clrlwi. r0, r27, 0x18
/* 800DC700 000D9640  41 82 00 14 */ beq lbl_800DC714
/* 800DC704 000D9644  A0 1E 1F BC */ lhz r0, 0x1fbc(r30)
/* 800DC708 000D9648  28 00 02 02 */ cmplwi r0, 0x202
/* 800DC70C 000D964C  41 82 00 08 */ beq lbl_800DC714
/* 800DC710 000D9650  3B 80 00 01 */ li r28, 1
lbl_800DC714:
/* 800DC714 000D9654  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 800DC718 000D9658  41 82 00 68 */ beq lbl_800DC780
/* 800DC71C 000D965C  3B 20 00 00 */ li r25, 0
/* 800DC720 000D9660  7F 3D CB 78 */ mr r29, r25
/* 800DC724 000D9664  80 7E 27 EC */ lwz r3, 0x27ec(r30)
/* 800DC728 000D9668  28 03 00 00 */ cmplwi r3, 0
/* 800DC72C 000D966C  41 82 00 14 */ beq lbl_800DC740
/* 800DC730 000D9670  4B FF FE 75 */ bl checkSpecialNpc__9daAlink_cFP10fopAc_ac_c
/* 800DC734 000D9674  2C 03 00 00 */ cmpwi r3, 0
/* 800DC738 000D9678  40 82 00 08 */ bne lbl_800DC740
/* 800DC73C 000D967C  3B A0 00 01 */ li r29, 1
lbl_800DC740:
/* 800DC740 000D9680  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 800DC744 000D9684  41 82 00 30 */ beq lbl_800DC774
/* 800DC748 000D9688  38 80 00 01 */ li r4, 1
/* 800DC74C 000D968C  80 7E 27 EC */ lwz r3, 0x27ec(r30)
/* 800DC750 000D9690  88 03 04 96 */ lbz r0, 0x496(r3)
/* 800DC754 000D9694  28 00 00 03 */ cmplwi r0, 3
/* 800DC758 000D9698  41 82 00 10 */ beq lbl_800DC768
/* 800DC75C 000D969C  28 00 00 04 */ cmplwi r0, 4
/* 800DC760 000D96A0  41 82 00 08 */ beq lbl_800DC768
/* 800DC764 000D96A4  38 80 00 00 */ li r4, 0
lbl_800DC768:
/* 800DC768 000D96A8  54 80 06 3F */ clrlwi. r0, r4, 0x18
/* 800DC76C 000D96AC  41 82 00 08 */ beq lbl_800DC774
/* 800DC770 000D96B0  3B 20 00 01 */ li r25, 1
lbl_800DC774:
/* 800DC774 000D96B4  57 20 06 3F */ clrlwi. r0, r25, 0x18
/* 800DC778 000D96B8  40 82 00 08 */ bne lbl_800DC780
/* 800DC77C 000D96BC  3B E0 00 01 */ li r31, 1
lbl_800DC780:
/* 800DC780 000D96C0  57 E3 06 3E */ clrlwi r3, r31, 0x18
/* 800DC784 000D96C4  39 61 00 30 */ addi r11, r1, 0x30
/* 800DC788 000D96C8  48 28 5A 91 */ bl _restgpr_25
/* 800DC78C 000D96CC  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800DC790 000D96D0  7C 08 03 A6 */ mtlr r0
/* 800DC794 000D96D4  38 21 00 30 */ addi r1, r1, 0x30
/* 800DC798 000D96D8  4E 80 00 20 */ blr

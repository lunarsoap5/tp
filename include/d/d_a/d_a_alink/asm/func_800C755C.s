/* 800C755C 000C449C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C7560 000C44A0  7C 08 02 A6 */ mflr r0
/* 800C7564 000C44A4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C7568 000C44A8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800C756C 000C44AC  93 C1 00 08 */ stw r30, 8(r1)
/* 800C7570 000C44B0  7C 7E 1B 78 */ mr r30, r3
/* 800C7574 000C44B4  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800C7578 000C44B8  A8 03 30 0C */ lha r0, 0x300c(r3)
/* 800C757C 000C44BC  2C 00 00 00 */ cmpwi r0, 0
/* 800C7580 000C44C0  41 82 00 74 */ beq lbl_800C75F4
/* 800C7584 000C44C4  38 00 00 04 */ li r0, 4
/* 800C7588 000C44C8  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800C758C 000C44CC  7F E3 FB 78 */ mr r3, r31
/* 800C7590 000C44D0  48 09 6F 3D */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C7594 000C44D4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C7598 000C44D8  41 82 00 14 */ beq lbl_800C75AC
/* 800C759C 000C44DC  7F C3 F3 78 */ mr r3, r30
/* 800C75A0 000C44E0  38 80 00 00 */ li r4, 0
/* 800C75A4 000C44E4  4B FF 2B 2D */ bl checkNextAction__9daAlink_cFi
/* 800C75A8 000C44E8  48 00 00 D0 */ b lbl_800C7678
lbl_800C75AC:
/* 800C75AC 000C44EC  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800C75B0 000C44F0  3C 60 80 39 */ lis r3, lbl_8038E11C@ha
/* 800C75B4 000C44F4  38 63 E1 1C */ addi r3, r3, lbl_8038E11C@l
/* 800C75B8 000C44F8  C0 03 00 38 */ lfs f0, 0x38(r3)
/* 800C75BC 000C44FC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C75C0 000C4500  40 81 00 B4 */ ble lbl_800C7674
/* 800C75C4 000C4504  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 800C75C8 000C4508  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800C75CC 000C450C  7F C3 F3 78 */ mr r3, r30
/* 800C75D0 000C4510  38 80 00 01 */ li r4, 1
/* 800C75D4 000C4514  4B FF 2A FD */ bl checkNextAction__9daAlink_cFi
/* 800C75D8 000C4518  2C 03 00 00 */ cmpwi r3, 0
/* 800C75DC 000C451C  41 82 00 0C */ beq lbl_800C75E8
/* 800C75E0 000C4520  38 60 00 01 */ li r3, 1
/* 800C75E4 000C4524  48 00 00 94 */ b lbl_800C7678
lbl_800C75E8:
/* 800C75E8 000C4528  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C75EC 000C452C  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800C75F0 000C4530  48 00 00 84 */ b lbl_800C7674
lbl_800C75F4:
/* 800C75F4 000C4534  7F E3 FB 78 */ mr r3, r31
/* 800C75F8 000C4538  48 09 6E D5 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C75FC 000C453C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C7600 000C4540  41 82 00 74 */ beq lbl_800C7674
/* 800C7604 000C4544  7F C3 F3 78 */ mr r3, r30
/* 800C7608 000C4548  38 80 01 28 */ li r4, 0x128
/* 800C760C 000C454C  3C A0 80 39 */ lis r5, lbl_8038E11C@ha
/* 800C7610 000C4550  38 A5 E1 1C */ addi r5, r5, lbl_8038E11C@l
/* 800C7614 000C4554  38 A5 00 28 */ addi r5, r5, 0x28
/* 800C7618 000C4558  4B FE 5A DD */ bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C761C 000C455C  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800C7620 000C4560  38 83 9A 20 */ addi r4, r3, lbl_80439A20@l
/* 800C7624 000C4564  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800C7628 000C4568  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C762C 000C456C  7C 64 02 14 */ add r3, r4, r0
/* 800C7630 000C4570  C0 03 00 04 */ lfs f0, 4(r3)
/* 800C7634 000C4574  C0 3E 34 F4 */ lfs f1, 0x34f4(r30)
/* 800C7638 000C4578  C0 42 93 14 */ lfs f2, lbl_80452D14-_SDA2_BASE_(r2)
/* 800C763C 000C457C  EC 02 00 32 */ fmuls f0, f2, f0
/* 800C7640 000C4580  EC 81 00 2A */ fadds f4, f1, f0
/* 800C7644 000C4584  C0 7E 34 F0 */ lfs f3, 0x34f0(r30)
/* 800C7648 000C4588  7C 04 04 2E */ lfsx f0, r4, r0
/* 800C764C 000C458C  C0 3E 34 EC */ lfs f1, 0x34ec(r30)
/* 800C7650 000C4590  EC 02 00 32 */ fmuls f0, f2, f0
/* 800C7654 000C4594  EC 01 00 2A */ fadds f0, f1, f0
/* 800C7658 000C4598  D0 1E 04 D0 */ stfs f0, 0x4d0(r30)
/* 800C765C 000C459C  D0 7E 04 D4 */ stfs f3, 0x4d4(r30)
/* 800C7660 000C45A0  D0 9E 04 D8 */ stfs f4, 0x4d8(r30)
/* 800C7664 000C45A4  38 00 00 50 */ li r0, 0x50
/* 800C7668 000C45A8  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800C766C 000C45AC  38 00 00 01 */ li r0, 1
/* 800C7670 000C45B0  B0 1E 30 0C */ sth r0, 0x300c(r30)
lbl_800C7674:
/* 800C7674 000C45B4  38 60 00 01 */ li r3, 1
lbl_800C7678:
/* 800C7678 000C45B8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C767C 000C45BC  83 C1 00 08 */ lwz r30, 8(r1)
/* 800C7680 000C45C0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C7684 000C45C4  7C 08 03 A6 */ mtlr r0
/* 800C7688 000C45C8  38 21 00 10 */ addi r1, r1, 0x10
/* 800C768C 000C45CC  4E 80 00 20 */ blr
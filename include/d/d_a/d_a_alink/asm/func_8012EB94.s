/* 8012EB94 0012BAD4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8012EB98 0012BAD8  7C 08 02 A6 */ mflr r0
/* 8012EB9C 0012BADC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8012EBA0 0012BAE0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8012EBA4 0012BAE4  93 C1 00 08 */ stw r30, 8(r1)
/* 8012EBA8 0012BAE8  7C 7F 1B 78 */ mr r31, r3
/* 8012EBAC 0012BAEC  88 03 05 6A */ lbz r0, 0x56a(r3)
/* 8012EBB0 0012BAF0  28 00 00 27 */ cmplwi r0, 0x27
/* 8012EBB4 0012BAF4  41 82 00 6C */ beq lbl_8012EC20
/* 8012EBB8 0012BAF8  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 8012EBBC 0012BAFC  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 8012EBC0 0012BB00  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012EBC4 0012BB04  40 81 00 3C */ ble lbl_8012EC00
/* 8012EBC8 0012BB08  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 8012EBCC 0012BB0C  A8 1F 2F E2 */ lha r0, 0x2fe2(r31)
/* 8012EBD0 0012BB10  7C 03 00 50 */ subf r0, r3, r0
/* 8012EBD4 0012BB14  7C 03 07 34 */ extsh r3, r0
/* 8012EBD8 0012BB18  4B F8 48 BD */ bl getDirectionFromAngle__9daAlink_cFs
/* 8012EBDC 0012BB1C  2C 03 00 01 */ cmpwi r3, 1
/* 8012EBE0 0012BB20  40 82 00 20 */ bne lbl_8012EC00
/* 8012EBE4 0012BB24  38 7F 33 98 */ addi r3, r31, 0x3398
/* 8012EBE8 0012BB28  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012EBEC 0012BB2C  C0 42 93 F8 */ lfs f2, lbl_80452DF8-_SDA2_BASE_(r2)
/* 8012EBF0 0012BB30  C0 1F 33 A8 */ lfs f0, 0x33a8(r31)
/* 8012EBF4 0012BB34  EC 42 00 32 */ fmuls f2, f2, f0
/* 8012EBF8 0012BB38  48 14 1B 49 */ bl cLib_chaseF__FPfff
/* 8012EBFC 0012BB3C  48 00 00 24 */ b lbl_8012EC20
lbl_8012EC00:
/* 8012EC00 0012BB40  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 8012EC04 0012BB44  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 8012EC08 0012BB48  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012EC0C 0012BB4C  41 81 00 14 */ bgt lbl_8012EC20
/* 8012EC10 0012BB50  38 7F 33 98 */ addi r3, r31, 0x3398
/* 8012EC14 0012BB54  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012EC18 0012BB58  C0 42 93 A0 */ lfs f2, lbl_80452DA0-_SDA2_BASE_(r2)
/* 8012EC1C 0012BB5C  48 14 1B 25 */ bl cLib_chaseF__FPfff
lbl_8012EC20:
/* 8012EC20 0012BB60  38 00 00 07 */ li r0, 7
/* 8012EC24 0012BB64  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 8012EC28 0012BB68  80 1F 19 9C */ lwz r0, 0x199c(r31)
/* 8012EC2C 0012BB6C  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8012EC30 0012BB70  41 82 00 14 */ beq lbl_8012EC44
/* 8012EC34 0012BB74  7F E3 FB 78 */ mr r3, r31
/* 8012EC38 0012BB78  38 80 00 00 */ li r4, 0
/* 8012EC3C 0012BB7C  4B FF AC 41 */ bl checkWolfLandAction__9daAlink_cFi
/* 8012EC40 0012BB80  48 00 01 78 */ b lbl_8012EDB8
lbl_8012EC44:
/* 8012EC44 0012BB84  7F E3 FB 78 */ mr r3, r31
/* 8012EC48 0012BB88  4B F8 7D E9 */ bl checkFrontWallTypeAction__9daAlink_cFv
/* 8012EC4C 0012BB8C  2C 03 00 00 */ cmpwi r3, 0
/* 8012EC50 0012BB90  41 82 00 0C */ beq lbl_8012EC5C
/* 8012EC54 0012BB94  38 60 00 01 */ li r3, 1
/* 8012EC58 0012BB98  48 00 01 60 */ b lbl_8012EDB8
lbl_8012EC5C:
/* 8012EC5C 0012BB9C  7F E3 FB 78 */ mr r3, r31
/* 8012EC60 0012BBA0  48 00 29 C9 */ bl checkWolfRopeJumpHang__9daAlink_cFv
/* 8012EC64 0012BBA4  2C 03 00 00 */ cmpwi r3, 0
/* 8012EC68 0012BBA8  41 82 00 0C */ beq lbl_8012EC74
/* 8012EC6C 0012BBAC  38 60 00 01 */ li r3, 1
/* 8012EC70 0012BBB0  48 00 01 48 */ b lbl_8012EDB8
lbl_8012EC74:
/* 8012EC74 0012BBB4  3B DF 1F D0 */ addi r30, r31, 0x1fd0
/* 8012EC78 0012BBB8  7F E3 FB 78 */ mr r3, r31
/* 8012EC7C 0012BBBC  38 80 00 60 */ li r4, 0x60
/* 8012EC80 0012BBC0  4B FF 9B 8D */ bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012EC84 0012BBC4  2C 03 00 00 */ cmpwi r3, 0
/* 8012EC88 0012BBC8  40 82 00 4C */ bne lbl_8012ECD4
/* 8012EC8C 0012BBCC  C0 42 93 88 */ lfs f2, lbl_80452D88-_SDA2_BASE_(r2)
/* 8012EC90 0012BBD0  C0 3F 33 C4 */ lfs f1, 0x33c4(r31)
/* 8012EC94 0012BBD4  C0 1F 04 D4 */ lfs f0, 0x4d4(r31)
/* 8012EC98 0012BBD8  EC 01 00 28 */ fsubs f0, f1, f0
/* 8012EC9C 0012BBDC  EC 22 00 32 */ fmuls f1, f2, f0
/* 8012ECA0 0012BBE0  3C 60 80 39 */ lis r3, lbl_8038F374@ha
/* 8012ECA4 0012BBE4  38 A3 F3 74 */ addi r5, r3, lbl_8038F374@l
/* 8012ECA8 0012BBE8  C0 05 00 38 */ lfs f0, 0x38(r5)
/* 8012ECAC 0012BBEC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012ECB0 0012BBF0  40 81 00 24 */ ble lbl_8012ECD4
/* 8012ECB4 0012BBF4  38 00 00 0C */ li r0, 0xc
/* 8012ECB8 0012BBF8  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 8012ECBC 0012BBFC  7F E3 FB 78 */ mr r3, r31
/* 8012ECC0 0012BC00  38 80 00 60 */ li r4, 0x60
/* 8012ECC4 0012BC04  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012ECC8 0012BC08  C0 45 00 3C */ lfs f2, 0x3c(r5)
/* 8012ECCC 0012BC0C  4B FF AA 0D */ bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8012ECD0 0012BC10  48 00 00 E4 */ b lbl_8012EDB4
lbl_8012ECD4:
/* 8012ECD4 0012BC14  7F E3 FB 78 */ mr r3, r31
/* 8012ECD8 0012BC18  38 80 00 04 */ li r4, 4
/* 8012ECDC 0012BC1C  4B FF 9B 31 */ bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012ECE0 0012BC20  2C 03 00 00 */ cmpwi r3, 0
/* 8012ECE4 0012BC24  41 82 00 84 */ beq lbl_8012ED68
/* 8012ECE8 0012BC28  C0 3F 04 FC */ lfs f1, 0x4fc(r31)
/* 8012ECEC 0012BC2C  C0 1F 05 30 */ lfs f0, 0x530(r31)
/* 8012ECF0 0012BC30  FC 00 00 50 */ fneg f0, f0
/* 8012ECF4 0012BC34  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012ECF8 0012BC38  40 80 00 28 */ bge lbl_8012ED20
/* 8012ECFC 0012BC3C  38 00 00 0C */ li r0, 0xc
/* 8012ED00 0012BC40  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 8012ED04 0012BC44  7F E3 FB 78 */ mr r3, r31
/* 8012ED08 0012BC48  38 80 00 05 */ li r4, 5
/* 8012ED0C 0012BC4C  3C A0 80 39 */ lis r5, lbl_8038F0A8@ha
/* 8012ED10 0012BC50  38 A5 F0 A8 */ addi r5, r5, lbl_8038F0A8@l
/* 8012ED14 0012BC54  38 A5 00 28 */ addi r5, r5, 0x28
/* 8012ED18 0012BC58  4B FF AB 31 */ bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012ED1C 0012BC5C  48 00 00 98 */ b lbl_8012EDB4
lbl_8012ED20:
/* 8012ED20 0012BC60  7F C3 F3 78 */ mr r3, r30
/* 8012ED24 0012BC64  48 02 F7 A9 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012ED28 0012BC68  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8012ED2C 0012BC6C  41 82 00 88 */ beq lbl_8012EDB4
/* 8012ED30 0012BC70  38 00 00 0C */ li r0, 0xc
/* 8012ED34 0012BC74  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 8012ED38 0012BC78  7F E3 FB 78 */ mr r3, r31
/* 8012ED3C 0012BC7C  38 80 00 05 */ li r4, 5
/* 8012ED40 0012BC80  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012ED44 0012BC84  3C A0 80 39 */ lis r5, lbl_8038F0A8@ha
/* 8012ED48 0012BC88  38 C5 F0 A8 */ addi r6, r5, lbl_8038F0A8@l
/* 8012ED4C 0012BC8C  C0 46 00 30 */ lfs f2, 0x30(r6)
/* 8012ED50 0012BC90  A8 A6 00 28 */ lha r5, 0x28(r6)
/* 8012ED54 0012BC94  C0 66 00 34 */ lfs f3, 0x34(r6)
/* 8012ED58 0012BC98  4B FF A9 AD */ bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8012ED5C 0012BC9C  38 00 00 00 */ li r0, 0
/* 8012ED60 0012BCA0  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8012ED64 0012BCA4  48 00 00 50 */ b lbl_8012EDB4
lbl_8012ED68:
/* 8012ED68 0012BCA8  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 8012ED6C 0012BCAC  2C 00 00 00 */ cmpwi r0, 0
/* 8012ED70 0012BCB0  40 82 00 44 */ bne lbl_8012EDB4
/* 8012ED74 0012BCB4  7F E3 FB 78 */ mr r3, r31
/* 8012ED78 0012BCB8  38 80 00 05 */ li r4, 5
/* 8012ED7C 0012BCBC  4B FF 9A 91 */ bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012ED80 0012BCC0  2C 03 00 00 */ cmpwi r3, 0
/* 8012ED84 0012BCC4  41 82 00 30 */ beq lbl_8012EDB4
/* 8012ED88 0012BCC8  C0 3F 04 FC */ lfs f1, 0x4fc(r31)
/* 8012ED8C 0012BCCC  C0 1F 05 30 */ lfs f0, 0x530(r31)
/* 8012ED90 0012BCD0  FC 00 00 50 */ fneg f0, f0
/* 8012ED94 0012BCD4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012ED98 0012BCD8  40 80 00 1C */ bge lbl_8012EDB4
/* 8012ED9C 0012BCDC  38 00 00 01 */ li r0, 1
/* 8012EDA0 0012BCE0  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8012EDA4 0012BCE4  3C 60 80 39 */ lis r3, lbl_8038F0A8@ha
/* 8012EDA8 0012BCE8  38 63 F0 A8 */ addi r3, r3, lbl_8038F0A8@l
/* 8012EDAC 0012BCEC  C0 03 00 2C */ lfs f0, 0x2c(r3)
/* 8012EDB0 0012BCF0  D0 1E 00 0C */ stfs f0, 0xc(r30)
lbl_8012EDB4:
/* 8012EDB4 0012BCF4  38 60 00 01 */ li r3, 1
lbl_8012EDB8:
/* 8012EDB8 0012BCF8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8012EDBC 0012BCFC  83 C1 00 08 */ lwz r30, 8(r1)
/* 8012EDC0 0012BD00  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8012EDC4 0012BD04  7C 08 03 A6 */ mtlr r0
/* 8012EDC8 0012BD08  38 21 00 10 */ addi r1, r1, 0x10
/* 8012EDCC 0012BD0C  4E 80 00 20 */ blr

/* 800C4894 000C17D4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C4898 000C17D8  7C 08 02 A6 */ mflr r0
/* 800C489C 000C17DC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C48A0 000C17E0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800C48A4 000C17E4  93 C1 00 08 */ stw r30, 8(r1)
/* 800C48A8 000C17E8  7C 7E 1B 78 */ mr r30, r3
/* 800C48AC 000C17EC  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800C48B0 000C17F0  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800C48B4 000C17F4  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C48B8 000C17F8  C0 42 93 24 */ lfs f2, lbl_80452D24-_SDA2_BASE_(r2)
/* 800C48BC 000C17FC  48 1A BE 85 */ bl cLib_chaseF__FPfff
/* 800C48C0 000C1800  80 1E 31 98 */ lwz r0, 0x3198(r30)
/* 800C48C4 000C1804  2C 00 00 00 */ cmpwi r0, 0
/* 800C48C8 000C1808  41 82 00 0C */ beq lbl_800C48D4
/* 800C48CC 000C180C  38 00 00 04 */ li r0, 4
/* 800C48D0 000C1810  98 1E 2F 99 */ stb r0, 0x2f99(r30)
lbl_800C48D4:
/* 800C48D4 000C1814  7F E3 FB 78 */ mr r3, r31
/* 800C48D8 000C1818  48 09 9B F5 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C48DC 000C181C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C48E0 000C1820  41 82 00 1C */ beq lbl_800C48FC
/* 800C48E4 000C1824  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800C48E8 000C1828  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800C48EC 000C182C  7F C3 F3 78 */ mr r3, r30
/* 800C48F0 000C1830  38 80 00 00 */ li r4, 0
/* 800C48F4 000C1834  4B FF 57 DD */ bl checkNextAction__9daAlink_cFi
/* 800C48F8 000C1838  48 00 00 38 */ b lbl_800C4930
lbl_800C48FC:
/* 800C48FC 000C183C  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800C4900 000C1840  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 800C4904 000C1844  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C4908 000C1848  40 81 00 28 */ ble lbl_800C4930
/* 800C490C 000C184C  AB FE 04 DE */ lha r31, 0x4de(r30)
/* 800C4910 000C1850  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800C4914 000C1854  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800C4918 000C1858  7F C3 F3 78 */ mr r3, r30
/* 800C491C 000C185C  38 80 00 01 */ li r4, 1
/* 800C4920 000C1860  4B FF 57 B1 */ bl checkNextAction__9daAlink_cFi
/* 800C4924 000C1864  2C 03 00 00 */ cmpwi r3, 0
/* 800C4928 000C1868  40 82 00 08 */ bne lbl_800C4930
/* 800C492C 000C186C  B3 FE 04 DE */ sth r31, 0x4de(r30)
lbl_800C4930:
/* 800C4930 000C1870  38 60 00 01 */ li r3, 1
/* 800C4934 000C1874  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C4938 000C1878  83 C1 00 08 */ lwz r30, 8(r1)
/* 800C493C 000C187C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C4940 000C1880  7C 08 03 A6 */ mtlr r0
/* 800C4944 000C1884  38 21 00 10 */ addi r1, r1, 0x10
/* 800C4948 000C1888  4E 80 00 20 */ blr

/* 8012CBE4 00129B24  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8012CBE8 00129B28  7C 08 02 A6 */ mflr r0
/* 8012CBEC 00129B2C  90 01 00 24 */ stw r0, 0x24(r1)
/* 8012CBF0 00129B30  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 8012CBF4 00129B34  93 C1 00 18 */ stw r30, 0x18(r1)
/* 8012CBF8 00129B38  7C 7E 1B 78 */ mr r30, r3
/* 8012CBFC 00129B3C  7C 9F 23 78 */ mr r31, r4
/* 8012CC00 00129B40  38 80 00 EE */ li r4, 0xee
/* 8012CC04 00129B44  4B F9 53 69 */ bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012CC08 00129B48  38 00 00 00 */ li r0, 0
/* 8012CC0C 00129B4C  B0 1E 30 12 */ sth r0, 0x3012(r30)
/* 8012CC10 00129B50  2C 1F 00 02 */ cmpwi r31, 2
/* 8012CC14 00129B54  40 82 00 28 */ bne lbl_8012CC3C
/* 8012CC18 00129B58  7F C3 F3 78 */ mr r3, r30
/* 8012CC1C 00129B5C  38 80 00 80 */ li r4, 0x80
/* 8012CC20 00129B60  4B FF CA 59 */ bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8012CC24 00129B64  38 00 00 00 */ li r0, 0
/* 8012CC28 00129B68  90 1E 31 98 */ stw r0, 0x3198(r30)
/* 8012CC2C 00129B6C  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 8012CC30 00129B70  38 00 00 01 */ li r0, 1
/* 8012CC34 00129B74  B0 1E 30 12 */ sth r0, 0x3012(r30)
/* 8012CC38 00129B78  48 00 00 94 */ b lbl_8012CCCC
lbl_8012CC3C:
/* 8012CC3C 00129B7C  2C 1F 00 01 */ cmpwi r31, 1
/* 8012CC40 00129B80  40 82 00 74 */ bne lbl_8012CCB4
/* 8012CC44 00129B84  48 13 AC 29 */ bl cM_rnd__Fv
/* 8012CC48 00129B88  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 8012CC4C 00129B8C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012CC50 00129B90  40 80 00 2C */ bge lbl_8012CC7C
/* 8012CC54 00129B94  7F C3 F3 78 */ mr r3, r30
/* 8012CC58 00129B98  38 80 00 30 */ li r4, 0x30
/* 8012CC5C 00129B9C  4B FF CA 1D */ bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8012CC60 00129BA0  7F C3 F3 78 */ mr r3, r30
/* 8012CC64 00129BA4  38 80 00 8D */ li r4, 0x8d
/* 8012CC68 00129BA8  4B F8 2C 39 */ bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8012CC6C 00129BAC  38 00 00 00 */ li r0, 0
/* 8012CC70 00129BB0  90 1E 31 98 */ stw r0, 0x3198(r30)
/* 8012CC74 00129BB4  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 8012CC78 00129BB8  48 00 00 54 */ b lbl_8012CCCC
lbl_8012CC7C:
/* 8012CC7C 00129BBC  7F C3 F3 78 */ mr r3, r30
/* 8012CC80 00129BC0  38 80 00 0B */ li r4, 0xb
/* 8012CC84 00129BC4  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8012CC88 00129BC8  3C A0 80 39 */ lis r5, lbl_8038F138@ha
/* 8012CC8C 00129BCC  38 C5 F1 38 */ addi r6, r5, lbl_8038F138@l
/* 8012CC90 00129BD0  C0 46 00 08 */ lfs f2, 8(r6)
/* 8012CC94 00129BD4  A8 A6 00 00 */ lha r5, 0(r6)
/* 8012CC98 00129BD8  C0 66 00 0C */ lfs f3, 0xc(r6)
/* 8012CC9C 00129BDC  4B FF CA 69 */ bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8012CCA0 00129BE0  38 00 00 00 */ li r0, 0
/* 8012CCA4 00129BE4  90 1E 31 98 */ stw r0, 0x3198(r30)
/* 8012CCA8 00129BE8  38 00 00 01 */ li r0, 1
/* 8012CCAC 00129BEC  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 8012CCB0 00129BF0  48 00 00 1C */ b lbl_8012CCCC
lbl_8012CCB4:
/* 8012CCB4 00129BF4  7F C3 F3 78 */ mr r3, r30
/* 8012CCB8 00129BF8  38 80 00 7F */ li r4, 0x7f
/* 8012CCBC 00129BFC  4B FF C9 BD */ bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8012CCC0 00129C00  38 00 00 00 */ li r0, 0
/* 8012CCC4 00129C04  90 1E 31 98 */ stw r0, 0x3198(r30)
/* 8012CCC8 00129C08  B0 1E 30 0C */ sth r0, 0x300c(r30)
lbl_8012CCCC:
/* 8012CCCC 00129C0C  38 00 00 00 */ li r0, 0
/* 8012CCD0 00129C10  B0 1E 30 10 */ sth r0, 0x3010(r30)
/* 8012CCD4 00129C14  C0 22 93 E0 */ lfs f1, lbl_80452DE0-_SDA2_BASE_(r2)
/* 8012CCD8 00129C18  48 13 AC 7D */ bl cM_rndF__Ff
/* 8012CCDC 00129C1C  C0 02 93 E0 */ lfs f0, lbl_80452DE0-_SDA2_BASE_(r2)
/* 8012CCE0 00129C20  EC 00 08 2A */ fadds f0, f0, f1
/* 8012CCE4 00129C24  FC 00 00 1E */ fctiwz f0, f0
/* 8012CCE8 00129C28  D8 01 00 08 */ stfd f0, 8(r1)
/* 8012CCEC 00129C2C  80 01 00 0C */ lwz r0, 0xc(r1)
/* 8012CCF0 00129C30  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 8012CCF4 00129C34  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012CCF8 00129C38  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 8012CCFC 00129C3C  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 8012CD00 00129C40  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 8012CD04 00129C44  38 00 00 04 */ li r0, 4
/* 8012CD08 00129C48  98 1E 2F 98 */ stb r0, 0x2f98(r30)
/* 8012CD0C 00129C4C  38 60 00 01 */ li r3, 1
/* 8012CD10 00129C50  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 8012CD14 00129C54  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 8012CD18 00129C58  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8012CD1C 00129C5C  7C 08 03 A6 */ mtlr r0
/* 8012CD20 00129C60  38 21 00 20 */ addi r1, r1, 0x20
/* 8012CD24 00129C64  4E 80 00 20 */ blr
/* 800DD894 000DA7D4  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800DD898 000DA7D8  7C 08 02 A6 */ mflr r0
/* 800DD89C 000DA7DC  90 01 00 24 */ stw r0, 0x24(r1)
/* 800DD8A0 000DA7E0  DB E1 00 10 */ stfd f31, 0x10(r1)
/* 800DD8A4 000DA7E4  F3 E1 00 18 */ psq_st f31, 24(r1), 0, 0
/* 800DD8A8 000DA7E8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800DD8AC 000DA7EC  7C 7F 1B 78 */ mr r31, r3
/* 800DD8B0 000DA7F0  A0 03 2F DC */ lhz r0, 0x2fdc(r3)
/* 800DD8B4 000DA7F4  28 00 00 42 */ cmplwi r0, 0x42
/* 800DD8B8 000DA7F8  41 82 00 0C */ beq lbl_800DD8C4
/* 800DD8BC 000DA7FC  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800DD8C0 000DA800  4B FF F7 49 */ bl setUpperGuardAnime__9daAlink_cFf
lbl_800DD8C4:
/* 800DD8C4 000DA804  7F E3 FB 78 */ mr r3, r31
/* 800DD8C8 000DA808  38 80 00 00 */ li r4, 0
/* 800DD8CC 000DA80C  4B FD 5E 69 */ bl setShapeAngleToAtnActor__9daAlink_cFi
/* 800DD8D0 000DA810  A8 7F 30 0A */ lha r3, 0x300a(r31)
/* 800DD8D4 000DA814  2C 03 00 00 */ cmpwi r3, 0
/* 800DD8D8 000DA818  41 82 00 2C */ beq lbl_800DD904
/* 800DD8DC 000DA81C  38 03 FF FF */ addi r0, r3, -1
/* 800DD8E0 000DA820  B0 1F 30 0A */ sth r0, 0x300a(r31)
/* 800DD8E4 000DA824  A8 7F 05 9E */ lha r3, 0x59e(r31)
/* 800DD8E8 000DA828  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 800DD8EC 000DA82C  7C 03 02 14 */ add r0, r3, r0
/* 800DD8F0 000DA830  B0 1F 05 9E */ sth r0, 0x59e(r31)
/* 800DD8F4 000DA834  A8 7F 05 9C */ lha r3, 0x59c(r31)
/* 800DD8F8 000DA838  A8 1F 30 0E */ lha r0, 0x300e(r31)
/* 800DD8FC 000DA83C  7C 03 02 14 */ add r0, r3, r0
/* 800DD900 000DA840  B0 1F 05 9C */ sth r0, 0x59c(r31)
lbl_800DD904:
/* 800DD904 000DA844  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 800DD908 000DA848  C0 02 93 D8 */ lfs f0, lbl_80452DD8-_SDA2_BASE_(r2)
/* 800DD90C 000DA84C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800DD910 000DA850  40 81 00 0C */ ble lbl_800DD91C
/* 800DD914 000DA854  38 00 00 60 */ li r0, 0x60
/* 800DD918 000DA858  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
lbl_800DD91C:
/* 800DD91C 000DA85C  7F E3 FB 78 */ mr r3, r31
/* 800DD920 000DA860  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800DD924 000DA864  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800DD928 000DA868  7D 89 03 A6 */ mtctr r12
/* 800DD92C 000DA86C  4E 80 04 21 */ bctrl
/* 800DD930 000DA870  2C 03 00 00 */ cmpwi r3, 0
/* 800DD934 000DA874  41 82 00 18 */ beq lbl_800DD94C
/* 800DD938 000DA878  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 800DD93C 000DA87C  2C 00 00 00 */ cmpwi r0, 0
/* 800DD940 000DA880  40 82 00 0C */ bne lbl_800DD94C
/* 800DD944 000DA884  C3 E2 93 D8 */ lfs f31, lbl_80452DD8-_SDA2_BASE_(r2)
/* 800DD948 000DA888  48 00 00 08 */ b lbl_800DD950
lbl_800DD94C:
/* 800DD94C 000DA88C  C3 E2 93 DC */ lfs f31, lbl_80452DDC-_SDA2_BASE_(r2)
lbl_800DD950:
/* 800DD950 000DA890  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 800DD954 000DA894  2C 00 00 00 */ cmpwi r0, 0
/* 800DD958 000DA898  41 82 00 2C */ beq lbl_800DD984
/* 800DD95C 000DA89C  7F E3 FB 78 */ mr r3, r31
/* 800DD960 000DA8A0  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800DD964 000DA8A4  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800DD968 000DA8A8  7D 89 03 A6 */ mtctr r12
/* 800DD96C 000DA8AC  4E 80 04 21 */ bctrl
/* 800DD970 000DA8B0  A8 1F 30 12 */ lha r0, 0x3012(r31)
/* 800DD974 000DA8B4  7C 00 18 00 */ cmpw r0, r3
/* 800DD978 000DA8B8  41 82 00 0C */ beq lbl_800DD984
/* 800DD97C 000DA8BC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DD980 000DA8C0  D0 1F 33 98 */ stfs f0, 0x3398(r31)
lbl_800DD984:
/* 800DD984 000DA8C4  38 7F 33 98 */ addi r3, r31, 0x3398
/* 800DD988 000DA8C8  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DD98C 000DA8CC  FC 40 F8 90 */ fmr f2, f31
/* 800DD990 000DA8D0  48 19 2D B1 */ bl cLib_chaseF__FPfff
/* 800DD994 000DA8D4  2C 03 00 00 */ cmpwi r3, 0
/* 800DD998 000DA8D8  41 82 00 58 */ beq lbl_800DD9F0
/* 800DD99C 000DA8DC  38 7F 1F D0 */ addi r3, r31, 0x1fd0
/* 800DD9A0 000DA8E0  48 08 0B 2D */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DD9A4 000DA8E4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800DD9A8 000DA8E8  41 82 00 48 */ beq lbl_800DD9F0
/* 800DD9AC 000DA8EC  38 00 00 00 */ li r0, 0
/* 800DD9B0 000DA8F0  90 1F 08 44 */ stw r0, 0x844(r31)
/* 800DD9B4 000DA8F4  7F E3 FB 78 */ mr r3, r31
/* 800DD9B8 000DA8F8  4B FF EC C1 */ bl checkGuardActionChange__9daAlink_cFv
/* 800DD9BC 000DA8FC  2C 03 00 00 */ cmpwi r3, 0
/* 800DD9C0 000DA900  40 82 00 10 */ bne lbl_800DD9D0
/* 800DD9C4 000DA904  80 1F 05 8C */ lwz r0, 0x58c(r31)
/* 800DD9C8 000DA908  60 00 00 20 */ ori r0, r0, 0x20
/* 800DD9CC 000DA90C  90 1F 05 8C */ stw r0, 0x58c(r31)
lbl_800DD9D0:
/* 800DD9D0 000DA910  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800DD9D4 000DA914  28 00 00 42 */ cmplwi r0, 0x42
/* 800DD9D8 000DA918  40 82 00 0C */ bne lbl_800DD9E4
/* 800DD9DC 000DA91C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DD9E0 000DA920  D0 1F 1F 50 */ stfs f0, 0x1f50(r31)
lbl_800DD9E4:
/* 800DD9E4 000DA924  7F E3 FB 78 */ mr r3, r31
/* 800DD9E8 000DA928  38 80 00 00 */ li r4, 0
/* 800DD9EC 000DA92C  4B FD C6 E5 */ bl checkNextAction__9daAlink_cFi
lbl_800DD9F0:
/* 800DD9F0 000DA930  38 60 00 01 */ li r3, 1
/* 800DD9F4 000DA934  E3 E1 00 18 */ psq_l f31, 24(r1), 0, 0
/* 800DD9F8 000DA938  CB E1 00 10 */ lfd f31, 0x10(r1)
/* 800DD9FC 000DA93C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800DDA00 000DA940  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800DDA04 000DA944  7C 08 03 A6 */ mtlr r0
/* 800DDA08 000DA948  38 21 00 20 */ addi r1, r1, 0x20
/* 800DDA0C 000DA94C  4E 80 00 20 */ blr

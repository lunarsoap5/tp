/* 800F0620 000ED560  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800F0624 000ED564  7C 08 02 A6 */ mflr r0
/* 800F0628 000ED568  90 01 00 34 */ stw r0, 0x34(r1)
/* 800F062C 000ED56C  39 61 00 30 */ addi r11, r1, 0x30
/* 800F0630 000ED570  48 27 1B AD */ bl _savegpr_29
/* 800F0634 000ED574  7C 7E 1B 78 */ mr r30, r3
/* 800F0638 000ED578  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800F063C 000ED57C  83 A3 28 18 */ lwz r29, 0x2818(r3)
/* 800F0640 000ED580  28 1D 00 00 */ cmplwi r29, 0
/* 800F0644 000ED584  41 82 00 60 */ beq lbl_800F06A4
/* 800F0648 000ED588  38 61 00 14 */ addi r3, r1, 0x14
/* 800F064C 000ED58C  38 9D 04 D0 */ addi r4, r29, 0x4d0
/* 800F0650 000ED590  38 BE 37 D4 */ addi r5, r30, 0x37d4
/* 800F0654 000ED594  48 17 64 E1 */ bl __mi__4cXyzCFRC3Vec
/* 800F0658 000ED598  38 7E 04 D0 */ addi r3, r30, 0x4d0
/* 800F065C 000ED59C  38 81 00 14 */ addi r4, r1, 0x14
/* 800F0660 000ED5A0  7C 65 1B 78 */ mr r5, r3
/* 800F0664 000ED5A4  48 25 6A 2D */ bl PSVECAdd
/* 800F0668 000ED5A8  C0 1D 04 D0 */ lfs f0, 0x4d0(r29)
/* 800F066C 000ED5AC  D0 1E 37 D4 */ stfs f0, 0x37d4(r30)
/* 800F0670 000ED5B0  C0 1D 04 D4 */ lfs f0, 0x4d4(r29)
/* 800F0674 000ED5B4  D0 1E 37 D8 */ stfs f0, 0x37d8(r30)
/* 800F0678 000ED5B8  C0 1D 04 D8 */ lfs f0, 0x4d8(r29)
/* 800F067C 000ED5BC  D0 1E 37 DC */ stfs f0, 0x37dc(r30)
/* 800F0680 000ED5C0  A8 9E 04 E6 */ lha r4, 0x4e6(r30)
/* 800F0684 000ED5C4  A8 7D 04 E6 */ lha r3, 0x4e6(r29)
/* 800F0688 000ED5C8  A8 1E 30 0E */ lha r0, 0x300e(r30)
/* 800F068C 000ED5CC  7C 03 00 50 */ subf r0, r3, r0
/* 800F0690 000ED5D0  7C 00 07 34 */ extsh r0, r0
/* 800F0694 000ED5D4  7C 04 02 14 */ add r0, r4, r0
/* 800F0698 000ED5D8  B0 1E 04 E6 */ sth r0, 0x4e6(r30)
/* 800F069C 000ED5DC  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 800F06A0 000ED5E0  B0 1E 30 0E */ sth r0, 0x300e(r30)
lbl_800F06A4:
/* 800F06A4 000ED5E4  38 7E 04 E8 */ addi r3, r30, 0x4e8
/* 800F06A8 000ED5E8  38 80 00 00 */ li r4, 0
/* 800F06AC 000ED5EC  38 A0 00 04 */ li r5, 4
/* 800F06B0 000ED5F0  38 C0 07 D0 */ li r6, 0x7d0
/* 800F06B4 000ED5F4  38 E0 01 90 */ li r7, 0x190
/* 800F06B8 000ED5F8  48 17 FE 89 */ bl cLib_addCalcAngleS__FPsssss
/* 800F06BC 000ED5FC  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800F06C0 000ED600  C0 02 93 BC */ lfs f0, lbl_80452DBC-_SDA2_BASE_(r2)
/* 800F06C4 000ED604  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F06C8 000ED608  4C 41 13 82 */ cror 2, 1, 2
/* 800F06CC 000ED60C  40 82 00 10 */ bne lbl_800F06DC
/* 800F06D0 000ED610  38 00 00 00 */ li r0, 0
/* 800F06D4 000ED614  98 1E 2F AB */ stb r0, 0x2fab(r30)
/* 800F06D8 000ED618  48 00 01 04 */ b lbl_800F07DC
lbl_800F06DC:
/* 800F06DC 000ED61C  7F C3 F3 78 */ mr r3, r30
/* 800F06E0 000ED620  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800F06E4 000ED624  81 8C 01 88 */ lwz r12, 0x188(r12)
/* 800F06E8 000ED628  7D 89 03 A6 */ mtctr r12
/* 800F06EC 000ED62C  4E 80 04 21 */ bctrl
/* 800F06F0 000ED630  28 03 00 00 */ cmplwi r3, 0
/* 800F06F4 000ED634  41 82 00 70 */ beq lbl_800F0764
/* 800F06F8 000ED638  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800F06FC 000ED63C  C0 02 93 48 */ lfs f0, lbl_80452D48-_SDA2_BASE_(r2)
/* 800F0700 000ED640  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F0704 000ED644  4C 41 13 82 */ cror 2, 1, 2
/* 800F0708 000ED648  40 82 00 20 */ bne lbl_800F0728
/* 800F070C 000ED64C  88 9E 2F AB */ lbz r4, 0x2fab(r30)
/* 800F0710 000ED650  38 60 00 01 */ li r3, 1
/* 800F0714 000ED654  88 1E 2F C0 */ lbz r0, 0x2fc0(r30)
/* 800F0718 000ED658  7C 60 00 30 */ slw r0, r3, r0
/* 800F071C 000ED65C  7C 80 00 78 */ andc r0, r4, r0
/* 800F0720 000ED660  98 1E 2F AB */ stb r0, 0x2fab(r30)
/* 800F0724 000ED664  48 00 00 B8 */ b lbl_800F07DC
lbl_800F0728:
/* 800F0728 000ED668  C0 02 93 24 */ lfs f0, lbl_80452D24-_SDA2_BASE_(r2)
/* 800F072C 000ED66C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F0730 000ED670  4C 41 13 82 */ cror 2, 1, 2
/* 800F0734 000ED674  40 82 00 A8 */ bne lbl_800F07DC
/* 800F0738 000ED678  88 1E 2F C0 */ lbz r0, 0x2fc0(r30)
/* 800F073C 000ED67C  28 00 00 00 */ cmplwi r0, 0
/* 800F0740 000ED680  40 82 00 14 */ bne lbl_800F0754
/* 800F0744 000ED684  88 1E 2F AB */ lbz r0, 0x2fab(r30)
/* 800F0748 000ED688  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800F074C 000ED68C  98 1E 2F AB */ stb r0, 0x2fab(r30)
/* 800F0750 000ED690  48 00 00 8C */ b lbl_800F07DC
lbl_800F0754:
/* 800F0754 000ED694  88 1E 2F AB */ lbz r0, 0x2fab(r30)
/* 800F0758 000ED698  54 00 06 3C */ rlwinm r0, r0, 0, 0x18, 0x1e
/* 800F075C 000ED69C  98 1E 2F AB */ stb r0, 0x2fab(r30)
/* 800F0760 000ED6A0  48 00 00 7C */ b lbl_800F07DC
lbl_800F0764:
/* 800F0764 000ED6A4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800F0768 000ED6A8  C0 02 93 20 */ lfs f0, lbl_80452D20-_SDA2_BASE_(r2)
/* 800F076C 000ED6AC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F0770 000ED6B0  4C 41 13 82 */ cror 2, 1, 2
/* 800F0774 000ED6B4  41 82 00 68 */ beq lbl_800F07DC
/* 800F0778 000ED6B8  C0 02 93 F0 */ lfs f0, lbl_80452DF0-_SDA2_BASE_(r2)
/* 800F077C 000ED6BC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F0780 000ED6C0  4C 41 13 82 */ cror 2, 1, 2
/* 800F0784 000ED6C4  40 82 00 20 */ bne lbl_800F07A4
/* 800F0788 000ED6C8  88 9E 2F AB */ lbz r4, 0x2fab(r30)
/* 800F078C 000ED6CC  38 60 00 01 */ li r3, 1
/* 800F0790 000ED6D0  88 1E 2F C0 */ lbz r0, 0x2fc0(r30)
/* 800F0794 000ED6D4  7C 60 00 30 */ slw r0, r3, r0
/* 800F0798 000ED6D8  7C 80 00 78 */ andc r0, r4, r0
/* 800F079C 000ED6DC  98 1E 2F AB */ stb r0, 0x2fab(r30)
/* 800F07A0 000ED6E0  48 00 00 3C */ b lbl_800F07DC
lbl_800F07A4:
/* 800F07A4 000ED6E4  C0 02 92 C4 */ lfs f0, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800F07A8 000ED6E8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F07AC 000ED6EC  4C 41 13 82 */ cror 2, 1, 2
/* 800F07B0 000ED6F0  40 82 00 2C */ bne lbl_800F07DC
/* 800F07B4 000ED6F4  88 1E 2F C0 */ lbz r0, 0x2fc0(r30)
/* 800F07B8 000ED6F8  28 00 00 00 */ cmplwi r0, 0
/* 800F07BC 000ED6FC  40 82 00 14 */ bne lbl_800F07D0
/* 800F07C0 000ED700  88 1E 2F AB */ lbz r0, 0x2fab(r30)
/* 800F07C4 000ED704  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800F07C8 000ED708  98 1E 2F AB */ stb r0, 0x2fab(r30)
/* 800F07CC 000ED70C  48 00 00 10 */ b lbl_800F07DC
lbl_800F07D0:
/* 800F07D0 000ED710  88 1E 2F AB */ lbz r0, 0x2fab(r30)
/* 800F07D4 000ED714  54 00 06 3C */ rlwinm r0, r0, 0, 0x18, 0x1e
/* 800F07D8 000ED718  98 1E 2F AB */ stb r0, 0x2fab(r30)
lbl_800F07DC:
/* 800F07DC 000ED71C  7F E3 FB 78 */ mr r3, r31
/* 800F07E0 000ED720  48 06 DC ED */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F07E4 000ED724  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800F07E8 000ED728  41 82 00 1C */ beq lbl_800F0804
/* 800F07EC 000ED72C  7F C3 F3 78 */ mr r3, r30
/* 800F07F0 000ED730  4B FF EB A5 */ bl horseGetOffEnd__9daAlink_cFv
/* 800F07F4 000ED734  7F C3 F3 78 */ mr r3, r30
/* 800F07F8 000ED738  38 80 00 00 */ li r4, 0
/* 800F07FC 000ED73C  4B FC 98 D5 */ bl checkNextAction__9daAlink_cFi
/* 800F0800 000ED740  48 00 01 64 */ b lbl_800F0964
lbl_800F0804:
/* 800F0804 000ED744  C0 1F 00 10 */ lfs f0, 0x10(r31)
/* 800F0808 000ED748  C0 22 94 28 */ lfs f1, lbl_80452E28-_SDA2_BASE_(r2)
/* 800F080C 000ED74C  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800F0810 000ED750  4C 41 13 82 */ cror 2, 1, 2
/* 800F0814 000ED754  40 82 00 94 */ bne lbl_800F08A8
/* 800F0818 000ED758  38 00 00 05 */ li r0, 5
/* 800F081C 000ED75C  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800F0820 000ED760  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800F0824 000ED764  54 00 05 6B */ rlwinm. r0, r0, 0, 0x15, 0x15
/* 800F0828 000ED768  41 82 01 3C */ beq lbl_800F0964
/* 800F082C 000ED76C  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800F0830 000ED770  54 00 05 A8 */ rlwinm r0, r0, 0, 0x16, 0x14
/* 800F0834 000ED774  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800F0838 000ED778  7F C3 F3 78 */ mr r3, r30
/* 800F083C 000ED77C  4B FF C3 95 */ bl rideGetOff__9daAlink_cFv
/* 800F0840 000ED780  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800F0844 000ED784  60 00 00 01 */ ori r0, r0, 1
/* 800F0848 000ED788  90 1E 31 A0 */ stw r0, 0x31a0(r30)
/* 800F084C 000ED78C  C0 3E 04 D4 */ lfs f1, 0x4d4(r30)
/* 800F0850 000ED790  C0 1E 1A 08 */ lfs f0, 0x1a08(r30)
/* 800F0854 000ED794  EC 01 00 28 */ fsubs f0, f1, f0
/* 800F0858 000ED798  FC 00 02 10 */ fabs f0, f0
/* 800F085C 000ED79C  FC 20 00 18 */ frsp f1, f0
/* 800F0860 000ED7A0  C0 0D 81 10 */ lfs f0, lbl_80450690-_SDA_BASE_(r13)
/* 800F0864 000ED7A4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F0868 000ED7A8  40 80 00 FC */ bge lbl_800F0964
/* 800F086C 000ED7AC  38 00 00 04 */ li r0, 4
/* 800F0870 000ED7B0  98 1E 2F 9D */ stb r0, 0x2f9d(r30)
/* 800F0874 000ED7B4  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F0878 000ED7B8  D0 21 00 08 */ stfs f1, 8(r1)
/* 800F087C 000ED7BC  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F0880 000ED7C0  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800F0884 000ED7C4  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800F0888 000ED7C8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800F088C 000ED7CC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800F0890 000ED7D0  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800F0894 000ED7D4  38 80 00 01 */ li r4, 1
/* 800F0898 000ED7D8  38 A0 00 0F */ li r5, 0xf
/* 800F089C 000ED7DC  38 C1 00 08 */ addi r6, r1, 8
/* 800F08A0 000ED7E0  4B F7 F1 85 */ bl StartShock__12dVibration_cFii4cXyz
/* 800F08A4 000ED7E4  48 00 00 C0 */ b lbl_800F0964
lbl_800F08A8:
/* 800F08A8 000ED7E8  38 00 00 07 */ li r0, 7
/* 800F08AC 000ED7EC  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800F08B0 000ED7F0  80 1E 19 9C */ lwz r0, 0x199c(r30)
/* 800F08B4 000ED7F4  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800F08B8 000ED7F8  41 82 00 1C */ beq lbl_800F08D4
/* 800F08BC 000ED7FC  7F C3 F3 78 */ mr r3, r30
/* 800F08C0 000ED800  4B FF EA D5 */ bl horseGetOffEnd__9daAlink_cFv
/* 800F08C4 000ED804  7F C3 F3 78 */ mr r3, r30
/* 800F08C8 000ED808  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F08CC 000ED80C  4B FD 66 4D */ bl procLandInit__9daAlink_cFf
/* 800F08D0 000ED810  48 00 00 98 */ b lbl_800F0968
lbl_800F08D4:
/* 800F08D4 000ED814  C0 5F 00 10 */ lfs f2, 0x10(r31)
/* 800F08D8 000ED818  C0 02 93 38 */ lfs f0, lbl_80452D38-_SDA2_BASE_(r2)
/* 800F08DC 000ED81C  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800F08E0 000ED820  40 80 00 48 */ bge lbl_800F0928
/* 800F08E4 000ED824  EC 62 00 24 */ fdivs f3, f2, f0
/* 800F08E8 000ED828  3C 60 80 42 */ lis r3, lbl_80425514@ha
/* 800F08EC 000ED82C  C4 23 55 14 */ lfsu f1, lbl_80425514@l(r3)
/* 800F08F0 000ED830  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F08F4 000ED834  EC 40 18 28 */ fsubs f2, f0, f3
/* 800F08F8 000ED838  EC 21 00 B2 */ fmuls f1, f1, f2
/* 800F08FC 000ED83C  C0 1E 37 C8 */ lfs f0, 0x37c8(r30)
/* 800F0900 000ED840  EC 00 00 F2 */ fmuls f0, f0, f3
/* 800F0904 000ED844  EC 01 00 2A */ fadds f0, f1, f0
/* 800F0908 000ED848  D0 1E 35 88 */ stfs f0, 0x3588(r30)
/* 800F090C 000ED84C  C0 03 00 08 */ lfs f0, 8(r3)
/* 800F0910 000ED850  EC 20 00 B2 */ fmuls f1, f0, f2
/* 800F0914 000ED854  C0 1E 37 D0 */ lfs f0, 0x37d0(r30)
/* 800F0918 000ED858  EC 00 00 F2 */ fmuls f0, f0, f3
/* 800F091C 000ED85C  EC 01 00 2A */ fadds f0, f1, f0
/* 800F0920 000ED860  D0 1E 35 90 */ stfs f0, 0x3590(r30)
/* 800F0924 000ED864  48 00 00 40 */ b lbl_800F0964
lbl_800F0928:
/* 800F0928 000ED868  FC 02 08 40 */ fcmpo cr0, f2, f1
/* 800F092C 000ED86C  40 80 00 38 */ bge lbl_800F0964
/* 800F0930 000ED870  C0 5E 04 D4 */ lfs f2, 0x4d4(r30)
/* 800F0934 000ED874  C0 22 93 F8 */ lfs f1, lbl_80452DF8-_SDA2_BASE_(r2)
/* 800F0938 000ED878  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 800F093C 000ED87C  EC 01 00 32 */ fmuls f0, f1, f0
/* 800F0940 000ED880  EC 02 00 2A */ fadds f0, f2, f0
/* 800F0944 000ED884  D0 1E 04 D4 */ stfs f0, 0x4d4(r30)
/* 800F0948 000ED888  A8 1E 30 10 */ lha r0, 0x3010(r30)
/* 800F094C 000ED88C  2C 00 00 00 */ cmpwi r0, 0
/* 800F0950 000ED890  41 82 00 14 */ beq lbl_800F0964
/* 800F0954 000ED894  7F C3 F3 78 */ mr r3, r30
/* 800F0958 000ED898  38 80 00 01 */ li r4, 1
/* 800F095C 000ED89C  C0 22 93 24 */ lfs f1, lbl_80452D24-_SDA2_BASE_(r2)
/* 800F0960 000ED8A0  4B FD 60 E9 */ bl procFallInit__9daAlink_cFif
lbl_800F0964:
/* 800F0964 000ED8A4  38 60 00 01 */ li r3, 1
lbl_800F0968:
/* 800F0968 000ED8A8  39 61 00 30 */ addi r11, r1, 0x30
/* 800F096C 000ED8AC  48 27 18 BD */ bl _restgpr_29
/* 800F0970 000ED8B0  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800F0974 000ED8B4  7C 08 03 A6 */ mtlr r0
/* 800F0978 000ED8B8  38 21 00 30 */ addi r1, r1, 0x30
/* 800F097C 000ED8BC  4E 80 00 20 */ blr

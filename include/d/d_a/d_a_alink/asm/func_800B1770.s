/* 800B1770 000AE6B0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800B1774 000AE6B4  7C 08 02 A6 */ mflr r0
/* 800B1778 000AE6B8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800B177C 000AE6BC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800B1780 000AE6C0  7C 7F 1B 78 */ mr r31, r3
/* 800B1784 000AE6C4  C0 0D 81 10 */ lfs f0, lbl_80450690-_SDA_BASE_(r13)
/* 800B1788 000AE6C8  D0 03 18 E0 */ stfs f0, 0x18e0(r3)
/* 800B178C 000AE6CC  C0 02 94 84 */ lfs f0, lbl_80452E84-_SDA2_BASE_(r2)
/* 800B1790 000AE6D0  D0 03 19 20 */ stfs f0, 0x1920(r3)
/* 800B1794 000AE6D4  C0 03 05 98 */ lfs f0, 0x598(r3)
/* 800B1798 000AE6D8  D0 03 19 60 */ stfs f0, 0x1960(r3)
/* 800B179C 000AE6DC  81 83 06 28 */ lwz r12, 0x628(r3)
/* 800B17A0 000AE6E0  81 8C 01 98 */ lwz r12, 0x198(r12)
/* 800B17A4 000AE6E4  7D 89 03 A6 */ mtctr r12
/* 800B17A8 000AE6E8  4E 80 04 21 */ bctrl
/* 800B17AC 000AE6EC  28 03 00 00 */ cmplwi r3, 0
/* 800B17B0 000AE6F0  41 82 00 10 */ beq lbl_800B17C0
/* 800B17B4 000AE6F4  C0 02 93 B0 */ lfs f0, lbl_80452DB0-_SDA2_BASE_(r2)
/* 800B17B8 000AE6F8  D0 1F 1A 38 */ stfs f0, 0x1a38(r31)
/* 800B17BC 000AE6FC  48 00 00 0C */ b lbl_800B17C8
lbl_800B17C0:
/* 800B17C0 000AE700  C0 1F 05 98 */ lfs f0, 0x598(r31)
/* 800B17C4 000AE704  D0 1F 1A 38 */ stfs f0, 0x1a38(r31)
lbl_800B17C8:
/* 800B17C8 000AE708  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800B17CC 000AE70C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B17D0 000AE710  41 82 00 F4 */ beq lbl_800B18C4
/* 800B17D4 000AE714  80 7F 31 A0 */ lwz r3, 0x31a0(r31)
/* 800B17D8 000AE718  54 60 03 5B */ rlwinm. r0, r3, 0, 0xd, 0xd
/* 800B17DC 000AE71C  41 82 00 2C */ beq lbl_800B1808
/* 800B17E0 000AE720  C0 02 93 CC */ lfs f0, lbl_80452DCC-_SDA2_BASE_(r2)
/* 800B17E4 000AE724  D0 1F 18 E0 */ stfs f0, 0x18e0(r31)
/* 800B17E8 000AE728  C0 02 92 A0 */ lfs f0, lbl_80452CA0-_SDA2_BASE_(r2)
/* 800B17EC 000AE72C  D0 1F 19 20 */ stfs f0, 0x1920(r31)
/* 800B17F0 000AE730  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B17F4 000AE734  D0 1F 19 60 */ stfs f0, 0x1960(r31)
/* 800B17F8 000AE738  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B17FC 000AE73C  C0 22 93 BC */ lfs f1, lbl_80452DBC-_SDA2_BASE_(r2)
/* 800B1800 000AE740  4B FC 47 41 */ bl SetWallR__12dBgS_AcchCirFf
/* 800B1804 000AE744  48 00 02 C4 */ b lbl_800B1AC8
lbl_800B1808:
/* 800B1808 000AE748  54 60 01 CF */ rlwinm. r0, r3, 0, 7, 7
/* 800B180C 000AE74C  41 82 00 44 */ beq lbl_800B1850
/* 800B1810 000AE750  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800B1814 000AE754  28 00 01 02 */ cmplwi r0, 0x102
/* 800B1818 000AE758  40 82 00 14 */ bne lbl_800B182C
/* 800B181C 000AE75C  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B1820 000AE760  C0 22 98 94 */ lfs f1, lbl_80453294-_SDA2_BASE_(r2)
/* 800B1824 000AE764  4B FC 47 1D */ bl SetWallR__12dBgS_AcchCirFf
/* 800B1828 000AE768  48 00 00 10 */ b lbl_800B1838
lbl_800B182C:
/* 800B182C 000AE76C  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B1830 000AE770  C0 22 93 BC */ lfs f1, lbl_80452DBC-_SDA2_BASE_(r2)
/* 800B1834 000AE774  4B FC 47 0D */ bl SetWallR__12dBgS_AcchCirFf
lbl_800B1838:
/* 800B1838 000AE778  C0 02 93 30 */ lfs f0, lbl_80452D30-_SDA2_BASE_(r2)
/* 800B183C 000AE77C  D0 1F 18 E0 */ stfs f0, 0x18e0(r31)
/* 800B1840 000AE780  C0 02 94 80 */ lfs f0, lbl_80452E80-_SDA2_BASE_(r2)
/* 800B1844 000AE784  D0 1F 19 20 */ stfs f0, 0x1920(r31)
/* 800B1848 000AE788  D0 1F 19 60 */ stfs f0, 0x1960(r31)
/* 800B184C 000AE78C  48 00 02 7C */ b lbl_800B1AC8
lbl_800B1850:
/* 800B1850 000AE790  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800B1854 000AE794  28 00 01 18 */ cmplwi r0, 0x118
/* 800B1858 000AE798  40 82 00 44 */ bne lbl_800B189C
/* 800B185C 000AE79C  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800B1860 000AE7A0  C0 3F 05 98 */ lfs f1, 0x598(r31)
/* 800B1864 000AE7A4  C0 0D 81 10 */ lfs f0, lbl_80450690-_SDA_BASE_(r13)
/* 800B1868 000AE7A8  EC 01 00 2A */ fadds f0, f1, f0
/* 800B186C 000AE7AC  EC 02 00 32 */ fmuls f0, f2, f0
/* 800B1870 000AE7B0  D0 1F 18 E0 */ stfs f0, 0x18e0(r31)
/* 800B1874 000AE7B4  C0 42 94 AC */ lfs f2, lbl_80452EAC-_SDA2_BASE_(r2)
/* 800B1878 000AE7B8  C0 3F 05 98 */ lfs f1, 0x598(r31)
/* 800B187C 000AE7BC  C0 0D 81 10 */ lfs f0, lbl_80450690-_SDA_BASE_(r13)
/* 800B1880 000AE7C0  EC 01 00 2A */ fadds f0, f1, f0
/* 800B1884 000AE7C4  EC 02 00 32 */ fmuls f0, f2, f0
/* 800B1888 000AE7C8  D0 1F 19 20 */ stfs f0, 0x1920(r31)
/* 800B188C 000AE7CC  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B1890 000AE7D0  C0 22 93 BC */ lfs f1, lbl_80452DBC-_SDA2_BASE_(r2)
/* 800B1894 000AE7D4  4B FC 46 AD */ bl SetWallR__12dBgS_AcchCirFf
/* 800B1898 000AE7D8  48 00 02 30 */ b lbl_800B1AC8
lbl_800B189C:
/* 800B189C 000AE7DC  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800B18A0 000AE7E0  C0 3F 05 98 */ lfs f1, 0x598(r31)
/* 800B18A4 000AE7E4  C0 0D 81 10 */ lfs f0, lbl_80450690-_SDA_BASE_(r13)
/* 800B18A8 000AE7E8  EC 01 00 2A */ fadds f0, f1, f0
/* 800B18AC 000AE7EC  EC 02 00 32 */ fmuls f0, f2, f0
/* 800B18B0 000AE7F0  D0 1F 19 20 */ stfs f0, 0x1920(r31)
/* 800B18B4 000AE7F4  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B18B8 000AE7F8  C0 22 93 BC */ lfs f1, lbl_80452DBC-_SDA2_BASE_(r2)
/* 800B18BC 000AE7FC  4B FC 46 85 */ bl SetWallR__12dBgS_AcchCirFf
/* 800B18C0 000AE800  48 00 02 08 */ b lbl_800B1AC8
lbl_800B18C4:
/* 800B18C4 000AE804  80 7F 31 A0 */ lwz r3, 0x31a0(r31)
/* 800B18C8 000AE808  54 60 02 95 */ rlwinm. r0, r3, 0, 0xa, 0xa
/* 800B18CC 000AE80C  41 82 00 14 */ beq lbl_800B18E0
/* 800B18D0 000AE810  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B18D4 000AE814  C0 22 93 78 */ lfs f1, lbl_80452D78-_SDA2_BASE_(r2)
/* 800B18D8 000AE818  4B FC 46 69 */ bl SetWallR__12dBgS_AcchCirFf
/* 800B18DC 000AE81C  48 00 01 EC */ b lbl_800B1AC8
lbl_800B18E0:
/* 800B18E0 000AE820  A0 9F 2F E8 */ lhz r4, 0x2fe8(r31)
/* 800B18E4 000AE824  28 04 01 5A */ cmplwi r4, 0x15a
/* 800B18E8 000AE828  41 82 00 0C */ beq lbl_800B18F4
/* 800B18EC 000AE82C  54 60 03 DF */ rlwinm. r0, r3, 0, 0xf, 0xf
/* 800B18F0 000AE830  41 82 00 14 */ beq lbl_800B1904
lbl_800B18F4:
/* 800B18F4 000AE834  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B18F8 000AE838  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800B18FC 000AE83C  4B FC 46 45 */ bl SetWallR__12dBgS_AcchCirFf
/* 800B1900 000AE840  48 00 01 C8 */ b lbl_800B1AC8
lbl_800B1904:
/* 800B1904 000AE844  54 60 06 F7 */ rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 800B1908 000AE848  41 82 00 14 */ beq lbl_800B191C
/* 800B190C 000AE84C  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B1910 000AE850  C0 22 93 00 */ lfs f1, lbl_80452D00-_SDA2_BASE_(r2)
/* 800B1914 000AE854  4B FC 46 2D */ bl SetWallR__12dBgS_AcchCirFf
/* 800B1918 000AE858  48 00 01 B0 */ b lbl_800B1AC8
lbl_800B191C:
/* 800B191C 000AE85C  54 60 03 5B */ rlwinm. r0, r3, 0, 0xd, 0xd
/* 800B1920 000AE860  41 82 00 34 */ beq lbl_800B1954
/* 800B1924 000AE864  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B1928 000AE868  C0 22 93 00 */ lfs f1, lbl_80452D00-_SDA2_BASE_(r2)
/* 800B192C 000AE86C  4B FC 46 15 */ bl SetWallR__12dBgS_AcchCirFf
/* 800B1930 000AE870  C0 02 97 18 */ lfs f0, lbl_80453118-_SDA2_BASE_(r2)
/* 800B1934 000AE874  D0 1F 18 E0 */ stfs f0, 0x18e0(r31)
/* 800B1938 000AE878  C0 02 94 0C */ lfs f0, lbl_80452E0C-_SDA2_BASE_(r2)
/* 800B193C 000AE87C  D0 1F 19 20 */ stfs f0, 0x1920(r31)
/* 800B1940 000AE880  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B1944 000AE884  D0 1F 19 60 */ stfs f0, 0x1960(r31)
/* 800B1948 000AE888  C0 02 93 D4 */ lfs f0, lbl_80452DD4-_SDA2_BASE_(r2)
/* 800B194C 000AE88C  D0 1F 1A 38 */ stfs f0, 0x1a38(r31)
/* 800B1950 000AE890  48 00 01 78 */ b lbl_800B1AC8
lbl_800B1954:
/* 800B1954 000AE894  54 60 01 CF */ rlwinm. r0, r3, 0, 7, 7
/* 800B1958 000AE898  41 82 00 48 */ beq lbl_800B19A0
/* 800B195C 000AE89C  28 04 00 38 */ cmplwi r4, 0x38
/* 800B1960 000AE8A0  41 82 00 40 */ beq lbl_800B19A0
/* 800B1964 000AE8A4  28 04 00 37 */ cmplwi r4, 0x37
/* 800B1968 000AE8A8  40 82 00 14 */ bne lbl_800B197C
/* 800B196C 000AE8AC  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B1970 000AE8B0  C0 22 98 94 */ lfs f1, lbl_80453294-_SDA2_BASE_(r2)
/* 800B1974 000AE8B4  4B FC 45 CD */ bl SetWallR__12dBgS_AcchCirFf
/* 800B1978 000AE8B8  48 00 00 10 */ b lbl_800B1988
lbl_800B197C:
/* 800B197C 000AE8BC  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B1980 000AE8C0  C0 22 93 BC */ lfs f1, lbl_80452DBC-_SDA2_BASE_(r2)
/* 800B1984 000AE8C4  4B FC 45 BD */ bl SetWallR__12dBgS_AcchCirFf
lbl_800B1988:
/* 800B1988 000AE8C8  C0 02 92 E0 */ lfs f0, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800B198C 000AE8CC  D0 1F 18 E0 */ stfs f0, 0x18e0(r31)
/* 800B1990 000AE8D0  C0 02 93 B0 */ lfs f0, lbl_80452DB0-_SDA2_BASE_(r2)
/* 800B1994 000AE8D4  D0 1F 19 20 */ stfs f0, 0x1920(r31)
/* 800B1998 000AE8D8  D0 1F 19 60 */ stfs f0, 0x1960(r31)
/* 800B199C 000AE8DC  48 00 01 2C */ b lbl_800B1AC8
lbl_800B19A0:
/* 800B19A0 000AE8E0  28 04 00 32 */ cmplwi r4, 0x32
/* 800B19A4 000AE8E4  40 82 00 14 */ bne lbl_800B19B8
/* 800B19A8 000AE8E8  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B19AC 000AE8EC  C0 22 93 10 */ lfs f1, lbl_80452D10-_SDA2_BASE_(r2)
/* 800B19B0 000AE8F0  4B FC 45 91 */ bl SetWallR__12dBgS_AcchCirFf
/* 800B19B4 000AE8F4  48 00 01 14 */ b lbl_800B1AC8
lbl_800B19B8:
/* 800B19B8 000AE8F8  28 04 00 C6 */ cmplwi r4, 0xc6
/* 800B19BC 000AE8FC  40 82 00 2C */ bne lbl_800B19E8
/* 800B19C0 000AE900  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B19C4 000AE904  C0 22 98 98 */ lfs f1, lbl_80453298-_SDA2_BASE_(r2)
/* 800B19C8 000AE908  4B FC 45 79 */ bl SetWallR__12dBgS_AcchCirFf
/* 800B19CC 000AE90C  C0 02 92 A0 */ lfs f0, lbl_80452CA0-_SDA2_BASE_(r2)
/* 800B19D0 000AE910  D0 1F 18 E0 */ stfs f0, 0x18e0(r31)
/* 800B19D4 000AE914  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B19D8 000AE918  D0 1F 19 20 */ stfs f0, 0x1920(r31)
/* 800B19DC 000AE91C  C0 02 93 00 */ lfs f0, lbl_80452D00-_SDA2_BASE_(r2)
/* 800B19E0 000AE920  D0 1F 19 60 */ stfs f0, 0x1960(r31)
/* 800B19E4 000AE924  48 00 00 E4 */ b lbl_800B1AC8
lbl_800B19E8:
/* 800B19E8 000AE928  28 04 00 C7 */ cmplwi r4, 0xc7
/* 800B19EC 000AE92C  41 82 00 0C */ beq lbl_800B19F8
/* 800B19F0 000AE930  28 04 00 C8 */ cmplwi r4, 0xc8
/* 800B19F4 000AE934  40 82 00 34 */ bne lbl_800B1A28
lbl_800B19F8:
/* 800B19F8 000AE938  C0 02 98 9C */ lfs f0, lbl_8045329C-_SDA2_BASE_(r2)
/* 800B19FC 000AE93C  D0 1F 18 E0 */ stfs f0, 0x18e0(r31)
/* 800B1A00 000AE940  C0 02 98 A0 */ lfs f0, lbl_804532A0-_SDA2_BASE_(r2)
/* 800B1A04 000AE944  D0 1F 19 20 */ stfs f0, 0x1920(r31)
/* 800B1A08 000AE948  C0 02 95 90 */ lfs f0, lbl_80452F90-_SDA2_BASE_(r2)
/* 800B1A0C 000AE94C  D0 1F 19 60 */ stfs f0, 0x1960(r31)
/* 800B1A10 000AE950  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B1A14 000AE954  D0 1F 1A 38 */ stfs f0, 0x1a38(r31)
/* 800B1A18 000AE958  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B1A1C 000AE95C  C0 22 93 BC */ lfs f1, lbl_80452DBC-_SDA2_BASE_(r2)
/* 800B1A20 000AE960  4B FC 45 21 */ bl SetWallR__12dBgS_AcchCirFf
/* 800B1A24 000AE964  48 00 00 A4 */ b lbl_800B1AC8
lbl_800B1A28:
/* 800B1A28 000AE968  54 60 06 73 */ rlwinm. r0, r3, 0, 0x19, 0x19
/* 800B1A2C 000AE96C  41 82 00 18 */ beq lbl_800B1A44
/* 800B1A30 000AE970  C0 02 92 9C */ lfs f0, lbl_80452C9C-_SDA2_BASE_(r2)
/* 800B1A34 000AE974  D0 1F 18 E0 */ stfs f0, 0x18e0(r31)
/* 800B1A38 000AE978  D0 1F 19 20 */ stfs f0, 0x1920(r31)
/* 800B1A3C 000AE97C  D0 1F 19 60 */ stfs f0, 0x1960(r31)
/* 800B1A40 000AE980  48 00 00 7C */ b lbl_800B1ABC
lbl_800B1A44:
/* 800B1A44 000AE984  54 60 05 6B */ rlwinm. r0, r3, 0, 0x15, 0x15
/* 800B1A48 000AE988  41 82 00 74 */ beq lbl_800B1ABC
/* 800B1A4C 000AE98C  7F E3 FB 78 */ mr r3, r31
/* 800B1A50 000AE990  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800B1A54 000AE994  81 8C 01 98 */ lwz r12, 0x198(r12)
/* 800B1A58 000AE998  7D 89 03 A6 */ mtctr r12
/* 800B1A5C 000AE99C  4E 80 04 21 */ bctrl
/* 800B1A60 000AE9A0  28 03 00 00 */ cmplwi r3, 0
/* 800B1A64 000AE9A4  40 82 00 58 */ bne lbl_800B1ABC
/* 800B1A68 000AE9A8  7F E3 FB 78 */ mr r3, r31
/* 800B1A6C 000AE9AC  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800B1A70 000AE9B0  81 8C 01 94 */ lwz r12, 0x194(r12)
/* 800B1A74 000AE9B4  7D 89 03 A6 */ mtctr r12
/* 800B1A78 000AE9B8  4E 80 04 21 */ bctrl
/* 800B1A7C 000AE9BC  28 03 00 00 */ cmplwi r3, 0
/* 800B1A80 000AE9C0  40 82 00 3C */ bne lbl_800B1ABC
/* 800B1A84 000AE9C4  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800B1A88 000AE9C8  28 00 00 A5 */ cmplwi r0, 0xa5
/* 800B1A8C 000AE9CC  41 82 00 30 */ beq lbl_800B1ABC
/* 800B1A90 000AE9D0  28 00 00 A7 */ cmplwi r0, 0xa7
/* 800B1A94 000AE9D4  41 82 00 28 */ beq lbl_800B1ABC
/* 800B1A98 000AE9D8  C0 0D 81 10 */ lfs f0, lbl_80450690-_SDA_BASE_(r13)
/* 800B1A9C 000AE9DC  C0 22 93 B0 */ lfs f1, lbl_80452DB0-_SDA2_BASE_(r2)
/* 800B1AA0 000AE9E0  EC 00 08 28 */ fsubs f0, f0, f1
/* 800B1AA4 000AE9E4  D0 1F 18 E0 */ stfs f0, 0x18e0(r31)
/* 800B1AA8 000AE9E8  C0 02 98 A4 */ lfs f0, lbl_804532A4-_SDA2_BASE_(r2)
/* 800B1AAC 000AE9EC  D0 1F 19 20 */ stfs f0, 0x1920(r31)
/* 800B1AB0 000AE9F0  C0 1F 05 98 */ lfs f0, 0x598(r31)
/* 800B1AB4 000AE9F4  EC 00 08 28 */ fsubs f0, f0, f1
/* 800B1AB8 000AE9F8  D0 1F 19 60 */ stfs f0, 0x1960(r31)
lbl_800B1ABC:
/* 800B1ABC 000AE9FC  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800B1AC0 000AEA00  C0 22 93 BC */ lfs f1, lbl_80452DBC-_SDA2_BASE_(r2)
/* 800B1AC4 000AEA04  4B FC 44 7D */ bl SetWallR__12dBgS_AcchCirFf
lbl_800B1AC8:
/* 800B1AC8 000AEA08  38 7F 18 F0 */ addi r3, r31, 0x18f0
/* 800B1ACC 000AEA0C  C0 3F 18 E4 */ lfs f1, 0x18e4(r31)
/* 800B1AD0 000AEA10  4B FC 44 71 */ bl SetWallR__12dBgS_AcchCirFf
/* 800B1AD4 000AEA14  38 7F 19 30 */ addi r3, r31, 0x1930
/* 800B1AD8 000AEA18  C0 3F 18 E4 */ lfs f1, 0x18e4(r31)
/* 800B1ADC 000AEA1C  4B FC 44 65 */ bl SetWallR__12dBgS_AcchCirFf
/* 800B1AE0 000AEA20  38 60 00 00 */ li r3, 0
/* 800B1AE4 000AEA24  38 80 00 00 */ li r4, 0
/* 800B1AE8 000AEA28  38 00 00 03 */ li r0, 3
/* 800B1AEC 000AEA2C  7C 09 03 A6 */ mtctr r0
lbl_800B1AF0:
/* 800B1AF0 000AEA30  38 04 18 E0 */ addi r0, r4, 0x18e0
/* 800B1AF4 000AEA34  7C 1F 04 2E */ lfsx f0, r31, r0
/* 800B1AF8 000AEA38  38 03 2B AC */ addi r0, r3, 0x2bac
/* 800B1AFC 000AEA3C  7C 1F 05 2E */ stfsx f0, r31, r0
/* 800B1B00 000AEA40  38 63 00 04 */ addi r3, r3, 4
/* 800B1B04 000AEA44  38 84 00 40 */ addi r4, r4, 0x40
/* 800B1B08 000AEA48  42 00 FF E8 */ bdnz lbl_800B1AF0
/* 800B1B0C 000AEA4C  7F E3 FB 78 */ mr r3, r31
/* 800B1B10 000AEA50  4B FF FC 1D */ bl setSandDownBgCheckWallH__9daAlink_cFv
/* 800B1B14 000AEA54  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800B1B18 000AEA58  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800B1B1C 000AEA5C  7C 08 03 A6 */ mtlr r0
/* 800B1B20 000AEA60  38 21 00 10 */ addi r1, r1, 0x10
/* 800B1B24 000AEA64  4E 80 00 20 */ blr

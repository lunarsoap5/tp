/* 802C01EC 002BD12C  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 802C01F0 002BD130  81 42 C1 80 */ lwz r10, lbl_80455B80-_SDA2_BASE_(r2)
/* 802C01F4 002BD134  81 22 C1 84 */ lwz r9, lbl_80455B84-_SDA2_BASE_(r2)
/* 802C01F8 002BD138  91 41 00 28 */ stw r10, 0x28(r1)
/* 802C01FC 002BD13C  91 21 00 2C */ stw r9, 0x2c(r1)
/* 802C0200 002BD140  3C 60 80 3D */ lis r3, lbl_803CAD70@ha
/* 802C0204 002BD144  39 03 AD 70 */ addi r8, r3, lbl_803CAD70@l
/* 802C0208 002BD148  91 48 00 08 */ stw r10, 8(r8)
/* 802C020C 002BD14C  91 28 00 0C */ stw r9, 0xc(r8)
/* 802C0210 002BD150  80 E2 C1 A8 */ lwz r7, lbl_80455BA8-_SDA2_BASE_(r2)
/* 802C0214 002BD154  80 C2 C1 AC */ lwz r6, lbl_80455BAC-_SDA2_BASE_(r2)
/* 802C0218 002BD158  90 E1 00 18 */ stw r7, 0x18(r1)
/* 802C021C 002BD15C  90 C1 00 1C */ stw r6, 0x1c(r1)
/* 802C0220 002BD160  90 E8 00 28 */ stw r7, 0x28(r8)
/* 802C0224 002BD164  90 C8 00 2C */ stw r6, 0x2c(r8)
/* 802C0228 002BD168  80 62 C1 98 */ lwz r3, lbl_80455B98-_SDA2_BASE_(r2)
/* 802C022C 002BD16C  80 02 C1 9C */ lwz r0, lbl_80455B9C-_SDA2_BASE_(r2)
/* 802C0230 002BD170  90 61 00 30 */ stw r3, 0x30(r1)
/* 802C0234 002BD174  90 01 00 34 */ stw r0, 0x34(r1)
/* 802C0238 002BD178  90 68 00 38 */ stw r3, 0x38(r8)
/* 802C023C 002BD17C  90 08 00 3C */ stw r0, 0x3c(r8)
/* 802C0240 002BD180  90 68 00 58 */ stw r3, 0x58(r8)
/* 802C0244 002BD184  90 08 00 5C */ stw r0, 0x5c(r8)
/* 802C0248 002BD188  91 48 00 78 */ stw r10, 0x78(r8)
/* 802C024C 002BD18C  91 28 00 7C */ stw r9, 0x7c(r8)
/* 802C0250 002BD190  91 48 00 98 */ stw r10, 0x98(r8)
/* 802C0254 002BD194  91 28 00 9C */ stw r9, 0x9c(r8)
/* 802C0258 002BD198  91 48 00 A8 */ stw r10, 0xa8(r8)
/* 802C025C 002BD19C  91 28 00 AC */ stw r9, 0xac(r8)
/* 802C0260 002BD1A0  91 48 00 B8 */ stw r10, 0xb8(r8)
/* 802C0264 002BD1A4  91 28 00 BC */ stw r9, 0xbc(r8)
/* 802C0268 002BD1A8  91 48 00 C8 */ stw r10, 0xc8(r8)
/* 802C026C 002BD1AC  91 28 00 CC */ stw r9, 0xcc(r8)
/* 802C0270 002BD1B0  90 68 00 D8 */ stw r3, 0xd8(r8)
/* 802C0274 002BD1B4  90 08 00 DC */ stw r0, 0xdc(r8)
/* 802C0278 002BD1B8  91 48 00 E8 */ stw r10, 0xe8(r8)
/* 802C027C 002BD1BC  91 28 00 EC */ stw r9, 0xec(r8)
/* 802C0280 002BD1C0  80 A2 C1 A0 */ lwz r5, lbl_80455BA0-_SDA2_BASE_(r2)
/* 802C0284 002BD1C4  80 82 C1 A4 */ lwz r4, lbl_80455BA4-_SDA2_BASE_(r2)
/* 802C0288 002BD1C8  90 A1 00 20 */ stw r5, 0x20(r1)
/* 802C028C 002BD1CC  90 81 00 24 */ stw r4, 0x24(r1)
/* 802C0290 002BD1D0  90 A8 01 18 */ stw r5, 0x118(r8)
/* 802C0294 002BD1D4  90 88 01 1C */ stw r4, 0x11c(r8)
/* 802C0298 002BD1D8  91 48 01 28 */ stw r10, 0x128(r8)
/* 802C029C 002BD1DC  91 28 01 2C */ stw r9, 0x12c(r8)
/* 802C02A0 002BD1E0  91 48 01 38 */ stw r10, 0x138(r8)
/* 802C02A4 002BD1E4  91 28 01 3C */ stw r9, 0x13c(r8)
/* 802C02A8 002BD1E8  91 48 01 48 */ stw r10, 0x148(r8)
/* 802C02AC 002BD1EC  91 28 01 4C */ stw r9, 0x14c(r8)
/* 802C02B0 002BD1F0  91 48 01 58 */ stw r10, 0x158(r8)
/* 802C02B4 002BD1F4  91 28 01 5C */ stw r9, 0x15c(r8)
/* 802C02B8 002BD1F8  90 A8 01 78 */ stw r5, 0x178(r8)
/* 802C02BC 002BD1FC  90 88 01 7C */ stw r4, 0x17c(r8)
/* 802C02C0 002BD200  91 48 01 88 */ stw r10, 0x188(r8)
/* 802C02C4 002BD204  91 28 01 8C */ stw r9, 0x18c(r8)
/* 802C02C8 002BD208  91 48 01 98 */ stw r10, 0x198(r8)
/* 802C02CC 002BD20C  91 28 01 9C */ stw r9, 0x19c(r8)
/* 802C02D0 002BD210  91 48 01 B8 */ stw r10, 0x1b8(r8)
/* 802C02D4 002BD214  91 28 01 BC */ stw r9, 0x1bc(r8)
/* 802C02D8 002BD218  90 E8 01 C8 */ stw r7, 0x1c8(r8)
/* 802C02DC 002BD21C  90 C8 01 CC */ stw r6, 0x1cc(r8)
/* 802C02E0 002BD220  80 62 C1 88 */ lwz r3, lbl_80455B88-_SDA2_BASE_(r2)
/* 802C02E4 002BD224  80 02 C1 8C */ lwz r0, lbl_80455B8C-_SDA2_BASE_(r2)
/* 802C02E8 002BD228  90 61 00 10 */ stw r3, 0x10(r1)
/* 802C02EC 002BD22C  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C02F0 002BD230  90 68 01 D8 */ stw r3, 0x1d8(r8)
/* 802C02F4 002BD234  90 08 01 DC */ stw r0, 0x1dc(r8)
/* 802C02F8 002BD238  91 48 01 E8 */ stw r10, 0x1e8(r8)
/* 802C02FC 002BD23C  91 28 01 EC */ stw r9, 0x1ec(r8)
/* 802C0300 002BD240  90 68 01 F8 */ stw r3, 0x1f8(r8)
/* 802C0304 002BD244  90 08 01 FC */ stw r0, 0x1fc(r8)
/* 802C0308 002BD248  90 E8 02 18 */ stw r7, 0x218(r8)
/* 802C030C 002BD24C  90 C8 02 1C */ stw r6, 0x21c(r8)
/* 802C0310 002BD250  91 48 02 28 */ stw r10, 0x228(r8)
/* 802C0314 002BD254  91 28 02 2C */ stw r9, 0x22c(r8)
/* 802C0318 002BD258  91 48 02 38 */ stw r10, 0x238(r8)
/* 802C031C 002BD25C  91 28 02 3C */ stw r9, 0x23c(r8)
/* 802C0320 002BD260  91 48 02 48 */ stw r10, 0x248(r8)
/* 802C0324 002BD264  91 28 02 4C */ stw r9, 0x24c(r8)
/* 802C0328 002BD268  90 A8 02 58 */ stw r5, 0x258(r8)
/* 802C032C 002BD26C  90 88 02 5C */ stw r4, 0x25c(r8)
/* 802C0330 002BD270  80 62 C1 90 */ lwz r3, lbl_80455B90-_SDA2_BASE_(r2)
/* 802C0334 002BD274  80 02 C1 94 */ lwz r0, lbl_80455B94-_SDA2_BASE_(r2)
/* 802C0338 002BD278  90 61 00 08 */ stw r3, 8(r1)
/* 802C033C 002BD27C  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C0340 002BD280  90 68 02 88 */ stw r3, 0x288(r8)
/* 802C0344 002BD284  90 08 02 8C */ stw r0, 0x28c(r8)
/* 802C0348 002BD288  91 48 02 98 */ stw r10, 0x298(r8)
/* 802C034C 002BD28C  91 28 02 9C */ stw r9, 0x29c(r8)
/* 802C0350 002BD290  91 48 02 E8 */ stw r10, 0x2e8(r8)
/* 802C0354 002BD294  91 28 02 EC */ stw r9, 0x2ec(r8)
/* 802C0358 002BD298  90 E8 03 08 */ stw r7, 0x308(r8)
/* 802C035C 002BD29C  90 C8 03 0C */ stw r6, 0x30c(r8)
/* 802C0360 002BD2A0  91 48 03 18 */ stw r10, 0x318(r8)
/* 802C0364 002BD2A4  91 28 03 1C */ stw r9, 0x31c(r8)
/* 802C0368 002BD2A8  90 A8 03 28 */ stw r5, 0x328(r8)
/* 802C036C 002BD2AC  90 88 03 2C */ stw r4, 0x32c(r8)
/* 802C0370 002BD2B0  90 68 03 38 */ stw r3, 0x338(r8)
/* 802C0374 002BD2B4  90 08 03 3C */ stw r0, 0x33c(r8)
/* 802C0378 002BD2B8  91 48 03 48 */ stw r10, 0x348(r8)
/* 802C037C 002BD2BC  91 28 03 4C */ stw r9, 0x34c(r8)
/* 802C0380 002BD2C0  91 48 03 58 */ stw r10, 0x358(r8)
/* 802C0384 002BD2C4  91 28 03 5C */ stw r9, 0x35c(r8)
/* 802C0388 002BD2C8  91 48 03 88 */ stw r10, 0x388(r8)
/* 802C038C 002BD2CC  91 28 03 8C */ stw r9, 0x38c(r8)
/* 802C0390 002BD2D0  91 48 03 98 */ stw r10, 0x398(r8)
/* 802C0394 002BD2D4  91 28 03 9C */ stw r9, 0x39c(r8)
/* 802C0398 002BD2D8  91 48 03 A8 */ stw r10, 0x3a8(r8)
/* 802C039C 002BD2DC  91 28 03 AC */ stw r9, 0x3ac(r8)
/* 802C03A0 002BD2E0  90 A8 03 B8 */ stw r5, 0x3b8(r8)
/* 802C03A4 002BD2E4  90 88 03 BC */ stw r4, 0x3bc(r8)
/* 802C03A8 002BD2E8  91 48 03 D8 */ stw r10, 0x3d8(r8)
/* 802C03AC 002BD2EC  91 28 03 DC */ stw r9, 0x3dc(r8)
/* 802C03B0 002BD2F0  91 48 03 E8 */ stw r10, 0x3e8(r8)
/* 802C03B4 002BD2F4  91 28 03 EC */ stw r9, 0x3ec(r8)
/* 802C03B8 002BD2F8  91 48 03 F8 */ stw r10, 0x3f8(r8)
/* 802C03BC 002BD2FC  91 28 03 FC */ stw r9, 0x3fc(r8)
/* 802C03C0 002BD300  38 21 00 40 */ addi r1, r1, 0x40
/* 802C03C4 002BD304  4E 80 00 20 */ blr

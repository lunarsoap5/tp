/* 8012F1F0 0012C130  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8012F1F4 0012C134  7C 08 02 A6 */ mflr r0
/* 8012F1F8 0012C138  90 01 00 14 */ stw r0, 0x14(r1)
/* 8012F1FC 0012C13C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8012F200 0012C140  93 C1 00 08 */ stw r30, 8(r1)
/* 8012F204 0012C144  7C 7E 1B 78 */ mr r30, r3
/* 8012F208 0012C148  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 8012F20C 0012C14C  A8 03 30 0C */ lha r0, 0x300c(r3)
/* 8012F210 0012C150  2C 00 00 00 */ cmpwi r0, 0
/* 8012F214 0012C154  41 82 00 0C */ beq lbl_8012F220
/* 8012F218 0012C158  38 00 00 04 */ li r0, 4
/* 8012F21C 0012C15C  98 1E 2F 99 */ stb r0, 0x2f99(r30)
lbl_8012F220:
/* 8012F220 0012C160  7F E3 FB 78 */ mr r3, r31
/* 8012F224 0012C164  48 02 F2 A9 */ bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012F228 0012C168  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8012F22C 0012C16C  41 82 00 14 */ beq lbl_8012F240
/* 8012F230 0012C170  7F C3 F3 78 */ mr r3, r30
/* 8012F234 0012C174  38 80 00 00 */ li r4, 0
/* 8012F238 0012C178  4B FF A9 0D */ bl checkNextActionWolf__9daAlink_cFi
/* 8012F23C 0012C17C  48 00 00 20 */ b lbl_8012F25C
lbl_8012F240:
/* 8012F240 0012C180  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8012F244 0012C184  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 8012F248 0012C188  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012F24C 0012C18C  40 81 00 10 */ ble lbl_8012F25C
/* 8012F250 0012C190  7F C3 F3 78 */ mr r3, r30
/* 8012F254 0012C194  38 80 00 01 */ li r4, 1
/* 8012F258 0012C198  4B FF A8 ED */ bl checkNextActionWolf__9daAlink_cFi
lbl_8012F25C:
/* 8012F25C 0012C19C  38 60 00 01 */ li r3, 1
/* 8012F260 0012C1A0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8012F264 0012C1A4  83 C1 00 08 */ lwz r30, 8(r1)
/* 8012F268 0012C1A8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8012F26C 0012C1AC  7C 08 03 A6 */ mtlr r0
/* 8012F270 0012C1B0  38 21 00 10 */ addi r1, r1, 0x10
/* 8012F274 0012C1B4  4E 80 00 20 */ blr

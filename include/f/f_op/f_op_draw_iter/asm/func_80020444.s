/* 80020444 0001D384  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80020448 0001D388  7C 08 02 A6 */ mflr r0
/* 8002044C 0001D38C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80020450 0001D390  80 6D 80 50 */ lwz r3, g_fopDwTg_Queue-_SDA_BASE_(r13)
/* 80020454 0001D394  80 63 00 00 */ lwz r3, 0(r3)
/* 80020458 0001D398  38 00 00 00 */ li r0, 0
/* 8002045C 0001D39C  90 0D 87 78 */ stw r0, l_fopDwTg_id-_SDA_BASE_(r13)
/* 80020460 0001D3A0  28 03 00 00 */ cmplwi r3, 0
/* 80020464 0001D3A4  41 82 00 08 */ beq lbl_8002046C
/* 80020468 0001D3A8  48 00 00 08 */ b lbl_80020470
lbl_8002046C:
/* 8002046C 0001D3AC  4B FF FF 95 */ bl fopDwIt_GetTag__Fv
lbl_80020470:
/* 80020470 0001D3B0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80020474 0001D3B4  7C 08 03 A6 */ mtlr r0
/* 80020478 0001D3B8  38 21 00 10 */ addi r1, r1, 0x10
/* 8002047C 0001D3BC  4E 80 00 20 */ blr

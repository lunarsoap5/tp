/* 8001EE64 0001BDA4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001EE68 0001BDA8  7C 08 02 A6 */ mflr r0
/* 8001EE6C 0001BDAC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001EE70 0001BDB0  48 00 3B 69 */ bl fpcNdRq_Execute__FP19node_create_request
/* 8001EE74 0001BDB4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001EE78 0001BDB8  7C 08 03 A6 */ mtlr r0
/* 8001EE7C 0001BDBC  38 21 00 10 */ addi r1, r1, 0x10
/* 8001EE80 0001BDC0  4E 80 00 20 */ blr
#ifndef J3DDRAWBUFFER_H_
#define J3DDRAWBUFFER_H_

#include "JSystem/J3DGraphBase/J3DPacket/J3DPacket.h"
#include "dolphin/types.h"

class J3DDrawBuffer {
public:
    static int entryImm(J3DPacket* pPacket, u16 index);
};

#endif
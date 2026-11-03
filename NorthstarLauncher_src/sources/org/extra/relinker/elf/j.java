package org.extra.relinker.elf;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class j extends e {
    public j(i iVar, d dVar, long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(dVar.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = dVar.c + (j * ((long) dVar.e));
        this.a = iVar.e(byteBufferAllocate, j2);
        this.b = iVar.e(byteBufferAllocate, 4 + j2);
        this.c = iVar.e(byteBufferAllocate, 8 + j2);
        this.d = iVar.e(byteBufferAllocate, j2 + 20);
    }
}

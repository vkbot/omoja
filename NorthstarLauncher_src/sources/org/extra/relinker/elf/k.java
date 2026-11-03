package org.extra.relinker.elf;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class k extends e {
    public k(i iVar, d dVar, long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(dVar.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = dVar.c + (j * ((long) dVar.e));
        this.a = iVar.e(byteBufferAllocate, j2);
        this.b = iVar.c(byteBufferAllocate, 8 + j2);
        this.c = iVar.c(byteBufferAllocate, 16 + j2);
        this.d = iVar.c(byteBufferAllocate, j2 + 40);
    }
}

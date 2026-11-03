package org.extra.relinker.elf;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class h extends d {
    private final i j;

    public h(boolean z, i iVar) {
        this.a = z;
        this.j = iVar;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.b = iVar.b(byteBufferAllocate, 16L);
        this.c = iVar.c(byteBufferAllocate, 32L);
        this.d = iVar.c(byteBufferAllocate, 40L);
        this.e = iVar.b(byteBufferAllocate, 54L);
        this.f = iVar.b(byteBufferAllocate, 56L);
        this.g = iVar.b(byteBufferAllocate, 58L);
        this.h = iVar.b(byteBufferAllocate, 60L);
        this.i = iVar.b(byteBufferAllocate, 62L);
    }

    @Override // org.extra.relinker.elf.d
    public f a(int i) {
        return new m(this.j, this, i);
    }

    @Override // org.extra.relinker.elf.d
    public e a(long j) {
        return new k(this.j, this, j);
    }

    @Override // org.extra.relinker.elf.d
    public c a(long j, int i) {
        return new b(this.j, this, j, i);
    }
}

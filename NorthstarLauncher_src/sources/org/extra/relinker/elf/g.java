package org.extra.relinker.elf;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class g extends d {
    private final i j;

    public g(boolean z, i iVar) {
        this.a = z;
        this.j = iVar;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.b = iVar.b(byteBufferAllocate, 16L);
        this.c = iVar.e(byteBufferAllocate, 28L);
        this.d = iVar.e(byteBufferAllocate, 32L);
        this.e = iVar.b(byteBufferAllocate, 42L);
        this.f = iVar.b(byteBufferAllocate, 44L);
        this.g = iVar.b(byteBufferAllocate, 46L);
        this.h = iVar.b(byteBufferAllocate, 48L);
        this.i = iVar.b(byteBufferAllocate, 50L);
    }

    @Override // org.extra.relinker.elf.d
    public f a(int i) {
        return new l(this.j, this, i);
    }

    @Override // org.extra.relinker.elf.d
    public e a(long j) {
        return new j(this.j, this, j);
    }

    @Override // org.extra.relinker.elf.d
    public c a(long j, int i) {
        return new a(this.j, this, j, i);
    }
}

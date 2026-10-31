package p157o7;

import java.io.IOException;
import java.io.InputStream;
import p148n7.InterfaceC2501d0;

/* JADX INFO: renamed from: o7.i3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2651i3 extends InputStream implements InterfaceC2501d0 {

    /* JADX INFO: renamed from: b */
    public AbstractC2611c f7525b;

    @Override // java.io.InputStream
    public final int available() {
        return this.f7525b.mo4108f0();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f7525b.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i10) {
        this.f7525b.mo4104c();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f7525b.mo4115y();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) {
        AbstractC2611c abstractC2611c = this.f7525b;
        if (abstractC2611c.mo4108f0() == 0) {
            return -1;
        }
        int iMin = Math.min(abstractC2611c.mo4108f0(), i11);
        abstractC2611c.mo4106d0(bArr, i10, iMin);
        return iMin;
    }

    @Override // java.io.InputStream
    public final void reset() {
        this.f7525b.mo4109g0();
    }

    @Override // java.io.InputStream
    public final long skip(long j10) {
        AbstractC2611c abstractC2611c = this.f7525b;
        int iMin = (int) Math.min(abstractC2611c.mo4108f0(), j10);
        abstractC2611c.mo4110h0(iMin);
        return iMin;
    }

    @Override // java.io.InputStream
    public final int read() {
        AbstractC2611c abstractC2611c = this.f7525b;
        if (abstractC2611c.mo4108f0() == 0) {
            return -1;
        }
        return abstractC2611c.mo4107e0();
    }
}

package p025c0;

import java.io.FilterInputStream;
import java.io.IOException;

/* JADX INFO: renamed from: c0.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0944m extends FilterInputStream {

    /* JADX INFO: renamed from: b */
    public int f805b;

    public C0944m(C0936e c0936e) {
        super(c0936e);
        this.f805b = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i10 = this.f805b;
        return i10 == Integer.MIN_VALUE ? super.available() : Math.min(i10, super.available());
    }

    /* JADX INFO: renamed from: b */
    public final long m1082b(long j10) {
        int i10 = this.f805b;
        if (i10 == 0) {
            return -1L;
        }
        return (i10 == Integer.MIN_VALUE || j10 <= ((long) i10)) ? j10 : i10;
    }

    /* JADX INFO: renamed from: c */
    public final void m1083c(long j10) {
        int i10 = this.f805b;
        if (i10 == Integer.MIN_VALUE || j10 == -1) {
            return;
        }
        this.f805b = (int) (((long) i10) - j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i10) {
        super.mark(i10);
        this.f805b = i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (m1082b(1L) == -1) {
            return -1;
        }
        int i10 = super.read();
        m1083c(1L);
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        super.reset();
        this.f805b = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jM1082b = m1082b(j10);
        if (jM1082b == -1) {
            return 0L;
        }
        long jSkip = super.skip(jM1082b);
        m1083c(jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int iM1082b = (int) m1082b(i11);
        if (iM1082b == -1) {
            return -1;
        }
        int i12 = super.read(bArr, i10, iM1082b);
        m1083c(i12);
        return i12;
    }
}

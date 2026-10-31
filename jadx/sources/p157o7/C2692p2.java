package p157o7;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;

/* JADX INFO: renamed from: o7.p2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2692p2 extends FilterInputStream {

    /* JADX INFO: renamed from: b */
    public final int f7693b;

    /* JADX INFO: renamed from: c */
    public final C2718t4 f7694c;

    /* JADX INFO: renamed from: d */
    public long f7695d;

    /* JADX INFO: renamed from: e */
    public long f7696e;

    /* JADX INFO: renamed from: f */
    public long f7697f;

    public C2692p2(InputStream inputStream, int i10, C2718t4 c2718t4) {
        super(inputStream);
        this.f7697f = -1L;
        this.f7693b = i10;
        this.f7694c = c2718t4;
    }

    /* JADX INFO: renamed from: b */
    public final void m4205b() {
        long j10 = this.f7696e;
        long j11 = this.f7695d;
        if (j10 > j11) {
            long j12 = j10 - j11;
            for (AbstractC2503e abstractC2503e : this.f7694c.f7794a) {
                abstractC2503e.mo3903k(j12);
            }
            this.f7695d = this.f7696e;
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m4206c() {
        long j10 = this.f7696e;
        int i10 = this.f7693b;
        if (j10 <= i10) {
            return;
        }
        throw C2508f1.f6942j.m3934h("Decompressed gRPC message exceeds maximum size " + i10).m3930a();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i10) {
        ((FilterInputStream) this).in.mark(i10);
        this.f7697f = this.f7696e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i10 = ((FilterInputStream) this).in.read();
        if (i10 != -1) {
            this.f7696e++;
        }
        m4206c();
        m4205b();
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f7697f == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.f7696e = this.f7697f;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(j10);
        this.f7696e += jSkip;
        m4206c();
        m4205b();
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = ((FilterInputStream) this).in.read(bArr, i10, i11);
        if (i12 != -1) {
            this.f7696e += (long) i12;
        }
        m4206c();
        m4205b();
        return i12;
    }
}

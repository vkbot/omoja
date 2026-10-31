package p025c0;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: renamed from: c0.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0935d extends FilterInputStream {

    /* JADX INFO: renamed from: b */
    public final long f788b;

    /* JADX INFO: renamed from: c */
    public int f789c;

    public C0935d(InputStream inputStream, long j10) {
        super(inputStream);
        this.f788b = j10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return (int) Math.max(this.f788b - ((long) this.f789c), ((FilterInputStream) this).in.available());
    }

    /* JADX INFO: renamed from: b */
    public final void m1069b(int i10) throws IOException {
        int i11 = this.f789c;
        if (i10 >= 0) {
            this.f789c = i11 + i10;
            return;
        }
        long j10 = this.f788b;
        if (j10 - ((long) i11) <= 0) {
            return;
        }
        throw new IOException("Failed to read all expected data, expected: " + j10 + ", but read: " + this.f789c);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        int i10;
        i10 = super.read();
        m1069b(i10 >= 0 ? 1 : -1);
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i10, int i11) {
        int i12;
        i12 = super.read(bArr, i10, i11);
        m1069b(i12);
        return i12;
    }
}

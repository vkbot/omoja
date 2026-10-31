package c0;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f395b;
    public int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(InputStream inputStream, long j9) {
        super(inputStream);
        this.f395b = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return (int) Math.max(this.f395b - ((long) this.c), ((FilterInputStream) this).in.available());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(int i9) throws IOException {
        int i10 = this.c;
        if (i9 >= 0) {
            this.c = i10 + i9;
            return;
        }
        long j9 = this.f395b;
        if (j9 - ((long) i10) <= 0) {
            return;
        }
        throw new IOException("Failed to read all expected data, expected: " + j9 + ", but read: " + this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        int i9;
        i9 = super.read();
        b(i9 >= 0 ? 1 : -1);
        return i9;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i9, int i10) {
        int i11;
        i11 = super.read(bArr, i9, i10);
        b(i11);
        return i11;
    }
}

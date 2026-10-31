package c0;

import java.io.FilterInputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f407b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(e eVar) {
        super(eVar);
        this.f407b = Integer.MIN_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i9 = this.f407b;
        return i9 == Integer.MIN_VALUE ? super.available() : Math.min(i9, super.available());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long b(long j9) {
        int i9 = this.f407b;
        if (i9 == 0) {
            return -1L;
        }
        return (i9 == Integer.MIN_VALUE || j9 <= ((long) i9)) ? j9 : i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(long j9) {
        int i9 = this.f407b;
        if (i9 == Integer.MIN_VALUE || j9 == -1) {
            return;
        }
        this.f407b = (int) (((long) i9) - j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i9) {
        super.mark(i9);
        this.f407b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (b(1L) == -1) {
            return -1;
        }
        int i9 = super.read();
        c(1L);
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        super.reset();
        this.f407b = Integer.MIN_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j9) throws IOException {
        long jB = b(j9);
        if (jB == -1) {
            return 0L;
        }
        long jSkip = super.skip(jB);
        c(jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i9, int i10) throws IOException {
        int iB = (int) b(i10);
        if (iB == -1) {
            return -1;
        }
        int i11 = super.read(bArr, i9, iB);
        c(i11);
        return i11;
    }
}

package o7;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i3 extends InputStream implements n7.d0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c f4281b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public final int available() {
        return this.f4281b.f0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f4281b.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public final void mark(int i9) {
        this.f4281b.c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f4281b.y();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i9, int i10) {
        c cVar = this.f4281b;
        if (cVar.f0() == 0) {
            return -1;
        }
        int iMin = Math.min(cVar.f0(), i10);
        cVar.d0(bArr, i9, iMin);
        return iMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public final void reset() {
        this.f4281b.g0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public final long skip(long j9) {
        c cVar = this.f4281b;
        int iMin = (int) Math.min(cVar.f0(), j9);
        cVar.h0(iMin);
        return iMin;
    }

    @Override // java.io.InputStream
    public final int read() {
        c cVar = this.f4281b;
        if (cVar.f0() == 0) {
            return -1;
        }
        return cVar.e0();
    }
}

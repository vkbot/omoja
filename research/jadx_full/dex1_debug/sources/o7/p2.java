package o7;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p2 extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4389b;
    public final t4 c;
    public long d;
    public long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f4390f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p2(InputStream inputStream, int i9, t4 t4Var) {
        super(inputStream);
        this.f4390f = -1L;
        this.f4389b = i9;
        this.c = t4Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        long j9 = this.e;
        long j10 = this.d;
        if (j9 > j10) {
            long j11 = j9 - j10;
            for (n7.e eVar : this.c.f4457a) {
                eVar.k(j11);
            }
            this.d = this.e;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        long j9 = this.e;
        int i9 = this.f4389b;
        if (j9 <= i9) {
            return;
        }
        throw n7.f1.f3927j.h("Decompressed gRPC message exceeds maximum size " + i9).a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i9) {
        ((FilterInputStream) this).in.mark(i9);
        this.f4390f = this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i9 = ((FilterInputStream) this).in.read();
        if (i9 != -1) {
            this.e++;
        }
        c();
        b();
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f4390f == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.e = this.f4390f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j9) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(j9);
        this.e += jSkip;
        c();
        b();
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i9, int i10) throws IOException {
        int i11 = ((FilterInputStream) this).in.read(bArr, i9, i10);
        if (i11 != -1) {
            this.e += (long) i11;
        }
        c();
        b();
        return i11;
    }
}

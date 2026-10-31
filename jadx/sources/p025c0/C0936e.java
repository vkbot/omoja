package p025c0;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import p172q.C3034x;

/* JADX INFO: renamed from: c0.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0936e extends InputStream {

    /* JADX INFO: renamed from: d */
    public static final ArrayDeque f790d;

    /* JADX INFO: renamed from: b */
    public C3034x f791b;

    /* JADX INFO: renamed from: c */
    public IOException f792c;

    static {
        char[] cArr = AbstractC0947p.f810a;
        f790d = new ArrayDeque(0);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f791b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f791b.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i10) {
        this.f791b.mark(i10);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        this.f791b.getClass();
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            return this.f791b.read();
        } catch (IOException e) {
            this.f792c = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.f791b.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j10) throws IOException {
        try {
            return this.f791b.skip(j10);
        } catch (IOException e) {
            this.f792c = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            return this.f791b.read(bArr);
        } catch (IOException e) {
            this.f792c = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        try {
            return this.f791b.read(bArr, i10, i11);
        } catch (IOException e) {
            this.f792c = e;
            throw e;
        }
    }
}

package l9;

import java.io.IOException;
import java.util.zip.Deflater;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class p implements e0 {
    public final z b;
    public final Deflater c;
    public boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p(l lVar, Deflater deflater) {
        this.b = new z(lVar);
        this.c = deflater;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(boolean z) throws IOException {
        b0 b0VarK0;
        int iDeflate;
        z zVar = this.b;
        l lVar = zVar.c;
        while (true) {
            b0VarK0 = lVar.k0(1);
            byte[] bArr = b0VarK0.a;
            int i = b0VarK0.c;
            Deflater deflater = this.c;
            if (z) {
                try {
                    iDeflate = deflater.deflate(bArr, i, 8192 - i, 2);
                } catch (NullPointerException e) {
                    throw new IOException("Deflater already closed", e);
                }
            } else {
                iDeflate = deflater.deflate(bArr, i, 8192 - i);
            }
            if (iDeflate > 0) {
                b0VarK0.c += iDeflate;
                lVar.c += (long) iDeflate;
                zVar.n();
            } else if (deflater.needsInput()) {
                break;
            }
        }
        if (b0VarK0.b == b0VarK0.c) {
            lVar.b = b0VarK0.a();
            c0.a(b0VarK0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        Deflater deflater = this.c;
        if (this.d) {
            return;
        }
        deflater.finish();
        b(false);
        th = null;
        try {
            deflater.end();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        try {
            this.b.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.d = true;
        if (th != null) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0, java.io.Flushable
    public final void flush() throws IOException {
        b(true);
        this.b.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public final j0 timeout() {
        return this.b.b.timeout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "DeflaterSink(" + this.b + ')';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public final void write(l lVar, long j) throws IOException {
        lVar.getClass();
        b.d(lVar.c, 0L, j);
        while (j > 0) {
            b0 b0Var = lVar.b;
            b0Var.getClass();
            int iMin = (int) Math.min(j, b0Var.c - b0Var.b);
            this.c.setInput(b0Var.a, b0Var.b, iMin);
            b(false);
            long j2 = iMin;
            lVar.c -= j2;
            int i = b0Var.b + iMin;
            b0Var.b = i;
            if (i == b0Var.c) {
                lVar.b = b0Var.a();
                c0.a(b0Var);
            }
            j -= j2;
        }
    }
}

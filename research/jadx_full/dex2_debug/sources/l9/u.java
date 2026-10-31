package l9;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class u implements g0 {
    public final a0 b;
    public final Inflater c;
    public int d;
    public boolean e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u(a0 a0Var, Inflater inflater) {
        this.b = a0Var;
        this.c = inflater;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long b(l lVar, long j) throws IOException {
        Inflater inflater = this.c;
        lVar.getClass();
        if (j < 0) {
            i.d(ai.onnxruntime.a.h(j, "byteCount < 0: "));
            return 0L;
        }
        if (this.e) {
            j1.i.l("closed");
            return 0L;
        }
        if (j != 0) {
            try {
                b0 b0VarK0 = lVar.k0(1);
                int iMin = (int) Math.min(j, 8192 - b0VarK0.c);
                boolean zNeedsInput = inflater.needsInput();
                a0 a0Var = this.b;
                if (zNeedsInput && !a0Var.k()) {
                    b0 b0Var = a0Var.c.b;
                    b0Var.getClass();
                    int i = b0Var.c;
                    int i2 = b0Var.b;
                    int i3 = i - i2;
                    this.d = i3;
                    inflater.setInput(b0Var.a, i2, i3);
                }
                int iInflate = inflater.inflate(b0VarK0.a, b0VarK0.c, iMin);
                int i4 = this.d;
                if (i4 != 0) {
                    int remaining = i4 - inflater.getRemaining();
                    this.d -= remaining;
                    a0Var.skip(remaining);
                }
                if (iInflate > 0) {
                    b0VarK0.c += iInflate;
                    long j2 = iInflate;
                    lVar.c += j2;
                    return j2;
                }
                if (b0VarK0.b == b0VarK0.c) {
                    lVar.b = b0VarK0.a();
                    c0.a(b0VarK0);
                }
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        }
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.e) {
            return;
        }
        this.c.end();
        this.e = true;
        this.b.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    public final long read(l lVar, long j) throws IOException {
        lVar.getClass();
        do {
            long jB = b(lVar, j);
            if (jB > 0) {
                return jB;
            }
            Inflater inflater = this.c;
            if (inflater.finished() || inflater.needsDictionary()) {
                return -1L;
            }
        } while (!this.b.k());
        throw new EOFException("source exhausted prematurely");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    /* JADX INFO: renamed from: timeout */
    public final j0 getTimeout() {
        return this.b.b.getTimeout();
    }
}

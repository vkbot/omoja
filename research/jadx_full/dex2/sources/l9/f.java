package l9;

import java.io.IOException;
import java.io.InputStream;
import kotlin.Unit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class f implements g0 {
    public final /* synthetic */ int b = 1;
    public final Object c;
    public final Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(InputStream inputStream, j0 j0Var) {
        inputStream.getClass();
        j0Var.getClass();
        this.c = inputStream;
        this.d = j0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                g gVar = (g) obj;
                g0 g0Var = (g0) this.d;
                gVar.enter();
                try {
                    try {
                        g0Var.close();
                        Unit unit = Unit.INSTANCE;
                        if (gVar.exit()) {
                            throw gVar.access$newTimeoutException(null);
                        }
                        return;
                    } catch (IOException e) {
                        if (!gVar.exit()) {
                            throw e;
                        }
                        throw gVar.access$newTimeoutException(e);
                    }
                } catch (Throwable th) {
                    gVar.exit();
                    throw th;
                }
            default:
                ((InputStream) obj).close();
                return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    public final long read(l lVar, long j) throws IOException {
        int i = this.b;
        lVar.getClass();
        switch (i) {
            case 0:
                g gVar = (g) this.c;
                g0 g0Var = (g0) this.d;
                gVar.enter();
                try {
                    try {
                        long j2 = g0Var.read(lVar, j);
                        if (gVar.exit()) {
                            throw gVar.access$newTimeoutException(null);
                        }
                        return j2;
                    } catch (IOException e) {
                        if (gVar.exit()) {
                            throw gVar.access$newTimeoutException(e);
                        }
                        throw e;
                    }
                } catch (Throwable th) {
                    gVar.exit();
                    throw th;
                }
            default:
                if (j == 0) {
                    return 0L;
                }
                if (j < 0) {
                    i.d(ai.onnxruntime.a.h(j, "byteCount < 0: "));
                    return 0L;
                }
                try {
                    ((j0) this.d).throwIfReached();
                    b0 b0VarK0 = lVar.k0(1);
                    int i2 = ((InputStream) this.c).read(b0VarK0.a, b0VarK0.c, (int) Math.min(j, 8192 - b0VarK0.c));
                    if (i2 == -1) {
                        if (b0VarK0.b == b0VarK0.c) {
                            lVar.b = b0VarK0.a();
                            c0.a(b0VarK0);
                        }
                        return -1L;
                    }
                    b0VarK0.c += i2;
                    long j3 = i2;
                    lVar.c += j3;
                    return j3;
                } catch (AssertionError e2) {
                    if (b.e(e2)) {
                        throw new IOException(e2);
                    }
                    throw e2;
                }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    /* JADX INFO: renamed from: timeout */
    public final j0 getTimeout() {
        switch (this.b) {
            case 0:
                return (g) this.c;
            default:
                return (j0) this.d;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        switch (this.b) {
            case 0:
                return "AsyncTimeout.source(" + ((g0) this.d) + ')';
            default:
                return "source(" + ((InputStream) this.c) + ')';
        }
    }

    public f(g gVar, g0 g0Var) {
        this.c = gVar;
        this.d = g0Var;
    }
}

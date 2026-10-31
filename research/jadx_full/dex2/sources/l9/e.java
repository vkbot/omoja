package l9;

import java.io.IOException;
import kotlin.Unit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class e implements e0 {
    public final /* synthetic */ g b;
    public final /* synthetic */ e0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(g gVar, e0 e0Var) {
        this.b = gVar;
        this.c = e0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        e0 e0Var = this.c;
        g gVar = this.b;
        gVar.enter();
        try {
            try {
                e0Var.close();
                Unit unit = Unit.INSTANCE;
                if (gVar.exit()) {
                    throw gVar.access$newTimeoutException(null);
                }
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
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0, java.io.Flushable
    public final void flush() throws IOException {
        e0 e0Var = this.c;
        g gVar = this.b;
        gVar.enter();
        try {
            try {
                e0Var.flush();
                Unit unit = Unit.INSTANCE;
                if (gVar.exit()) {
                    throw gVar.access$newTimeoutException(null);
                }
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
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public final j0 timeout() {
        return this.b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "AsyncTimeout.sink(" + this.c + ')';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public final void write(l lVar, long j) throws IOException {
        lVar.getClass();
        b.d(lVar.c, 0L, j);
        while (true) {
            long j2 = 0;
            if (j <= 0) {
                return;
            }
            b0 b0Var = lVar.b;
            b0Var.getClass();
            while (j2 < 65536) {
                j2 += (long) (b0Var.c - b0Var.b);
                if (j2 >= j) {
                    j2 = j;
                    break;
                } else {
                    b0Var = b0Var.f;
                    b0Var.getClass();
                }
            }
            e0 e0Var = this.c;
            g gVar = this.b;
            gVar.enter();
            try {
                try {
                    e0Var.write(lVar, j2);
                    Unit unit = Unit.INSTANCE;
                    if (gVar.exit()) {
                        throw gVar.access$newTimeoutException(null);
                    }
                    j -= j2;
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
        }
    }
}

package l9;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class x implements e0 {
    public final OutputStream b;
    public final j0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x(OutputStream outputStream, j0 j0Var) {
        outputStream.getClass();
        this.b = outputStream;
        this.c = j0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.b.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0, java.io.Flushable
    public final void flush() throws IOException {
        this.b.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public final j0 timeout() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "sink(" + this.b + ')';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public final void write(l lVar, long j) throws IOException {
        lVar.getClass();
        b.d(lVar.c, 0L, j);
        while (j > 0) {
            this.c.throwIfReached();
            b0 b0Var = lVar.b;
            b0Var.getClass();
            int iMin = (int) Math.min(j, b0Var.c - b0Var.b);
            this.b.write(b0Var.a, b0Var.b, iMin);
            int i = b0Var.b + iMin;
            b0Var.b = i;
            long j2 = iMin;
            j -= j2;
            lVar.c -= j2;
            if (i == b0Var.c) {
                lVar.b = b0Var.a();
                c0.a(b0Var);
            }
        }
    }
}

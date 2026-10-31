package l9;

import java.io.EOFException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class h implements e0 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public final j0 timeout() {
        return j0.NONE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public final void write(l lVar, long j) throws EOFException {
        lVar.getClass();
        lVar.skip(j);
    }

    @Override // l9.e0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // l9.e0, java.io.Flushable
    public final void flush() {
    }
}

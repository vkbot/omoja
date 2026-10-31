package p130l9;

import java.io.EOFException;

/* JADX INFO: renamed from: l9.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2235h implements InterfaceC2230e0 {
    @Override // p130l9.InterfaceC2230e0
    public final C2240j0 timeout() {
        return C2240j0.NONE;
    }

    @Override // p130l9.InterfaceC2230e0
    public final void write(C2242l c2242l, long j10) throws EOFException {
        c2242l.getClass();
        c2242l.skip(j10);
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Flushable
    public final void flush() {
    }
}

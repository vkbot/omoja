package p130l9;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: renamed from: l9.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2254x implements InterfaceC2230e0 {

    /* JADX INFO: renamed from: b */
    public final OutputStream f5900b;

    /* JADX INFO: renamed from: c */
    public final C2240j0 f5901c;

    public C2254x(OutputStream outputStream, C2240j0 c2240j0) {
        outputStream.getClass();
        this.f5900b = outputStream;
        this.f5901c = c2240j0;
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5900b.close();
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Flushable
    public final void flush() throws IOException {
        this.f5900b.flush();
    }

    @Override // p130l9.InterfaceC2230e0
    public final C2240j0 timeout() {
        return this.f5901c;
    }

    public final String toString() {
        return "sink(" + this.f5900b + ')';
    }

    @Override // p130l9.InterfaceC2230e0
    public final void write(C2242l c2242l, long j10) throws IOException {
        c2242l.getClass();
        AbstractC2223b.m3571d(c2242l.f5878c, 0L, j10);
        while (j10 > 0) {
            this.f5901c.throwIfReached();
            C2224b0 c2224b0 = c2242l.f5877b;
            c2224b0.getClass();
            int iMin = (int) Math.min(j10, c2224b0.f5851c - c2224b0.f5850b);
            this.f5900b.write(c2224b0.f5849a, c2224b0.f5850b, iMin);
            int i10 = c2224b0.f5850b + iMin;
            c2224b0.f5850b = i10;
            long j11 = iMin;
            j10 -= j11;
            c2242l.f5878c -= j11;
            if (i10 == c2224b0.f5851c) {
                c2242l.f5877b = c2224b0.m3576a();
                AbstractC2226c0.m3581a(c2224b0);
            }
        }
    }
}

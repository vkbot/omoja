package p130l9;

import java.io.IOException;
import kotlin.Unit;

/* JADX INFO: renamed from: l9.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2229e implements InterfaceC2230e0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2233g f5861b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2230e0 f5862c;

    public C2229e(C2233g c2233g, InterfaceC2230e0 interfaceC2230e0) {
        this.f5861b = c2233g;
        this.f5862c = interfaceC2230e0;
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        InterfaceC2230e0 interfaceC2230e0 = this.f5862c;
        C2233g c2233g = this.f5861b;
        c2233g.enter();
        try {
            try {
                interfaceC2230e0.close();
                Unit unit = Unit.INSTANCE;
                if (c2233g.exit()) {
                    throw c2233g.access$newTimeoutException(null);
                }
            } catch (IOException e) {
                if (!c2233g.exit()) {
                    throw e;
                }
                throw c2233g.access$newTimeoutException(e);
            }
        } catch (Throwable th) {
            c2233g.exit();
            throw th;
        }
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Flushable
    public final void flush() throws IOException {
        InterfaceC2230e0 interfaceC2230e0 = this.f5862c;
        C2233g c2233g = this.f5861b;
        c2233g.enter();
        try {
            try {
                interfaceC2230e0.flush();
                Unit unit = Unit.INSTANCE;
                if (c2233g.exit()) {
                    throw c2233g.access$newTimeoutException(null);
                }
            } catch (IOException e) {
                if (!c2233g.exit()) {
                    throw e;
                }
                throw c2233g.access$newTimeoutException(e);
            }
        } catch (Throwable th) {
            c2233g.exit();
            throw th;
        }
    }

    @Override // p130l9.InterfaceC2230e0
    public final C2240j0 timeout() {
        return this.f5861b;
    }

    public final String toString() {
        return "AsyncTimeout.sink(" + this.f5862c + ')';
    }

    @Override // p130l9.InterfaceC2230e0
    public final void write(C2242l c2242l, long j10) throws IOException {
        c2242l.getClass();
        AbstractC2223b.m3571d(c2242l.f5878c, 0L, j10);
        while (true) {
            long j11 = 0;
            if (j10 <= 0) {
                return;
            }
            C2224b0 c2224b0 = c2242l.f5877b;
            c2224b0.getClass();
            while (j11 < 65536) {
                j11 += (long) (c2224b0.f5851c - c2224b0.f5850b);
                if (j11 >= j10) {
                    j11 = j10;
                    break;
                } else {
                    c2224b0 = c2224b0.f5854f;
                    c2224b0.getClass();
                }
            }
            InterfaceC2230e0 interfaceC2230e0 = this.f5862c;
            C2233g c2233g = this.f5861b;
            c2233g.enter();
            try {
                try {
                    interfaceC2230e0.write(c2242l, j11);
                    Unit unit = Unit.INSTANCE;
                    if (c2233g.exit()) {
                        throw c2233g.access$newTimeoutException(null);
                    }
                    j10 -= j11;
                } catch (IOException e) {
                    if (!c2233g.exit()) {
                        throw e;
                    }
                    throw c2233g.access$newTimeoutException(e);
                }
            } catch (Throwable th) {
                c2233g.exit();
                throw th;
            }
        }
    }
}

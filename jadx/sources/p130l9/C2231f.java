package p130l9;

import ai.onnxruntime.AbstractC0074a;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Unit;

/* JADX INFO: renamed from: l9.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2231f implements InterfaceC2234g0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5863b = 1;

    /* JADX INFO: renamed from: c */
    public final Object f5864c;

    /* JADX INFO: renamed from: d */
    public final Object f5865d;

    public C2231f(InputStream inputStream, C2240j0 c2240j0) {
        inputStream.getClass();
        c2240j0.getClass();
        this.f5864c = inputStream;
        this.f5865d = c2240j0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i10 = this.f5863b;
        Object obj = this.f5864c;
        switch (i10) {
            case 0:
                C2233g c2233g = (C2233g) obj;
                InterfaceC2234g0 interfaceC2234g0 = (InterfaceC2234g0) this.f5865d;
                c2233g.enter();
                try {
                    try {
                        interfaceC2234g0.close();
                        Unit unit = Unit.INSTANCE;
                        if (c2233g.exit()) {
                            throw c2233g.access$newTimeoutException(null);
                        }
                        return;
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
            default:
                ((InputStream) obj).close();
                return;
        }
    }

    @Override // p130l9.InterfaceC2234g0
    public final long read(C2242l c2242l, long j10) throws IOException {
        int i10 = this.f5863b;
        c2242l.getClass();
        switch (i10) {
            case 0:
                C2233g c2233g = (C2233g) this.f5864c;
                InterfaceC2234g0 interfaceC2234g0 = (InterfaceC2234g0) this.f5865d;
                c2233g.enter();
                try {
                    try {
                        long j11 = interfaceC2234g0.read(c2242l, j10);
                        if (c2233g.exit()) {
                            throw c2233g.access$newTimeoutException(null);
                        }
                        return j11;
                    } catch (Throwable th) {
                        c2233g.exit();
                        throw th;
                    }
                } catch (IOException e) {
                    if (c2233g.exit()) {
                        throw c2233g.access$newTimeoutException(e);
                    }
                    throw e;
                }
            default:
                if (j10 == 0) {
                    return 0L;
                }
                if (j10 < 0) {
                    C2237i.m3597d(AbstractC0074a.m157h(j10, "byteCount < 0: "));
                    return 0L;
                }
                try {
                    ((C2240j0) this.f5865d).throwIfReached();
                    C2224b0 c2224b0M3619k0 = c2242l.m3619k0(1);
                    int i11 = ((InputStream) this.f5864c).read(c2224b0M3619k0.f5849a, c2224b0M3619k0.f5851c, (int) Math.min(j10, 8192 - c2224b0M3619k0.f5851c));
                    if (i11 == -1) {
                        if (c2224b0M3619k0.f5850b == c2224b0M3619k0.f5851c) {
                            c2242l.f5877b = c2224b0M3619k0.m3576a();
                            AbstractC2226c0.m3581a(c2224b0M3619k0);
                        }
                        return -1L;
                    }
                    c2224b0M3619k0.f5851c += i11;
                    long j12 = i11;
                    c2242l.f5878c += j12;
                    return j12;
                } catch (AssertionError e6) {
                    if (AbstractC2223b.m3572e(e6)) {
                        throw new IOException(e6);
                    }
                    throw e6;
                }
        }
    }

    @Override // p130l9.InterfaceC2234g0
    public final C2240j0 timeout() {
        switch (this.f5863b) {
            case 0:
                return (C2233g) this.f5864c;
            default:
                return (C2240j0) this.f5865d;
        }
    }

    public final String toString() {
        switch (this.f5863b) {
            case 0:
                return "AsyncTimeout.source(" + ((InterfaceC2234g0) this.f5865d) + ')';
            default:
                return "source(" + ((InputStream) this.f5864c) + ')';
        }
    }

    public C2231f(C2233g c2233g, InterfaceC2234g0 interfaceC2234g0) {
        this.f5864c = c2233g;
        this.f5865d = interfaceC2234g0;
    }
}

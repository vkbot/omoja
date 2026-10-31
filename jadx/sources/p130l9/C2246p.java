package p130l9;

import java.io.IOException;
import java.util.zip.Deflater;

/* JADX INFO: renamed from: l9.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2246p implements InterfaceC2230e0 {

    /* JADX INFO: renamed from: b */
    public final C2256z f5883b;

    /* JADX INFO: renamed from: c */
    public final Deflater f5884c;

    /* JADX INFO: renamed from: d */
    public boolean f5885d;

    public C2246p(C2242l c2242l, Deflater deflater) {
        this.f5883b = new C2256z(c2242l);
        this.f5884c = deflater;
    }

    /* JADX INFO: renamed from: b */
    public final void m3637b(boolean z9) throws IOException {
        C2224b0 c2224b0M3619k0;
        int iDeflate;
        C2256z c2256z = this.f5883b;
        C2242l c2242l = c2256z.f5909c;
        while (true) {
            c2224b0M3619k0 = c2242l.m3619k0(1);
            byte[] bArr = c2224b0M3619k0.f5849a;
            int i10 = c2224b0M3619k0.f5851c;
            Deflater deflater = this.f5884c;
            if (z9) {
                try {
                    iDeflate = deflater.deflate(bArr, i10, 8192 - i10, 2);
                } catch (NullPointerException e) {
                    throw new IOException("Deflater already closed", e);
                }
            } else {
                iDeflate = deflater.deflate(bArr, i10, 8192 - i10);
            }
            if (iDeflate > 0) {
                c2224b0M3619k0.f5851c += iDeflate;
                c2242l.f5878c += (long) iDeflate;
                c2256z.mo3622n();
            } else if (deflater.needsInput()) {
                break;
            }
        }
        if (c2224b0M3619k0.f5850b == c2224b0M3619k0.f5851c) {
            c2242l.f5877b = c2224b0M3619k0.m3576a();
            AbstractC2226c0.m3581a(c2224b0M3619k0);
        }
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        Deflater deflater = this.f5884c;
        if (this.f5885d) {
            return;
        }
        deflater.finish();
        m3637b(false);
        th = null;
        try {
            deflater.end();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        try {
            this.f5883b.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f5885d = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Flushable
    public final void flush() throws IOException {
        m3637b(true);
        this.f5883b.flush();
    }

    @Override // p130l9.InterfaceC2230e0
    public final C2240j0 timeout() {
        return this.f5883b.f5908b.timeout();
    }

    public final String toString() {
        return "DeflaterSink(" + this.f5883b + ')';
    }

    @Override // p130l9.InterfaceC2230e0
    public final void write(C2242l c2242l, long j10) throws IOException {
        c2242l.getClass();
        AbstractC2223b.m3571d(c2242l.f5878c, 0L, j10);
        while (j10 > 0) {
            C2224b0 c2224b0 = c2242l.f5877b;
            c2224b0.getClass();
            int iMin = (int) Math.min(j10, c2224b0.f5851c - c2224b0.f5850b);
            this.f5884c.setInput(c2224b0.f5849a, c2224b0.f5850b, iMin);
            m3637b(false);
            long j11 = iMin;
            c2242l.f5878c -= j11;
            int i10 = c2224b0.f5850b + iMin;
            c2224b0.f5850b = i10;
            if (i10 == c2224b0.f5851c) {
                c2242l.f5877b = c2224b0.m3576a();
                AbstractC2226c0.m3581a(c2224b0);
            }
            j10 -= j11;
        }
    }
}

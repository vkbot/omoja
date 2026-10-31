package p130l9;

import ai.onnxruntime.AbstractC0074a;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import p099j1.C1929i;

/* JADX INFO: renamed from: l9.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2251u implements InterfaceC2234g0 {

    /* JADX INFO: renamed from: b */
    public final C2222a0 f5892b;

    /* JADX INFO: renamed from: c */
    public final Inflater f5893c;

    /* JADX INFO: renamed from: d */
    public int f5894d;

    /* JADX INFO: renamed from: e */
    public boolean f5895e;

    public C2251u(C2222a0 c2222a0, Inflater inflater) {
        this.f5892b = c2222a0;
        this.f5893c = inflater;
    }

    /* JADX INFO: renamed from: b */
    public final long m3640b(C2242l c2242l, long j10) throws IOException {
        Inflater inflater = this.f5893c;
        c2242l.getClass();
        if (j10 < 0) {
            C2237i.m3597d(AbstractC0074a.m157h(j10, "byteCount < 0: "));
            return 0L;
        }
        if (this.f5895e) {
            C1929i.m3030l("closed");
            return 0L;
        }
        if (j10 != 0) {
            try {
                C2224b0 c2224b0M3619k0 = c2242l.m3619k0(1);
                int iMin = (int) Math.min(j10, 8192 - c2224b0M3619k0.f5851c);
                boolean zNeedsInput = inflater.needsInput();
                C2222a0 c2222a0 = this.f5892b;
                if (zNeedsInput && !c2222a0.mo3564k()) {
                    C2224b0 c2224b0 = c2222a0.f5846c.f5877b;
                    c2224b0.getClass();
                    int i10 = c2224b0.f5851c;
                    int i11 = c2224b0.f5850b;
                    int i12 = i10 - i11;
                    this.f5894d = i12;
                    inflater.setInput(c2224b0.f5849a, i11, i12);
                }
                int iInflate = inflater.inflate(c2224b0M3619k0.f5849a, c2224b0M3619k0.f5851c, iMin);
                int i13 = this.f5894d;
                if (i13 != 0) {
                    int remaining = i13 - inflater.getRemaining();
                    this.f5894d -= remaining;
                    c2222a0.skip(remaining);
                }
                if (iInflate > 0) {
                    c2224b0M3619k0.f5851c += iInflate;
                    long j11 = iInflate;
                    c2242l.f5878c += j11;
                    return j11;
                }
                if (c2224b0M3619k0.f5850b == c2224b0M3619k0.f5851c) {
                    c2242l.f5877b = c2224b0M3619k0.m3576a();
                    AbstractC2226c0.m3581a(c2224b0M3619k0);
                }
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        }
        return 0L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f5895e) {
            return;
        }
        this.f5893c.end();
        this.f5895e = true;
        this.f5892b.close();
    }

    @Override // p130l9.InterfaceC2234g0
    public final long read(C2242l c2242l, long j10) throws IOException {
        c2242l.getClass();
        do {
            long jM3640b = m3640b(c2242l, j10);
            if (jM3640b > 0) {
                return jM3640b;
            }
            Inflater inflater = this.f5893c;
            if (inflater.finished() || inflater.needsDictionary()) {
                return -1L;
            }
        } while (!this.f5892b.mo3564k());
        throw new EOFException("source exhausted prematurely");
    }

    @Override // p130l9.InterfaceC2234g0
    public final C2240j0 timeout() {
        return this.f5892b.f5845b.timeout();
    }
}

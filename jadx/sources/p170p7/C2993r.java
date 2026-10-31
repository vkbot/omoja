package p170p7;

import ai.onnxruntime.AbstractC0074a;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import kotlin.UByte;
import p130l9.AbstractC2223b;
import p130l9.AbstractC2226c0;
import p130l9.C2224b0;
import p130l9.C2242l;
import p157o7.AbstractC2611c;

/* JADX INFO: renamed from: p7.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2993r extends AbstractC2611c {

    /* JADX INFO: renamed from: b */
    public final C2242l f8431b;

    public C2993r(C2242l c2242l) {
        this.f8431b = c2242l;
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: S */
    public final AbstractC2611c mo4102S(int i10) {
        C2242l c2242l = new C2242l();
        c2242l.write(this.f8431b, i10);
        return new C2993r(c2242l);
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: V */
    public final void mo4103V(OutputStream outputStream, int i10) throws IOException {
        long j10 = i10;
        outputStream.getClass();
        C2242l c2242l = this.f8431b;
        AbstractC2223b.m3571d(c2242l.f5878c, 0L, j10);
        C2224b0 c2224b0 = c2242l.f5877b;
        while (j10 > 0) {
            c2224b0.getClass();
            int iMin = (int) Math.min(j10, c2224b0.f5851c - c2224b0.f5850b);
            outputStream.write(c2224b0.f5849a, c2224b0.f5850b, iMin);
            int i11 = c2224b0.f5850b + iMin;
            c2224b0.f5850b = i11;
            long j11 = iMin;
            c2242l.f5878c -= j11;
            j10 -= j11;
            if (i11 == c2224b0.f5851c) {
                C2224b0 c2224b0M3576a = c2224b0.m3576a();
                c2242l.f5877b = c2224b0M3576a;
                AbstractC2226c0.m3581a(c2224b0);
                c2224b0 = c2224b0M3576a;
            }
        }
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: c0 */
    public final void mo4105c0(ByteBuffer byteBuffer) {
        throw new UnsupportedOperationException();
    }

    @Override // p157o7.AbstractC2611c, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f8431b.m3608b();
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: d0 */
    public final void mo4106d0(byte[] bArr, int i10, int i11) {
        while (i11 > 0) {
            int i12 = this.f8431b.read(bArr, i10, i11);
            if (i12 == -1) {
                throw new IndexOutOfBoundsException(AbstractC0074a.m155f(i11, "EOF trying to read ", " bytes"));
            }
            i11 -= i12;
            i10 += i12;
        }
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: e0 */
    public final int mo4107e0() {
        try {
            return this.f8431b.readByte() & UByte.MAX_VALUE;
        } catch (EOFException e) {
            throw new IndexOutOfBoundsException(e.getMessage());
        }
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: f0 */
    public final int mo4108f0() {
        return (int) this.f8431b.f5878c;
    }

    @Override // p157o7.AbstractC2611c
    /* JADX INFO: renamed from: h0 */
    public final void mo4110h0(int i10) {
        try {
            this.f8431b.skip(i10);
        } catch (EOFException e) {
            throw new IndexOutOfBoundsException(e.getMessage());
        }
    }
}

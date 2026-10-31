package p130l9;

import java.io.IOException;
import java.nio.ByteBuffer;
import p099j1.C1929i;

/* JADX INFO: renamed from: l9.z */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2256z implements InterfaceC2243m {

    /* JADX INFO: renamed from: b */
    public final InterfaceC2230e0 f5908b;

    /* JADX INFO: renamed from: c */
    public final C2242l f5909c;

    /* JADX INFO: renamed from: d */
    public boolean f5910d;

    public C2256z(InterfaceC2230e0 interfaceC2230e0) {
        interfaceC2230e0.getClass();
        this.f5908b = interfaceC2230e0;
        this.f5909c = new C2242l();
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: A */
    public final InterfaceC2243m mo3602A(String str) {
        str.getClass();
        if (this.f5910d) {
            C1929i.m3030l("closed");
            return null;
        }
        this.f5909c.m3630u0(str);
        mo3622n();
        return this;
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: G */
    public final long mo3603G(InterfaceC2234g0 interfaceC2234g0) throws IOException {
        long j10 = 0;
        while (true) {
            long j11 = ((C2231f) interfaceC2234g0).read(this.f5909c, 8192L);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
            mo3622n();
        }
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: H */
    public final InterfaceC2243m mo3604H(long j10) {
        if (this.f5910d) {
            C1929i.m3030l("closed");
            return null;
        }
        this.f5909c.m3624o0(j10);
        mo3622n();
        return this;
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: Z */
    public final InterfaceC2243m mo3607Z(long j10) {
        if (this.f5910d) {
            C1929i.m3030l("closed");
            return null;
        }
        this.f5909c.m3623n0(j10);
        mo3622n();
        return this;
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: a */
    public final C2242l mo3634a() {
        return this.f5909c;
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        InterfaceC2230e0 interfaceC2230e0 = this.f5908b;
        if (this.f5910d) {
            return;
        }
        C2242l c2242l = this.f5909c;
        long j10 = c2242l.f5878c;
        if (j10 > 0) {
            interfaceC2230e0.write(c2242l, j10);
        }
        th = null;
        try {
            interfaceC2230e0.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        this.f5910d = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // p130l9.InterfaceC2243m, p130l9.InterfaceC2230e0, java.io.Flushable
    public final void flush() {
        if (this.f5910d) {
            C1929i.m3030l("closed");
            return;
        }
        C2242l c2242l = this.f5909c;
        long j10 = c2242l.f5878c;
        InterfaceC2230e0 interfaceC2230e0 = this.f5908b;
        if (j10 > 0) {
            interfaceC2230e0.write(c2242l, j10);
        }
        interfaceC2230e0.flush();
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: g */
    public final InterfaceC2243m mo3614g() {
        if (this.f5910d) {
            C1929i.m3030l("closed");
            return null;
        }
        C2242l c2242l = this.f5909c;
        long j10 = c2242l.f5878c;
        if (j10 > 0) {
            this.f5908b.write(c2242l, j10);
        }
        return this;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f5910d;
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: n */
    public final InterfaceC2243m mo3622n() {
        if (this.f5910d) {
            C1929i.m3030l("closed");
            return null;
        }
        C2242l c2242l = this.f5909c;
        long jM3633y = c2242l.m3633y();
        if (jM3633y > 0) {
            this.f5908b.write(c2242l, jM3633y);
        }
        return this;
    }

    @Override // p130l9.InterfaceC2230e0
    public final C2240j0 timeout() {
        return this.f5908b.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f5908b + ')';
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: w */
    public final InterfaceC2243m mo3632w(C2245o c2245o) {
        c2245o.getClass();
        if (this.f5910d) {
            C1929i.m3030l("closed");
            return null;
        }
        this.f5909c.m3620l0(c2245o);
        mo3622n();
        return this;
    }

    @Override // p130l9.InterfaceC2243m
    public final InterfaceC2243m write(byte[] bArr) {
        bArr.getClass();
        if (this.f5910d) {
            C1929i.m3030l("closed");
            return null;
        }
        this.f5909c.m7551write(bArr, 0, bArr.length);
        mo3622n();
        return this;
    }

    @Override // p130l9.InterfaceC2243m
    public final InterfaceC2243m writeByte(int i10) {
        if (this.f5910d) {
            C1929i.m3030l("closed");
            return null;
        }
        this.f5909c.m3621m0(i10);
        mo3622n();
        return this;
    }

    @Override // p130l9.InterfaceC2243m
    public final InterfaceC2243m writeInt(int i10) {
        if (this.f5910d) {
            C1929i.m3030l("closed");
            return null;
        }
        this.f5909c.m3625p0(i10);
        mo3622n();
        return this;
    }

    @Override // p130l9.InterfaceC2243m
    public final InterfaceC2243m writeShort(int i10) {
        if (this.f5910d) {
            C1929i.m3030l("closed");
            return null;
        }
        this.f5909c.m3627r0(i10);
        mo3622n();
        return this;
    }

    @Override // p130l9.InterfaceC2230e0
    public final void write(C2242l c2242l, long j10) {
        c2242l.getClass();
        if (!this.f5910d) {
            this.f5909c.write(c2242l, j10);
            mo3622n();
        } else {
            C1929i.m3030l("closed");
        }
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        if (!this.f5910d) {
            int iWrite = this.f5909c.write(byteBuffer);
            mo3622n();
            return iWrite;
        }
        C1929i.m3030l("closed");
        return 0;
    }

    @Override // p130l9.InterfaceC2243m
    public final InterfaceC2243m write(byte[] bArr, int i10, int i11) {
        bArr.getClass();
        if (!this.f5910d) {
            this.f5909c.m7551write(bArr, i10, i11);
            mo3622n();
            return this;
        }
        C1929i.m3030l("closed");
        return null;
    }
}

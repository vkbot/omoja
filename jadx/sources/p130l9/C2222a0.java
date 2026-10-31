package p130l9;

import ai.onnxruntime.AbstractC0074a;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.text.CharsKt;
import kotlin.text.Typography;
import p099j1.C1929i;
import p140m9.AbstractC2430a;

/* JADX INFO: renamed from: l9.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2222a0 implements InterfaceC2244n {

    /* JADX INFO: renamed from: b */
    public final InterfaceC2234g0 f5845b;

    /* JADX INFO: renamed from: c */
    public final C2242l f5846c;

    /* JADX INFO: renamed from: d */
    public boolean f5847d;

    public C2222a0(InterfaceC2234g0 interfaceC2234g0) {
        interfaceC2234g0.getClass();
        this.f5845b = interfaceC2234g0;
        this.f5846c = new C2242l();
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: D */
    public final String mo3550D(Charset charset) {
        charset.getClass();
        InterfaceC2234g0 interfaceC2234g0 = this.f5845b;
        C2242l c2242l = this.f5846c;
        c2242l.mo3603G(interfaceC2234g0);
        return c2242l.m3615g0(c2242l.f5878c, charset);
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: J */
    public final C2245o mo3551J() {
        InterfaceC2234g0 interfaceC2234g0 = this.f5845b;
        C2242l c2242l = this.f5846c;
        c2242l.mo3603G(interfaceC2234g0);
        return c2242l.mo3562f(c2242l.f5878c);
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: L */
    public final String mo3552L() {
        return mo3566p(Long.MAX_VALUE);
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: P */
    public final int mo3553P(C2253w c2253w) throws EOFException {
        C2242l c2242l;
        c2253w.getClass();
        if (this.f5847d) {
            C1929i.m3030l("closed");
            return 0;
        }
        do {
            c2242l = this.f5846c;
            int iM3787c = AbstractC2430a.m3787c(c2242l, c2253w, true);
            if (iM3787c != -2) {
                if (iM3787c == -1) {
                    break;
                }
                c2242l.skip(c2253w.f5898b[iM3787c].mo3585c());
                return iM3787c;
            }
        } while (this.f5845b.read(c2242l, 8192L) != -1);
        return -1;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: Q */
    public final boolean mo3554Q(long j10, C2245o c2245o) {
        c2245o.getClass();
        int iMo3585c = c2245o.mo3585c();
        if (this.f5847d) {
            C1929i.m3030l("closed");
            return false;
        }
        if (iMo3585c >= 0 && c2245o.mo3585c() >= iMo3585c) {
            for (int i10 = 0; i10 < iMo3585c; i10++) {
                long j11 = i10;
                if (mo3561d(1 + j11) && this.f5846c.m3606V(j11) == c2245o.mo3588f(i10)) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: Y */
    public final void mo3555Y(long j10) throws EOFException {
        if (!mo3561d(j10)) {
            throw new EOFException();
        }
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: a */
    public final C2242l mo3556a() {
        return this.f5846c;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: a0 */
    public final long mo3557a0() throws EOFException {
        C2242l c2242l;
        mo3555Y(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            boolean zMo3561d = mo3561d(i11);
            c2242l = this.f5846c;
            if (!zMo3561d) {
                break;
            }
            byte bM3606V = c2242l.m3606V(i10);
            if ((bM3606V < 48 || bM3606V > 57) && ((bM3606V < 97 || bM3606V > 102) && (bM3606V < 65 || bM3606V > 70))) {
                if (i10 != 0) {
                    break;
                }
                String string = Integer.toString(bM3606V, CharsKt.checkRadix(CharsKt.checkRadix(16)));
                string.getClass();
                throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(string));
            }
            i10 = i11;
        }
        return c2242l.mo3557a0();
    }

    /* JADX INFO: renamed from: b */
    public final long m3558b(long j10, long j11, byte b10) {
        if (this.f5847d) {
            C1929i.m3030l("closed");
            return 0L;
        }
        if (0 > j11) {
            C2237i.m3597d(AbstractC0074a.m157h(j11, "fromIndex=0 toIndex="));
            return 0L;
        }
        long jMax = 0;
        while (jMax < j11) {
            C2242l c2242l = this.f5846c;
            long j12 = j11;
            byte b11 = b10;
            long jM3610c0 = c2242l.m3610c0(jMax, j12, b11);
            if (jM3610c0 != -1) {
                return jM3610c0;
            }
            long j13 = c2242l.f5878c;
            if (j13 >= j12 || this.f5845b.read(c2242l, 8192L) == -1) {
                break;
            }
            jMax = Math.max(jMax, j13);
            j11 = j12;
            b10 = b11;
        }
        return -1L;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: b0 */
    public final InputStream mo3559b0() {
        return new C2241k(this, 1);
    }

    /* JADX INFO: renamed from: c */
    public final int m3560c() throws EOFException {
        mo3555Y(4L);
        int i10 = this.f5846c.readInt();
        return ((i10 & 255) << 24) | (((-16777216) & i10) >>> 24) | ((16711680 & i10) >>> 8) | ((65280 & i10) << 8);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() throws IOException {
        if (this.f5847d) {
            return;
        }
        this.f5847d = true;
        this.f5845b.close();
        this.f5846c.m3608b();
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: d */
    public final boolean mo3561d(long j10) {
        C2242l c2242l;
        if (j10 < 0) {
            C2237i.m3597d(AbstractC0074a.m157h(j10, "byteCount < 0: "));
            return false;
        }
        if (this.f5847d) {
            C1929i.m3030l("closed");
            return false;
        }
        do {
            c2242l = this.f5846c;
            if (c2242l.f5878c >= j10) {
                return true;
            }
        } while (this.f5845b.read(c2242l, 8192L) != -1);
        return false;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: f */
    public final C2245o mo3562f(long j10) throws EOFException {
        mo3555Y(j10);
        return this.f5846c.mo3562f(j10);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f5847d;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: j */
    public final byte[] mo3563j() {
        InterfaceC2234g0 interfaceC2234g0 = this.f5845b;
        C2242l c2242l = this.f5846c;
        c2242l.mo3603G(interfaceC2234g0);
        return c2242l.m3613f0(c2242l.f5878c);
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: k */
    public final boolean mo3564k() {
        if (this.f5847d) {
            C1929i.m3030l("closed");
            return false;
        }
        C2242l c2242l = this.f5846c;
        return c2242l.mo3564k() && this.f5845b.read(c2242l, 8192L) == -1;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: o */
    public final long mo3565o() throws EOFException {
        C2242l c2242l;
        mo3555Y(1L);
        long j10 = 0;
        while (true) {
            long j11 = j10 + 1;
            boolean zMo3561d = mo3561d(j11);
            c2242l = this.f5846c;
            if (!zMo3561d) {
                break;
            }
            byte bM3606V = c2242l.m3606V(j10);
            if ((bM3606V < 48 || bM3606V > 57) && !(j10 == 0 && bM3606V == 45)) {
                if (j10 != 0) {
                    break;
                }
                String string = Integer.toString(bM3606V, CharsKt.checkRadix(CharsKt.checkRadix(16)));
                string.getClass();
                throw new NumberFormatException("Expected a digit or '-' but was 0x".concat(string));
            }
            j10 = j11;
        }
        return c2242l.mo3565o();
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: p */
    public final String mo3566p(long j10) throws EOFException {
        if (j10 < 0) {
            C2237i.m3597d(AbstractC0074a.m157h(j10, "limit < 0: "));
            return null;
        }
        long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
        long jM3558b = m3558b(0L, j11, (byte) 10);
        C2242l c2242l = this.f5846c;
        if (jM3558b != -1) {
            return AbstractC2430a.m3786b(c2242l, jM3558b);
        }
        if (j11 < Long.MAX_VALUE && mo3561d(j11) && c2242l.m3606V(j11 - 1) == 13 && mo3561d(j11 + 1) && c2242l.m3606V(j11) == 10) {
            return AbstractC2430a.m3786b(c2242l, j11);
        }
        C2242l c2242l2 = new C2242l();
        c2242l.m3605S(0L, c2242l2, Math.min(32, c2242l.f5878c));
        throw new EOFException("\\n not found: limit=" + Math.min(c2242l.f5878c, j10) + " content=" + c2242l2.mo3562f(c2242l2.f5878c).mo3586d() + Typography.ellipsis);
    }

    @Override // p130l9.InterfaceC2244n
    public final C2222a0 peek() {
        return new C2222a0(new C2255y(this));
    }

    @Override // p130l9.InterfaceC2234g0
    public final long read(C2242l c2242l, long j10) {
        c2242l.getClass();
        if (j10 < 0) {
            C2237i.m3597d(AbstractC0074a.m157h(j10, "byteCount < 0: "));
            return 0L;
        }
        if (this.f5847d) {
            C1929i.m3030l("closed");
            return 0L;
        }
        C2242l c2242l2 = this.f5846c;
        if (c2242l2.f5878c == 0 && this.f5845b.read(c2242l2, 8192L) == -1) {
            return -1L;
        }
        return c2242l2.read(c2242l, Math.min(j10, c2242l2.f5878c));
    }

    @Override // p130l9.InterfaceC2244n
    public final byte readByte() throws EOFException {
        mo3555Y(1L);
        return this.f5846c.readByte();
    }

    @Override // p130l9.InterfaceC2244n
    public final void readFully(byte[] bArr) throws EOFException {
        C2242l c2242l = this.f5846c;
        bArr.getClass();
        try {
            mo3555Y(bArr.length);
            c2242l.readFully(bArr);
        } catch (EOFException e) {
            int i10 = 0;
            while (true) {
                long j10 = c2242l.f5878c;
                if (j10 <= 0) {
                    throw e;
                }
                int i11 = c2242l.read(bArr, i10, (int) j10);
                if (i11 == -1) {
                    throw new AssertionError();
                }
                i10 += i11;
            }
        }
    }

    @Override // p130l9.InterfaceC2244n
    public final int readInt() throws EOFException {
        mo3555Y(4L);
        return this.f5846c.readInt();
    }

    @Override // p130l9.InterfaceC2244n
    public final long readLong() throws EOFException {
        mo3555Y(8L);
        return this.f5846c.readLong();
    }

    @Override // p130l9.InterfaceC2244n
    public final short readShort() throws EOFException {
        mo3555Y(2L);
        return this.f5846c.readShort();
    }

    @Override // p130l9.InterfaceC2244n
    public final void skip(long j10) throws EOFException {
        if (this.f5847d) {
            C1929i.m3030l("closed");
            return;
        }
        while (j10 > 0) {
            C2242l c2242l = this.f5846c;
            if (c2242l.f5878c == 0 && this.f5845b.read(c2242l, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j10, c2242l.f5878c);
            c2242l.skip(jMin);
            j10 -= jMin;
        }
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: t */
    public final void mo3567t(C2242l c2242l, long j10) throws EOFException {
        C2242l c2242l2 = this.f5846c;
        c2242l.getClass();
        try {
            mo3555Y(j10);
            c2242l2.mo3567t(c2242l, j10);
        } catch (EOFException e) {
            c2242l.mo3603G(c2242l2);
            throw e;
        }
    }

    @Override // p130l9.InterfaceC2234g0
    public final C2240j0 timeout() {
        return this.f5845b.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f5845b + ')';
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        C2242l c2242l = this.f5846c;
        if (c2242l.f5878c == 0 && this.f5845b.read(c2242l, 8192L) == -1) {
            return -1;
        }
        return c2242l.read(byteBuffer);
    }
}

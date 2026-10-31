package p130l9;

import ai.onnxruntime.AbstractC0074a;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.UByte;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.Typography;
import okhttp3.internal.connection.RealConnection;
import p099j1.C1929i;
import p140m9.AbstractC2430a;
import p140m9.AbstractC2431b;

/* JADX INFO: renamed from: l9.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2242l implements InterfaceC2244n, InterfaceC2243m, Cloneable, ByteChannel {

    /* JADX INFO: renamed from: b */
    public C2224b0 f5877b;

    /* JADX INFO: renamed from: c */
    public long f5878c;

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: A */
    public final /* bridge */ /* synthetic */ InterfaceC2243m mo3602A(String str) {
        m3630u0(str);
        return this;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: D */
    public final String mo3550D(Charset charset) {
        charset.getClass();
        return m3615g0(this.f5878c, charset);
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: G */
    public final long mo3603G(InterfaceC2234g0 interfaceC2234g0) {
        interfaceC2234g0.getClass();
        long j10 = 0;
        while (true) {
            long j11 = interfaceC2234g0.read(this, 8192L);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
        }
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: H */
    public final /* bridge */ /* synthetic */ InterfaceC2243m mo3604H(long j10) {
        m3624o0(j10);
        return this;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: J */
    public final C2245o mo3551J() {
        return mo3562f(this.f5878c);
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: L */
    public final String mo3552L() {
        return mo3566p(Long.MAX_VALUE);
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: P */
    public final int mo3553P(C2253w c2253w) throws EOFException {
        c2253w.getClass();
        int iM3787c = AbstractC2430a.m3787c(this, c2253w, false);
        if (iM3787c == -1) {
            return -1;
        }
        skip(c2253w.f5898b[iM3787c].mo3585c());
        return iM3787c;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: Q */
    public final boolean mo3554Q(long j10, C2245o c2245o) {
        c2245o.getClass();
        int iMo3585c = c2245o.mo3585c();
        if (j10 >= 0 && iMo3585c >= 0 && this.f5878c - j10 >= iMo3585c && c2245o.mo3585c() >= iMo3585c) {
            for (int i10 = 0; i10 < iMo3585c; i10++) {
                if (m3606V(((long) i10) + j10) == c2245o.mo3588f(i10)) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: renamed from: S */
    public final void m3605S(long j10, C2242l c2242l, long j11) {
        c2242l.getClass();
        long j12 = j10;
        AbstractC2223b.m3571d(this.f5878c, j12, j11);
        if (j11 == 0) {
            return;
        }
        c2242l.f5878c += j11;
        C2224b0 c2224b0 = this.f5877b;
        while (true) {
            c2224b0.getClass();
            long j13 = c2224b0.f5851c - c2224b0.f5850b;
            if (j12 < j13) {
                break;
            }
            j12 -= j13;
            c2224b0 = c2224b0.f5854f;
        }
        C2224b0 c2224b1 = c2224b0;
        long j14 = j11;
        while (j14 > 0) {
            c2224b1.getClass();
            C2224b0 c2224b0M3578c = c2224b1.m3578c();
            int i10 = c2224b0M3578c.f5850b + ((int) j12);
            c2224b0M3578c.f5850b = i10;
            c2224b0M3578c.f5851c = Math.min(i10 + ((int) j14), c2224b0M3578c.f5851c);
            C2224b0 c2224b2 = c2242l.f5877b;
            if (c2224b2 == null) {
                c2224b0M3578c.f5855g = c2224b0M3578c;
                c2224b0M3578c.f5854f = c2224b0M3578c;
                c2242l.f5877b = c2224b0M3578c;
            } else {
                C2224b0 c2224b3 = c2224b2.f5855g;
                c2224b3.getClass();
                c2224b3.m3577b(c2224b0M3578c);
            }
            j14 -= (long) (c2224b0M3578c.f5851c - c2224b0M3578c.f5850b);
            c2224b1 = c2224b1.f5854f;
            j12 = 0;
        }
    }

    /* JADX INFO: renamed from: V */
    public final byte m3606V(long j10) {
        AbstractC2223b.m3571d(this.f5878c, j10, 1L);
        C2224b0 c2224b0 = this.f5877b;
        c2224b0.getClass();
        long j11 = this.f5878c;
        if (j11 - j10 < j10) {
            while (j11 > j10) {
                c2224b0 = c2224b0.f5855g;
                c2224b0.getClass();
                j11 -= (long) (c2224b0.f5851c - c2224b0.f5850b);
            }
            return c2224b0.f5849a[(int) ((((long) c2224b0.f5850b) + j10) - j11)];
        }
        long j12 = 0;
        while (true) {
            int i10 = c2224b0.f5851c;
            int i11 = c2224b0.f5850b;
            long j13 = ((long) (i10 - i11)) + j12;
            if (j13 > j10) {
                return c2224b0.f5849a[(int) ((((long) i11) + j10) - j12)];
            }
            c2224b0 = c2224b0.f5854f;
            c2224b0.getClass();
            j12 = j13;
        }
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: Y */
    public final void mo3555Y(long j10) throws EOFException {
        if (this.f5878c < j10) {
            throw new EOFException();
        }
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: Z */
    public final /* bridge */ /* synthetic */ InterfaceC2243m mo3607Z(long j10) {
        m3623n0(j10);
        return this;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: a0 */
    public final long mo3557a0() throws EOFException {
        int i10;
        if (this.f5878c == 0) {
            throw new EOFException();
        }
        int i11 = 0;
        boolean z9 = false;
        long j10 = 0;
        do {
            C2224b0 c2224b0 = this.f5877b;
            c2224b0.getClass();
            byte[] bArr = c2224b0.f5849a;
            int i12 = c2224b0.f5850b;
            int i13 = c2224b0.f5851c;
            while (i12 < i13) {
                byte b10 = bArr[i12];
                if (b10 >= 48 && b10 <= 57) {
                    i10 = b10 - 48;
                } else if (b10 >= 97 && b10 <= 102) {
                    i10 = b10 - 87;
                } else {
                    if (b10 < 65 || b10 > 70) {
                        z9 = true;
                        if (i11 != 0) {
                            break;
                        }
                        char[] cArr = AbstractC2431b.f6598a;
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + StringsKt.concatToString(new char[]{cArr[(b10 >> 4) & 15], cArr[b10 & 15]}));
                    }
                    i10 = b10 - 55;
                }
                if (((-1152921504606846976L) & j10) != 0) {
                    C2242l c2242l = new C2242l();
                    c2242l.m3624o0(j10);
                    c2242l.m3621m0(b10);
                    throw new NumberFormatException("Number too large: ".concat(c2242l.m3616h0()));
                }
                j10 = (j10 << 4) | ((long) i10);
                i12++;
                i11++;
            }
            if (i12 == i13) {
                this.f5877b = c2224b0.m3576a();
                AbstractC2226c0.m3581a(c2224b0);
            } else {
                c2224b0.f5850b = i12;
            }
            if (z9) {
                break;
            }
        } while (this.f5877b != null);
        this.f5878c -= (long) i11;
        return j10;
    }

    /* JADX INFO: renamed from: b */
    public final void m3608b() throws EOFException {
        skip(this.f5878c);
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: b0 */
    public final InputStream mo3559b0() {
        return new C2241k(this, 0);
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final C2242l clone() {
        C2242l c2242l = new C2242l();
        if (this.f5878c == 0) {
            return c2242l;
        }
        C2224b0 c2224b0 = this.f5877b;
        c2224b0.getClass();
        C2224b0 c2224b0M3578c = c2224b0.m3578c();
        c2242l.f5877b = c2224b0M3578c;
        c2224b0M3578c.f5855g = c2224b0M3578c;
        c2224b0M3578c.f5854f = c2224b0M3578c;
        for (C2224b0 c2224b1 = c2224b0.f5854f; c2224b1 != c2224b0; c2224b1 = c2224b1.f5854f) {
            C2224b0 c2224b2 = c2224b0M3578c.f5855g;
            c2224b2.getClass();
            c2224b1.getClass();
            c2224b2.m3577b(c2224b1.m3578c());
        }
        c2242l.f5878c = this.f5878c;
        return c2242l;
    }

    /* JADX INFO: renamed from: c0 */
    public final long m3610c0(long j10, long j11, byte b10) {
        C2224b0 c2224b0;
        long j12 = 0;
        if (0 > j10 || j10 > j11) {
            throw new IllegalArgumentException(("size=" + this.f5878c + " fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        long j13 = this.f5878c;
        if (j11 > j13) {
            j11 = j13;
        }
        if (j10 == j11 || (c2224b0 = this.f5877b) == null) {
            return -1L;
        }
        if (j13 - j10 < j10) {
            while (j13 > j10) {
                c2224b0 = c2224b0.f5855g;
                c2224b0.getClass();
                j13 -= (long) (c2224b0.f5851c - c2224b0.f5850b);
            }
            while (j13 < j11) {
                byte[] bArr = c2224b0.f5849a;
                int iMin = (int) Math.min(c2224b0.f5851c, (((long) c2224b0.f5850b) + j11) - j13);
                for (int i10 = (int) ((((long) c2224b0.f5850b) + j10) - j13); i10 < iMin; i10++) {
                    if (bArr[i10] == b10) {
                        return ((long) (i10 - c2224b0.f5850b)) + j13;
                    }
                }
                j13 += (long) (c2224b0.f5851c - c2224b0.f5850b);
                c2224b0 = c2224b0.f5854f;
                c2224b0.getClass();
                j10 = j13;
            }
            return -1L;
        }
        while (true) {
            long j14 = ((long) (c2224b0.f5851c - c2224b0.f5850b)) + j12;
            if (j14 > j10) {
                break;
            }
            c2224b0 = c2224b0.f5854f;
            c2224b0.getClass();
            j12 = j14;
        }
        while (j12 < j11) {
            byte[] bArr2 = c2224b0.f5849a;
            int iMin2 = (int) Math.min(c2224b0.f5851c, (((long) c2224b0.f5850b) + j11) - j12);
            for (int i11 = (int) ((((long) c2224b0.f5850b) + j10) - j12); i11 < iMin2; i11++) {
                if (bArr2[i11] == b10) {
                    return ((long) (i11 - c2224b0.f5850b)) + j12;
                }
            }
            j12 += (long) (c2224b0.f5851c - c2224b0.f5850b);
            c2224b0 = c2224b0.f5854f;
            c2224b0.getClass();
            j10 = j12;
        }
        return -1L;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: d */
    public final boolean mo3561d(long j10) {
        return this.f5878c >= j10;
    }

    /* JADX INFO: renamed from: d0 */
    public final long m3611d0(C2245o c2245o) {
        int i10;
        int i11;
        c2245o.getClass();
        c2245o.getClass();
        C2224b0 c2224b0 = this.f5877b;
        if (c2224b0 == null) {
            return -1L;
        }
        long j10 = this.f5878c;
        long j11 = 0;
        if (j10 < 0) {
            while (j10 > 0) {
                c2224b0 = c2224b0.f5855g;
                c2224b0.getClass();
                j10 -= (long) (c2224b0.f5851c - c2224b0.f5850b);
            }
            if (c2245o.mo3585c() == 2) {
                byte bMo3588f = c2245o.mo3588f(0);
                byte bMo3588f2 = c2245o.mo3588f(1);
                while (j10 < this.f5878c) {
                    byte[] bArr = c2224b0.f5849a;
                    i10 = (int) ((((long) c2224b0.f5850b) + j11) - j10);
                    int i12 = c2224b0.f5851c;
                    while (true) {
                        if (i10 >= i12) {
                            j11 = ((long) (c2224b0.f5851c - c2224b0.f5850b)) + j10;
                            c2224b0 = c2224b0.f5854f;
                            c2224b0.getClass();
                            j10 = j11;
                        } else {
                            byte b10 = bArr[i10];
                            if (b10 == bMo3588f || b10 == bMo3588f2) {
                                i11 = c2224b0.f5850b;
                            } else {
                                i10++;
                            }
                        }
                    }
                }
                return -1L;
            }
            byte[] bArrMo3587e = c2245o.mo3587e();
            while (j10 < this.f5878c) {
                byte[] bArr2 = c2224b0.f5849a;
                i10 = (int) ((((long) c2224b0.f5850b) + j11) - j10);
                int i13 = c2224b0.f5851c;
                while (true) {
                    if (i10 < i13) {
                        byte b11 = bArr2[i10];
                        int length = bArrMo3587e.length;
                        int i14 = 0;
                        while (true) {
                            if (i14 >= length) {
                                i10++;
                            } else if (b11 == bArrMo3587e[i14]) {
                                i11 = c2224b0.f5850b;
                            } else {
                                i14++;
                            }
                        }
                    } else {
                        j11 = ((long) (c2224b0.f5851c - c2224b0.f5850b)) + j10;
                        c2224b0 = c2224b0.f5854f;
                        c2224b0.getClass();
                        j10 = j11;
                    }
                }
            }
            return -1L;
        }
        j10 = 0;
        while (true) {
            long j12 = ((long) (c2224b0.f5851c - c2224b0.f5850b)) + j10;
            if (j12 > 0) {
                break;
            }
            c2224b0 = c2224b0.f5854f;
            c2224b0.getClass();
            j10 = j12;
        }
        if (c2245o.mo3585c() == 2) {
            byte bMo3588f3 = c2245o.mo3588f(0);
            byte bMo3588f4 = c2245o.mo3588f(1);
            while (j10 < this.f5878c) {
                byte[] bArr3 = c2224b0.f5849a;
                i10 = (int) ((((long) c2224b0.f5850b) + j11) - j10);
                int i15 = c2224b0.f5851c;
                while (true) {
                    if (i10 >= i15) {
                        j11 = ((long) (c2224b0.f5851c - c2224b0.f5850b)) + j10;
                        c2224b0 = c2224b0.f5854f;
                        c2224b0.getClass();
                        j10 = j11;
                    } else {
                        byte b12 = bArr3[i10];
                        if (b12 == bMo3588f3 || b12 == bMo3588f4) {
                            i11 = c2224b0.f5850b;
                        } else {
                            i10++;
                        }
                    }
                }
            }
            return -1L;
        }
        byte[] bArrMo3587e2 = c2245o.mo3587e();
        while (j10 < this.f5878c) {
            byte[] bArr4 = c2224b0.f5849a;
            i10 = (int) ((((long) c2224b0.f5850b) + j11) - j10);
            int i16 = c2224b0.f5851c;
            while (true) {
                if (i10 < i16) {
                    byte b13 = bArr4[i10];
                    int length2 = bArrMo3587e2.length;
                    int i17 = 0;
                    while (true) {
                        if (i17 >= length2) {
                            i10++;
                        } else if (b13 == bArrMo3587e2[i17]) {
                            i11 = c2224b0.f5850b;
                        } else {
                            i17++;
                        }
                    }
                } else {
                    j11 = ((long) (c2224b0.f5851c - c2224b0.f5850b)) + j10;
                    c2224b0 = c2224b0.f5854f;
                    c2224b0.getClass();
                    j10 = j11;
                }
            }
        }
        return -1L;
        return ((long) (i10 - i11)) + j10;
    }

    /* JADX INFO: renamed from: e0 */
    public final C2239j m3612e0(C2239j c2239j) {
        c2239j.getClass();
        byte[] bArr = AbstractC2430a.f6597a;
        c2239j.getClass();
        if (c2239j == AbstractC2223b.f5848a) {
            c2239j = new C2239j();
        }
        if (c2239j.f5868b != null) {
            C1929i.m3030l("already attached to a buffer");
            return null;
        }
        c2239j.f5868b = this;
        c2239j.f5869c = true;
        return c2239j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2242l)) {
            return false;
        }
        long j10 = this.f5878c;
        C2242l c2242l = (C2242l) obj;
        if (j10 != c2242l.f5878c) {
            return false;
        }
        if (j10 == 0) {
            return true;
        }
        C2224b0 c2224b0 = this.f5877b;
        c2224b0.getClass();
        C2224b0 c2224b1 = c2242l.f5877b;
        c2224b1.getClass();
        int i10 = c2224b0.f5850b;
        int i11 = c2224b1.f5850b;
        long j11 = 0;
        while (j11 < this.f5878c) {
            long jMin = Math.min(c2224b0.f5851c - i10, c2224b1.f5851c - i11);
            long j12 = 0;
            while (j12 < jMin) {
                int i12 = i10 + 1;
                int i13 = i11 + 1;
                if (c2224b0.f5849a[i10] != c2224b1.f5849a[i11]) {
                    return false;
                }
                j12++;
                i10 = i12;
                i11 = i13;
            }
            if (i10 == c2224b0.f5851c) {
                c2224b0 = c2224b0.f5854f;
                c2224b0.getClass();
                i10 = c2224b0.f5850b;
            }
            if (i11 == c2224b1.f5851c) {
                c2224b1 = c2224b1.f5854f;
                c2224b1.getClass();
                i11 = c2224b1.f5850b;
            }
            j11 += jMin;
        }
        return true;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: f */
    public final C2245o mo3562f(long j10) throws EOFException {
        if (j10 < 0 || j10 > 2147483647L) {
            C2237i.m3597d(AbstractC0074a.m157h(j10, "byteCount: "));
            return null;
        }
        if (this.f5878c < j10) {
            throw new EOFException();
        }
        if (j10 < 4096) {
            return new C2245o(m3613f0(j10));
        }
        C2245o c2245oM3618j0 = m3618j0((int) j10);
        skip(j10);
        return c2245oM3618j0;
    }

    /* JADX INFO: renamed from: f0 */
    public final byte[] m3613f0(long j10) throws EOFException {
        if (j10 < 0 || j10 > 2147483647L) {
            C2237i.m3597d(AbstractC0074a.m157h(j10, "byteCount: "));
            return null;
        }
        if (this.f5878c < j10) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j10];
        readFully(bArr);
        return bArr;
    }

    /* JADX INFO: renamed from: g0 */
    public final String m3615g0(long j10, Charset charset) throws EOFException {
        charset.getClass();
        if (j10 < 0 || j10 > 2147483647L) {
            C2237i.m3597d(AbstractC0074a.m157h(j10, "byteCount: "));
            return null;
        }
        if (this.f5878c < j10) {
            throw new EOFException();
        }
        if (j10 == 0) {
            return "";
        }
        C2224b0 c2224b0 = this.f5877b;
        c2224b0.getClass();
        int i10 = c2224b0.f5850b;
        if (((long) i10) + j10 > c2224b0.f5851c) {
            return new String(m3613f0(j10), charset);
        }
        int i11 = (int) j10;
        String str = new String(c2224b0.f5849a, i10, i11, charset);
        int i12 = c2224b0.f5850b + i11;
        c2224b0.f5850b = i12;
        this.f5878c -= j10;
        if (i12 == c2224b0.f5851c) {
            this.f5877b = c2224b0.m3576a();
            AbstractC2226c0.m3581a(c2224b0);
        }
        return str;
    }

    /* JADX INFO: renamed from: h0 */
    public final String m3616h0() {
        return m3615g0(this.f5878c, Charsets.UTF_8);
    }

    public final int hashCode() {
        C2224b0 c2224b0 = this.f5877b;
        if (c2224b0 == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = c2224b0.f5851c;
            for (int i12 = c2224b0.f5850b; i12 < i11; i12++) {
                i10 = (i10 * 31) + c2224b0.f5849a[i12];
            }
            c2224b0 = c2224b0.f5854f;
            c2224b0.getClass();
        } while (c2224b0 != this.f5877b);
        return i10;
    }

    /* JADX INFO: renamed from: i0 */
    public final C2245o m3617i0() {
        long j10 = this.f5878c;
        if (j10 <= 2147483647L) {
            return m3618j0((int) j10);
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.f5878c).toString());
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: j */
    public final byte[] mo3563j() {
        return m3613f0(this.f5878c);
    }

    /* JADX INFO: renamed from: j0 */
    public final C2245o m3618j0(int i10) {
        if (i10 == 0) {
            return C2245o.f5879e;
        }
        AbstractC2223b.m3571d(this.f5878c, 0L, i10);
        C2224b0 c2224b0 = this.f5877b;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            c2224b0.getClass();
            int i14 = c2224b0.f5851c;
            int i15 = c2224b0.f5850b;
            if (i14 == i15) {
                C1929i.m3023e("s.limit == s.pos");
                return null;
            }
            i12 += i14 - i15;
            i13++;
            c2224b0 = c2224b0.f5854f;
        }
        byte[][] bArr = new byte[i13][];
        int[] iArr = new int[i13 * 2];
        C2224b0 c2224b1 = this.f5877b;
        int i16 = 0;
        while (i11 < i10) {
            c2224b1.getClass();
            bArr[i16] = c2224b1.f5849a;
            i11 += c2224b1.f5851c - c2224b1.f5850b;
            iArr[i16] = Math.min(i11, i10);
            iArr[i16 + i13] = c2224b1.f5850b;
            c2224b1.f5852d = true;
            i16++;
            c2224b1 = c2224b1.f5854f;
        }
        return new C2228d0(bArr, iArr);
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: k */
    public final boolean mo3564k() {
        return this.f5878c == 0;
    }

    /* JADX INFO: renamed from: k0 */
    public final C2224b0 m3619k0(int i10) {
        if (i10 < 1 || i10 > 8192) {
            C1929i.m3029k("unexpected capacity");
            return null;
        }
        C2224b0 c2224b0 = this.f5877b;
        if (c2224b0 == null) {
            C2224b0 c2224b0M3582b = AbstractC2226c0.m3582b();
            this.f5877b = c2224b0M3582b;
            c2224b0M3582b.f5855g = c2224b0M3582b;
            c2224b0M3582b.f5854f = c2224b0M3582b;
            return c2224b0M3582b;
        }
        C2224b0 c2224b1 = c2224b0.f5855g;
        c2224b1.getClass();
        if (c2224b1.f5851c + i10 <= 8192 && c2224b1.f5853e) {
            return c2224b1;
        }
        C2224b0 c2224b0M3582b2 = AbstractC2226c0.m3582b();
        c2224b1.m3577b(c2224b0M3582b2);
        return c2224b0M3582b2;
    }

    /* JADX INFO: renamed from: l0 */
    public final void m3620l0(C2245o c2245o) {
        c2245o.getClass();
        c2245o.mo3593m(c2245o.mo3585c(), this);
    }

    /* JADX INFO: renamed from: m0 */
    public final void m3621m0(int i10) {
        C2224b0 c2224b0M3619k0 = m3619k0(1);
        byte[] bArr = c2224b0M3619k0.f5849a;
        int i11 = c2224b0M3619k0.f5851c;
        c2224b0M3619k0.f5851c = i11 + 1;
        bArr[i11] = (byte) i10;
        this.f5878c++;
    }

    /* JADX INFO: renamed from: n0 */
    public final void m3623n0(long j10) {
        boolean z9;
        if (j10 == 0) {
            m3621m0(48);
            return;
        }
        int i10 = 1;
        if (j10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                m3630u0("-9223372036854775808");
                return;
            }
            z9 = true;
        } else {
            z9 = false;
        }
        if (j10 < 100000000) {
            if (j10 < 10000) {
                if (j10 >= 100) {
                    i10 = j10 < 1000 ? 3 : 4;
                } else if (j10 >= 10) {
                    i10 = 2;
                }
            } else if (j10 < 1000000) {
                i10 = j10 < 100000 ? 5 : 6;
            } else {
                i10 = j10 < 10000000 ? 7 : 8;
            }
        } else if (j10 < 1000000000000L) {
            if (j10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                i10 = j10 < 1000000000 ? 9 : 10;
            } else {
                i10 = j10 < 100000000000L ? 11 : 12;
            }
        } else if (j10 < 1000000000000000L) {
            if (j10 < 10000000000000L) {
                i10 = 13;
            } else {
                i10 = j10 < 100000000000000L ? 14 : 15;
            }
        } else if (j10 < 100000000000000000L) {
            i10 = j10 < 10000000000000000L ? 16 : 17;
        } else {
            i10 = j10 < 1000000000000000000L ? 18 : 19;
        }
        if (z9) {
            i10++;
        }
        C2224b0 c2224b0M3619k0 = m3619k0(i10);
        byte[] bArr = c2224b0M3619k0.f5849a;
        int i11 = c2224b0M3619k0.f5851c + i10;
        while (j10 != 0) {
            long j11 = 10;
            i11--;
            bArr[i11] = AbstractC2430a.f6597a[(int) (j10 % j11)];
            j10 /= j11;
        }
        if (z9) {
            bArr[i11 - 1] = 45;
        }
        c2224b0M3619k0.f5851c += i10;
        this.f5878c += (long) i10;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: o */
    public final long mo3565o() throws EOFException {
        long j10;
        char c;
        int i10;
        byte b10;
        long j11 = 0;
        if (this.f5878c == 0) {
            throw new EOFException();
        }
        long j12 = -7;
        long j13 = 0;
        int i11 = 0;
        boolean z9 = false;
        boolean z10 = false;
        loop0: while (true) {
            C2224b0 c2224b0 = this.f5877b;
            c2224b0.getClass();
            byte[] bArr = c2224b0.f5849a;
            int i12 = c2224b0.f5850b;
            int i13 = c2224b0.f5851c;
            while (true) {
                if (i12 >= i13) {
                    j10 = j11;
                    c = 0;
                    i10 = 1;
                    break;
                }
                c = 0;
                b10 = bArr[i12];
                i10 = 1;
                if (b10 >= 48 && b10 <= 57) {
                    int i14 = 48 - b10;
                    if (j13 < -922337203685477580L) {
                        break loop0;
                    }
                    j10 = j11;
                    if (j13 == -922337203685477580L && i14 < j12) {
                        break loop0;
                    }
                    j13 = (j13 * 10) + ((long) i14);
                } else {
                    j10 = j11;
                    if (b10 != 45 || i11 != 0) {
                        z10 = true;
                        break;
                    }
                    j12--;
                    z9 = true;
                }
                i12++;
                i11++;
                j11 = j10;
            }
            if (i12 == i13) {
                this.f5877b = c2224b0.m3576a();
                AbstractC2226c0.m3581a(c2224b0);
            } else {
                c2224b0.f5850b = i12;
            }
            if (z10 || this.f5877b == null) {
                long j14 = this.f5878c - ((long) i11);
                this.f5878c = j14;
                if (i11 >= (z9 ? 2 : i10)) {
                    return z9 ? j13 : -j13;
                }
                if (j14 == j10) {
                    throw new EOFException();
                }
                StringBuilder sbM172w = AbstractC0074a.m172w(z9 ? "Expected a digit" : "Expected a digit or '-'", " but was 0x");
                byte bM3606V = m3606V(j10);
                char[] cArr = AbstractC2431b.f6598a;
                char c10 = cArr[(bM3606V >> 4) & 15];
                char c11 = cArr[bM3606V & 15];
                char[] cArr2 = new char[2];
                cArr2[c] = c10;
                cArr2[i10] = c11;
                sbM172w.append(StringsKt.concatToString(cArr2));
                throw new NumberFormatException(sbM172w.toString());
            }
            j11 = j10;
        }
        C2242l c2242l = new C2242l();
        c2242l.m3623n0(j13);
        c2242l.m3621m0(b10);
        if (!z9) {
            c2242l.readByte();
        }
        throw new NumberFormatException("Number too large: ".concat(c2242l.m3616h0()));
    }

    /* JADX INFO: renamed from: o0 */
    public final void m3624o0(long j10) {
        if (j10 == 0) {
            m3621m0(48);
            return;
        }
        long j11 = (j10 >>> 1) | j10;
        long j12 = j11 | (j11 >>> 2);
        long j13 = j12 | (j12 >>> 4);
        long j14 = j13 | (j13 >>> 8);
        long j15 = j14 | (j14 >>> 16);
        long j16 = j15 | (j15 >>> 32);
        long j17 = j16 - ((j16 >>> 1) & 6148914691236517205L);
        long j18 = ((j17 >>> 2) & 3689348814741910323L) + (j17 & 3689348814741910323L);
        long j19 = ((j18 >>> 4) + j18) & 1085102592571150095L;
        long j20 = j19 + (j19 >>> 8);
        long j21 = j20 + (j20 >>> 16);
        int i10 = (int) ((((j21 & 63) + ((j21 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        C2224b0 c2224b0M3619k0 = m3619k0(i10);
        byte[] bArr = c2224b0M3619k0.f5849a;
        int i11 = c2224b0M3619k0.f5851c;
        for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
            bArr[i12] = AbstractC2430a.f6597a[(int) (15 & j10)];
            j10 >>>= 4;
        }
        c2224b0M3619k0.f5851c += i10;
        this.f5878c += (long) i10;
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: p */
    public final String mo3566p(long j10) throws EOFException {
        if (j10 < 0) {
            C2237i.m3597d(AbstractC0074a.m157h(j10, "limit < 0: "));
            return null;
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        long jM3610c0 = m3610c0(0L, j11, (byte) 10);
        if (jM3610c0 != -1) {
            return AbstractC2430a.m3786b(this, jM3610c0);
        }
        if (j11 < this.f5878c && m3606V(j11 - 1) == 13 && m3606V(j11) == 10) {
            return AbstractC2430a.m3786b(this, j11);
        }
        C2242l c2242l = new C2242l();
        m3605S(0L, c2242l, Math.min(32, this.f5878c));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f5878c, j10) + " content=" + c2242l.mo3562f(c2242l.f5878c).mo3586d() + Typography.ellipsis);
    }

    /* JADX INFO: renamed from: p0 */
    public final void m3625p0(int i10) {
        C2224b0 c2224b0M3619k0 = m3619k0(4);
        byte[] bArr = c2224b0M3619k0.f5849a;
        int i11 = c2224b0M3619k0.f5851c;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        c2224b0M3619k0.f5851c = i11 + 4;
        this.f5878c += 4;
    }

    @Override // p130l9.InterfaceC2244n
    public final C2222a0 peek() {
        return new C2222a0(new C2255y(this));
    }

    /* JADX INFO: renamed from: q0 */
    public final void m3626q0(long j10) {
        C2224b0 c2224b0M3619k0 = m3619k0(8);
        byte[] bArr = c2224b0M3619k0.f5849a;
        int i10 = c2224b0M3619k0.f5851c;
        bArr[i10] = (byte) ((j10 >>> 56) & 255);
        bArr[i10 + 1] = (byte) ((j10 >>> 48) & 255);
        bArr[i10 + 2] = (byte) ((j10 >>> 40) & 255);
        bArr[i10 + 3] = (byte) ((j10 >>> 32) & 255);
        bArr[i10 + 4] = (byte) ((j10 >>> 24) & 255);
        bArr[i10 + 5] = (byte) ((j10 >>> 16) & 255);
        bArr[i10 + 6] = (byte) ((j10 >>> 8) & 255);
        bArr[i10 + 7] = (byte) (j10 & 255);
        c2224b0M3619k0.f5851c = i10 + 8;
        this.f5878c += 8;
    }

    /* JADX INFO: renamed from: r0 */
    public final void m3627r0(int i10) {
        C2224b0 c2224b0M3619k0 = m3619k0(2);
        byte[] bArr = c2224b0M3619k0.f5849a;
        int i11 = c2224b0M3619k0.f5851c;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        c2224b0M3619k0.f5851c = i11 + 2;
        this.f5878c += 2;
    }

    public final int read(byte[] bArr, int i10, int i11) {
        bArr.getClass();
        AbstractC2223b.m3571d(bArr.length, i10, i11);
        C2224b0 c2224b0 = this.f5877b;
        if (c2224b0 == null) {
            return -1;
        }
        int iMin = Math.min(i11, c2224b0.f5851c - c2224b0.f5850b);
        byte[] bArr2 = c2224b0.f5849a;
        int i12 = c2224b0.f5850b;
        ArraysKt.copyInto(bArr2, bArr, i10, i12, i12 + iMin);
        int i13 = c2224b0.f5850b + iMin;
        c2224b0.f5850b = i13;
        this.f5878c -= (long) iMin;
        if (i13 == c2224b0.f5851c) {
            this.f5877b = c2224b0.m3576a();
            AbstractC2226c0.m3581a(c2224b0);
        }
        return iMin;
    }

    @Override // p130l9.InterfaceC2244n
    public final byte readByte() throws EOFException {
        if (this.f5878c == 0) {
            throw new EOFException();
        }
        C2224b0 c2224b0 = this.f5877b;
        c2224b0.getClass();
        int i10 = c2224b0.f5850b;
        int i11 = c2224b0.f5851c;
        int i12 = i10 + 1;
        byte b10 = c2224b0.f5849a[i10];
        this.f5878c--;
        if (i12 != i11) {
            c2224b0.f5850b = i12;
            return b10;
        }
        this.f5877b = c2224b0.m3576a();
        AbstractC2226c0.m3581a(c2224b0);
        return b10;
    }

    @Override // p130l9.InterfaceC2244n
    public final void readFully(byte[] bArr) throws EOFException {
        bArr.getClass();
        int i10 = 0;
        while (i10 < bArr.length) {
            int i11 = read(bArr, i10, bArr.length - i10);
            if (i11 == -1) {
                throw new EOFException();
            }
            i10 += i11;
        }
    }

    @Override // p130l9.InterfaceC2244n
    public final int readInt() throws EOFException {
        if (this.f5878c < 4) {
            throw new EOFException();
        }
        C2224b0 c2224b0 = this.f5877b;
        c2224b0.getClass();
        int i10 = c2224b0.f5850b;
        int i11 = c2224b0.f5851c;
        if (i11 - i10 < 4) {
            return ((readByte() & UByte.MAX_VALUE) << 24) | ((readByte() & UByte.MAX_VALUE) << 16) | ((readByte() & UByte.MAX_VALUE) << 8) | (readByte() & UByte.MAX_VALUE);
        }
        byte[] bArr = c2224b0.f5849a;
        int i12 = i10 + 3;
        int i13 = ((bArr[i10 + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i10] & UByte.MAX_VALUE) << 24) | ((bArr[i10 + 2] & UByte.MAX_VALUE) << 8);
        int i14 = i10 + 4;
        int i15 = (bArr[i12] & UByte.MAX_VALUE) | i13;
        this.f5878c -= 4;
        if (i14 != i11) {
            c2224b0.f5850b = i14;
            return i15;
        }
        this.f5877b = c2224b0.m3576a();
        AbstractC2226c0.m3581a(c2224b0);
        return i15;
    }

    @Override // p130l9.InterfaceC2244n
    public final long readLong() throws EOFException {
        if (this.f5878c < 8) {
            throw new EOFException();
        }
        C2224b0 c2224b0 = this.f5877b;
        c2224b0.getClass();
        int i10 = c2224b0.f5850b;
        int i11 = c2224b0.f5851c;
        if (i11 - i10 < 8) {
            return ((((long) readInt()) & 4294967295L) << 32) | (4294967295L & ((long) readInt()));
        }
        byte[] bArr = c2224b0.f5849a;
        int i12 = i10 + 7;
        long j10 = ((((long) bArr[i10]) & 255) << 56) | ((((long) bArr[i10 + 1]) & 255) << 48) | ((((long) bArr[i10 + 2]) & 255) << 40) | ((((long) bArr[i10 + 3]) & 255) << 32) | ((((long) bArr[i10 + 4]) & 255) << 24) | ((((long) bArr[i10 + 5]) & 255) << 16) | ((((long) bArr[i10 + 6]) & 255) << 8);
        int i13 = i10 + 8;
        long j11 = j10 | (((long) bArr[i12]) & 255);
        this.f5878c -= 8;
        if (i13 != i11) {
            c2224b0.f5850b = i13;
            return j11;
        }
        this.f5877b = c2224b0.m3576a();
        AbstractC2226c0.m3581a(c2224b0);
        return j11;
    }

    @Override // p130l9.InterfaceC2244n
    public final short readShort() throws EOFException {
        if (this.f5878c < 2) {
            throw new EOFException();
        }
        C2224b0 c2224b0 = this.f5877b;
        c2224b0.getClass();
        int i10 = c2224b0.f5850b;
        int i11 = c2224b0.f5851c;
        if (i11 - i10 < 2) {
            return (short) (((readByte() & UByte.MAX_VALUE) << 8) | (readByte() & UByte.MAX_VALUE));
        }
        byte[] bArr = c2224b0.f5849a;
        int i12 = i10 + 1;
        int i13 = (bArr[i10] & UByte.MAX_VALUE) << 8;
        int i14 = i10 + 2;
        int i15 = (bArr[i12] & UByte.MAX_VALUE) | i13;
        this.f5878c -= 2;
        if (i14 == i11) {
            this.f5877b = c2224b0.m3576a();
            AbstractC2226c0.m3581a(c2224b0);
        } else {
            c2224b0.f5850b = i14;
        }
        return (short) i15;
    }

    /* JADX INFO: renamed from: s0 */
    public final void m3628s0(String str, int i10, int i11, Charset charset) {
        if (i10 < 0) {
            C2237i.m3597d(AbstractC0074a.m154e(i10, "beginIndex < 0: "));
            return;
        }
        if (i11 < i10) {
            C2237i.m3597d(AbstractC0074a.m156g(i11, "endIndex < beginIndex: ", " < ", i10));
            return;
        }
        if (i11 > str.length()) {
            C1929i.m3027i(AbstractC0074a.m166q(i11, "endIndex > string.length: ", " > "), str.length());
        } else {
            if (Intrinsics.areEqual(charset, Charsets.UTF_8)) {
                m3629t0(i10, i11, str);
                return;
            }
            byte[] bytes = str.substring(i10, i11).getBytes(charset);
            bytes.getClass();
            m7551write(bytes, 0, bytes.length);
        }
    }

    @Override // p130l9.InterfaceC2244n
    public final void skip(long j10) throws EOFException {
        while (j10 > 0) {
            C2224b0 c2224b0 = this.f5877b;
            if (c2224b0 == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j10, c2224b0.f5851c - c2224b0.f5850b);
            long j11 = iMin;
            this.f5878c -= j11;
            j10 -= j11;
            int i10 = c2224b0.f5850b + iMin;
            c2224b0.f5850b = i10;
            if (i10 == c2224b0.f5851c) {
                this.f5877b = c2224b0.m3576a();
                AbstractC2226c0.m3581a(c2224b0);
            }
        }
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: t */
    public final void mo3567t(C2242l c2242l, long j10) throws EOFException {
        c2242l.getClass();
        long j11 = this.f5878c;
        if (j11 >= j10) {
            c2242l.write(this, j10);
        } else {
            c2242l.write(this, j11);
            throw new EOFException();
        }
    }

    /* JADX INFO: renamed from: t0 */
    public final void m3629t0(int i10, int i11, String str) {
        char cCharAt;
        str.getClass();
        if (i10 < 0) {
            C2237i.m3597d(AbstractC0074a.m154e(i10, "beginIndex < 0: "));
            return;
        }
        if (i11 < i10) {
            C2237i.m3597d(AbstractC0074a.m156g(i11, "endIndex < beginIndex: ", " < ", i10));
            return;
        }
        if (i11 > str.length()) {
            C1929i.m3027i(AbstractC0074a.m166q(i11, "endIndex > string.length: ", " > "), str.length());
            return;
        }
        while (i10 < i11) {
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 < 128) {
                C2224b0 c2224b0M3619k0 = m3619k0(1);
                byte[] bArr = c2224b0M3619k0.f5849a;
                int i12 = c2224b0M3619k0.f5851c - i10;
                int iMin = Math.min(i11, 8192 - i12);
                int i13 = i10 + 1;
                bArr[i10 + i12] = (byte) cCharAt2;
                while (true) {
                    i10 = i13;
                    if (i10 >= iMin || (cCharAt = str.charAt(i10)) >= 128) {
                        break;
                    }
                    i13 = i10 + 1;
                    bArr[i10 + i12] = (byte) cCharAt;
                }
                int i14 = c2224b0M3619k0.f5851c;
                int i15 = (i12 + i10) - i14;
                c2224b0M3619k0.f5851c = i14 + i15;
                this.f5878c += (long) i15;
            } else {
                if (cCharAt2 < 2048) {
                    C2224b0 c2224b0M3619k1 = m3619k0(2);
                    byte[] bArr2 = c2224b0M3619k1.f5849a;
                    int i16 = c2224b0M3619k1.f5851c;
                    bArr2[i16] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i16 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    c2224b0M3619k1.f5851c = i16 + 2;
                    this.f5878c += 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    C2224b0 c2224b0M3619k2 = m3619k0(3);
                    byte[] bArr3 = c2224b0M3619k2.f5849a;
                    int i17 = c2224b0M3619k2.f5851c;
                    bArr3[i17] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i17 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i17 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    c2224b0M3619k2.f5851c = i17 + 3;
                    this.f5878c += 3;
                } else {
                    int i18 = i10 + 1;
                    char cCharAt3 = i18 < i11 ? str.charAt(i18) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        m3621m0(63);
                        i10 = i18;
                    } else {
                        int i19 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        C2224b0 c2224b0M3619k3 = m3619k0(4);
                        byte[] bArr4 = c2224b0M3619k3.f5849a;
                        int i20 = c2224b0M3619k3.f5851c;
                        bArr4[i20] = (byte) ((i19 >> 18) | 240);
                        bArr4[i20 + 1] = (byte) (((i19 >> 12) & 63) | 128);
                        bArr4[i20 + 2] = (byte) (((i19 >> 6) & 63) | 128);
                        bArr4[i20 + 3] = (byte) ((i19 & 63) | 128);
                        c2224b0M3619k3.f5851c = i20 + 4;
                        this.f5878c += 4;
                        i10 += 2;
                    }
                }
                i10++;
            }
        }
    }

    @Override // p130l9.InterfaceC2234g0
    public final C2240j0 timeout() {
        return C2240j0.NONE;
    }

    public final String toString() {
        return m3617i0().toString();
    }

    /* JADX INFO: renamed from: u0 */
    public final void m3630u0(String str) {
        str.getClass();
        m3629t0(0, str.length(), str);
    }

    /* JADX INFO: renamed from: v0 */
    public final void m3631v0(int i10) {
        String strConcatToString;
        if (i10 < 128) {
            m3621m0(i10);
            return;
        }
        if (i10 < 2048) {
            C2224b0 c2224b0M3619k0 = m3619k0(2);
            byte[] bArr = c2224b0M3619k0.f5849a;
            int i11 = c2224b0M3619k0.f5851c;
            bArr[i11] = (byte) ((i10 >> 6) | 192);
            bArr[i11 + 1] = (byte) ((i10 & 63) | 128);
            c2224b0M3619k0.f5851c = i11 + 2;
            this.f5878c += 2;
            return;
        }
        if (55296 <= i10 && i10 < 57344) {
            m3621m0(63);
            return;
        }
        if (i10 < 65536) {
            C2224b0 c2224b0M3619k1 = m3619k0(3);
            byte[] bArr2 = c2224b0M3619k1.f5849a;
            int i12 = c2224b0M3619k1.f5851c;
            bArr2[i12] = (byte) ((i10 >> 12) | 224);
            bArr2[i12 + 1] = (byte) (((i10 >> 6) & 63) | 128);
            bArr2[i12 + 2] = (byte) ((i10 & 63) | 128);
            c2224b0M3619k1.f5851c = i12 + 3;
            this.f5878c += 3;
            return;
        }
        if (i10 <= 1114111) {
            C2224b0 c2224b0M3619k2 = m3619k0(4);
            byte[] bArr3 = c2224b0M3619k2.f5849a;
            int i13 = c2224b0M3619k2.f5851c;
            bArr3[i13] = (byte) ((i10 >> 18) | 240);
            bArr3[i13 + 1] = (byte) (((i10 >> 12) & 63) | 128);
            bArr3[i13 + 2] = (byte) (((i10 >> 6) & 63) | 128);
            bArr3[i13 + 3] = (byte) ((i10 & 63) | 128);
            c2224b0M3619k2.f5851c = i13 + 4;
            this.f5878c += 4;
            return;
        }
        StringBuilder sb = new StringBuilder("Unexpected code point: 0x");
        if (i10 != 0) {
            char[] cArr = AbstractC2431b.f6598a;
            char[] cArr2 = {cArr[(i10 >> 28) & 15], cArr[(i10 >> 24) & 15], cArr[(i10 >> 20) & 15], cArr[(i10 >> 16) & 15], cArr[(i10 >> 12) & 15], cArr[(i10 >> 8) & 15], cArr[(i10 >> 4) & 15], cArr[i10 & 15]};
            int i14 = 0;
            while (i14 < 8 && cArr2[i14] == '0') {
                i14++;
            }
            strConcatToString = StringsKt__StringsJVMKt.concatToString(cArr2, i14, 8);
        } else {
            strConcatToString = "0";
        }
        sb.append(strConcatToString);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: w */
    public final /* bridge */ /* synthetic */ InterfaceC2243m mo3632w(C2245o c2245o) {
        m3620l0(c2245o);
        return this;
    }

    @Override // p130l9.InterfaceC2230e0
    public final void write(C2242l c2242l, long j10) {
        C2224b0 c2224b0M3582b;
        c2242l.getClass();
        if (c2242l == this) {
            C1929i.m3029k("source == this");
            return;
        }
        AbstractC2223b.m3571d(c2242l.f5878c, 0L, j10);
        while (j10 > 0) {
            C2224b0 c2224b0 = c2242l.f5877b;
            c2224b0.getClass();
            int i10 = c2224b0.f5851c;
            C2224b0 c2224b1 = c2242l.f5877b;
            c2224b1.getClass();
            long j11 = i10 - c2224b1.f5850b;
            int i11 = 0;
            if (j10 < j11) {
                C2224b0 c2224b2 = this.f5877b;
                C2224b0 c2224b3 = c2224b2 != null ? c2224b2.f5855g : null;
                if (c2224b3 != null && c2224b3.f5853e) {
                    if ((((long) c2224b3.f5851c) + j10) - ((long) (c2224b3.f5852d ? 0 : c2224b3.f5850b)) <= 8192) {
                        C2224b0 c2224b4 = c2242l.f5877b;
                        c2224b4.getClass();
                        c2224b4.m3579d(c2224b3, (int) j10);
                        c2242l.f5878c -= j10;
                        this.f5878c += j10;
                        return;
                    }
                }
                C2224b0 c2224b5 = c2242l.f5877b;
                c2224b5.getClass();
                int i12 = (int) j10;
                if (i12 <= 0 || i12 > c2224b5.f5851c - c2224b5.f5850b) {
                    C1929i.m3029k("byteCount out of range");
                    return;
                }
                if (i12 >= 1024) {
                    c2224b0M3582b = c2224b5.m3578c();
                } else {
                    c2224b0M3582b = AbstractC2226c0.m3582b();
                    byte[] bArr = c2224b5.f5849a;
                    byte[] bArr2 = c2224b0M3582b.f5849a;
                    int i13 = c2224b5.f5850b;
                    ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr2, 0, i13, i13 + i12, 2, (Object) null);
                }
                c2224b0M3582b.f5851c = c2224b0M3582b.f5850b + i12;
                c2224b5.f5850b += i12;
                C2224b0 c2224b6 = c2224b5.f5855g;
                c2224b6.getClass();
                c2224b6.m3577b(c2224b0M3582b);
                c2242l.f5877b = c2224b0M3582b;
            }
            C2224b0 c2224b7 = c2242l.f5877b;
            c2224b7.getClass();
            long j12 = c2224b7.f5851c - c2224b7.f5850b;
            c2242l.f5877b = c2224b7.m3576a();
            C2224b0 c2224b8 = this.f5877b;
            if (c2224b8 == null) {
                this.f5877b = c2224b7;
                c2224b7.f5855g = c2224b7;
                c2224b7.f5854f = c2224b7;
            } else {
                C2224b0 c2224b9 = c2224b8.f5855g;
                c2224b9.getClass();
                c2224b9.m3577b(c2224b7);
                C2224b0 c2224b10 = c2224b7.f5855g;
                if (c2224b10 == c2224b7) {
                    C1929i.m3030l("cannot compact");
                    return;
                }
                c2224b10.getClass();
                if (c2224b10.f5853e) {
                    int i14 = c2224b7.f5851c - c2224b7.f5850b;
                    C2224b0 c2224b11 = c2224b7.f5855g;
                    c2224b11.getClass();
                    int i15 = 8192 - c2224b11.f5851c;
                    C2224b0 c2224b12 = c2224b7.f5855g;
                    c2224b12.getClass();
                    if (!c2224b12.f5852d) {
                        C2224b0 c2224b13 = c2224b7.f5855g;
                        c2224b13.getClass();
                        i11 = c2224b13.f5850b;
                    }
                    if (i14 <= i15 + i11) {
                        C2224b0 c2224b14 = c2224b7.f5855g;
                        c2224b14.getClass();
                        c2224b7.m3579d(c2224b14, i14);
                        c2224b7.m3576a();
                        AbstractC2226c0.m3581a(c2224b7);
                    }
                }
            }
            c2242l.f5878c -= j12;
            this.f5878c += j12;
            j10 -= j12;
        }
    }

    @Override // p130l9.InterfaceC2243m
    public final /* bridge */ /* synthetic */ InterfaceC2243m writeByte(int i10) {
        m3621m0(i10);
        return this;
    }

    @Override // p130l9.InterfaceC2243m
    public final /* bridge */ /* synthetic */ InterfaceC2243m writeInt(int i10) {
        m3625p0(i10);
        return this;
    }

    @Override // p130l9.InterfaceC2243m
    public final /* bridge */ /* synthetic */ InterfaceC2243m writeShort(int i10) {
        m3627r0(i10);
        return this;
    }

    /* JADX INFO: renamed from: y */
    public final long m3633y() {
        long j10 = this.f5878c;
        if (j10 == 0) {
            return 0L;
        }
        C2224b0 c2224b0 = this.f5877b;
        c2224b0.getClass();
        C2224b0 c2224b1 = c2224b0.f5855g;
        c2224b1.getClass();
        int i10 = c2224b1.f5851c;
        return (i10 >= 8192 || !c2224b1.f5853e) ? j10 : j10 - ((long) (i10 - c2224b1.f5850b));
    }

    @Override // p130l9.InterfaceC2244n
    /* JADX INFO: renamed from: a */
    public final C2242l mo3556a() {
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, p130l9.InterfaceC2230e0
    public final void close() {
    }

    @Override // p130l9.InterfaceC2243m, p130l9.InterfaceC2230e0, java.io.Flushable
    public final void flush() {
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: g */
    public final InterfaceC2243m mo3614g() {
        return this;
    }

    @Override // p130l9.InterfaceC2243m
    /* JADX INFO: renamed from: n */
    public final InterfaceC2243m mo3622n() {
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        C2224b0 c2224b0 = this.f5877b;
        if (c2224b0 == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), c2224b0.f5851c - c2224b0.f5850b);
        byteBuffer.put(c2224b0.f5849a, c2224b0.f5850b, iMin);
        int i10 = c2224b0.f5850b + iMin;
        c2224b0.f5850b = i10;
        this.f5878c -= (long) iMin;
        if (i10 == c2224b0.f5851c) {
            this.f5877b = c2224b0.m3576a();
            AbstractC2226c0.m3581a(c2224b0);
        }
        return iMin;
    }

    @Override // p130l9.InterfaceC2234g0
    public final long read(C2242l c2242l, long j10) {
        c2242l.getClass();
        if (j10 >= 0) {
            long j11 = this.f5878c;
            if (j11 == 0) {
                return -1L;
            }
            if (j10 > j11) {
                j10 = j11;
            }
            c2242l.write(this, j10);
            return j10;
        }
        C2237i.m3597d(AbstractC0074a.m157h(j10, "byteCount < 0: "));
        return 0L;
    }

    @Override // p130l9.InterfaceC2243m
    public final /* bridge */ /* synthetic */ InterfaceC2243m write(byte[] bArr, int i10, int i11) {
        m7551write(bArr, i10, i11);
        return this;
    }

    @Override // p130l9.InterfaceC2243m
    public final InterfaceC2243m write(byte[] bArr) {
        bArr.getClass();
        m7551write(bArr, 0, bArr.length);
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        int iRemaining = byteBuffer.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            C2224b0 c2224b0M3619k0 = m3619k0(1);
            int iMin = Math.min(i10, 8192 - c2224b0M3619k0.f5851c);
            byteBuffer.get(c2224b0M3619k0.f5849a, c2224b0M3619k0.f5851c, iMin);
            i10 -= iMin;
            c2224b0M3619k0.f5851c += iMin;
        }
        this.f5878c += (long) iRemaining;
        return iRemaining;
    }

    /* JADX INFO: renamed from: write, reason: collision with other method in class */
    public final void m7551write(byte[] bArr, int i10, int i11) {
        bArr.getClass();
        long j10 = i11;
        AbstractC2223b.m3571d(bArr.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            C2224b0 c2224b0M3619k0 = m3619k0(1);
            int iMin = Math.min(i12 - i10, 8192 - c2224b0M3619k0.f5851c);
            int i13 = i10 + iMin;
            ArraysKt.copyInto(bArr, c2224b0M3619k0.f5849a, c2224b0M3619k0.f5851c, i10, i13);
            c2224b0M3619k0.f5851c += iMin;
            i10 = i13;
        }
        this.f5878c += j10;
    }
}

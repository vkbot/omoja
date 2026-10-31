package l9;

import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import okhttp3.HttpUrl;
import okhttp3.internal.connection.RealConnection;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class l implements n, m, Cloneable, ByteChannel {
    public b0 b;
    public long c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final /* bridge */ /* synthetic */ m A(String str) {
        u0(str);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final String D(Charset charset) {
        charset.getClass();
        return g0(this.c, charset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final long G(g0 g0Var) {
        g0Var.getClass();
        long j = 0;
        while (true) {
            long j2 = g0Var.read(this, 8192L);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final /* bridge */ /* synthetic */ m H(long j) {
        o0(j);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final o J() {
        return f(this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final String L() {
        return p(Long.MAX_VALUE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final int P(w wVar) throws EOFException {
        wVar.getClass();
        int iC = m9.a.c(this, wVar, false);
        if (iC == -1) {
            return -1;
        }
        skip(wVar.b[iC].c());
        return iC;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final boolean Q(long j, o oVar) {
        oVar.getClass();
        int iC = oVar.c();
        if (j >= 0 && iC >= 0 && this.c - j >= iC && oVar.c() >= iC) {
            for (int i = 0; i < iC; i++) {
                if (V(((long) i) + j) == oVar.f(i)) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void S(long j, l lVar, long j2) {
        lVar.getClass();
        long j3 = j;
        b.d(this.c, j3, j2);
        if (j2 == 0) {
            return;
        }
        lVar.c += j2;
        b0 b0Var = this.b;
        while (true) {
            b0Var.getClass();
            long j4 = b0Var.c - b0Var.b;
            if (j3 < j4) {
                break;
            }
            j3 -= j4;
            b0Var = b0Var.f;
        }
        b0 b0Var2 = b0Var;
        long j5 = j2;
        while (j5 > 0) {
            b0Var2.getClass();
            b0 b0VarC = b0Var2.c();
            int i = b0VarC.b + ((int) j3);
            b0VarC.b = i;
            b0VarC.c = Math.min(i + ((int) j5), b0VarC.c);
            b0 b0Var3 = lVar.b;
            if (b0Var3 == null) {
                b0VarC.g = b0VarC;
                b0VarC.f = b0VarC;
                lVar.b = b0VarC;
            } else {
                b0 b0Var4 = b0Var3.g;
                b0Var4.getClass();
                b0Var4.b(b0VarC);
            }
            j5 -= (long) (b0VarC.c - b0VarC.b);
            b0Var2 = b0Var2.f;
            j3 = 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final byte V(long j) {
        b.d(this.c, j, 1L);
        b0 b0Var = this.b;
        b0Var.getClass();
        long j2 = this.c;
        if (j2 - j < j) {
            while (j2 > j) {
                b0Var = b0Var.g;
                b0Var.getClass();
                j2 -= (long) (b0Var.c - b0Var.b);
            }
            return b0Var.a[(int) ((((long) b0Var.b) + j) - j2)];
        }
        long j3 = 0;
        while (true) {
            int i = b0Var.c;
            int i2 = b0Var.b;
            long j4 = ((long) (i - i2)) + j3;
            if (j4 > j) {
                return b0Var.a[(int) ((((long) i2) + j) - j3)];
            }
            b0Var = b0Var.f;
            b0Var.getClass();
            j3 = j4;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final void Y(long j) throws EOFException {
        if (this.c < j) {
            throw new EOFException();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final /* bridge */ /* synthetic */ m Z(long j) {
        n0(j);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final long a0() throws EOFException {
        int i;
        if (this.c == 0) {
            throw new EOFException();
        }
        int i2 = 0;
        boolean z = false;
        long j = 0;
        do {
            b0 b0Var = this.b;
            b0Var.getClass();
            byte[] bArr = b0Var.a;
            int i3 = b0Var.b;
            int i4 = b0Var.c;
            while (i3 < i4) {
                byte b = bArr[i3];
                if (b >= 48 && b <= 57) {
                    i = b - 48;
                } else if (b >= 97 && b <= 102) {
                    i = b - 87;
                } else {
                    if (b < 65 || b > 70) {
                        z = true;
                        if (i2 != 0) {
                            break;
                        }
                        char[] cArr = m9.b.a;
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + StringsKt.concatToString(new char[]{cArr[(b >> 4) & 15], cArr[b & 15]}));
                    }
                    i = b - 55;
                }
                if (((-1152921504606846976L) & j) != 0) {
                    l lVar = new l();
                    lVar.o0(j);
                    lVar.m0(b);
                    throw new NumberFormatException("Number too large: ".concat(lVar.h0()));
                }
                j = (j << 4) | ((long) i);
                i3++;
                i2++;
            }
            if (i3 == i4) {
                this.b = b0Var.a();
                c0.a(b0Var);
            } else {
                b0Var.b = i3;
            }
            if (z) {
                break;
            }
        } while (this.b != null);
        this.c -= (long) i2;
        return j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() throws EOFException {
        skip(this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final InputStream b0() {
        return new k(this, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l c() {
        l lVar = new l();
        if (this.c == 0) {
            return lVar;
        }
        b0 b0Var = this.b;
        b0Var.getClass();
        b0 b0VarC = b0Var.c();
        lVar.b = b0VarC;
        b0VarC.g = b0VarC;
        b0VarC.f = b0VarC;
        for (b0 b0Var2 = b0Var.f; b0Var2 != b0Var; b0Var2 = b0Var2.f) {
            b0 b0Var3 = b0VarC.g;
            b0Var3.getClass();
            b0Var2.getClass();
            b0Var3.b(b0Var2.c());
        }
        lVar.c = this.c;
        return lVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long c0(long j, long j2, byte b) {
        b0 b0Var;
        long j3 = 0;
        if (0 > j || j > j2) {
            throw new IllegalArgumentException(("size=" + this.c + " fromIndex=" + j + " toIndex=" + j2).toString());
        }
        long j4 = this.c;
        if (j2 > j4) {
            j2 = j4;
        }
        if (j == j2 || (b0Var = this.b) == null) {
            return -1L;
        }
        if (j4 - j < j) {
            while (j4 > j) {
                b0Var = b0Var.g;
                b0Var.getClass();
                j4 -= (long) (b0Var.c - b0Var.b);
            }
            while (j4 < j2) {
                byte[] bArr = b0Var.a;
                int iMin = (int) Math.min(b0Var.c, (((long) b0Var.b) + j2) - j4);
                for (int i = (int) ((((long) b0Var.b) + j) - j4); i < iMin; i++) {
                    if (bArr[i] == b) {
                        return ((long) (i - b0Var.b)) + j4;
                    }
                }
                j4 += (long) (b0Var.c - b0Var.b);
                b0Var = b0Var.f;
                b0Var.getClass();
                j = j4;
            }
            return -1L;
        }
        while (true) {
            long j5 = ((long) (b0Var.c - b0Var.b)) + j3;
            if (j5 > j) {
                break;
            }
            b0Var = b0Var.f;
            b0Var.getClass();
            j3 = j5;
        }
        while (j3 < j2) {
            byte[] bArr2 = b0Var.a;
            int iMin2 = (int) Math.min(b0Var.c, (((long) b0Var.b) + j2) - j3);
            for (int i2 = (int) ((((long) b0Var.b) + j) - j3); i2 < iMin2; i2++) {
                if (bArr2[i2] == b) {
                    return ((long) (i2 - b0Var.b)) + j3;
                }
            }
            j3 += (long) (b0Var.c - b0Var.b);
            b0Var = b0Var.f;
            b0Var.getClass();
            j = j3;
        }
        return -1L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final /* bridge */ /* synthetic */ Object clone() {
        return c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final boolean d(long j) {
        return this.c >= j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long d0(o oVar) {
        int i;
        int i2;
        oVar.getClass();
        oVar.getClass();
        b0 b0Var = this.b;
        if (b0Var == null) {
            return -1L;
        }
        long j = this.c;
        long j2 = 0;
        if (j < 0) {
            while (j > 0) {
                b0Var = b0Var.g;
                b0Var.getClass();
                j -= (long) (b0Var.c - b0Var.b);
            }
            if (oVar.c() == 2) {
                byte bF = oVar.f(0);
                byte bF2 = oVar.f(1);
                while (j < this.c) {
                    byte[] bArr = b0Var.a;
                    i = (int) ((((long) b0Var.b) + j2) - j);
                    int i3 = b0Var.c;
                    while (true) {
                        if (i >= i3) {
                            j2 = ((long) (b0Var.c - b0Var.b)) + j;
                            b0Var = b0Var.f;
                            b0Var.getClass();
                            j = j2;
                        } else {
                            byte b = bArr[i];
                            if (b == bF || b == bF2) {
                                i2 = b0Var.b;
                            } else {
                                i++;
                            }
                        }
                    }
                }
                return -1L;
            }
            byte[] bArrE = oVar.e();
            while (j < this.c) {
                byte[] bArr2 = b0Var.a;
                i = (int) ((((long) b0Var.b) + j2) - j);
                int i4 = b0Var.c;
                while (true) {
                    if (i < i4) {
                        byte b2 = bArr2[i];
                        int length = bArrE.length;
                        int i5 = 0;
                        while (true) {
                            if (i5 >= length) {
                                i++;
                            } else if (b2 == bArrE[i5]) {
                                i2 = b0Var.b;
                            } else {
                                i5++;
                            }
                        }
                    } else {
                        j2 = ((long) (b0Var.c - b0Var.b)) + j;
                        b0Var = b0Var.f;
                        b0Var.getClass();
                        j = j2;
                    }
                }
            }
            return -1L;
        }
        j = 0;
        while (true) {
            long j3 = ((long) (b0Var.c - b0Var.b)) + j;
            if (j3 > 0) {
                break;
            }
            b0Var = b0Var.f;
            b0Var.getClass();
            j = j3;
        }
        if (oVar.c() == 2) {
            byte bF3 = oVar.f(0);
            byte bF4 = oVar.f(1);
            while (j < this.c) {
                byte[] bArr3 = b0Var.a;
                i = (int) ((((long) b0Var.b) + j2) - j);
                int i6 = b0Var.c;
                while (true) {
                    if (i >= i6) {
                        j2 = ((long) (b0Var.c - b0Var.b)) + j;
                        b0Var = b0Var.f;
                        b0Var.getClass();
                        j = j2;
                    } else {
                        byte b3 = bArr3[i];
                        if (b3 == bF3 || b3 == bF4) {
                            i2 = b0Var.b;
                        } else {
                            i++;
                        }
                    }
                }
            }
            return -1L;
        }
        byte[] bArrE2 = oVar.e();
        while (j < this.c) {
            byte[] bArr4 = b0Var.a;
            i = (int) ((((long) b0Var.b) + j2) - j);
            int i7 = b0Var.c;
            while (true) {
                if (i < i7) {
                    byte b4 = bArr4[i];
                    int length2 = bArrE2.length;
                    int i8 = 0;
                    while (true) {
                        if (i8 >= length2) {
                            i++;
                        } else if (b4 == bArrE2[i8]) {
                            i2 = b0Var.b;
                        } else {
                            i8++;
                        }
                    }
                } else {
                    j2 = ((long) (b0Var.c - b0Var.b)) + j;
                    b0Var = b0Var.f;
                    b0Var.getClass();
                    j = j2;
                }
            }
        }
        return -1L;
        return ((long) (i - i2)) + j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final j e0(j jVar) {
        jVar.getClass();
        byte[] bArr = m9.a.a;
        jVar.getClass();
        if (jVar == b.a) {
            jVar = new j();
        }
        if (jVar.b != null) {
            j1.i.l("already attached to a buffer");
            return null;
        }
        jVar.b = this;
        jVar.c = true;
        return jVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        long j = this.c;
        l lVar = (l) obj;
        if (j != lVar.c) {
            return false;
        }
        if (j == 0) {
            return true;
        }
        b0 b0Var = this.b;
        b0Var.getClass();
        b0 b0Var2 = lVar.b;
        b0Var2.getClass();
        int i = b0Var.b;
        int i2 = b0Var2.b;
        long j2 = 0;
        while (j2 < this.c) {
            long jMin = Math.min(b0Var.c - i, b0Var2.c - i2);
            long j3 = 0;
            while (j3 < jMin) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (b0Var.a[i] != b0Var2.a[i2]) {
                    return false;
                }
                j3++;
                i = i3;
                i2 = i4;
            }
            if (i == b0Var.c) {
                b0Var = b0Var.f;
                b0Var.getClass();
                i = b0Var.b;
            }
            if (i2 == b0Var2.c) {
                b0Var2 = b0Var2.f;
                b0Var2.getClass();
                i2 = b0Var2.b;
            }
            j2 += jMin;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final o f(long j) throws EOFException {
        if (j < 0 || j > 2147483647L) {
            i.d(ai.onnxruntime.a.h(j, "byteCount: "));
            return null;
        }
        if (this.c < j) {
            throw new EOFException();
        }
        if (j < 4096) {
            return new o(f0(j));
        }
        o oVarJ0 = j0((int) j);
        skip(j);
        return oVarJ0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final byte[] f0(long j) throws EOFException {
        if (j < 0 || j > 2147483647L) {
            i.d(ai.onnxruntime.a.h(j, "byteCount: "));
            return null;
        }
        if (this.c < j) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j];
        readFully(bArr);
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String g0(long j, Charset charset) throws EOFException {
        charset.getClass();
        if (j < 0 || j > 2147483647L) {
            i.d(ai.onnxruntime.a.h(j, "byteCount: "));
            return null;
        }
        if (this.c < j) {
            throw new EOFException();
        }
        if (j == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        b0 b0Var = this.b;
        b0Var.getClass();
        int i = b0Var.b;
        if (((long) i) + j > b0Var.c) {
            return new String(f0(j), charset);
        }
        int i2 = (int) j;
        String str = new String(b0Var.a, i, i2, charset);
        int i3 = b0Var.b + i2;
        b0Var.b = i3;
        this.c -= j;
        if (i3 == b0Var.c) {
            this.b = b0Var.a();
            c0.a(b0Var);
        }
        return str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String h0() {
        return g0(this.c, Charsets.UTF_8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        b0 b0Var = this.b;
        if (b0Var == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = b0Var.c;
            for (int i3 = b0Var.b; i3 < i2; i3++) {
                i = (i * 31) + b0Var.a[i3];
            }
            b0Var = b0Var.f;
            b0Var.getClass();
        } while (b0Var != this.b);
        return i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o i0() {
        long j = this.c;
        if (j <= 2147483647L) {
            return j0((int) j);
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.c).toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final byte[] j() {
        return f0(this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o j0(int i) {
        if (i == 0) {
            return o.e;
        }
        b.d(this.c, 0L, i);
        b0 b0Var = this.b;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            b0Var.getClass();
            int i5 = b0Var.c;
            int i6 = b0Var.b;
            if (i5 == i6) {
                j1.i.e("s.limit == s.pos");
                return null;
            }
            i3 += i5 - i6;
            i4++;
            b0Var = b0Var.f;
        }
        byte[][] bArr = new byte[i4][];
        int[] iArr = new int[i4 * 2];
        b0 b0Var2 = this.b;
        int i7 = 0;
        while (i2 < i) {
            b0Var2.getClass();
            bArr[i7] = b0Var2.a;
            i2 += b0Var2.c - b0Var2.b;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = b0Var2.b;
            b0Var2.d = true;
            i7++;
            b0Var2 = b0Var2.f;
        }
        return new d0(bArr, iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final boolean k() {
        return this.c == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b0 k0(int i) {
        if (i < 1 || i > 8192) {
            j1.i.k("unexpected capacity");
            return null;
        }
        b0 b0Var = this.b;
        if (b0Var == null) {
            b0 b0VarB = c0.b();
            this.b = b0VarB;
            b0VarB.g = b0VarB;
            b0VarB.f = b0VarB;
            return b0VarB;
        }
        b0 b0Var2 = b0Var.g;
        b0Var2.getClass();
        if (b0Var2.c + i <= 8192 && b0Var2.e) {
            return b0Var2;
        }
        b0 b0VarB2 = c0.b();
        b0Var2.b(b0VarB2);
        return b0VarB2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l0(o oVar) {
        oVar.getClass();
        oVar.m(oVar.c(), this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m0(int i) {
        b0 b0VarK0 = k0(1);
        byte[] bArr = b0VarK0.a;
        int i2 = b0VarK0.c;
        b0VarK0.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.c++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n0(long j) {
        boolean z;
        if (j == 0) {
            m0(48);
            return;
        }
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                u0("-9223372036854775808");
                return;
            }
            z = true;
        } else {
            z = false;
        }
        if (j < 100000000) {
            if (j < 10000) {
                if (j >= 100) {
                    i = j < 1000 ? 3 : 4;
                } else if (j >= 10) {
                    i = 2;
                }
            } else if (j < 1000000) {
                i = j < 100000 ? 5 : 6;
            } else {
                i = j < 10000000 ? 7 : 8;
            }
        } else if (j < 1000000000000L) {
            if (j < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                i = j < 1000000000 ? 9 : 10;
            } else {
                i = j < 100000000000L ? 11 : 12;
            }
        } else if (j < 1000000000000000L) {
            if (j < 10000000000000L) {
                i = 13;
            } else {
                i = j < 100000000000000L ? 14 : 15;
            }
        } else if (j < 100000000000000000L) {
            i = j < 10000000000000000L ? 16 : 17;
        } else {
            i = j < 1000000000000000000L ? 18 : 19;
        }
        if (z) {
            i++;
        }
        b0 b0VarK0 = k0(i);
        byte[] bArr = b0VarK0.a;
        int i2 = b0VarK0.c + i;
        while (j != 0) {
            long j2 = 10;
            i2--;
            bArr[i2] = m9.a.a[(int) (j % j2)];
            j /= j2;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        b0VarK0.c += i;
        this.c += (long) i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final long o() throws EOFException {
        long j;
        char c;
        int i;
        byte b;
        long j2 = 0;
        if (this.c == 0) {
            throw new EOFException();
        }
        long j3 = -7;
        long j4 = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        loop0: while (true) {
            b0 b0Var = this.b;
            b0Var.getClass();
            byte[] bArr = b0Var.a;
            int i3 = b0Var.b;
            int i4 = b0Var.c;
            while (true) {
                if (i3 >= i4) {
                    j = j2;
                    c = 0;
                    i = 1;
                    break;
                }
                c = 0;
                b = bArr[i3];
                i = 1;
                if (b >= 48 && b <= 57) {
                    int i5 = 48 - b;
                    if (j4 < -922337203685477580L) {
                        break loop0;
                    }
                    j = j2;
                    if (j4 == -922337203685477580L && i5 < j3) {
                        break loop0;
                    }
                    j4 = (j4 * 10) + ((long) i5);
                } else {
                    j = j2;
                    if (b != 45 || i2 != 0) {
                        z2 = true;
                        break;
                    }
                    j3--;
                    z = true;
                }
                i3++;
                i2++;
                j2 = j;
            }
            if (i3 == i4) {
                this.b = b0Var.a();
                c0.a(b0Var);
            } else {
                b0Var.b = i3;
            }
            if (z2 || this.b == null) {
                long j5 = this.c - ((long) i2);
                this.c = j5;
                if (i2 >= (z ? 2 : i)) {
                    return z ? j4 : -j4;
                }
                if (j5 == j) {
                    throw new EOFException();
                }
                StringBuilder sbW = ai.onnxruntime.a.w(z ? "Expected a digit" : "Expected a digit or '-'", " but was 0x");
                byte bV = V(j);
                char[] cArr = m9.b.a;
                char c2 = cArr[(bV >> 4) & 15];
                char c3 = cArr[bV & 15];
                char[] cArr2 = new char[2];
                cArr2[c] = c2;
                cArr2[i] = c3;
                sbW.append(StringsKt.concatToString(cArr2));
                throw new NumberFormatException(sbW.toString());
            }
            j2 = j;
        }
        l lVar = new l();
        lVar.n0(j4);
        lVar.m0(b);
        if (!z) {
            lVar.readByte();
        }
        throw new NumberFormatException("Number too large: ".concat(lVar.h0()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o0(long j) {
        if (j == 0) {
            m0(48);
            return;
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j10 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j11 = ((j10 >>> 4) + j10) & 1085102592571150095L;
        long j12 = j11 + (j11 >>> 8);
        long j13 = j12 + (j12 >>> 16);
        int i = (int) ((((j13 & 63) + ((j13 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        b0 b0VarK0 = k0(i);
        byte[] bArr = b0VarK0.a;
        int i2 = b0VarK0.c;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = m9.a.a[(int) (15 & j)];
            j >>>= 4;
        }
        b0VarK0.c += i;
        this.c += (long) i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final String p(long j) throws EOFException {
        if (j < 0) {
            i.d(ai.onnxruntime.a.h(j, "limit < 0: "));
            return null;
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        long jC0 = c0(0L, j2, (byte) 10);
        if (jC0 != -1) {
            return m9.a.b(this, jC0);
        }
        if (j2 < this.c && V(j2 - 1) == 13 && V(j2) == 10) {
            return m9.a.b(this, j2);
        }
        l lVar = new l();
        S(0L, lVar, Math.min(32, this.c));
        throw new EOFException("\\n not found: limit=" + Math.min(this.c, j) + " content=" + lVar.f(lVar.c).d() + Typography.ellipsis);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void p0(int i) {
        b0 b0VarK0 = k0(4);
        byte[] bArr = b0VarK0.a;
        int i2 = b0VarK0.c;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        b0VarK0.c = i2 + 4;
        this.c += 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final a0 peek() {
        return new a0(new y(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void q0(long j) {
        b0 b0VarK0 = k0(8);
        byte[] bArr = b0VarK0.a;
        int i = b0VarK0.c;
        bArr[i] = (byte) ((j >>> 56) & 255);
        bArr[i + 1] = (byte) ((j >>> 48) & 255);
        bArr[i + 2] = (byte) ((j >>> 40) & 255);
        bArr[i + 3] = (byte) ((j >>> 32) & 255);
        bArr[i + 4] = (byte) ((j >>> 24) & 255);
        bArr[i + 5] = (byte) ((j >>> 16) & 255);
        bArr[i + 6] = (byte) ((j >>> 8) & 255);
        bArr[i + 7] = (byte) (j & 255);
        b0VarK0.c = i + 8;
        this.c += 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void r0(int i) {
        b0 b0VarK0 = k0(2);
        byte[] bArr = b0VarK0.a;
        int i2 = b0VarK0.c;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
        b0VarK0.c = i2 + 2;
        this.c += 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int read(byte[] bArr, int i, int i2) {
        bArr.getClass();
        b.d(bArr.length, i, i2);
        b0 b0Var = this.b;
        if (b0Var == null) {
            return -1;
        }
        int iMin = Math.min(i2, b0Var.c - b0Var.b);
        byte[] bArr2 = b0Var.a;
        int i3 = b0Var.b;
        ArraysKt.copyInto(bArr2, bArr, i, i3, i3 + iMin);
        int i4 = b0Var.b + iMin;
        b0Var.b = i4;
        this.c -= (long) iMin;
        if (i4 == b0Var.c) {
            this.b = b0Var.a();
            c0.a(b0Var);
        }
        return iMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final byte readByte() throws EOFException {
        if (this.c == 0) {
            throw new EOFException();
        }
        b0 b0Var = this.b;
        b0Var.getClass();
        int i = b0Var.b;
        int i2 = b0Var.c;
        int i3 = i + 1;
        byte b = b0Var.a[i];
        this.c--;
        if (i3 != i2) {
            b0Var.b = i3;
            return b;
        }
        this.b = b0Var.a();
        c0.a(b0Var);
        return b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final void readFully(byte[] bArr) throws EOFException {
        bArr.getClass();
        int i = 0;
        while (i < bArr.length) {
            int i2 = read(bArr, i, bArr.length - i);
            if (i2 == -1) {
                throw new EOFException();
            }
            i += i2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final int readInt() throws EOFException {
        if (this.c < 4) {
            throw new EOFException();
        }
        b0 b0Var = this.b;
        b0Var.getClass();
        int i = b0Var.b;
        int i2 = b0Var.c;
        if (i2 - i < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = b0Var.a;
        int i3 = i + 3;
        int i4 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8);
        int i5 = i + 4;
        int i6 = (bArr[i3] & 255) | i4;
        this.c -= 4;
        if (i5 != i2) {
            b0Var.b = i5;
            return i6;
        }
        this.b = b0Var.a();
        c0.a(b0Var);
        return i6;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final long readLong() throws EOFException {
        if (this.c < 8) {
            throw new EOFException();
        }
        b0 b0Var = this.b;
        b0Var.getClass();
        int i = b0Var.b;
        int i2 = b0Var.c;
        if (i2 - i < 8) {
            return ((((long) readInt()) & 4294967295L) << 32) | (4294967295L & ((long) readInt()));
        }
        byte[] bArr = b0Var.a;
        int i3 = i + 7;
        long j = ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
        int i4 = i + 8;
        long j2 = j | (((long) bArr[i3]) & 255);
        this.c -= 8;
        if (i4 != i2) {
            b0Var.b = i4;
            return j2;
        }
        this.b = b0Var.a();
        c0.a(b0Var);
        return j2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final short readShort() throws EOFException {
        if (this.c < 2) {
            throw new EOFException();
        }
        b0 b0Var = this.b;
        b0Var.getClass();
        int i = b0Var.b;
        int i2 = b0Var.c;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = b0Var.a;
        int i3 = i + 1;
        int i4 = (bArr[i] & 255) << 8;
        int i5 = i + 2;
        int i6 = (bArr[i3] & 255) | i4;
        this.c -= 2;
        if (i5 == i2) {
            this.b = b0Var.a();
            c0.a(b0Var);
        } else {
            b0Var.b = i5;
        }
        return (short) i6;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s0(String str, int i, int i2, Charset charset) {
        if (i < 0) {
            i.d(ai.onnxruntime.a.e(i, "beginIndex < 0: "));
            return;
        }
        if (i2 < i) {
            i.d(ai.onnxruntime.a.g(i2, "endIndex < beginIndex: ", " < ", i));
            return;
        }
        if (i2 > str.length()) {
            j1.i.i(ai.onnxruntime.a.q(i2, "endIndex > string.length: ", " > "), str.length());
        } else {
            if (Intrinsics.areEqual(charset, Charsets.UTF_8)) {
                t0(i, i2, str);
                return;
            }
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            bytes.getClass();
            m174write(bytes, 0, bytes.length);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final void skip(long j) throws EOFException {
        while (j > 0) {
            b0 b0Var = this.b;
            if (b0Var == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, b0Var.c - b0Var.b);
            long j2 = iMin;
            this.c -= j2;
            j -= j2;
            int i = b0Var.b + iMin;
            b0Var.b = i;
            if (i == b0Var.c) {
                this.b = b0Var.a();
                c0.a(b0Var);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final void t(l lVar, long j) throws EOFException {
        lVar.getClass();
        long j2 = this.c;
        if (j2 >= j) {
            lVar.write(this, j);
        } else {
            lVar.write(this, j2);
            throw new EOFException();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t0(int i, int i2, String str) {
        char cCharAt;
        str.getClass();
        if (i < 0) {
            i.d(ai.onnxruntime.a.e(i, "beginIndex < 0: "));
            return;
        }
        if (i2 < i) {
            i.d(ai.onnxruntime.a.g(i2, "endIndex < beginIndex: ", " < ", i));
            return;
        }
        if (i2 > str.length()) {
            j1.i.i(ai.onnxruntime.a.q(i2, "endIndex > string.length: ", " > "), str.length());
            return;
        }
        while (i < i2) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 < 128) {
                b0 b0VarK0 = k0(1);
                byte[] bArr = b0VarK0.a;
                int i3 = b0VarK0.c - i;
                int iMin = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) cCharAt2;
                while (true) {
                    i = i4;
                    if (i >= iMin || (cCharAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) cCharAt;
                }
                int i5 = b0VarK0.c;
                int i6 = (i3 + i) - i5;
                b0VarK0.c = i5 + i6;
                this.c += (long) i6;
            } else {
                if (cCharAt2 < 2048) {
                    b0 b0VarK1 = k0(2);
                    byte[] bArr2 = b0VarK1.a;
                    int i7 = b0VarK1.c;
                    bArr2[i7] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i7 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    b0VarK1.c = i7 + 2;
                    this.c += 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    b0 b0VarK2 = k0(3);
                    byte[] bArr3 = b0VarK2.a;
                    int i8 = b0VarK2.c;
                    bArr3[i8] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i8 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i8 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    b0VarK2.c = i8 + 3;
                    this.c += 3;
                } else {
                    int i10 = i + 1;
                    char cCharAt3 = i10 < i2 ? str.charAt(i10) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        m0(63);
                        i = i10;
                    } else {
                        int i11 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        b0 b0VarK3 = k0(4);
                        byte[] bArr4 = b0VarK3.a;
                        int i12 = b0VarK3.c;
                        bArr4[i12] = (byte) ((i11 >> 18) | 240);
                        bArr4[i12 + 1] = (byte) (((i11 >> 12) & 63) | 128);
                        bArr4[i12 + 2] = (byte) (((i11 >> 6) & 63) | 128);
                        bArr4[i12 + 3] = (byte) ((i11 & 63) | 128);
                        b0VarK3.c = i12 + 4;
                        this.c += 4;
                        i += 2;
                    }
                }
                i++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    /* JADX INFO: renamed from: timeout */
    public final j0 getTimeout() {
        return j0.NONE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return i0().toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u0(String str) {
        str.getClass();
        t0(0, str.length(), str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v0(int i) {
        String strM;
        if (i < 128) {
            m0(i);
            return;
        }
        if (i < 2048) {
            b0 b0VarK0 = k0(2);
            byte[] bArr = b0VarK0.a;
            int i2 = b0VarK0.c;
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            b0VarK0.c = i2 + 2;
            this.c += 2;
            return;
        }
        if (55296 <= i && i < 57344) {
            m0(63);
            return;
        }
        if (i < 65536) {
            b0 b0VarK1 = k0(3);
            byte[] bArr2 = b0VarK1.a;
            int i3 = b0VarK1.c;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((i & 63) | 128);
            b0VarK1.c = i3 + 3;
            this.c += 3;
            return;
        }
        if (i <= 1114111) {
            b0 b0VarK2 = k0(4);
            byte[] bArr3 = b0VarK2.a;
            int i4 = b0VarK2.c;
            bArr3[i4] = (byte) ((i >> 18) | 240);
            bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
            bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
            bArr3[i4 + 3] = (byte) ((i & 63) | 128);
            b0VarK2.c = i4 + 4;
            this.c += 4;
            return;
        }
        StringBuilder sb = new StringBuilder("Unexpected code point: 0x");
        if (i != 0) {
            char[] cArr = m9.b.a;
            char[] cArr2 = {cArr[(i >> 28) & 15], cArr[(i >> 24) & 15], cArr[(i >> 20) & 15], cArr[(i >> 16) & 15], cArr[(i >> 12) & 15], cArr[(i >> 8) & 15], cArr[(i >> 4) & 15], cArr[i & 15]};
            int i5 = 0;
            while (i5 < 8 && cArr2[i5] == '0') {
                i5++;
            }
            strM = StringsKt.m(cArr2, i5);
        } else {
            strM = "0";
        }
        sb.append(strM);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final /* bridge */ /* synthetic */ m w(o oVar) {
        l0(oVar);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public final void write(l lVar, long j) {
        b0 b0VarB;
        lVar.getClass();
        if (lVar == this) {
            j1.i.k("source == this");
            return;
        }
        b.d(lVar.c, 0L, j);
        while (j > 0) {
            b0 b0Var = lVar.b;
            b0Var.getClass();
            int i = b0Var.c;
            b0 b0Var2 = lVar.b;
            b0Var2.getClass();
            long j2 = i - b0Var2.b;
            int i2 = 0;
            if (j < j2) {
                b0 b0Var3 = this.b;
                b0 b0Var4 = b0Var3 != null ? b0Var3.g : null;
                if (b0Var4 != null && b0Var4.e) {
                    if ((((long) b0Var4.c) + j) - ((long) (b0Var4.d ? 0 : b0Var4.b)) <= 8192) {
                        b0 b0Var5 = lVar.b;
                        b0Var5.getClass();
                        b0Var5.d(b0Var4, (int) j);
                        lVar.c -= j;
                        this.c += j;
                        return;
                    }
                }
                b0 b0Var6 = lVar.b;
                b0Var6.getClass();
                int i3 = (int) j;
                if (i3 <= 0 || i3 > b0Var6.c - b0Var6.b) {
                    j1.i.k("byteCount out of range");
                    return;
                }
                if (i3 >= 1024) {
                    b0VarB = b0Var6.c();
                } else {
                    b0VarB = c0.b();
                    byte[] bArr = b0Var6.a;
                    byte[] bArr2 = b0VarB.a;
                    int i4 = b0Var6.b;
                    ArraysKt.o(bArr, bArr2, i4, i4 + i3);
                }
                b0VarB.c = b0VarB.b + i3;
                b0Var6.b += i3;
                b0 b0Var7 = b0Var6.g;
                b0Var7.getClass();
                b0Var7.b(b0VarB);
                lVar.b = b0VarB;
            }
            b0 b0Var8 = lVar.b;
            b0Var8.getClass();
            long j3 = b0Var8.c - b0Var8.b;
            lVar.b = b0Var8.a();
            b0 b0Var9 = this.b;
            if (b0Var9 == null) {
                this.b = b0Var8;
                b0Var8.g = b0Var8;
                b0Var8.f = b0Var8;
            } else {
                b0 b0Var10 = b0Var9.g;
                b0Var10.getClass();
                b0Var10.b(b0Var8);
                b0 b0Var11 = b0Var8.g;
                if (b0Var11 == b0Var8) {
                    j1.i.l("cannot compact");
                    return;
                }
                b0Var11.getClass();
                if (b0Var11.e) {
                    int i5 = b0Var8.c - b0Var8.b;
                    b0 b0Var12 = b0Var8.g;
                    b0Var12.getClass();
                    int i6 = 8192 - b0Var12.c;
                    b0 b0Var13 = b0Var8.g;
                    b0Var13.getClass();
                    if (!b0Var13.d) {
                        b0 b0Var14 = b0Var8.g;
                        b0Var14.getClass();
                        i2 = b0Var14.b;
                    }
                    if (i5 <= i6 + i2) {
                        b0 b0Var15 = b0Var8.g;
                        b0Var15.getClass();
                        b0Var8.d(b0Var15, i5);
                        b0Var8.a();
                        c0.a(b0Var8);
                    }
                }
            }
            lVar.c -= j3;
            this.c += j3;
            j -= j3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final /* bridge */ /* synthetic */ m writeByte(int i) {
        m0(i);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final /* bridge */ /* synthetic */ m writeInt(int i) {
        p0(i);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final /* bridge */ /* synthetic */ m writeShort(int i) {
        r0(i);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long y() {
        long j = this.c;
        if (j == 0) {
            return 0L;
        }
        b0 b0Var = this.b;
        b0Var.getClass();
        b0 b0Var2 = b0Var.g;
        b0Var2.getClass();
        int i = b0Var2.c;
        return (i >= 8192 || !b0Var2.e) ? j : j - ((long) (i - b0Var2.b));
    }

    @Override // l9.n
    public final l a() {
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, l9.e0
    public final void close() {
    }

    @Override // l9.m, l9.e0, java.io.Flushable
    public final void flush() {
    }

    @Override // l9.m
    public final m g() {
        return this;
    }

    @Override // l9.m
    public final m n() {
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        b0 b0Var = this.b;
        if (b0Var == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), b0Var.c - b0Var.b);
        byteBuffer.put(b0Var.a, b0Var.b, iMin);
        int i = b0Var.b + iMin;
        b0Var.b = i;
        this.c -= (long) iMin;
        if (i == b0Var.c) {
            this.b = b0Var.a();
            c0.a(b0Var);
        }
        return iMin;
    }

    @Override // l9.g0
    public final long read(l lVar, long j) {
        lVar.getClass();
        if (j >= 0) {
            long j2 = this.c;
            if (j2 == 0) {
                return -1L;
            }
            if (j > j2) {
                j = j2;
            }
            lVar.write(this, j);
            return j;
        }
        i.d(ai.onnxruntime.a.h(j, "byteCount < 0: "));
        return 0L;
    }

    @Override // l9.m
    public final /* bridge */ /* synthetic */ m write(byte[] bArr, int i, int i2) {
        m174write(bArr, i, i2);
        return this;
    }

    @Override // l9.m
    public final m write(byte[] bArr) {
        bArr.getClass();
        m174write(bArr, 0, bArr.length);
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        int iRemaining = byteBuffer.remaining();
        int i = iRemaining;
        while (i > 0) {
            b0 b0VarK0 = k0(1);
            int iMin = Math.min(i, 8192 - b0VarK0.c);
            byteBuffer.get(b0VarK0.a, b0VarK0.c, iMin);
            i -= iMin;
            b0VarK0.c += iMin;
        }
        this.c += (long) iRemaining;
        return iRemaining;
    }

    /* JADX DEBUG: Possible override for method l9.m.write([BII)Ll9/m; */
    /* JADX INFO: renamed from: write, reason: collision with other method in class */
    public final void m174write(byte[] bArr, int i, int i2) {
        bArr.getClass();
        long j = i2;
        b.d(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            b0 b0VarK0 = k0(1);
            int iMin = Math.min(i3 - i, 8192 - b0VarK0.c);
            int i4 = i + iMin;
            ArraysKt.copyInto(bArr, b0VarK0.a, b0VarK0.c, i, i4);
            b0VarK0.c += iMin;
            i = i4;
        }
        this.c += j;
    }
}

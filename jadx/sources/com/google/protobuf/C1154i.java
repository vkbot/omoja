package com.google.protobuf;

import ai.onnxruntime.AbstractC0074a;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import p099j1.C1929i;

/* JADX INFO: renamed from: com.google.protobuf.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1154i extends AbstractC1157j {

    /* JADX INFO: renamed from: d */
    public final InputStream f2696d;

    /* JADX INFO: renamed from: e */
    public final byte[] f2697e;

    /* JADX INFO: renamed from: f */
    public int f2698f;

    /* JADX INFO: renamed from: g */
    public int f2699g;

    /* JADX INFO: renamed from: h */
    public int f2700h;

    /* JADX INFO: renamed from: i */
    public int f2701i;

    /* JADX INFO: renamed from: j */
    public int f2702j;

    /* JADX INFO: renamed from: k */
    public int f2703k = Integer.MAX_VALUE;

    public C1154i(InputStream inputStream) {
        AbstractC1133b0.m1899a(inputStream, "input");
        this.f2696d = inputStream;
        this.f2697e = new byte[4096];
        this.f2698f = 0;
        this.f2700h = 0;
        this.f2702j = 0;
    }

    /* JADX INFO: renamed from: A */
    public final byte[] m1993A(int i10) throws IOException {
        if (i10 == 0) {
            return AbstractC1133b0.f2635b;
        }
        if (i10 < 0) {
            throw C1140d0.m1939d();
        }
        int i11 = this.f2702j;
        int i12 = this.f2700h;
        int i13 = i11 + i12 + i10;
        if (i13 - Integer.MAX_VALUE > 0) {
            throw new C1140d0("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        int i14 = this.f2703k;
        if (i13 > i14) {
            m2002J((i14 - i11) - i12);
            throw C1140d0.m1940e();
        }
        int i15 = this.f2698f - i12;
        int i16 = i10 - i15;
        InputStream inputStream = this.f2696d;
        if (i16 >= 4096) {
            try {
                if (i16 > inputStream.available()) {
                    return null;
                }
            } catch (C1140d0 e) {
                e.f2654b = true;
                throw e;
            }
        }
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f2697e, this.f2700h, bArr, 0, i15);
        this.f2702j += this.f2698f;
        this.f2700h = 0;
        this.f2698f = 0;
        while (i15 < i10) {
            try {
                int i17 = inputStream.read(bArr, i15, i10 - i15);
                if (i17 == -1) {
                    throw C1140d0.m1940e();
                }
                this.f2702j += i17;
                i15 += i17;
            } catch (C1140d0 e6) {
                e6.f2654b = true;
                throw e6;
            }
        }
        return bArr;
    }

    /* JADX INFO: renamed from: B */
    public final ArrayList m1994B(int i10) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i10 > 0) {
            int iMin = Math.min(i10, 4096);
            byte[] bArr = new byte[iMin];
            int i11 = 0;
            while (i11 < iMin) {
                int i12 = this.f2696d.read(bArr, i11, iMin - i11);
                if (i12 == -1) {
                    throw C1140d0.m1940e();
                }
                this.f2702j += i12;
                i11 += i12;
            }
            i10 -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: C */
    public final int m1995C() throws C1140d0 {
        int i10 = this.f2700h;
        if (this.f2698f - i10 < 4) {
            m2001I(4);
            i10 = this.f2700h;
        }
        this.f2700h = i10 + 4;
        byte[] bArr = this.f2697e;
        return ((bArr[i10 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i10] & UByte.MAX_VALUE) | ((bArr[i10 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i10 + 2] & UByte.MAX_VALUE) << 16);
    }

    /* JADX INFO: renamed from: D */
    public final long m1996D() throws C1140d0 {
        int i10 = this.f2700h;
        if (this.f2698f - i10 < 8) {
            m2001I(8);
            i10 = this.f2700h;
        }
        this.f2700h = i10 + 8;
        byte[] bArr = this.f2697e;
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }

    /* JADX INFO: renamed from: E */
    public final int m1997E() {
        int i10;
        int i11 = this.f2700h;
        int i12 = this.f2698f;
        if (i12 != i11) {
            int i13 = i11 + 1;
            byte[] bArr = this.f2697e;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.f2700h = i13;
                return b10;
            }
            if (i12 - i13 >= 9) {
                int i14 = i11 + 2;
                int i15 = (bArr[i13] << 7) ^ b10;
                if (i15 < 0) {
                    i10 = i15 ^ (-128);
                } else {
                    int i16 = i11 + 3;
                    int i17 = (bArr[i14] << 14) ^ i15;
                    if (i17 >= 0) {
                        i10 = i17 ^ 16256;
                    } else {
                        int i18 = i11 + 4;
                        int i19 = i17 ^ (bArr[i16] << 21);
                        if (i19 < 0) {
                            i10 = (-2080896) ^ i19;
                        } else {
                            i16 = i11 + 5;
                            byte b11 = bArr[i18];
                            int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                            if (b11 < 0) {
                                i18 = i11 + 6;
                                if (bArr[i16] < 0) {
                                    i16 = i11 + 7;
                                    if (bArr[i18] < 0) {
                                        i18 = i11 + 8;
                                        if (bArr[i16] < 0) {
                                            i16 = i11 + 9;
                                            if (bArr[i18] < 0) {
                                                int i21 = i11 + 10;
                                                if (bArr[i16] >= 0) {
                                                    i14 = i21;
                                                    i10 = i20;
                                                }
                                            }
                                        }
                                    }
                                }
                                i10 = i20;
                            }
                            i10 = i20;
                        }
                        i14 = i18;
                    }
                    i14 = i16;
                }
                this.f2700h = i14;
                return i10;
            }
        }
        return (int) m1999G();
    }

    /* JADX INFO: renamed from: F */
    public final long m1998F() {
        long j10;
        long j11;
        long j12;
        long j13;
        int i10 = this.f2700h;
        int i11 = this.f2698f;
        if (i11 != i10) {
            int i12 = i10 + 1;
            byte[] bArr = this.f2697e;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.f2700h = i12;
                return b10;
            }
            if (i11 - i12 >= 9) {
                int i13 = i10 + 2;
                int i14 = (bArr[i12] << 7) ^ b10;
                if (i14 < 0) {
                    j10 = i14 ^ (-128);
                } else {
                    int i15 = i10 + 3;
                    int i16 = (bArr[i13] << 14) ^ i14;
                    if (i16 >= 0) {
                        j10 = i16 ^ 16256;
                        i13 = i15;
                    } else {
                        int i17 = i10 + 4;
                        int i18 = i16 ^ (bArr[i15] << 21);
                        if (i18 < 0) {
                            j13 = (-2080896) ^ i18;
                        } else {
                            long j14 = i18;
                            i13 = i10 + 5;
                            long j15 = j14 ^ (((long) bArr[i17]) << 28);
                            if (j15 >= 0) {
                                j12 = 266354560;
                            } else {
                                i17 = i10 + 6;
                                long j16 = j15 ^ (((long) bArr[i13]) << 35);
                                if (j16 < 0) {
                                    j11 = -34093383808L;
                                } else {
                                    i13 = i10 + 7;
                                    j15 = j16 ^ (((long) bArr[i17]) << 42);
                                    if (j15 >= 0) {
                                        j12 = 4363953127296L;
                                    } else {
                                        i17 = i10 + 8;
                                        j16 = j15 ^ (((long) bArr[i13]) << 49);
                                        if (j16 < 0) {
                                            j11 = -558586000294016L;
                                        } else {
                                            i13 = i10 + 9;
                                            long j17 = (j16 ^ (((long) bArr[i17]) << 56)) ^ 71499008037633920L;
                                            if (j17 < 0) {
                                                int i19 = i10 + 10;
                                                if (bArr[i13] >= 0) {
                                                    i13 = i19;
                                                }
                                            }
                                            j10 = j17;
                                        }
                                    }
                                }
                                j13 = j11 ^ j16;
                            }
                            j10 = j12 ^ j15;
                        }
                        i13 = i17;
                        j10 = j13;
                    }
                }
                this.f2700h = i13;
                return j10;
            }
        }
        return m1999G();
    }

    /* JADX INFO: renamed from: G */
    public final long m1999G() throws C1140d0 {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            if (this.f2700h == this.f2698f) {
                m2001I(1);
            }
            int i11 = this.f2700h;
            this.f2700h = i11 + 1;
            byte b10 = this.f2697e[i11];
            j10 |= ((long) (b10 & ByteCompanionObject.MAX_VALUE)) << i10;
            if ((b10 & ByteCompanionObject.MIN_VALUE) == 0) {
                return j10;
            }
        }
        throw C1140d0.m1938c();
    }

    /* JADX INFO: renamed from: H */
    public final void m2000H() {
        int i10 = this.f2698f + this.f2699g;
        this.f2698f = i10;
        int i11 = this.f2702j + i10;
        int i12 = this.f2703k;
        if (i11 <= i12) {
            this.f2699g = 0;
            return;
        }
        int i13 = i11 - i12;
        this.f2699g = i13;
        this.f2698f = i10 - i13;
    }

    /* JADX INFO: renamed from: I */
    public final void m2001I(int i10) throws C1140d0 {
        if (m2003K(i10)) {
            return;
        }
        if (i10 <= (Integer.MAX_VALUE - this.f2702j) - this.f2700h) {
            throw C1140d0.m1940e();
        }
        throw new C1140d0("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    /* JADX INFO: renamed from: J */
    public final void m2002J(int i10) throws C1140d0 {
        int i11 = this.f2698f;
        int i12 = this.f2700h;
        if (i10 <= i11 - i12 && i10 >= 0) {
            this.f2700h = i12 + i10;
            return;
        }
        InputStream inputStream = this.f2696d;
        if (i10 < 0) {
            throw C1140d0.m1939d();
        }
        int i13 = this.f2702j;
        int i14 = i13 + i12;
        int i15 = i14 + i10;
        int i16 = this.f2703k;
        if (i15 > i16) {
            m2002J((i16 - i13) - i12);
            throw C1140d0.m1940e();
        }
        this.f2702j = i14;
        int i17 = i11 - i12;
        this.f2698f = 0;
        this.f2700h = 0;
        while (i17 < i10) {
            long j10 = i10 - i17;
            try {
                try {
                    long jSkip = inputStream.skip(j10);
                    if (jSkip < 0 || jSkip > j10) {
                        throw new IllegalStateException(inputStream.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i17 += (int) jSkip;
                    }
                } catch (C1140d0 e) {
                    e.f2654b = true;
                    throw e;
                }
            } catch (Throwable th) {
                this.f2702j += i17;
                m2000H();
                throw th;
            }
        }
        this.f2702j += i17;
        m2000H();
        if (i17 >= i10) {
            return;
        }
        int i18 = this.f2698f;
        int i19 = i18 - this.f2700h;
        this.f2700h = i18;
        m2001I(1);
        while (true) {
            int i20 = i10 - i19;
            int i21 = this.f2698f;
            if (i20 <= i21) {
                this.f2700h = i20;
                return;
            } else {
                i19 += i21;
                this.f2700h = i21;
                m2001I(1);
            }
        }
    }

    /* JADX INFO: renamed from: K */
    public final boolean m2003K(int i10) throws IOException {
        InputStream inputStream = this.f2696d;
        int i11 = this.f2700h;
        int i12 = i11 + i10;
        int i13 = this.f2698f;
        if (i12 <= i13) {
            C1929i.m3030l(AbstractC0074a.m155f(i10, "refillBuffer() called when ", " bytes were already available in buffer"));
            return false;
        }
        int i14 = this.f2702j;
        if (i10 <= (Integer.MAX_VALUE - i14) - i11 && i14 + i11 + i10 <= this.f2703k) {
            byte[] bArr = this.f2697e;
            if (i11 > 0) {
                if (i13 > i11) {
                    System.arraycopy(bArr, i11, bArr, 0, i13 - i11);
                }
                this.f2702j += i11;
                this.f2698f -= i11;
                this.f2700h = 0;
            }
            int i15 = this.f2698f;
            try {
                int i16 = inputStream.read(bArr, i15, Math.min(bArr.length - i15, (Integer.MAX_VALUE - this.f2702j) - i15));
                if (i16 == 0 || i16 < -1 || i16 > bArr.length) {
                    throw new IllegalStateException(inputStream.getClass() + "#read(byte[]) returned invalid result: " + i16 + "\nThe InputStream implementation is buggy.");
                }
                if (i16 > 0) {
                    this.f2698f += i16;
                    m2000H();
                    if (this.f2698f >= i10) {
                        return true;
                    }
                    return m2003K(i10);
                }
            } catch (C1140d0 e) {
                e.f2654b = true;
                throw e;
            }
        }
        return false;
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: a */
    public final void mo1963a(int i10) throws C1140d0 {
        if (this.f2701i != i10) {
            throw new C1140d0("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: b */
    public final int mo1964b() {
        return this.f2702j + this.f2700h;
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: c */
    public final boolean mo1965c() {
        return this.f2700h == this.f2698f && !m2003K(1);
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: e */
    public final void mo1966e(int i10) {
        this.f2703k = i10;
        m2000H();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: f */
    public final int mo1967f(int i10) throws C1140d0 {
        if (i10 < 0) {
            throw C1140d0.m1939d();
        }
        int i11 = this.f2702j + this.f2700h + i10;
        int i12 = this.f2703k;
        if (i11 > i12) {
            throw C1140d0.m1940e();
        }
        this.f2703k = i11;
        m2000H();
        return i12;
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: g */
    public final boolean mo1968g() {
        return m1998F() != 0;
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: h */
    public final C1148g mo1969h() throws IOException {
        int iM1997E = m1997E();
        int i10 = this.f2698f;
        int i11 = this.f2700h;
        int i12 = i10 - i11;
        byte[] bArr = this.f2697e;
        if (iM1997E <= i12 && iM1997E > 0) {
            C1148g c1148gM1956e = C1148g.m1956e(bArr, i11, iM1997E);
            this.f2700h += iM1997E;
            return c1148gM1956e;
        }
        if (iM1997E == 0) {
            return C1148g.f2677d;
        }
        byte[] bArrM1993A = m1993A(iM1997E);
        if (bArrM1993A != null) {
            return C1148g.m1956e(bArrM1993A, 0, bArrM1993A.length);
        }
        int i13 = this.f2700h;
        int i14 = this.f2698f;
        int length = i14 - i13;
        this.f2702j += i14;
        this.f2700h = 0;
        this.f2698f = 0;
        ArrayList arrayListM1994B = m1994B(iM1997E - length);
        byte[] bArr2 = new byte[iM1997E];
        System.arraycopy(bArr, i13, bArr2, 0, length);
        int size = arrayListM1994B.size();
        int i15 = 0;
        while (i15 < size) {
            Object obj = arrayListM1994B.get(i15);
            i15++;
            byte[] bArr3 = (byte[]) obj;
            System.arraycopy(bArr3, 0, bArr2, length, bArr3.length);
            length += bArr3.length;
        }
        C1148g c1148g = C1148g.f2677d;
        return new C1148g(bArr2);
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: i */
    public final double mo1970i() {
        return Double.longBitsToDouble(m1996D());
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: j */
    public final int mo1971j() {
        return m1997E();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: k */
    public final int mo1972k() {
        return m1995C();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: l */
    public final long mo1973l() {
        return m1996D();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: m */
    public final float mo1974m() {
        return Float.intBitsToFloat(m1995C());
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: n */
    public final int mo1975n() {
        return m1997E();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: o */
    public final long mo1976o() {
        return m1998F();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: p */
    public final int mo1977p() {
        return m1995C();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: q */
    public final long mo1978q() {
        return m1996D();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: r */
    public final int mo1979r() {
        int iM1997E = m1997E();
        return (-(iM1997E & 1)) ^ (iM1997E >>> 1);
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: s */
    public final long mo1980s() {
        long jM1998F = m1998F();
        return (-(jM1998F & 1)) ^ (jM1998F >>> 1);
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: t */
    public final String mo1981t() throws C1140d0 {
        int iM1997E = m1997E();
        byte[] bArr = this.f2697e;
        if (iM1997E > 0) {
            int i10 = this.f2698f;
            int i11 = this.f2700h;
            if (iM1997E <= i10 - i11) {
                String str = new String(bArr, i11, iM1997E, AbstractC1133b0.f2634a);
                this.f2700h += iM1997E;
                return str;
            }
        }
        if (iM1997E == 0) {
            return "";
        }
        if (iM1997E > this.f2698f) {
            return new String(m2004z(iM1997E), AbstractC1133b0.f2634a);
        }
        m2001I(iM1997E);
        String str2 = new String(bArr, this.f2700h, iM1997E, AbstractC1133b0.f2634a);
        this.f2700h += iM1997E;
        return str2;
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: u */
    public final String mo1982u() throws IOException {
        int iM1997E = m1997E();
        int i10 = this.f2700h;
        int i11 = this.f2698f;
        int i12 = i11 - i10;
        byte[] bArrM2004z = this.f2697e;
        if (iM1997E <= i12 && iM1997E > 0) {
            this.f2700h = i10 + iM1997E;
        } else {
            if (iM1997E == 0) {
                return "";
            }
            i10 = 0;
            if (iM1997E <= i11) {
                m2001I(iM1997E);
                this.f2700h = iM1997E;
            } else {
                bArrM2004z = m2004z(iM1997E);
            }
        }
        return AbstractC1195v1.f2788a.m2157a(bArrM2004z, i10, iM1997E);
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: v */
    public final int mo1983v() throws C1140d0 {
        if (mo1965c()) {
            this.f2701i = 0;
            return 0;
        }
        int iM1997E = m1997E();
        this.f2701i = iM1997E;
        if ((iM1997E >>> 3) != 0) {
            return iM1997E;
        }
        throw new C1140d0("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: w */
    public final int mo1984w() {
        return m1997E();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: x */
    public final long mo1985x() {
        return m1998F();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: y */
    public final boolean mo1986y(int i10) throws C1140d0 {
        int iMo1983v;
        int i11 = i10 & 7;
        int i12 = 0;
        if (i11 == 0) {
            int i13 = this.f2698f - this.f2700h;
            byte[] bArr = this.f2697e;
            if (i13 >= 10) {
                while (i12 < 10) {
                    int i14 = this.f2700h;
                    this.f2700h = i14 + 1;
                    if (bArr[i14] < 0) {
                        i12++;
                    }
                }
                throw C1140d0.m1938c();
            }
            while (i12 < 10) {
                if (this.f2700h == this.f2698f) {
                    m2001I(1);
                }
                int i15 = this.f2700h;
                this.f2700h = i15 + 1;
                if (bArr[i15] < 0) {
                    i12++;
                }
            }
            throw C1140d0.m1938c();
            return true;
        }
        if (i11 == 1) {
            m2002J(8);
            return true;
        }
        if (i11 == 2) {
            m2002J(m1997E());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw C1140d0.m1937b();
            }
            m2002J(4);
            return true;
        }
        do {
            iMo1983v = mo1983v();
            if (iMo1983v == 0) {
                break;
            }
        } while (mo1986y(iMo1983v));
        mo1963a(((i10 >>> 3) << 3) | 4);
        return true;
    }

    /* JADX INFO: renamed from: z */
    public final byte[] m2004z(int i10) throws IOException {
        byte[] bArrM1993A = m1993A(i10);
        if (bArrM1993A != null) {
            return bArrM1993A;
        }
        int i11 = this.f2700h;
        int i12 = this.f2698f;
        int length = i12 - i11;
        this.f2702j += i12;
        this.f2700h = 0;
        this.f2698f = 0;
        ArrayList arrayListM1994B = m1994B(i10 - length);
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f2697e, i11, bArr, 0, length);
        int size = arrayListM1994B.size();
        int i13 = 0;
        while (i13 < size) {
            Object obj = arrayListM1994B.get(i13);
            i13++;
            byte[] bArr2 = (byte[]) obj;
            System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
            length += bArr2.length;
        }
        return bArr;
    }
}

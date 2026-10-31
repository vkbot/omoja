package com.google.protobuf;

import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: renamed from: com.google.protobuf.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1151h extends AbstractC1157j {

    /* JADX INFO: renamed from: d */
    public final byte[] f2684d;

    /* JADX INFO: renamed from: e */
    public int f2685e;

    /* JADX INFO: renamed from: f */
    public int f2686f;

    /* JADX INFO: renamed from: g */
    public int f2687g;

    /* JADX INFO: renamed from: h */
    public final int f2688h;

    /* JADX INFO: renamed from: i */
    public int f2689i;

    /* JADX INFO: renamed from: j */
    public int f2690j = Integer.MAX_VALUE;

    public C1151h(byte[] bArr, int i10, int i11, boolean z9) {
        this.f2684d = bArr;
        this.f2685e = i11 + i10;
        this.f2687g = i10;
        this.f2688h = i10;
    }

    /* JADX INFO: renamed from: A */
    public final long m1957A() throws C1140d0 {
        int i10 = this.f2687g;
        if (this.f2685e - i10 < 8) {
            throw C1140d0.m1940e();
        }
        this.f2687g = i10 + 8;
        byte[] bArr = this.f2684d;
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }

    /* JADX INFO: renamed from: B */
    public final int m1958B() {
        int i10;
        int i11 = this.f2687g;
        int i12 = this.f2685e;
        if (i12 != i11) {
            int i13 = i11 + 1;
            byte[] bArr = this.f2684d;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.f2687g = i13;
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
                this.f2687g = i14;
                return i10;
            }
        }
        return (int) m1960D();
    }

    /* JADX INFO: renamed from: C */
    public final long m1959C() {
        long j10;
        long j11;
        long j12;
        long j13;
        int i10 = this.f2687g;
        int i11 = this.f2685e;
        if (i11 != i10) {
            int i12 = i10 + 1;
            byte[] bArr = this.f2684d;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.f2687g = i12;
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
                this.f2687g = i13;
                return j10;
            }
        }
        return m1960D();
    }

    /* JADX INFO: renamed from: D */
    public final long m1960D() throws C1140d0 {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            int i11 = this.f2687g;
            if (i11 == this.f2685e) {
                throw C1140d0.m1940e();
            }
            this.f2687g = i11 + 1;
            byte b10 = this.f2684d[i11];
            j10 |= ((long) (b10 & ByteCompanionObject.MAX_VALUE)) << i10;
            if ((b10 & ByteCompanionObject.MIN_VALUE) == 0) {
                return j10;
            }
        }
        throw C1140d0.m1938c();
    }

    /* JADX INFO: renamed from: E */
    public final void m1961E() {
        int i10 = this.f2685e + this.f2686f;
        this.f2685e = i10;
        int i11 = i10 - this.f2688h;
        int i12 = this.f2690j;
        if (i11 <= i12) {
            this.f2686f = 0;
            return;
        }
        int i13 = i11 - i12;
        this.f2686f = i13;
        this.f2685e = i10 - i13;
    }

    /* JADX INFO: renamed from: F */
    public final void m1962F(int i10) throws C1140d0 {
        if (i10 >= 0) {
            int i11 = this.f2685e;
            int i12 = this.f2687g;
            if (i10 <= i11 - i12) {
                this.f2687g = i12 + i10;
                return;
            }
        }
        if (i10 >= 0) {
            throw C1140d0.m1940e();
        }
        throw C1140d0.m1939d();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: a */
    public final void mo1963a(int i10) throws C1140d0 {
        if (this.f2689i != i10) {
            throw new C1140d0("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: b */
    public final int mo1964b() {
        return this.f2687g - this.f2688h;
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: c */
    public final boolean mo1965c() {
        return this.f2687g == this.f2685e;
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: e */
    public final void mo1966e(int i10) {
        this.f2690j = i10;
        m1961E();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: f */
    public final int mo1967f(int i10) throws C1140d0 {
        if (i10 < 0) {
            throw C1140d0.m1939d();
        }
        int iMo1964b = mo1964b() + i10;
        if (iMo1964b < 0) {
            throw new C1140d0("Failed to parse the message.");
        }
        int i11 = this.f2690j;
        if (iMo1964b > i11) {
            throw C1140d0.m1940e();
        }
        this.f2690j = iMo1964b;
        m1961E();
        return i11;
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: g */
    public final boolean mo1968g() {
        return m1959C() != 0;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0031 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0033  */
    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0042  */
    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: h */
    public final C1148g mo1969h() throws C1140d0 {
        byte[] bArrCopyOfRange;
        int iM1958B = m1958B();
        byte[] bArr = this.f2684d;
        if (iM1958B > 0) {
            int i10 = this.f2685e;
            int i11 = this.f2687g;
            if (iM1958B <= i10 - i11) {
                C1148g c1148gM1956e = C1148g.m1956e(bArr, i11, iM1958B);
                this.f2687g += iM1958B;
                return c1148gM1956e;
            }
        }
        if (iM1958B == 0) {
            return C1148g.f2677d;
        }
        if (iM1958B > 0) {
            int i12 = this.f2685e;
            int i13 = this.f2687g;
            if (iM1958B <= i12 - i13) {
                int i14 = iM1958B + i13;
                this.f2687g = i14;
                bArrCopyOfRange = Arrays.copyOfRange(bArr, i13, i14);
            } else {
                if (iM1958B <= 0) {
                    throw C1140d0.m1940e();
                }
                if (iM1958B == 0) {
                    throw C1140d0.m1939d();
                }
                bArrCopyOfRange = AbstractC1133b0.f2635b;
            }
        } else {
            if (iM1958B <= 0) {
                throw C1140d0.m1940e();
            }
            if (iM1958B == 0) {
                throw C1140d0.m1939d();
            }
            bArrCopyOfRange = AbstractC1133b0.f2635b;
        }
        C1148g c1148g = C1148g.f2677d;
        return new C1148g(bArrCopyOfRange);
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: i */
    public final double mo1970i() {
        return Double.longBitsToDouble(m1957A());
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: j */
    public final int mo1971j() {
        return m1958B();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: k */
    public final int mo1972k() {
        return m1987z();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: l */
    public final long mo1973l() {
        return m1957A();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: m */
    public final float mo1974m() {
        return Float.intBitsToFloat(m1987z());
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: n */
    public final int mo1975n() {
        return m1958B();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: o */
    public final long mo1976o() {
        return m1959C();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: p */
    public final int mo1977p() {
        return m1987z();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: q */
    public final long mo1978q() {
        return m1957A();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: r */
    public final int mo1979r() {
        int iM1958B = m1958B();
        return (-(iM1958B & 1)) ^ (iM1958B >>> 1);
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: s */
    public final long mo1980s() {
        long jM1959C = m1959C();
        return (-(jM1959C & 1)) ^ (jM1959C >>> 1);
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: t */
    public final String mo1981t() throws C1140d0 {
        int iM1958B = m1958B();
        if (iM1958B > 0) {
            int i10 = this.f2685e;
            int i11 = this.f2687g;
            if (iM1958B <= i10 - i11) {
                String str = new String(this.f2684d, i11, iM1958B, AbstractC1133b0.f2634a);
                this.f2687g += iM1958B;
                return str;
            }
        }
        if (iM1958B == 0) {
            return "";
        }
        if (iM1958B < 0) {
            throw C1140d0.m1939d();
        }
        throw C1140d0.m1940e();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: u */
    public final String mo1982u() throws C1140d0 {
        int iM1958B = m1958B();
        if (iM1958B > 0) {
            int i10 = this.f2685e;
            int i11 = this.f2687g;
            if (iM1958B <= i10 - i11) {
                String strM2157a = AbstractC1195v1.f2788a.m2157a(this.f2684d, i11, iM1958B);
                this.f2687g += iM1958B;
                return strM2157a;
            }
        }
        if (iM1958B == 0) {
            return "";
        }
        if (iM1958B <= 0) {
            throw C1140d0.m1939d();
        }
        throw C1140d0.m1940e();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: v */
    public final int mo1983v() throws C1140d0 {
        if (mo1965c()) {
            this.f2689i = 0;
            return 0;
        }
        int iM1958B = m1958B();
        this.f2689i = iM1958B;
        if ((iM1958B >>> 3) != 0) {
            return iM1958B;
        }
        throw new C1140d0("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: w */
    public final int mo1984w() {
        return m1958B();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: x */
    public final long mo1985x() {
        return m1959C();
    }

    @Override // com.google.protobuf.AbstractC1157j
    /* JADX INFO: renamed from: y */
    public final boolean mo1986y(int i10) throws C1140d0 {
        int iMo1983v;
        int i11 = i10 & 7;
        int i12 = 0;
        if (i11 == 0) {
            int i13 = this.f2685e - this.f2687g;
            byte[] bArr = this.f2684d;
            if (i13 >= 10) {
                while (i12 < 10) {
                    int i14 = this.f2687g;
                    this.f2687g = i14 + 1;
                    if (bArr[i14] < 0) {
                        i12++;
                    }
                }
                throw C1140d0.m1938c();
            }
            while (i12 < 10) {
                int i15 = this.f2687g;
                if (i15 == this.f2685e) {
                    throw C1140d0.m1940e();
                }
                this.f2687g = i15 + 1;
                if (bArr[i15] < 0) {
                    i12++;
                }
            }
            throw C1140d0.m1938c();
            return true;
        }
        if (i11 == 1) {
            m1962F(8);
            return true;
        }
        if (i11 == 2) {
            m1962F(m1958B());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw C1140d0.m1937b();
            }
            m1962F(4);
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
    public final int m1987z() throws C1140d0 {
        int i10 = this.f2687g;
        if (this.f2685e - i10 < 4) {
            throw C1140d0.m1940e();
        }
        this.f2687g = i10 + 4;
        byte[] bArr = this.f2684d;
        return ((bArr[i10 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i10] & UByte.MAX_VALUE) | ((bArr[i10 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i10 + 2] & UByte.MAX_VALUE) << 16);
    }
}

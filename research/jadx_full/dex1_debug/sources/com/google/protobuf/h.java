package com.google.protobuf;

import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends j {
    public final byte[] d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1505f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1506g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1507h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1508i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1509j = Integer.MAX_VALUE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(byte[] bArr, int i9, int i10, boolean z8) {
        this.d = bArr;
        this.e = i10 + i9;
        this.f1506g = i9;
        this.f1507h = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long A() throws d0 {
        int i9 = this.f1506g;
        if (this.e - i9 < 8) {
            throw d0.e();
        }
        this.f1506g = i9 + 8;
        byte[] bArr = this.d;
        return ((((long) bArr[i9 + 7]) & 255) << 56) | (((long) bArr[i9]) & 255) | ((((long) bArr[i9 + 1]) & 255) << 8) | ((((long) bArr[i9 + 2]) & 255) << 16) | ((((long) bArr[i9 + 3]) & 255) << 24) | ((((long) bArr[i9 + 4]) & 255) << 32) | ((((long) bArr[i9 + 5]) & 255) << 40) | ((((long) bArr[i9 + 6]) & 255) << 48);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int B() {
        int i9;
        int i10 = this.f1506g;
        int i11 = this.e;
        if (i11 != i10) {
            int i12 = i10 + 1;
            byte[] bArr = this.d;
            byte b9 = bArr[i10];
            if (b9 >= 0) {
                this.f1506g = i12;
                return b9;
            }
            if (i11 - i12 >= 9) {
                int i13 = i10 + 2;
                int i14 = (bArr[i12] << 7) ^ b9;
                if (i14 < 0) {
                    i9 = i14 ^ (-128);
                } else {
                    int i15 = i10 + 3;
                    int i16 = (bArr[i13] << 14) ^ i14;
                    if (i16 >= 0) {
                        i9 = i16 ^ 16256;
                    } else {
                        int i17 = i10 + 4;
                        int i18 = i16 ^ (bArr[i15] << 21);
                        if (i18 < 0) {
                            i9 = (-2080896) ^ i18;
                        } else {
                            i15 = i10 + 5;
                            byte b10 = bArr[i17];
                            int i19 = (i18 ^ (b10 << 28)) ^ 266354560;
                            if (b10 < 0) {
                                i17 = i10 + 6;
                                if (bArr[i15] < 0) {
                                    i15 = i10 + 7;
                                    if (bArr[i17] < 0) {
                                        i17 = i10 + 8;
                                        if (bArr[i15] < 0) {
                                            i15 = i10 + 9;
                                            if (bArr[i17] < 0) {
                                                int i20 = i10 + 10;
                                                if (bArr[i15] >= 0) {
                                                    i13 = i20;
                                                    i9 = i19;
                                                }
                                            }
                                        }
                                    }
                                }
                                i9 = i19;
                            }
                            i9 = i19;
                        }
                        i13 = i17;
                    }
                    i13 = i15;
                }
                this.f1506g = i13;
                return i9;
            }
        }
        return (int) D();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long C() {
        long j9;
        long j10;
        long j11;
        long j12;
        int i9 = this.f1506g;
        int i10 = this.e;
        if (i10 != i9) {
            int i11 = i9 + 1;
            byte[] bArr = this.d;
            byte b9 = bArr[i9];
            if (b9 >= 0) {
                this.f1506g = i11;
                return b9;
            }
            if (i10 - i11 >= 9) {
                int i12 = i9 + 2;
                int i13 = (bArr[i11] << 7) ^ b9;
                if (i13 < 0) {
                    j9 = i13 ^ (-128);
                } else {
                    int i14 = i9 + 3;
                    int i15 = (bArr[i12] << 14) ^ i13;
                    if (i15 >= 0) {
                        j9 = i15 ^ 16256;
                        i12 = i14;
                    } else {
                        int i16 = i9 + 4;
                        int i17 = i15 ^ (bArr[i14] << 21);
                        if (i17 < 0) {
                            j12 = (-2080896) ^ i17;
                        } else {
                            long j13 = i17;
                            i12 = i9 + 5;
                            long j14 = j13 ^ (((long) bArr[i16]) << 28);
                            if (j14 >= 0) {
                                j11 = 266354560;
                            } else {
                                i16 = i9 + 6;
                                long j15 = j14 ^ (((long) bArr[i12]) << 35);
                                if (j15 < 0) {
                                    j10 = -34093383808L;
                                } else {
                                    i12 = i9 + 7;
                                    j14 = j15 ^ (((long) bArr[i16]) << 42);
                                    if (j14 >= 0) {
                                        j11 = 4363953127296L;
                                    } else {
                                        i16 = i9 + 8;
                                        j15 = j14 ^ (((long) bArr[i12]) << 49);
                                        if (j15 < 0) {
                                            j10 = -558586000294016L;
                                        } else {
                                            i12 = i9 + 9;
                                            long j16 = (j15 ^ (((long) bArr[i16]) << 56)) ^ 71499008037633920L;
                                            if (j16 < 0) {
                                                int i18 = i9 + 10;
                                                if (bArr[i12] >= 0) {
                                                    i12 = i18;
                                                }
                                            }
                                            j9 = j16;
                                        }
                                    }
                                }
                                j12 = j10 ^ j15;
                            }
                            j9 = j11 ^ j14;
                        }
                        i12 = i16;
                        j9 = j12;
                    }
                }
                this.f1506g = i12;
                return j9;
            }
        }
        return D();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long D() throws d0 {
        long j9 = 0;
        for (int i9 = 0; i9 < 64; i9 += 7) {
            int i10 = this.f1506g;
            if (i10 == this.e) {
                throw d0.e();
            }
            this.f1506g = i10 + 1;
            byte b9 = this.d[i10];
            j9 |= ((long) (b9 & ByteCompanionObject.MAX_VALUE)) << i9;
            if ((b9 & ByteCompanionObject.MIN_VALUE) == 0) {
                return j9;
            }
        }
        throw d0.c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void E() {
        int i9 = this.e + this.f1505f;
        this.e = i9;
        int i10 = i9 - this.f1507h;
        int i11 = this.f1509j;
        if (i10 <= i11) {
            this.f1505f = 0;
            return;
        }
        int i12 = i10 - i11;
        this.f1505f = i12;
        this.e = i9 - i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void F(int i9) throws d0 {
        if (i9 >= 0) {
            int i10 = this.e;
            int i11 = this.f1506g;
            if (i9 <= i10 - i11) {
                this.f1506g = i11 + i9;
                return;
            }
        }
        if (i9 >= 0) {
            throw d0.e();
        }
        throw d0.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final void a(int i9) throws d0 {
        if (this.f1508i != i9) {
            throw new d0("Protocol message end-group tag did not match expected tag.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int b() {
        return this.f1506g - this.f1507h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final boolean c() {
        return this.f1506g == this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final void e(int i9) {
        this.f1509j = i9;
        E();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int f(int i9) throws d0 {
        if (i9 < 0) {
            throw d0.d();
        }
        int iB = b() + i9;
        if (iB < 0) {
            throw new d0("Failed to parse the message.");
        }
        int i10 = this.f1509j;
        if (iB > i10) {
            throw d0.e();
        }
        this.f1509j = iB;
        E();
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final boolean g() {
        return C() != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:15:0x002f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0031 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0033  */
    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0042  */
    @Override // com.google.protobuf.j
    public final g h() throws d0 {
        byte[] bArrCopyOfRange;
        int iB = B();
        byte[] bArr = this.d;
        if (iB > 0) {
            int i9 = this.e;
            int i10 = this.f1506g;
            if (iB <= i9 - i10) {
                g gVarE = g.e(bArr, i10, iB);
                this.f1506g += iB;
                return gVarE;
            }
        }
        if (iB == 0) {
            return g.d;
        }
        if (iB > 0) {
            int i11 = this.e;
            int i12 = this.f1506g;
            if (iB <= i11 - i12) {
                int i13 = iB + i12;
                this.f1506g = i13;
                bArrCopyOfRange = Arrays.copyOfRange(bArr, i12, i13);
            } else {
                if (iB <= 0) {
                    throw d0.e();
                }
                if (iB == 0) {
                    throw d0.d();
                }
                bArrCopyOfRange = b0.f1474b;
            }
        } else {
            if (iB <= 0) {
                throw d0.e();
            }
            if (iB == 0) {
                throw d0.d();
            }
            bArrCopyOfRange = b0.f1474b;
        }
        g gVar = g.d;
        return new g(bArrCopyOfRange);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final double i() {
        return Double.longBitsToDouble(A());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int j() {
        return B();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int k() {
        return z();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final long l() {
        return A();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final float m() {
        return Float.intBitsToFloat(z());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int n() {
        return B();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final long o() {
        return C();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int p() {
        return z();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final long q() {
        return A();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int r() {
        int iB = B();
        return (-(iB & 1)) ^ (iB >>> 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final long s() {
        long jC = C();
        return (-(jC & 1)) ^ (jC >>> 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final String t() throws d0 {
        int iB = B();
        if (iB > 0) {
            int i9 = this.e;
            int i10 = this.f1506g;
            if (iB <= i9 - i10) {
                String str = new String(this.d, i10, iB, b0.f1473a);
                this.f1506g += iB;
                return str;
            }
        }
        if (iB == 0) {
            return "";
        }
        if (iB < 0) {
            throw d0.d();
        }
        throw d0.e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final String u() throws d0 {
        int iB = B();
        if (iB > 0) {
            int i9 = this.e;
            int i10 = this.f1506g;
            if (iB <= i9 - i10) {
                String strA = v1.f1577a.a(this.d, i10, iB);
                this.f1506g += iB;
                return strA;
            }
        }
        if (iB == 0) {
            return "";
        }
        if (iB <= 0) {
            throw d0.d();
        }
        throw d0.e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int v() throws d0 {
        if (c()) {
            this.f1508i = 0;
            return 0;
        }
        int iB = B();
        this.f1508i = iB;
        if ((iB >>> 3) != 0) {
            return iB;
        }
        throw new d0("Protocol message contained an invalid tag (zero).");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int w() {
        return B();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final long x() {
        return C();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final boolean y(int i9) throws d0 {
        int iV;
        int i10 = i9 & 7;
        int i11 = 0;
        if (i10 == 0) {
            int i12 = this.e - this.f1506g;
            byte[] bArr = this.d;
            if (i12 >= 10) {
                while (i11 < 10) {
                    int i13 = this.f1506g;
                    this.f1506g = i13 + 1;
                    if (bArr[i13] < 0) {
                        i11++;
                    }
                }
                throw d0.c();
            }
            while (i11 < 10) {
                int i14 = this.f1506g;
                if (i14 == this.e) {
                    throw d0.e();
                }
                this.f1506g = i14 + 1;
                if (bArr[i14] < 0) {
                    i11++;
                }
            }
            throw d0.c();
            return true;
        }
        if (i10 == 1) {
            F(8);
            return true;
        }
        if (i10 == 2) {
            F(B());
            return true;
        }
        if (i10 != 3) {
            if (i10 == 4) {
                return false;
            }
            if (i10 != 5) {
                throw d0.b();
            }
            F(4);
            return true;
        }
        do {
            iV = v();
            if (iV == 0) {
                break;
            }
        } while (y(iV));
        a(((i9 >>> 3) << 3) | 4);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int z() throws d0 {
        int i9 = this.f1506g;
        if (this.e - i9 < 4) {
            throw d0.e();
        }
        this.f1506g = i9 + 4;
        byte[] bArr = this.d;
        return ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
    }
}

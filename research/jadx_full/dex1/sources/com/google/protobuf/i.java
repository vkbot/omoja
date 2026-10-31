package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i extends j {
    public final InputStream d;
    public final byte[] e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1511f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1512g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1513h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1514i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1515j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1516k = Integer.MAX_VALUE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(InputStream inputStream) {
        b0.a(inputStream, "input");
        this.d = inputStream;
        this.e = new byte[4096];
        this.f1511f = 0;
        this.f1513h = 0;
        this.f1515j = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final byte[] A(int i9) throws IOException {
        if (i9 == 0) {
            return b0.f1474b;
        }
        if (i9 < 0) {
            throw d0.d();
        }
        int i10 = this.f1515j;
        int i11 = this.f1513h;
        int i12 = i10 + i11 + i9;
        if (i12 - Integer.MAX_VALUE > 0) {
            throw new d0("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        int i13 = this.f1516k;
        if (i12 > i13) {
            J((i13 - i10) - i11);
            throw d0.e();
        }
        int i14 = this.f1511f - i11;
        int i15 = i9 - i14;
        InputStream inputStream = this.d;
        if (i15 >= 4096) {
            try {
                if (i15 > inputStream.available()) {
                    return null;
                }
            } catch (d0 e) {
                e.f1487b = true;
                throw e;
            }
        }
        byte[] bArr = new byte[i9];
        System.arraycopy(this.e, this.f1513h, bArr, 0, i14);
        this.f1515j += this.f1511f;
        this.f1513h = 0;
        this.f1511f = 0;
        while (i14 < i9) {
            try {
                int i16 = inputStream.read(bArr, i14, i9 - i14);
                if (i16 == -1) {
                    throw d0.e();
                }
                this.f1515j += i16;
                i14 += i16;
            } catch (d0 e6) {
                e6.f1487b = true;
                throw e6;
            }
        }
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList B(int i9) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i9 > 0) {
            int iMin = Math.min(i9, 4096);
            byte[] bArr = new byte[iMin];
            int i10 = 0;
            while (i10 < iMin) {
                int i11 = this.d.read(bArr, i10, iMin - i10);
                if (i11 == -1) {
                    throw d0.e();
                }
                this.f1515j += i11;
                i10 += i11;
            }
            i9 -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int C() throws d0 {
        int i9 = this.f1513h;
        if (this.f1511f - i9 < 4) {
            I(4);
            i9 = this.f1513h;
        }
        this.f1513h = i9 + 4;
        byte[] bArr = this.e;
        return ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long D() throws d0 {
        int i9 = this.f1513h;
        if (this.f1511f - i9 < 8) {
            I(8);
            i9 = this.f1513h;
        }
        this.f1513h = i9 + 8;
        byte[] bArr = this.e;
        return ((((long) bArr[i9 + 7]) & 255) << 56) | (((long) bArr[i9]) & 255) | ((((long) bArr[i9 + 1]) & 255) << 8) | ((((long) bArr[i9 + 2]) & 255) << 16) | ((((long) bArr[i9 + 3]) & 255) << 24) | ((((long) bArr[i9 + 4]) & 255) << 32) | ((((long) bArr[i9 + 5]) & 255) << 40) | ((((long) bArr[i9 + 6]) & 255) << 48);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int E() {
        int i9;
        int i10 = this.f1513h;
        int i11 = this.f1511f;
        if (i11 != i10) {
            int i12 = i10 + 1;
            byte[] bArr = this.e;
            byte b9 = bArr[i10];
            if (b9 >= 0) {
                this.f1513h = i12;
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
                this.f1513h = i13;
                return i9;
            }
        }
        return (int) G();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long F() {
        long j9;
        long j10;
        long j11;
        long j12;
        int i9 = this.f1513h;
        int i10 = this.f1511f;
        if (i10 != i9) {
            int i11 = i9 + 1;
            byte[] bArr = this.e;
            byte b9 = bArr[i9];
            if (b9 >= 0) {
                this.f1513h = i11;
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
                this.f1513h = i12;
                return j9;
            }
        }
        return G();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long G() throws d0 {
        long j9 = 0;
        for (int i9 = 0; i9 < 64; i9 += 7) {
            if (this.f1513h == this.f1511f) {
                I(1);
            }
            int i10 = this.f1513h;
            this.f1513h = i10 + 1;
            byte b9 = this.e[i10];
            j9 |= ((long) (b9 & ByteCompanionObject.MAX_VALUE)) << i9;
            if ((b9 & ByteCompanionObject.MIN_VALUE) == 0) {
                return j9;
            }
        }
        throw d0.c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void H() {
        int i9 = this.f1511f + this.f1512g;
        this.f1511f = i9;
        int i10 = this.f1515j + i9;
        int i11 = this.f1516k;
        if (i10 <= i11) {
            this.f1512g = 0;
            return;
        }
        int i12 = i10 - i11;
        this.f1512g = i12;
        this.f1511f = i9 - i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void I(int i9) throws d0 {
        if (K(i9)) {
            return;
        }
        if (i9 <= (Integer.MAX_VALUE - this.f1515j) - this.f1513h) {
            throw d0.e();
        }
        throw new d0("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void J(int i9) throws d0 {
        int i10 = this.f1511f;
        int i11 = this.f1513h;
        if (i9 <= i10 - i11 && i9 >= 0) {
            this.f1513h = i11 + i9;
            return;
        }
        InputStream inputStream = this.d;
        if (i9 < 0) {
            throw d0.d();
        }
        int i12 = this.f1515j;
        int i13 = i12 + i11;
        int i14 = i13 + i9;
        int i15 = this.f1516k;
        if (i14 > i15) {
            J((i15 - i12) - i11);
            throw d0.e();
        }
        this.f1515j = i13;
        int i16 = i10 - i11;
        this.f1511f = 0;
        this.f1513h = 0;
        while (i16 < i9) {
            long j9 = i9 - i16;
            try {
                try {
                    long jSkip = inputStream.skip(j9);
                    if (jSkip < 0 || jSkip > j9) {
                        throw new IllegalStateException(inputStream.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i16 += (int) jSkip;
                    }
                } catch (d0 e) {
                    e.f1487b = true;
                    throw e;
                }
            } catch (Throwable th) {
                this.f1515j += i16;
                H();
                throw th;
            }
        }
        this.f1515j += i16;
        H();
        if (i16 >= i9) {
            return;
        }
        int i17 = this.f1511f;
        int i18 = i17 - this.f1513h;
        this.f1513h = i17;
        I(1);
        while (true) {
            int i19 = i9 - i18;
            int i20 = this.f1511f;
            if (i19 <= i20) {
                this.f1513h = i19;
                return;
            } else {
                i18 += i20;
                this.f1513h = i20;
                I(1);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean K(int i9) throws IOException {
        InputStream inputStream = this.d;
        int i10 = this.f1513h;
        int i11 = i10 + i9;
        int i12 = this.f1511f;
        if (i11 <= i12) {
            j1.i.l(ai.onnxruntime.a.f(i9, "refillBuffer() called when ", " bytes were already available in buffer"));
            return false;
        }
        int i13 = this.f1515j;
        if (i9 <= (Integer.MAX_VALUE - i13) - i10 && i13 + i10 + i9 <= this.f1516k) {
            byte[] bArr = this.e;
            if (i10 > 0) {
                if (i12 > i10) {
                    System.arraycopy(bArr, i10, bArr, 0, i12 - i10);
                }
                this.f1515j += i10;
                this.f1511f -= i10;
                this.f1513h = 0;
            }
            int i14 = this.f1511f;
            try {
                int i15 = inputStream.read(bArr, i14, Math.min(bArr.length - i14, (Integer.MAX_VALUE - this.f1515j) - i14));
                if (i15 == 0 || i15 < -1 || i15 > bArr.length) {
                    throw new IllegalStateException(inputStream.getClass() + "#read(byte[]) returned invalid result: " + i15 + "\nThe InputStream implementation is buggy.");
                }
                if (i15 > 0) {
                    this.f1511f += i15;
                    H();
                    if (this.f1511f >= i9) {
                        return true;
                    }
                    return K(i9);
                }
            } catch (d0 e) {
                e.f1487b = true;
                throw e;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final void a(int i9) throws d0 {
        if (this.f1514i != i9) {
            throw new d0("Protocol message end-group tag did not match expected tag.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int b() {
        return this.f1515j + this.f1513h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final boolean c() {
        return this.f1513h == this.f1511f && !K(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final void e(int i9) {
        this.f1516k = i9;
        H();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int f(int i9) throws d0 {
        if (i9 < 0) {
            throw d0.d();
        }
        int i10 = this.f1515j + this.f1513h + i9;
        int i11 = this.f1516k;
        if (i10 > i11) {
            throw d0.e();
        }
        this.f1516k = i10;
        H();
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final boolean g() {
        return F() != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final g h() throws IOException {
        int iE = E();
        int i9 = this.f1511f;
        int i10 = this.f1513h;
        int i11 = i9 - i10;
        byte[] bArr = this.e;
        if (iE <= i11 && iE > 0) {
            g gVarE = g.e(bArr, i10, iE);
            this.f1513h += iE;
            return gVarE;
        }
        if (iE == 0) {
            return g.d;
        }
        byte[] bArrA = A(iE);
        if (bArrA != null) {
            return g.e(bArrA, 0, bArrA.length);
        }
        int i12 = this.f1513h;
        int i13 = this.f1511f;
        int length = i13 - i12;
        this.f1515j += i13;
        this.f1513h = 0;
        this.f1511f = 0;
        ArrayList arrayListB = B(iE - length);
        byte[] bArr2 = new byte[iE];
        System.arraycopy(bArr, i12, bArr2, 0, length);
        int size = arrayListB.size();
        int i14 = 0;
        while (i14 < size) {
            Object obj = arrayListB.get(i14);
            i14++;
            byte[] bArr3 = (byte[]) obj;
            System.arraycopy(bArr3, 0, bArr2, length, bArr3.length);
            length += bArr3.length;
        }
        g gVar = g.d;
        return new g(bArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final double i() {
        return Double.longBitsToDouble(D());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int j() {
        return E();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int k() {
        return C();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final long l() {
        return D();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final float m() {
        return Float.intBitsToFloat(C());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int n() {
        return E();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final long o() {
        return F();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int p() {
        return C();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final long q() {
        return D();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int r() {
        int iE = E();
        return (-(iE & 1)) ^ (iE >>> 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final long s() {
        long jF = F();
        return (-(jF & 1)) ^ (jF >>> 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final String t() throws d0 {
        int iE = E();
        byte[] bArr = this.e;
        if (iE > 0) {
            int i9 = this.f1511f;
            int i10 = this.f1513h;
            if (iE <= i9 - i10) {
                String str = new String(bArr, i10, iE, b0.f1473a);
                this.f1513h += iE;
                return str;
            }
        }
        if (iE == 0) {
            return "";
        }
        if (iE > this.f1511f) {
            return new String(z(iE), b0.f1473a);
        }
        I(iE);
        String str2 = new String(bArr, this.f1513h, iE, b0.f1473a);
        this.f1513h += iE;
        return str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final String u() throws IOException {
        int iE = E();
        int i9 = this.f1513h;
        int i10 = this.f1511f;
        int i11 = i10 - i9;
        byte[] bArrZ = this.e;
        if (iE <= i11 && iE > 0) {
            this.f1513h = i9 + iE;
        } else {
            if (iE == 0) {
                return "";
            }
            i9 = 0;
            if (iE <= i10) {
                I(iE);
                this.f1513h = iE;
            } else {
                bArrZ = z(iE);
            }
        }
        return v1.f1577a.a(bArrZ, i9, iE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int v() throws d0 {
        if (c()) {
            this.f1514i = 0;
            return 0;
        }
        int iE = E();
        this.f1514i = iE;
        if ((iE >>> 3) != 0) {
            return iE;
        }
        throw new d0("Protocol message contained an invalid tag (zero).");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final int w() {
        return E();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final long x() {
        return F();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j
    public final boolean y(int i9) throws d0 {
        int iV;
        int i10 = i9 & 7;
        int i11 = 0;
        if (i10 == 0) {
            int i12 = this.f1511f - this.f1513h;
            byte[] bArr = this.e;
            if (i12 >= 10) {
                while (i11 < 10) {
                    int i13 = this.f1513h;
                    this.f1513h = i13 + 1;
                    if (bArr[i13] < 0) {
                        i11++;
                    }
                }
                throw d0.c();
            }
            while (i11 < 10) {
                if (this.f1513h == this.f1511f) {
                    I(1);
                }
                int i14 = this.f1513h;
                this.f1513h = i14 + 1;
                if (bArr[i14] < 0) {
                    i11++;
                }
            }
            throw d0.c();
            return true;
        }
        if (i10 == 1) {
            J(8);
            return true;
        }
        if (i10 == 2) {
            J(E());
            return true;
        }
        if (i10 != 3) {
            if (i10 == 4) {
                return false;
            }
            if (i10 != 5) {
                throw d0.b();
            }
            J(4);
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
    public final byte[] z(int i9) throws IOException {
        byte[] bArrA = A(i9);
        if (bArrA != null) {
            return bArrA;
        }
        int i10 = this.f1513h;
        int i11 = this.f1511f;
        int length = i11 - i10;
        this.f1515j += i11;
        this.f1513h = 0;
        this.f1511f = 0;
        ArrayList arrayListB = B(i9 - length);
        byte[] bArr = new byte[i9];
        System.arraycopy(this.e, i10, bArr, 0, length);
        int size = arrayListB.size();
        int i12 = 0;
        while (i12 < size) {
            Object obj = arrayListB.get(i12);
            i12++;
            byte[] bArr2 = (byte[]) obj;
            System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
            length += bArr2.length;
        }
        return bArr;
    }
}

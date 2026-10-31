package com.google.protobuf;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m extends n {
    public final byte[] d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1529f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final OutputStream f1530g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(OutputStream outputStream, int i9) {
        if (i9 < 0) {
            j1.i.k("bufferSize must be >= 0");
            throw null;
        }
        int iMax = Math.max(i9, 20);
        this.d = new byte[iMax];
        this.e = iMax;
        if (outputStream != null) {
            this.f1530g = outputStream;
        } else {
            n0.b.n("out");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void A(long j9) throws IOException {
        H(10);
        F(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void B(int i9) {
        int i10 = this.f1529f;
        int i11 = i10 + 1;
        this.f1529f = i11;
        byte[] bArr = this.d;
        bArr[i10] = (byte) (i9 & 255);
        int i12 = i10 + 2;
        this.f1529f = i12;
        bArr[i11] = (byte) ((i9 >> 8) & 255);
        int i13 = i10 + 3;
        this.f1529f = i13;
        bArr[i12] = (byte) ((i9 >> 16) & 255);
        this.f1529f = i10 + 4;
        bArr[i13] = (byte) ((i9 >> 24) & 255);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void C(long j9) {
        int i9 = this.f1529f;
        int i10 = i9 + 1;
        this.f1529f = i10;
        byte[] bArr = this.d;
        bArr[i9] = (byte) (j9 & 255);
        int i11 = i9 + 2;
        this.f1529f = i11;
        bArr[i10] = (byte) ((j9 >> 8) & 255);
        int i12 = i9 + 3;
        this.f1529f = i12;
        bArr[i11] = (byte) ((j9 >> 16) & 255);
        int i13 = i9 + 4;
        this.f1529f = i13;
        bArr[i12] = (byte) (255 & (j9 >> 24));
        int i14 = i9 + 5;
        this.f1529f = i14;
        bArr[i13] = (byte) (((int) (j9 >> 32)) & 255);
        int i15 = i9 + 6;
        this.f1529f = i15;
        bArr[i14] = (byte) (((int) (j9 >> 40)) & 255);
        int i16 = i9 + 7;
        this.f1529f = i16;
        bArr[i15] = (byte) (((int) (j9 >> 48)) & 255);
        this.f1529f = i9 + 8;
        bArr[i16] = (byte) (((int) (j9 >> 56)) & 255);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void D(int i9, int i10) {
        E((i9 << 3) | i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void E(int i9) {
        boolean z8 = n.c;
        byte[] bArr = this.d;
        if (z8) {
            while (true) {
                int i10 = i9 & (-128);
                int i11 = this.f1529f;
                if (i10 == 0) {
                    this.f1529f = i11 + 1;
                    s1.k(bArr, i11, (byte) i9);
                    return;
                } else {
                    this.f1529f = i11 + 1;
                    s1.k(bArr, i11, (byte) ((i9 & 127) | 128));
                    i9 >>>= 7;
                }
            }
        } else {
            while (true) {
                int i12 = i9 & (-128);
                int i13 = this.f1529f;
                if (i12 == 0) {
                    this.f1529f = i13 + 1;
                    bArr[i13] = (byte) i9;
                    return;
                } else {
                    this.f1529f = i13 + 1;
                    bArr[i13] = (byte) ((i9 & 127) | 128);
                    i9 >>>= 7;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void F(long j9) {
        boolean z8 = n.c;
        byte[] bArr = this.d;
        if (z8) {
            while (true) {
                long j10 = j9 & (-128);
                int i9 = this.f1529f;
                if (j10 == 0) {
                    this.f1529f = i9 + 1;
                    s1.k(bArr, i9, (byte) j9);
                    return;
                } else {
                    this.f1529f = i9 + 1;
                    s1.k(bArr, i9, (byte) ((((int) j9) & 127) | 128));
                    j9 >>>= 7;
                }
            }
        } else {
            while (true) {
                long j11 = j9 & (-128);
                int i10 = this.f1529f;
                if (j11 == 0) {
                    this.f1529f = i10 + 1;
                    bArr[i10] = (byte) j9;
                    return;
                } else {
                    this.f1529f = i10 + 1;
                    bArr[i10] = (byte) ((((int) j9) & 127) | 128);
                    j9 >>>= 7;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void G() throws IOException {
        this.f1530g.write(this.d, 0, this.f1529f);
        this.f1529f = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void H(int i9) throws IOException {
        if (this.e - this.f1529f < i9) {
            G();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void I(byte[] bArr, int i9, int i10) throws IOException {
        int i11 = this.f1529f;
        int i12 = this.e;
        int i13 = i12 - i11;
        byte[] bArr2 = this.d;
        if (i13 >= i10) {
            System.arraycopy(bArr, i9, bArr2, i11, i10);
            this.f1529f += i10;
            return;
        }
        System.arraycopy(bArr, i9, bArr2, i11, i13);
        int i14 = i9 + i13;
        int i15 = i10 - i13;
        this.f1529f = i12;
        G();
        if (i15 > i12) {
            this.f1530g.write(bArr, i14, i15);
        } else {
            System.arraycopy(bArr, i14, bArr2, 0, i15);
            this.f1529f = i15;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void g(byte b9) throws IOException {
        if (this.f1529f == this.e) {
            G();
        }
        int i9 = this.f1529f;
        this.f1529f = i9 + 1;
        this.d[i9] = b9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void h(int i9, boolean z8) throws IOException {
        H(11);
        D(i9, 0);
        byte b9 = z8 ? (byte) 1 : (byte) 0;
        int i10 = this.f1529f;
        this.f1529f = i10 + 1;
        this.d[i10] = b9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void i(int i9, byte[] bArr) throws IOException {
        y(i9);
        I(bArr, 0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void j(int i9, g gVar) throws IOException {
        w(i9, 2);
        k(gVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void k(g gVar) throws IOException {
        y(gVar.size());
        r(gVar.c, gVar.f(), gVar.size());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void l(int i9, int i10) throws IOException {
        H(14);
        D(i9, 5);
        B(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void m(int i9) throws IOException {
        H(4);
        B(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void n(int i9, long j9) throws IOException {
        H(18);
        D(i9, 1);
        C(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void o(long j9) throws IOException {
        H(8);
        C(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void p(int i9, int i10) throws IOException {
        H(20);
        D(i9, 0);
        if (i10 >= 0) {
            E(i10);
        } else {
            F(i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void q(int i9) throws IOException {
        if (i9 >= 0) {
            y(i9);
        } else {
            A(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void r(byte[] bArr, int i9, int i10) throws IOException {
        I(bArr, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void s(int i9, a aVar, b1 b1Var) throws IOException {
        w(i9, 2);
        y(aVar.a(b1Var));
        b1Var.a(aVar, this.f1535a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void t(a aVar) throws IOException {
        y(((y) aVar).a(null));
        aVar.c(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void u(int i9, String str) throws IOException {
        w(i9, 2);
        v(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void v(String str) throws IOException {
        try {
            int length = str.length() * 3;
            int iD = n.d(length);
            int i9 = iD + length;
            int i10 = this.e;
            if (i9 > i10) {
                byte[] bArr = new byte[length];
                int iB = v1.f1577a.b(str, bArr, 0, length);
                y(iB);
                I(bArr, 0, iB);
                return;
            }
            if (i9 > i10 - this.f1529f) {
                G();
            }
            int iD2 = n.d(str.length());
            int i11 = this.f1529f;
            byte[] bArr2 = this.d;
            try {
                if (iD2 == iD) {
                    int i12 = i11 + iD2;
                    this.f1529f = i12;
                    int iB2 = v1.f1577a.b(str, bArr2, i12, i10 - i12);
                    this.f1529f = i11;
                    E((iB2 - i11) - iD2);
                    this.f1529f = iB2;
                } else {
                    int iB3 = v1.b(str);
                    E(iB3);
                    this.f1529f = v1.f1577a.b(str, bArr2, this.f1529f, iB3);
                }
            } catch (u1 e) {
                this.f1529f = i11;
                throw e;
            } catch (ArrayIndexOutOfBoundsException e6) {
                throw new l(e6);
            }
        } catch (u1 e9) {
            f(str, e9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void w(int i9, int i10) throws IOException {
        y((i9 << 3) | i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void x(int i9, int i10) throws IOException {
        H(20);
        D(i9, 0);
        E(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void y(int i9) throws IOException {
        H(5);
        E(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void z(int i9, long j9) throws IOException {
        H(20);
        D(i9, 0);
        F(j9);
    }
}

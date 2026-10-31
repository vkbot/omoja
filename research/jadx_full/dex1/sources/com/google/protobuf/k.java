package com.google.protobuf;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k extends n {
    public final byte[] d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1524f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(byte[] bArr, int i9, int i10) {
        if (bArr == null) {
            n0.b.n("buffer");
            throw null;
        }
        int i11 = i9 + i10;
        if ((i9 | i10 | (bArr.length - i11)) < 0) {
            n0.b.v("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i9), Integer.valueOf(i10)});
            throw null;
        }
        this.d = bArr;
        this.f1524f = i9;
        this.e = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void A(long j9) throws l {
        boolean z8 = n.c;
        byte[] bArr = this.d;
        if (!z8 || B() < 10) {
            while (true) {
                long j10 = j9 & (-128);
                int i9 = this.f1524f;
                if (j10 == 0) {
                    this.f1524f = i9 + 1;
                    bArr[i9] = (byte) j9;
                    return;
                } else {
                    try {
                        this.f1524f = i9 + 1;
                        bArr[i9] = (byte) ((((int) j9) & 127) | 128);
                        j9 >>>= 7;
                    } catch (IndexOutOfBoundsException e) {
                        throw new l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1524f), Integer.valueOf(this.e), 1), e);
                    }
                }
                throw new l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1524f), Integer.valueOf(this.e), 1), e);
            }
        }
        while (true) {
            long j11 = j9 & (-128);
            int i10 = this.f1524f;
            if (j11 == 0) {
                this.f1524f = i10 + 1;
                s1.k(bArr, i10, (byte) j9);
                return;
            } else {
                this.f1524f = i10 + 1;
                s1.k(bArr, i10, (byte) ((((int) j9) & 127) | 128));
                j9 >>>= 7;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int B() {
        return this.e - this.f1524f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void C(byte[] bArr, int i9, int i10) throws l {
        try {
            System.arraycopy(bArr, i9, this.d, this.f1524f, i10);
            this.f1524f += i10;
        } catch (IndexOutOfBoundsException e) {
            throw new l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1524f), Integer.valueOf(this.e), Integer.valueOf(i10)), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void g(byte b9) throws l {
        try {
            byte[] bArr = this.d;
            int i9 = this.f1524f;
            this.f1524f = i9 + 1;
            bArr[i9] = b9;
        } catch (IndexOutOfBoundsException e) {
            throw new l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1524f), Integer.valueOf(this.e), 1), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void h(int i9, boolean z8) throws l {
        w(i9, 0);
        g(z8 ? (byte) 1 : (byte) 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void i(int i9, byte[] bArr) throws l {
        y(i9);
        C(bArr, 0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void j(int i9, g gVar) throws l {
        w(i9, 2);
        k(gVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void k(g gVar) throws l {
        y(gVar.size());
        r(gVar.c, gVar.f(), gVar.size());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void l(int i9, int i10) throws l {
        w(i9, 5);
        m(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void m(int i9) throws l {
        try {
            byte[] bArr = this.d;
            int i10 = this.f1524f;
            int i11 = i10 + 1;
            this.f1524f = i11;
            bArr[i10] = (byte) (i9 & 255);
            int i12 = i10 + 2;
            this.f1524f = i12;
            bArr[i11] = (byte) ((i9 >> 8) & 255);
            int i13 = i10 + 3;
            this.f1524f = i13;
            bArr[i12] = (byte) ((i9 >> 16) & 255);
            this.f1524f = i10 + 4;
            bArr[i13] = (byte) ((i9 >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1524f), Integer.valueOf(this.e), 1), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void n(int i9, long j9) throws l {
        w(i9, 1);
        o(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void o(long j9) throws l {
        try {
            byte[] bArr = this.d;
            int i9 = this.f1524f;
            int i10 = i9 + 1;
            this.f1524f = i10;
            bArr[i9] = (byte) (((int) j9) & 255);
            int i11 = i9 + 2;
            this.f1524f = i11;
            bArr[i10] = (byte) (((int) (j9 >> 8)) & 255);
            int i12 = i9 + 3;
            this.f1524f = i12;
            bArr[i11] = (byte) (((int) (j9 >> 16)) & 255);
            int i13 = i9 + 4;
            this.f1524f = i13;
            bArr[i12] = (byte) (((int) (j9 >> 24)) & 255);
            int i14 = i9 + 5;
            this.f1524f = i14;
            bArr[i13] = (byte) (((int) (j9 >> 32)) & 255);
            int i15 = i9 + 6;
            this.f1524f = i15;
            bArr[i14] = (byte) (((int) (j9 >> 40)) & 255);
            int i16 = i9 + 7;
            this.f1524f = i16;
            bArr[i15] = (byte) (((int) (j9 >> 48)) & 255);
            this.f1524f = i9 + 8;
            bArr[i16] = (byte) (((int) (j9 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1524f), Integer.valueOf(this.e), 1), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void p(int i9, int i10) throws l {
        w(i9, 0);
        q(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void q(int i9) throws l {
        if (i9 >= 0) {
            y(i9);
        } else {
            A(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void r(byte[] bArr, int i9, int i10) throws l {
        C(bArr, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void s(int i9, a aVar, b1 b1Var) throws l {
        w(i9, 2);
        y(aVar.a(b1Var));
        b1Var.a(aVar, this.f1535a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void t(a aVar) throws l {
        y(((y) aVar).a(null));
        aVar.c(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void u(int i9, String str) throws l {
        w(i9, 2);
        v(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void v(String str) throws l {
        int i9 = this.f1524f;
        try {
            int iD = n.d(str.length() * 3);
            int iD2 = n.d(str.length());
            byte[] bArr = this.d;
            if (iD2 != iD) {
                y(v1.b(str));
                this.f1524f = v1.f1577a.b(str, bArr, this.f1524f, B());
                return;
            }
            int i10 = i9 + iD2;
            this.f1524f = i10;
            int iB = v1.f1577a.b(str, bArr, i10, B());
            this.f1524f = i9;
            y((iB - i9) - iD2);
            this.f1524f = iB;
        } catch (u1 e) {
            this.f1524f = i9;
            f(str, e);
        } catch (IndexOutOfBoundsException e6) {
            throw new l(e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void w(int i9, int i10) throws l {
        y((i9 << 3) | i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void x(int i9, int i10) throws l {
        w(i9, 0);
        y(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void y(int i9) throws l {
        while (true) {
            int i10 = i9 & (-128);
            int i11 = this.f1524f;
            byte[] bArr = this.d;
            if (i10 == 0) {
                this.f1524f = i11 + 1;
                bArr[i11] = (byte) i9;
                return;
            } else {
                try {
                    this.f1524f = i11 + 1;
                    bArr[i11] = (byte) ((i9 & 127) | 128);
                    i9 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1524f), Integer.valueOf(this.e), 1), e);
                }
            }
            throw new l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1524f), Integer.valueOf(this.e), 1), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.n
    public final void z(int i9, long j9) throws l {
        w(i9, 0);
        A(j9);
    }
}

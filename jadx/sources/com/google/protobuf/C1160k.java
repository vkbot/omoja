package com.google.protobuf;

import p142n0.C2467b;

/* JADX INFO: renamed from: com.google.protobuf.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1160k extends AbstractC1169n {

    /* JADX INFO: renamed from: d */
    public final byte[] f2715d;

    /* JADX INFO: renamed from: e */
    public final int f2716e;

    /* JADX INFO: renamed from: f */
    public int f2717f;

    public C1160k(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            C2467b.m3828n("buffer");
            throw null;
        }
        int i12 = i10 + i11;
        if ((i10 | i11 | (bArr.length - i12)) < 0) {
            C2467b.m3832v("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)});
            throw null;
        }
        this.f2715d = bArr;
        this.f2717f = i10;
        this.f2716e = i12;
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: A */
    public final void mo2010A(long j10) throws C1163l {
        boolean z9 = AbstractC1169n.f2731c;
        byte[] bArr = this.f2715d;
        if (!z9 || m2011B() < 10) {
            while (true) {
                long j11 = j10 & (-128);
                int i10 = this.f2717f;
                if (j11 == 0) {
                    this.f2717f = i10 + 1;
                    bArr[i10] = (byte) j10;
                    return;
                } else {
                    try {
                        this.f2717f = i10 + 1;
                        bArr[i10] = (byte) ((((int) j10) & 127) | 128);
                        j10 >>>= 7;
                    } catch (IndexOutOfBoundsException e) {
                        throw new C1163l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f2717f), Integer.valueOf(this.f2716e), 1), e);
                    }
                }
                throw new C1163l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f2717f), Integer.valueOf(this.f2716e), 1), e);
            }
        }
        while (true) {
            long j12 = j10 & (-128);
            int i11 = this.f2717f;
            if (j12 == 0) {
                this.f2717f = i11 + 1;
                AbstractC1186s1.m2116k(bArr, i11, (byte) j10);
                return;
            } else {
                this.f2717f = i11 + 1;
                AbstractC1186s1.m2116k(bArr, i11, (byte) ((((int) j10) & 127) | 128));
                j10 >>>= 7;
            }
        }
    }

    /* JADX INFO: renamed from: B */
    public final int m2011B() {
        return this.f2716e - this.f2717f;
    }

    /* JADX INFO: renamed from: C */
    public final void m2012C(byte[] bArr, int i10, int i11) throws C1163l {
        try {
            System.arraycopy(bArr, i10, this.f2715d, this.f2717f, i11);
            this.f2717f += i11;
        } catch (IndexOutOfBoundsException e) {
            throw new C1163l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f2717f), Integer.valueOf(this.f2716e), Integer.valueOf(i11)), e);
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: g */
    public final void mo2013g(byte b10) throws C1163l {
        try {
            byte[] bArr = this.f2715d;
            int i10 = this.f2717f;
            this.f2717f = i10 + 1;
            bArr[i10] = b10;
        } catch (IndexOutOfBoundsException e) {
            throw new C1163l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f2717f), Integer.valueOf(this.f2716e), 1), e);
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: h */
    public final void mo2014h(int i10, boolean z9) throws C1163l {
        mo2029w(i10, 0);
        mo2013g(z9 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: i */
    public final void mo2015i(int i10, byte[] bArr) throws C1163l {
        mo2031y(i10);
        m2012C(bArr, 0, i10);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: j */
    public final void mo2016j(int i10, C1148g c1148g) throws C1163l {
        mo2029w(i10, 2);
        mo2017k(c1148g);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: k */
    public final void mo2017k(C1148g c1148g) throws C1163l {
        mo2031y(c1148g.size());
        mo2024r(c1148g.f2680c, c1148g.mo1949f(), c1148g.size());
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: l */
    public final void mo2018l(int i10, int i11) throws C1163l {
        mo2029w(i10, 5);
        mo2019m(i11);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: m */
    public final void mo2019m(int i10) throws C1163l {
        try {
            byte[] bArr = this.f2715d;
            int i11 = this.f2717f;
            int i12 = i11 + 1;
            this.f2717f = i12;
            bArr[i11] = (byte) (i10 & 255);
            int i13 = i11 + 2;
            this.f2717f = i13;
            bArr[i12] = (byte) ((i10 >> 8) & 255);
            int i14 = i11 + 3;
            this.f2717f = i14;
            bArr[i13] = (byte) ((i10 >> 16) & 255);
            this.f2717f = i11 + 4;
            bArr[i14] = (byte) ((i10 >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new C1163l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f2717f), Integer.valueOf(this.f2716e), 1), e);
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: n */
    public final void mo2020n(int i10, long j10) throws C1163l {
        mo2029w(i10, 1);
        mo2021o(j10);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: o */
    public final void mo2021o(long j10) throws C1163l {
        try {
            byte[] bArr = this.f2715d;
            int i10 = this.f2717f;
            int i11 = i10 + 1;
            this.f2717f = i11;
            bArr[i10] = (byte) (((int) j10) & 255);
            int i12 = i10 + 2;
            this.f2717f = i12;
            bArr[i11] = (byte) (((int) (j10 >> 8)) & 255);
            int i13 = i10 + 3;
            this.f2717f = i13;
            bArr[i12] = (byte) (((int) (j10 >> 16)) & 255);
            int i14 = i10 + 4;
            this.f2717f = i14;
            bArr[i13] = (byte) (((int) (j10 >> 24)) & 255);
            int i15 = i10 + 5;
            this.f2717f = i15;
            bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
            int i16 = i10 + 6;
            this.f2717f = i16;
            bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
            int i17 = i10 + 7;
            this.f2717f = i17;
            bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
            this.f2717f = i10 + 8;
            bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new C1163l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f2717f), Integer.valueOf(this.f2716e), 1), e);
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: p */
    public final void mo2022p(int i10, int i11) throws C1163l {
        mo2029w(i10, 0);
        mo2023q(i11);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: q */
    public final void mo2023q(int i10) throws C1163l {
        if (i10 >= 0) {
            mo2031y(i10);
        } else {
            mo2010A(i10);
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: r */
    public final void mo2024r(byte[] bArr, int i10, int i11) throws C1163l {
        m2012C(bArr, i10, i11);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: s */
    public final void mo2025s(int i10, AbstractC1128a abstractC1128a, InterfaceC1134b1 interfaceC1134b1) throws C1163l {
        mo2029w(i10, 2);
        mo2031y(abstractC1128a.mo1893a(interfaceC1134b1));
        interfaceC1134b1.mo1901a(abstractC1128a, this.f2732a);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: t */
    public final void mo2026t(AbstractC1128a abstractC1128a) throws C1163l {
        mo2031y(((AbstractC1202y) abstractC1128a).mo1893a(null));
        abstractC1128a.mo1895c(this);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: u */
    public final void mo2027u(int i10, String str) throws C1163l {
        mo2029w(i10, 2);
        mo2028v(str);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: v */
    public final void mo2028v(String str) throws C1163l {
        int i10 = this.f2717f;
        try {
            int iM2049d = AbstractC1169n.m2049d(str.length() * 3);
            int iM2049d2 = AbstractC1169n.m2049d(str.length());
            byte[] bArr = this.f2715d;
            if (iM2049d2 != iM2049d) {
                mo2031y(AbstractC1195v1.m2161b(str));
                this.f2717f = AbstractC1195v1.f2788a.m2158b(str, bArr, this.f2717f, m2011B());
                return;
            }
            int i11 = i10 + iM2049d2;
            this.f2717f = i11;
            int iM2158b = AbstractC1195v1.f2788a.m2158b(str, bArr, i11, m2011B());
            this.f2717f = i10;
            mo2031y((iM2158b - i10) - iM2049d2);
            this.f2717f = iM2158b;
        } catch (C1192u1 e) {
            this.f2717f = i10;
            m2051f(str, e);
        } catch (IndexOutOfBoundsException e6) {
            throw new C1163l(e6);
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: w */
    public final void mo2029w(int i10, int i11) throws C1163l {
        mo2031y((i10 << 3) | i11);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: x */
    public final void mo2030x(int i10, int i11) throws C1163l {
        mo2029w(i10, 0);
        mo2031y(i11);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: y */
    public final void mo2031y(int i10) throws C1163l {
        while (true) {
            int i11 = i10 & (-128);
            int i12 = this.f2717f;
            byte[] bArr = this.f2715d;
            if (i11 == 0) {
                this.f2717f = i12 + 1;
                bArr[i12] = (byte) i10;
                return;
            } else {
                try {
                    this.f2717f = i12 + 1;
                    bArr[i12] = (byte) ((i10 & 127) | 128);
                    i10 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new C1163l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f2717f), Integer.valueOf(this.f2716e), 1), e);
                }
            }
            throw new C1163l(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f2717f), Integer.valueOf(this.f2716e), 1), e);
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: z */
    public final void mo2032z(int i10, long j10) throws C1163l {
        mo2029w(i10, 0);
        mo2010A(j10);
    }
}

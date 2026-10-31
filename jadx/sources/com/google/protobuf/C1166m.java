package com.google.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: renamed from: com.google.protobuf.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1166m extends AbstractC1169n {

    /* JADX INFO: renamed from: d */
    public final byte[] f2722d;

    /* JADX INFO: renamed from: e */
    public final int f2723e;

    /* JADX INFO: renamed from: f */
    public int f2724f;

    /* JADX INFO: renamed from: g */
    public final OutputStream f2725g;

    public C1166m(OutputStream outputStream, int i10) {
        if (i10 < 0) {
            C1929i.m3029k("bufferSize must be >= 0");
            throw null;
        }
        int iMax = Math.max(i10, 20);
        this.f2722d = new byte[iMax];
        this.f2723e = iMax;
        if (outputStream != null) {
            this.f2725g = outputStream;
        } else {
            C2467b.m3828n("out");
            throw null;
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: A */
    public final void mo2010A(long j10) throws IOException {
        m2044H(10);
        m2042F(j10);
    }

    /* JADX INFO: renamed from: B */
    public final void m2038B(int i10) {
        int i11 = this.f2724f;
        int i12 = i11 + 1;
        this.f2724f = i12;
        byte[] bArr = this.f2722d;
        bArr[i11] = (byte) (i10 & 255);
        int i13 = i11 + 2;
        this.f2724f = i13;
        bArr[i12] = (byte) ((i10 >> 8) & 255);
        int i14 = i11 + 3;
        this.f2724f = i14;
        bArr[i13] = (byte) ((i10 >> 16) & 255);
        this.f2724f = i11 + 4;
        bArr[i14] = (byte) ((i10 >> 24) & 255);
    }

    /* JADX INFO: renamed from: C */
    public final void m2039C(long j10) {
        int i10 = this.f2724f;
        int i11 = i10 + 1;
        this.f2724f = i11;
        byte[] bArr = this.f2722d;
        bArr[i10] = (byte) (j10 & 255);
        int i12 = i10 + 2;
        this.f2724f = i12;
        bArr[i11] = (byte) ((j10 >> 8) & 255);
        int i13 = i10 + 3;
        this.f2724f = i13;
        bArr[i12] = (byte) ((j10 >> 16) & 255);
        int i14 = i10 + 4;
        this.f2724f = i14;
        bArr[i13] = (byte) (255 & (j10 >> 24));
        int i15 = i10 + 5;
        this.f2724f = i15;
        bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
        int i16 = i10 + 6;
        this.f2724f = i16;
        bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
        int i17 = i10 + 7;
        this.f2724f = i17;
        bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
        this.f2724f = i10 + 8;
        bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
    }

    /* JADX INFO: renamed from: D */
    public final void m2040D(int i10, int i11) {
        m2041E((i10 << 3) | i11);
    }

    /* JADX INFO: renamed from: E */
    public final void m2041E(int i10) {
        boolean z9 = AbstractC1169n.f2731c;
        byte[] bArr = this.f2722d;
        if (z9) {
            while (true) {
                int i11 = i10 & (-128);
                int i12 = this.f2724f;
                if (i11 == 0) {
                    this.f2724f = i12 + 1;
                    AbstractC1186s1.m2116k(bArr, i12, (byte) i10);
                    return;
                } else {
                    this.f2724f = i12 + 1;
                    AbstractC1186s1.m2116k(bArr, i12, (byte) ((i10 & 127) | 128));
                    i10 >>>= 7;
                }
            }
        } else {
            while (true) {
                int i13 = i10 & (-128);
                int i14 = this.f2724f;
                if (i13 == 0) {
                    this.f2724f = i14 + 1;
                    bArr[i14] = (byte) i10;
                    return;
                } else {
                    this.f2724f = i14 + 1;
                    bArr[i14] = (byte) ((i10 & 127) | 128);
                    i10 >>>= 7;
                }
            }
        }
    }

    /* JADX INFO: renamed from: F */
    public final void m2042F(long j10) {
        boolean z9 = AbstractC1169n.f2731c;
        byte[] bArr = this.f2722d;
        if (z9) {
            while (true) {
                long j11 = j10 & (-128);
                int i10 = this.f2724f;
                if (j11 == 0) {
                    this.f2724f = i10 + 1;
                    AbstractC1186s1.m2116k(bArr, i10, (byte) j10);
                    return;
                } else {
                    this.f2724f = i10 + 1;
                    AbstractC1186s1.m2116k(bArr, i10, (byte) ((((int) j10) & 127) | 128));
                    j10 >>>= 7;
                }
            }
        } else {
            while (true) {
                long j12 = j10 & (-128);
                int i11 = this.f2724f;
                if (j12 == 0) {
                    this.f2724f = i11 + 1;
                    bArr[i11] = (byte) j10;
                    return;
                } else {
                    this.f2724f = i11 + 1;
                    bArr[i11] = (byte) ((((int) j10) & 127) | 128);
                    j10 >>>= 7;
                }
            }
        }
    }

    /* JADX INFO: renamed from: G */
    public final void m2043G() throws IOException {
        this.f2725g.write(this.f2722d, 0, this.f2724f);
        this.f2724f = 0;
    }

    /* JADX INFO: renamed from: H */
    public final void m2044H(int i10) throws IOException {
        if (this.f2723e - this.f2724f < i10) {
            m2043G();
        }
    }

    /* JADX INFO: renamed from: I */
    public final void m2045I(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f2724f;
        int i13 = this.f2723e;
        int i14 = i13 - i12;
        byte[] bArr2 = this.f2722d;
        if (i14 >= i11) {
            System.arraycopy(bArr, i10, bArr2, i12, i11);
            this.f2724f += i11;
            return;
        }
        System.arraycopy(bArr, i10, bArr2, i12, i14);
        int i15 = i10 + i14;
        int i16 = i11 - i14;
        this.f2724f = i13;
        m2043G();
        if (i16 > i13) {
            this.f2725g.write(bArr, i15, i16);
        } else {
            System.arraycopy(bArr, i15, bArr2, 0, i16);
            this.f2724f = i16;
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: g */
    public final void mo2013g(byte b10) throws IOException {
        if (this.f2724f == this.f2723e) {
            m2043G();
        }
        int i10 = this.f2724f;
        this.f2724f = i10 + 1;
        this.f2722d[i10] = b10;
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: h */
    public final void mo2014h(int i10, boolean z9) throws IOException {
        m2044H(11);
        m2040D(i10, 0);
        byte b10 = z9 ? (byte) 1 : (byte) 0;
        int i11 = this.f2724f;
        this.f2724f = i11 + 1;
        this.f2722d[i11] = b10;
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: i */
    public final void mo2015i(int i10, byte[] bArr) throws IOException {
        mo2031y(i10);
        m2045I(bArr, 0, i10);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: j */
    public final void mo2016j(int i10, C1148g c1148g) throws IOException {
        mo2029w(i10, 2);
        mo2017k(c1148g);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: k */
    public final void mo2017k(C1148g c1148g) throws IOException {
        mo2031y(c1148g.size());
        mo2024r(c1148g.f2680c, c1148g.mo1949f(), c1148g.size());
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: l */
    public final void mo2018l(int i10, int i11) throws IOException {
        m2044H(14);
        m2040D(i10, 5);
        m2038B(i11);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: m */
    public final void mo2019m(int i10) throws IOException {
        m2044H(4);
        m2038B(i10);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: n */
    public final void mo2020n(int i10, long j10) throws IOException {
        m2044H(18);
        m2040D(i10, 1);
        m2039C(j10);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: o */
    public final void mo2021o(long j10) throws IOException {
        m2044H(8);
        m2039C(j10);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: p */
    public final void mo2022p(int i10, int i11) throws IOException {
        m2044H(20);
        m2040D(i10, 0);
        if (i11 >= 0) {
            m2041E(i11);
        } else {
            m2042F(i11);
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: q */
    public final void mo2023q(int i10) throws IOException {
        if (i10 >= 0) {
            mo2031y(i10);
        } else {
            mo2010A(i10);
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: r */
    public final void mo2024r(byte[] bArr, int i10, int i11) throws IOException {
        m2045I(bArr, i10, i11);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: s */
    public final void mo2025s(int i10, AbstractC1128a abstractC1128a, InterfaceC1134b1 interfaceC1134b1) throws IOException {
        mo2029w(i10, 2);
        mo2031y(abstractC1128a.mo1893a(interfaceC1134b1));
        interfaceC1134b1.mo1901a(abstractC1128a, this.f2732a);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: t */
    public final void mo2026t(AbstractC1128a abstractC1128a) throws IOException {
        mo2031y(((AbstractC1202y) abstractC1128a).mo1893a(null));
        abstractC1128a.mo1895c(this);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: u */
    public final void mo2027u(int i10, String str) throws IOException {
        mo2029w(i10, 2);
        mo2028v(str);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: v */
    public final void mo2028v(String str) throws IOException {
        try {
            int length = str.length() * 3;
            int iM2049d = AbstractC1169n.m2049d(length);
            int i10 = iM2049d + length;
            int i11 = this.f2723e;
            if (i10 > i11) {
                byte[] bArr = new byte[length];
                int iM2158b = AbstractC1195v1.f2788a.m2158b(str, bArr, 0, length);
                mo2031y(iM2158b);
                m2045I(bArr, 0, iM2158b);
                return;
            }
            if (i10 > i11 - this.f2724f) {
                m2043G();
            }
            int iM2049d2 = AbstractC1169n.m2049d(str.length());
            int i12 = this.f2724f;
            byte[] bArr2 = this.f2722d;
            try {
                if (iM2049d2 == iM2049d) {
                    int i13 = i12 + iM2049d2;
                    this.f2724f = i13;
                    int iM2158b2 = AbstractC1195v1.f2788a.m2158b(str, bArr2, i13, i11 - i13);
                    this.f2724f = i12;
                    m2041E((iM2158b2 - i12) - iM2049d2);
                    this.f2724f = iM2158b2;
                } else {
                    int iM2161b = AbstractC1195v1.m2161b(str);
                    m2041E(iM2161b);
                    this.f2724f = AbstractC1195v1.f2788a.m2158b(str, bArr2, this.f2724f, iM2161b);
                }
            } catch (C1192u1 e) {
                this.f2724f = i12;
                throw e;
            } catch (ArrayIndexOutOfBoundsException e6) {
                throw new C1163l(e6);
            }
        } catch (C1192u1 e10) {
            m2051f(str, e10);
        }
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: w */
    public final void mo2029w(int i10, int i11) throws IOException {
        mo2031y((i10 << 3) | i11);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: x */
    public final void mo2030x(int i10, int i11) throws IOException {
        m2044H(20);
        m2040D(i10, 0);
        m2041E(i11);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: y */
    public final void mo2031y(int i10) throws IOException {
        m2044H(5);
        m2041E(i10);
    }

    @Override // com.google.protobuf.AbstractC1169n
    /* JADX INFO: renamed from: z */
    public final void mo2032z(int i10, long j10) throws IOException {
        m2044H(20);
        m2040D(i10, 0);
        m2042F(j10);
    }
}

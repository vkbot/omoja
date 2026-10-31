package com.google.protobuf;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.protobuf.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1169n {

    /* JADX INFO: renamed from: b */
    public static final Logger f2730b = Logger.getLogger(AbstractC1169n.class.getName());

    /* JADX INFO: renamed from: c */
    public static final boolean f2731c = AbstractC1186s1.f2753e;

    /* JADX INFO: renamed from: a */
    public C1164l0 f2732a;

    /* JADX INFO: renamed from: a */
    public static int m2046a(int i10) {
        if (i10 >= 0) {
            return m2049d(i10);
        }
        return 10;
    }

    /* JADX INFO: renamed from: b */
    public static int m2047b(String str) {
        int length;
        try {
            length = AbstractC1195v1.m2161b(str);
        } catch (C1192u1 unused) {
            length = str.getBytes(AbstractC1133b0.f2634a).length;
        }
        return m2049d(length) + length;
    }

    /* JADX INFO: renamed from: c */
    public static int m2048c(int i10) {
        return m2049d(i10 << 3);
    }

    /* JADX INFO: renamed from: d */
    public static int m2049d(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    /* JADX INFO: renamed from: e */
    public static int m2050e(long j10) {
        int i10;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            j10 >>>= 28;
            i10 = 6;
        } else {
            i10 = 2;
        }
        if (((-2097152) & j10) != 0) {
            i10 += 2;
            j10 >>>= 14;
        }
        return (j10 & (-16384)) != 0 ? i10 + 1 : i10;
    }

    /* JADX INFO: renamed from: A */
    public abstract void mo2010A(long j10);

    /* JADX INFO: renamed from: f */
    public final void m2051f(String str, C1192u1 c1192u1) {
        f2730b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) c1192u1);
        byte[] bytes = str.getBytes(AbstractC1133b0.f2634a);
        try {
            mo2031y(bytes.length);
            mo2024r(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e) {
            throw new C1163l(e);
        }
    }

    /* JADX INFO: renamed from: g */
    public abstract void mo2013g(byte b10);

    /* JADX INFO: renamed from: h */
    public abstract void mo2014h(int i10, boolean z9);

    /* JADX INFO: renamed from: i */
    public abstract void mo2015i(int i10, byte[] bArr);

    /* JADX INFO: renamed from: j */
    public abstract void mo2016j(int i10, C1148g c1148g);

    /* JADX INFO: renamed from: k */
    public abstract void mo2017k(C1148g c1148g);

    /* JADX INFO: renamed from: l */
    public abstract void mo2018l(int i10, int i11);

    /* JADX INFO: renamed from: m */
    public abstract void mo2019m(int i10);

    /* JADX INFO: renamed from: n */
    public abstract void mo2020n(int i10, long j10);

    /* JADX INFO: renamed from: o */
    public abstract void mo2021o(long j10);

    /* JADX INFO: renamed from: p */
    public abstract void mo2022p(int i10, int i11);

    /* JADX INFO: renamed from: q */
    public abstract void mo2023q(int i10);

    /* JADX INFO: renamed from: r */
    public abstract void mo2024r(byte[] bArr, int i10, int i11);

    /* JADX INFO: renamed from: s */
    public abstract void mo2025s(int i10, AbstractC1128a abstractC1128a, InterfaceC1134b1 interfaceC1134b1);

    /* JADX INFO: renamed from: t */
    public abstract void mo2026t(AbstractC1128a abstractC1128a);

    /* JADX INFO: renamed from: u */
    public abstract void mo2027u(int i10, String str);

    /* JADX INFO: renamed from: v */
    public abstract void mo2028v(String str);

    /* JADX INFO: renamed from: w */
    public abstract void mo2029w(int i10, int i11);

    /* JADX INFO: renamed from: x */
    public abstract void mo2030x(int i10, int i11);

    /* JADX INFO: renamed from: y */
    public abstract void mo2031y(int i10);

    /* JADX INFO: renamed from: z */
    public abstract void mo2032z(int i10, long j10);
}

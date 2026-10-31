package com.google.protobuf;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f1534b = Logger.getLogger(n.class.getName());
    public static final boolean c = s1.e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l0 f1535a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(int i9) {
        if (i9 >= 0) {
            return d(i9);
        }
        return 10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(String str) {
        int length;
        try {
            length = v1.b(str);
        } catch (u1 unused) {
            length = str.getBytes(b0.f1473a).length;
        }
        return d(length) + length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int c(int i9) {
        return d(i9 << 3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int d(int i9) {
        if ((i9 & (-128)) == 0) {
            return 1;
        }
        if ((i9 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i9) == 0) {
            return 3;
        }
        return (i9 & (-268435456)) == 0 ? 4 : 5;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int e(long j9) {
        int i9;
        if (((-128) & j9) == 0) {
            return 1;
        }
        if (j9 < 0) {
            return 10;
        }
        if (((-34359738368L) & j9) != 0) {
            j9 >>>= 28;
            i9 = 6;
        } else {
            i9 = 2;
        }
        if (((-2097152) & j9) != 0) {
            i9 += 2;
            j9 >>>= 14;
        }
        return (j9 & (-16384)) != 0 ? i9 + 1 : i9;
    }

    public abstract void A(long j9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(String str, u1 u1Var) {
        f1534b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) u1Var);
        byte[] bytes = str.getBytes(b0.f1473a);
        try {
            y(bytes.length);
            r(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e) {
            throw new l(e);
        }
    }

    public abstract void g(byte b9);

    public abstract void h(int i9, boolean z8);

    public abstract void i(int i9, byte[] bArr);

    public abstract void j(int i9, g gVar);

    public abstract void k(g gVar);

    public abstract void l(int i9, int i10);

    public abstract void m(int i9);

    public abstract void n(int i9, long j9);

    public abstract void o(long j9);

    public abstract void p(int i9, int i10);

    public abstract void q(int i9);

    public abstract void r(byte[] bArr, int i9, int i10);

    public abstract void s(int i9, a aVar, b1 b1Var);

    public abstract void t(a aVar);

    public abstract void u(int i9, String str);

    public abstract void v(String str);

    public abstract void w(int i9, int i10);

    public abstract void x(int i9, int i10);

    public abstract void y(int i9);

    public abstract void z(int i9, long j9);
}

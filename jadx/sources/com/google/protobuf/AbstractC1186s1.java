package com.google.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.protobuf.s1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1186s1 {

    /* JADX INFO: renamed from: a */
    public static final Unsafe f2749a;

    /* JADX INFO: renamed from: b */
    public static final Class f2750b;

    /* JADX INFO: renamed from: c */
    public static final AbstractC1183r1 f2751c;

    /* JADX INFO: renamed from: d */
    public static final boolean f2752d;

    /* JADX INFO: renamed from: e */
    public static final boolean f2753e;

    /* JADX INFO: renamed from: f */
    public static final long f2754f;

    /* JADX INFO: renamed from: g */
    public static final boolean f2755g;

    static {
        Unsafe unsafeM2115j = m2115j();
        f2749a = unsafeM2115j;
        f2750b = AbstractC1136c.f2646a;
        boolean zM2111f = m2111f(Long.TYPE);
        boolean zM2111f2 = m2111f(Integer.TYPE);
        AbstractC1183r1 c1180q1 = null;
        if (unsafeM2115j != null) {
            if (!AbstractC1136c.m1910a()) {
                c1180q1 = new C1180q1(unsafeM2115j);
            } else if (zM2111f) {
                c1180q1 = new C1177p1(unsafeM2115j, 1);
            } else if (zM2111f2) {
                c1180q1 = new C1177p1(unsafeM2115j, 0);
            }
        }
        f2751c = c1180q1;
        f2752d = c1180q1 == null ? false : c1180q1.mo2066s();
        f2753e = c1180q1 == null ? false : c1180q1.mo2093r();
        f2754f = m2108c(byte[].class);
        m2108c(boolean[].class);
        m2109d(boolean[].class);
        m2108c(int[].class);
        m2109d(int[].class);
        m2108c(long[].class);
        m2109d(long[].class);
        m2108c(float[].class);
        m2109d(float[].class);
        m2108c(double[].class);
        m2109d(double[].class);
        m2108c(Object[].class);
        m2109d(Object[].class);
        Field fieldM2110e = m2110e();
        if (fieldM2110e != null && c1180q1 != null) {
            c1180q1.m2099j(fieldM2110e);
        }
        f2755g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* JADX INFO: renamed from: a */
    public static void m2106a(Throwable th) {
        Logger.getLogger(AbstractC1186s1.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    /* JADX INFO: renamed from: b */
    public static Object m2107b(Class cls) {
        try {
            return f2749a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: renamed from: c */
    public static int m2108c(Class cls) {
        if (f2753e) {
            return f2751c.m2094a(cls);
        }
        return -1;
    }

    /* JADX INFO: renamed from: d */
    public static void m2109d(Class cls) {
        if (f2753e) {
            f2751c.m2095b(cls);
        }
    }

    /* JADX INFO: renamed from: e */
    public static Field m2110e() {
        Field declaredField;
        Field declaredField2;
        if (AbstractC1136c.m1910a()) {
            try {
                declaredField2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                declaredField2 = null;
            }
            if (declaredField2 != null) {
                return declaredField2;
            }
        }
        try {
            declaredField = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField = null;
        }
        if (declaredField == null || declaredField.getType() != Long.TYPE) {
            return null;
        }
        return declaredField;
    }

    /* JADX INFO: renamed from: f */
    public static boolean m2111f(Class cls) {
        if (!AbstractC1136c.m1910a()) {
            return false;
        }
        try {
            Class cls2 = f2750b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: g */
    public static byte m2112g(byte[] bArr, long j10) {
        return f2751c.mo2059d(bArr, f2754f + j10);
    }

    /* JADX INFO: renamed from: h */
    public static byte m2113h(Object obj, long j10) {
        return (byte) ((f2751c.m2096g(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255);
    }

    /* JADX INFO: renamed from: i */
    public static byte m2114i(Object obj, long j10) {
        return (byte) ((f2751c.m2096g(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255);
    }

    /* JADX INFO: renamed from: j */
    public static Unsafe m2115j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new C1174o1());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: k */
    public static void m2116k(byte[] bArr, long j10, byte b10) {
        f2751c.mo2063l(bArr, f2754f + j10, b10);
    }

    /* JADX INFO: renamed from: l */
    public static void m2117l(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int iM2096g = f2751c.m2096g(obj, j11);
        int i10 = ((~((int) j10)) & 3) << 3;
        m2119n(((255 & b10) << i10) | (iM2096g & (~(255 << i10))), j11, obj);
    }

    /* JADX INFO: renamed from: m */
    public static void m2118m(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        m2119n(((255 & b10) << i10) | (f2751c.m2096g(obj, j11) & (~(255 << i10))), j11, obj);
    }

    /* JADX INFO: renamed from: n */
    public static void m2119n(int i10, long j10, Object obj) {
        f2751c.m2100o(i10, j10, obj);
    }

    /* JADX INFO: renamed from: o */
    public static void m2120o(Object obj, long j10, long j11) {
        f2751c.m2101p(obj, j10, j11);
    }

    /* JADX INFO: renamed from: p */
    public static void m2121p(long j10, Object obj, Object obj2) {
        f2751c.m2102q(j10, obj, obj2);
    }
}

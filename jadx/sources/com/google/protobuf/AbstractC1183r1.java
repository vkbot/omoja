package com.google.protobuf;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.protobuf.r1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1183r1 {

    /* JADX INFO: renamed from: a */
    public final Unsafe f2745a;

    public AbstractC1183r1(Unsafe unsafe) {
        this.f2745a = unsafe;
    }

    /* JADX INFO: renamed from: a */
    public final int m2094a(Class cls) {
        return this.f2745a.arrayBaseOffset(cls);
    }

    /* JADX INFO: renamed from: b */
    public final int m2095b(Class cls) {
        return this.f2745a.arrayIndexScale(cls);
    }

    /* JADX INFO: renamed from: c */
    public abstract boolean mo2058c(Object obj, long j10);

    /* JADX INFO: renamed from: d */
    public abstract byte mo2059d(Object obj, long j10);

    /* JADX INFO: renamed from: e */
    public abstract double mo2060e(Object obj, long j10);

    /* JADX INFO: renamed from: f */
    public abstract float mo2061f(Object obj, long j10);

    /* JADX INFO: renamed from: g */
    public final int m2096g(Object obj, long j10) {
        return this.f2745a.getInt(obj, j10);
    }

    /* JADX INFO: renamed from: h */
    public final long m2097h(Object obj, long j10) {
        return this.f2745a.getLong(obj, j10);
    }

    /* JADX INFO: renamed from: i */
    public final Object m2098i(Object obj, long j10) {
        return this.f2745a.getObject(obj, j10);
    }

    /* JADX INFO: renamed from: j */
    public final long m2099j(Field field) {
        return this.f2745a.objectFieldOffset(field);
    }

    /* JADX INFO: renamed from: k */
    public abstract void mo2062k(Object obj, long j10, boolean z9);

    /* JADX INFO: renamed from: l */
    public abstract void mo2063l(Object obj, long j10, byte b10);

    /* JADX INFO: renamed from: m */
    public abstract void mo2064m(Object obj, long j10, double d);

    /* JADX INFO: renamed from: n */
    public abstract void mo2065n(Object obj, long j10, float f8);

    /* JADX INFO: renamed from: o */
    public final void m2100o(int i10, long j10, Object obj) {
        this.f2745a.putInt(obj, j10, i10);
    }

    /* JADX INFO: renamed from: p */
    public final void m2101p(Object obj, long j10, long j11) {
        this.f2745a.putLong(obj, j10, j11);
    }

    /* JADX INFO: renamed from: q */
    public final void m2102q(long j10, Object obj, Object obj2) {
        this.f2745a.putObject(obj, j10, obj2);
    }

    /* JADX INFO: renamed from: r */
    public boolean mo2093r() {
        Unsafe unsafe = this.f2745a;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            return true;
        } catch (Throwable th) {
            AbstractC1186s1.m2106a(th);
            return false;
        }
    }

    /* JADX INFO: renamed from: s */
    public abstract boolean mo2066s();
}

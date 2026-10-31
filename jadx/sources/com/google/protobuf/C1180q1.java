package com.google.protobuf;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.protobuf.q1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1180q1 extends AbstractC1183r1 {
    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: c */
    public final boolean mo2058c(Object obj, long j10) {
        return this.f2745a.getBoolean(obj, j10);
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: d */
    public final byte mo2059d(Object obj, long j10) {
        return this.f2745a.getByte(obj, j10);
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: e */
    public final double mo2060e(Object obj, long j10) {
        return this.f2745a.getDouble(obj, j10);
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: f */
    public final float mo2061f(Object obj, long j10) {
        return this.f2745a.getFloat(obj, j10);
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: k */
    public final void mo2062k(Object obj, long j10, boolean z9) {
        this.f2745a.putBoolean(obj, j10, z9);
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: l */
    public final void mo2063l(Object obj, long j10, byte b10) {
        this.f2745a.putByte(obj, j10, b10);
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: m */
    public final void mo2064m(Object obj, long j10, double d) {
        this.f2745a.putDouble(obj, j10, d);
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: n */
    public final void mo2065n(Object obj, long j10, float f8) {
        this.f2745a.putFloat(obj, j10, f8);
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: r */
    public final boolean mo2093r() {
        if (!super.mo2093r()) {
            return false;
        }
        try {
            Class<?> cls = this.f2745a.getClass();
            Class cls2 = Long.TYPE;
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th) {
            AbstractC1186s1.m2106a(th);
            return false;
        }
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: s */
    public final boolean mo2066s() {
        Unsafe unsafe = this.f2745a;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                Class cls2 = Long.TYPE;
                cls.getMethod("getLong", Object.class, cls2);
                if (AbstractC1186s1.m2110e() != null) {
                    try {
                        Class<?> cls3 = this.f2745a.getClass();
                        cls3.getMethod("getByte", cls2);
                        cls3.getMethod("putByte", cls2, Byte.TYPE);
                        cls3.getMethod("getInt", cls2);
                        cls3.getMethod("putInt", cls2, Integer.TYPE);
                        cls3.getMethod("getLong", cls2);
                        cls3.getMethod("putLong", cls2, cls2);
                        cls3.getMethod("copyMemory", cls2, cls2, cls2);
                        cls3.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                        return true;
                    } catch (Throwable th) {
                        AbstractC1186s1.m2106a(th);
                        return false;
                    }
                }
            } catch (Throwable th2) {
                AbstractC1186s1.m2106a(th2);
            }
        }
        return false;
    }
}

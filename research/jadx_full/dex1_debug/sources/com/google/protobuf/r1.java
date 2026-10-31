package com.google.protobuf;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class r1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Unsafe f1546a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r1(Unsafe unsafe) {
        this.f1546a = unsafe;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a(Class cls) {
        return this.f1546a.arrayBaseOffset(cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b(Class cls) {
        return this.f1546a.arrayIndexScale(cls);
    }

    public abstract boolean c(Object obj, long j9);

    public abstract byte d(Object obj, long j9);

    public abstract double e(Object obj, long j9);

    public abstract float f(Object obj, long j9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int g(Object obj, long j9) {
        return this.f1546a.getInt(obj, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long h(Object obj, long j9) {
        return this.f1546a.getLong(obj, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object i(Object obj, long j9) {
        return this.f1546a.getObject(obj, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long j(Field field) {
        return this.f1546a.objectFieldOffset(field);
    }

    public abstract void k(Object obj, long j9, boolean z8);

    public abstract void l(Object obj, long j9, byte b9);

    public abstract void m(Object obj, long j9, double d);

    public abstract void n(Object obj, long j9, float f8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o(int i9, long j9, Object obj) {
        this.f1546a.putInt(obj, j9, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void p(Object obj, long j9, long j10) {
        this.f1546a.putLong(obj, j9, j10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void q(long j9, Object obj, Object obj2) {
        this.f1546a.putObject(obj, j9, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean r() {
        Unsafe unsafe = this.f1546a;
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
            s1.a(th);
            return false;
        }
    }

    public abstract boolean s();
}

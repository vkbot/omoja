package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1136c {

    /* JADX INFO: renamed from: a */
    public static final Class f2646a;

    /* JADX INFO: renamed from: b */
    public static final boolean f2647b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f2646a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f2647b = cls2 != null;
    }

    /* JADX INFO: renamed from: a */
    public static boolean m1910a() {
        return (f2646a == null || f2647b) ? false : true;
    }
}

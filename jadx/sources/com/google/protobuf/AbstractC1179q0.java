package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.q0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1179q0 {

    /* JADX INFO: renamed from: a */
    public static final C1176p0 f2743a;

    /* JADX INFO: renamed from: b */
    public static final C1176p0 f2744b;

    static {
        C1176p0 c1176p0 = null;
        try {
            c1176p0 = (C1176p0) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f2743a = c1176p0;
        f2744b = new C1176p0();
    }
}

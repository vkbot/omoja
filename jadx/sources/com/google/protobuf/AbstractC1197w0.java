package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.w0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1197w0 {

    /* JADX INFO: renamed from: a */
    public static final C1194v0 f2791a;

    /* JADX INFO: renamed from: b */
    public static final C1194v0 f2792b;

    static {
        C1194v0 c1194v0 = null;
        try {
            c1194v0 = (C1194v0) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f2791a = c1194v0;
        f2792b = new C1194v0();
    }
}

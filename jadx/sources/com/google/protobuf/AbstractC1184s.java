package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1184s {

    /* JADX INFO: renamed from: a */
    public static final C1181r f2746a = new C1181r();

    /* JADX INFO: renamed from: b */
    public static final C1181r f2747b;

    static {
        C1181r c1181r = null;
        try {
            c1181r = (C1181r) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f2747b = c1181r;
    }
}

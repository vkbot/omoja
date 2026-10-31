package com.bumptech.glide;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.bumptech.glide.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC1035h {

    /* JADX INFO: renamed from: b */
    public static final EnumC1035h f1091b;

    /* JADX INFO: renamed from: c */
    public static final EnumC1035h f1092c;

    /* JADX INFO: renamed from: d */
    public static final EnumC1035h f1093d;

    /* JADX INFO: renamed from: e */
    public static final EnumC1035h f1094e;

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ EnumC1035h[] f1095f;

    static {
        EnumC1035h enumC1035h = new EnumC1035h("IMMEDIATE", 0);
        f1091b = enumC1035h;
        EnumC1035h enumC1035h2 = new EnumC1035h("HIGH", 1);
        f1092c = enumC1035h2;
        EnumC1035h enumC1035h3 = new EnumC1035h("NORMAL", 2);
        f1093d = enumC1035h3;
        EnumC1035h enumC1035h4 = new EnumC1035h("LOW", 3);
        f1094e = enumC1035h4;
        f1095f = new EnumC1035h[]{enumC1035h, enumC1035h2, enumC1035h3, enumC1035h4};
    }

    public static EnumC1035h valueOf(String str) {
        return (EnumC1035h) Enum.valueOf(EnumC1035h.class, str);
    }

    public static EnumC1035h[] values() {
        return (EnumC1035h[]) f1095f.clone();
    }
}

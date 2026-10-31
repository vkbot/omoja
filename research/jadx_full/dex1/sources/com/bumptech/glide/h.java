package com.bumptech.glide;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h f566b;
    public static final h c;
    public static final h d;
    public static final h e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ h[] f567f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        h hVar = new h("IMMEDIATE", 0);
        f566b = hVar;
        h hVar2 = new h("HIGH", 1);
        c = hVar2;
        h hVar3 = new h("NORMAL", 2);
        d = hVar3;
        h hVar4 = new h("LOW", 3);
        e = hVar4;
        f567f = new h[]{hVar, hVar2, hVar3, hVar4};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static h[] values() {
        return (h[]) f567f.clone();
    }
}

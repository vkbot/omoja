package p148n7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: n7.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2546v {

    /* JADX INFO: renamed from: b */
    public static final EnumC2546v f7033b;

    /* JADX INFO: renamed from: c */
    public static final EnumC2546v f7034c;

    /* JADX INFO: renamed from: d */
    public static final EnumC2546v f7035d;

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ EnumC2546v[] f7036e;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC2546v EF0;

    static {
        EnumC2546v enumC2546v = new EnumC2546v("CT_UNKNOWN", 0);
        EnumC2546v enumC2546v2 = new EnumC2546v("CT_INFO", 1);
        f7033b = enumC2546v2;
        EnumC2546v enumC2546v3 = new EnumC2546v("CT_WARNING", 2);
        f7034c = enumC2546v3;
        EnumC2546v enumC2546v4 = new EnumC2546v("CT_ERROR", 3);
        f7035d = enumC2546v4;
        f7036e = new EnumC2546v[]{enumC2546v, enumC2546v2, enumC2546v3, enumC2546v4};
    }

    public static EnumC2546v valueOf(String str) {
        return (EnumC2546v) Enum.valueOf(EnumC2546v.class, str);
    }

    public static EnumC2546v[] values() {
        return (EnumC2546v[]) f7036e.clone();
    }
}

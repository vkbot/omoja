package p157o7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: o7.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2725v {

    /* JADX INFO: renamed from: b */
    public static final EnumC2725v f7801b;

    /* JADX INFO: renamed from: c */
    public static final EnumC2725v f7802c;

    /* JADX INFO: renamed from: d */
    public static final EnumC2725v f7803d;

    /* JADX INFO: renamed from: e */
    public static final EnumC2725v f7804e;

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ EnumC2725v[] f7805f;

    static {
        EnumC2725v enumC2725v = new EnumC2725v("PROCESSED", 0);
        f7801b = enumC2725v;
        EnumC2725v enumC2725v2 = new EnumC2725v("REFUSED", 1);
        f7802c = enumC2725v2;
        EnumC2725v enumC2725v3 = new EnumC2725v("DROPPED", 2);
        f7803d = enumC2725v3;
        EnumC2725v enumC2725v4 = new EnumC2725v("MISCARRIED", 3);
        f7804e = enumC2725v4;
        f7805f = new EnumC2725v[]{enumC2725v, enumC2725v2, enumC2725v3, enumC2725v4};
    }

    public static EnumC2725v valueOf(String str) {
        return (EnumC2725v) Enum.valueOf(EnumC2725v.class, str);
    }

    public static EnumC2725v[] values() {
        return (EnumC2725v[]) f7805f.clone();
    }
}

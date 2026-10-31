package p042d5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: d5.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC1290k {

    /* JADX INFO: renamed from: b */
    public static final EnumC1290k f3092b;

    /* JADX INFO: renamed from: c */
    public static final EnumC1290k f3093c;

    /* JADX INFO: renamed from: d */
    public static final EnumC1290k f3094d;

    /* JADX INFO: renamed from: e */
    public static final EnumC1290k f3095e;

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ EnumC1290k[] f3096f;

    static {
        EnumC1290k enumC1290k = new EnumC1290k("UNKNOWN_DISMISS_TYPE", 0);
        f3092b = enumC1290k;
        EnumC1290k enumC1290k2 = new EnumC1290k("AUTO", 1);
        f3093c = enumC1290k2;
        EnumC1290k enumC1290k3 = new EnumC1290k("CLICK", 2);
        f3094d = enumC1290k3;
        EnumC1290k enumC1290k4 = new EnumC1290k("SWIPE", 3);
        f3095e = enumC1290k4;
        f3096f = new EnumC1290k[]{enumC1290k, enumC1290k2, enumC1290k3, enumC1290k4};
    }

    public static EnumC1290k valueOf(String str) {
        return (EnumC1290k) Enum.valueOf(EnumC1290k.class, str);
    }

    public static EnumC1290k[] values() {
        return (EnumC1290k[]) f3096f.clone();
    }
}

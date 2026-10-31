package p042d5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: d5.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC1291l {

    /* JADX INFO: renamed from: b */
    public static final EnumC1291l f3097b;

    /* JADX INFO: renamed from: c */
    public static final EnumC1291l f3098c;

    /* JADX INFO: renamed from: d */
    public static final EnumC1291l f3099d;

    /* JADX INFO: renamed from: e */
    public static final EnumC1291l f3100e;

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ EnumC1291l[] f3101f;

    static {
        EnumC1291l enumC1291l = new EnumC1291l("UNSPECIFIED_RENDER_ERROR", 0);
        f3097b = enumC1291l;
        EnumC1291l enumC1291l2 = new EnumC1291l("IMAGE_FETCH_ERROR", 1);
        f3098c = enumC1291l2;
        EnumC1291l enumC1291l3 = new EnumC1291l("IMAGE_DISPLAY_ERROR", 2);
        f3099d = enumC1291l3;
        EnumC1291l enumC1291l4 = new EnumC1291l("IMAGE_UNSUPPORTED_FORMAT", 3);
        f3100e = enumC1291l4;
        f3101f = new EnumC1291l[]{enumC1291l, enumC1291l2, enumC1291l3, enumC1291l4};
    }

    public static EnumC1291l valueOf(String str) {
        return (EnumC1291l) Enum.valueOf(EnumC1291l.class, str);
    }

    public static EnumC1291l[] values() {
        return (EnumC1291l[]) f3101f.clone();
    }
}

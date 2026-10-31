package p148n7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: n7.w0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2549w0 {

    /* JADX INFO: renamed from: b */
    public static final EnumC2549w0 f7046b;

    /* JADX INFO: renamed from: c */
    public static final EnumC2549w0 f7047c;

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ EnumC2549w0[] f7048d;

    static {
        EnumC2549w0 enumC2549w0 = new EnumC2549w0("UNARY", 0);
        f7046b = enumC2549w0;
        EnumC2549w0 enumC2549w1 = new EnumC2549w0("CLIENT_STREAMING", 1);
        EnumC2549w0 enumC2549w2 = new EnumC2549w0("SERVER_STREAMING", 2);
        f7047c = enumC2549w2;
        f7048d = new EnumC2549w0[]{enumC2549w0, enumC2549w1, enumC2549w2, new EnumC2549w0("BIDI_STREAMING", 3), new EnumC2549w0("UNKNOWN", 4)};
    }

    public static EnumC2549w0 valueOf(String str) {
        return (EnumC2549w0) Enum.valueOf(EnumC2549w0.class, str);
    }

    public static EnumC2549w0[] values() {
        return (EnumC2549w0[]) f7048d.clone();
    }
}

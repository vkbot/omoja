package p148n7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: n7.m1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2529m1 {

    /* JADX INFO: renamed from: b */
    public static final EnumC2529m1 f6995b;

    /* JADX INFO: renamed from: c */
    public static final EnumC2529m1 f6996c;

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ EnumC2529m1[] f6997d;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC2529m1 EF0;

    static {
        EnumC2529m1 enumC2529m1 = new EnumC2529m1("FAKE", 0);
        EnumC2529m1 enumC2529m2 = new EnumC2529m1("MTLS", 1);
        f6995b = enumC2529m2;
        EnumC2529m1 enumC2529m3 = new EnumC2529m1("CUSTOM_MANAGERS", 2);
        f6996c = enumC2529m3;
        f6997d = new EnumC2529m1[]{enumC2529m1, enumC2529m2, enumC2529m3};
    }

    public static EnumC2529m1 valueOf(String str) {
        return (EnumC2529m1) Enum.valueOf(EnumC2529m1.class, str);
    }

    public static EnumC2529m1[] values() {
        return (EnumC2529m1[]) f6997d.clone();
    }
}

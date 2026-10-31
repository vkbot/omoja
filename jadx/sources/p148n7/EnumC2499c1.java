package p148n7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: n7.c1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2499c1 {

    /* JADX INFO: renamed from: b */
    public static final EnumC2499c1 f6900b;

    /* JADX INFO: renamed from: c */
    public static final EnumC2499c1 f6901c;

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ EnumC2499c1[] f6902d;

    static {
        EnumC2499c1 enumC2499c1 = new EnumC2499c1("NONE", 0);
        f6900b = enumC2499c1;
        EnumC2499c1 enumC2499c2 = new EnumC2499c1("INTEGRITY", 1);
        EnumC2499c1 enumC2499c3 = new EnumC2499c1("PRIVACY_AND_INTEGRITY", 2);
        f6901c = enumC2499c3;
        f6902d = new EnumC2499c1[]{enumC2499c1, enumC2499c2, enumC2499c3};
    }

    public static EnumC2499c1 valueOf(String str) {
        return (EnumC2499c1) Enum.valueOf(EnumC2499c1.class, str);
    }

    public static EnumC2499c1[] values() {
        return (EnumC2499c1[]) f6902d.clone();
    }
}

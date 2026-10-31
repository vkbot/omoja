package p003a2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: a2.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0005b {

    /* JADX INFO: renamed from: b */
    public static final EnumC0005b f5b;

    /* JADX INFO: renamed from: c */
    public static final EnumC0005b f6c;

    /* JADX INFO: renamed from: d */
    public static final EnumC0005b f7d;

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ EnumC0005b[] f8e;

    static {
        EnumC0005b enumC0005b = new EnumC0005b("DEFAULT", 0);
        f5b = enumC0005b;
        EnumC0005b enumC0005b2 = new EnumC0005b("VERY_LOW", 1);
        f6c = enumC0005b2;
        EnumC0005b enumC0005b3 = new EnumC0005b("HIGHEST", 2);
        f7d = enumC0005b3;
        f8e = new EnumC0005b[]{enumC0005b, enumC0005b2, enumC0005b3};
    }

    public static EnumC0005b valueOf(String str) {
        return (EnumC0005b) Enum.valueOf(EnumC0005b.class, str);
    }

    public static EnumC0005b[] values() {
        return (EnumC0005b[]) f8e.clone();
    }
}

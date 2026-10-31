package p148n7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: n7.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2518j {

    /* JADX INFO: renamed from: b */
    public static final EnumC2518j f6968b;

    /* JADX INFO: renamed from: c */
    public static final EnumC2518j f6969c;

    /* JADX INFO: renamed from: d */
    public static final EnumC2518j f6970d;

    /* JADX INFO: renamed from: e */
    public static final EnumC2518j f6971e;

    /* JADX INFO: renamed from: f */
    public static final EnumC2518j f6972f;

    /* JADX INFO: renamed from: g */
    public static final /* synthetic */ EnumC2518j[] f6973g;

    static {
        EnumC2518j enumC2518j = new EnumC2518j("CONNECTING", 0);
        f6968b = enumC2518j;
        EnumC2518j enumC2518j2 = new EnumC2518j("READY", 1);
        f6969c = enumC2518j2;
        EnumC2518j enumC2518j3 = new EnumC2518j("TRANSIENT_FAILURE", 2);
        f6970d = enumC2518j3;
        EnumC2518j enumC2518j4 = new EnumC2518j("IDLE", 3);
        f6971e = enumC2518j4;
        EnumC2518j enumC2518j5 = new EnumC2518j("SHUTDOWN", 4);
        f6972f = enumC2518j5;
        f6973g = new EnumC2518j[]{enumC2518j, enumC2518j2, enumC2518j3, enumC2518j4, enumC2518j5};
    }

    public static EnumC2518j valueOf(String str) {
        return (EnumC2518j) Enum.valueOf(EnumC2518j.class, str);
    }

    public static EnumC2518j[] values() {
        return (EnumC2518j[]) f6973g.clone();
    }
}

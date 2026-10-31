package p027c2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: c2.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0967q {

    /* JADX INFO: renamed from: b */
    public static final EnumC0967q f895b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC0967q[] f896c;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0967q EF0;

    static {
        EnumC0967q enumC0967q = new EnumC0967q("UNKNOWN", 0);
        EnumC0967q enumC0967q2 = new EnumC0967q("ANDROID_FIREBASE", 1);
        f895b = enumC0967q2;
        f896c = new EnumC0967q[]{enumC0967q, enumC0967q2};
    }

    public static EnumC0967q valueOf(String str) {
        return (EnumC0967q) Enum.valueOf(EnumC0967q.class, str);
    }

    public static EnumC0967q[] values() {
        return (EnumC0967q[]) f896c.clone();
    }
}

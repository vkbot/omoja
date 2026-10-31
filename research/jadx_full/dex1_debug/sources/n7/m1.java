package n7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final m1 f3957b;
    public static final m1 c;
    public static final /* synthetic */ m1[] d;

    /* JADX INFO: Fake field, exist only in values array */
    m1 EF0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        m1 m1Var = new m1("FAKE", 0);
        m1 m1Var2 = new m1("MTLS", 1);
        f3957b = m1Var2;
        m1 m1Var3 = new m1("CUSTOM_MANAGERS", 2);
        c = m1Var3;
        d = new m1[]{m1Var, m1Var2, m1Var3};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static m1 valueOf(String str) {
        return (m1) Enum.valueOf(m1.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static m1[] values() {
        return (m1[]) d.clone();
    }
}

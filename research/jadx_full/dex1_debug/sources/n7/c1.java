package n7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c1 f3899b;
    public static final c1 c;
    public static final /* synthetic */ c1[] d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        c1 c1Var = new c1("NONE", 0);
        f3899b = c1Var;
        c1 c1Var2 = new c1("INTEGRITY", 1);
        c1 c1Var3 = new c1("PRIVACY_AND_INTEGRITY", 2);
        c = c1Var3;
        d = new c1[]{c1Var, c1Var2, c1Var3};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static c1 valueOf(String str) {
        return (c1) Enum.valueOf(c1.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static c1[] values() {
        return (c1[]) d.clone();
    }
}

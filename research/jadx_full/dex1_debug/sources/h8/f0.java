package h8;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f0 implements b8.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f0 f2549b;
    public static final /* synthetic */ f0[] c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        f0 f0Var = new f0("INSTANCE", 0);
        f2549b = f0Var;
        c = new f0[]{f0Var};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f0 valueOf(String str) {
        return (f0) Enum.valueOf(f0.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f0[] values() {
        return (f0[]) c.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.b
    public final void accept(Object obj) {
        ((n9.b) obj).d(Long.MAX_VALUE);
    }
}

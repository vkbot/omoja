package n7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final w0 f3981b;
    public static final w0 c;
    public static final /* synthetic */ w0[] d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        w0 w0Var = new w0("UNARY", 0);
        f3981b = w0Var;
        w0 w0Var2 = new w0("CLIENT_STREAMING", 1);
        w0 w0Var3 = new w0("SERVER_STREAMING", 2);
        c = w0Var3;
        d = new w0[]{w0Var, w0Var2, w0Var3, new w0("BIDI_STREAMING", 3), new w0("UNKNOWN", 4)};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static w0 valueOf(String str) {
        return (w0) Enum.valueOf(w0.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static w0[] values() {
        return (w0[]) d.clone();
    }
}

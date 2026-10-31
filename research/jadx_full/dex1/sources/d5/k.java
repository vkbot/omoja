package d5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f1770b;
    public static final k c;
    public static final k d;
    public static final k e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ k[] f1771f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        k kVar = new k("UNKNOWN_DISMISS_TYPE", 0);
        f1770b = kVar;
        k kVar2 = new k("AUTO", 1);
        c = kVar2;
        k kVar3 = new k("CLICK", 2);
        d = kVar3;
        k kVar4 = new k("SWIPE", 3);
        e = kVar4;
        f1771f = new k[]{kVar, kVar2, kVar3, kVar4};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static k valueOf(String str) {
        return (k) Enum.valueOf(k.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static k[] values() {
        return (k[]) f1771f.clone();
    }
}

package d5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final l f1772b;
    public static final l c;
    public static final l d;
    public static final l e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ l[] f1773f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        l lVar = new l("UNSPECIFIED_RENDER_ERROR", 0);
        f1772b = lVar;
        l lVar2 = new l("IMAGE_FETCH_ERROR", 1);
        c = lVar2;
        l lVar3 = new l("IMAGE_DISPLAY_ERROR", 2);
        d = lVar3;
        l lVar4 = new l("IMAGE_UNSUPPORTED_FORMAT", 3);
        e = lVar4;
        f1773f = new l[]{lVar, lVar2, lVar3, lVar4};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static l valueOf(String str) {
        return (l) Enum.valueOf(l.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static l[] values() {
        return (l[]) f1773f.clone();
    }
}

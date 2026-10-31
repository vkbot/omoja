package a2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f6b;
    public static final b c;
    public static final b d;
    public static final /* synthetic */ b[] e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        b bVar = new b("DEFAULT", 0);
        f6b = bVar;
        b bVar2 = new b("VERY_LOW", 1);
        c = bVar2;
        b bVar3 = new b("HIGHEST", 2);
        d = bVar3;
        e = new b[]{bVar, bVar2, bVar3};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b[] values() {
        return (b[]) e.clone();
    }
}

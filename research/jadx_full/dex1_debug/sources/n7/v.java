package n7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final v f3976b;
    public static final v c;
    public static final v d;
    public static final /* synthetic */ v[] e;

    /* JADX INFO: Fake field, exist only in values array */
    v EF0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        v vVar = new v("CT_UNKNOWN", 0);
        v vVar2 = new v("CT_INFO", 1);
        f3976b = vVar2;
        v vVar3 = new v("CT_WARNING", 2);
        c = vVar3;
        v vVar4 = new v("CT_ERROR", 3);
        d = vVar4;
        e = new v[]{vVar, vVar2, vVar3, vVar4};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static v valueOf(String str) {
        return (v) Enum.valueOf(v.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static v[] values() {
        return (v[]) e.clone();
    }
}

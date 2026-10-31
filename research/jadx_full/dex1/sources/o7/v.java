package o7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final v f4462b;
    public static final v c;
    public static final v d;
    public static final v e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ v[] f4463f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        v vVar = new v("PROCESSED", 0);
        f4462b = vVar;
        v vVar2 = new v("REFUSED", 1);
        c = vVar2;
        v vVar3 = new v("DROPPED", 2);
        d = vVar3;
        v vVar4 = new v("MISCARRIED", 3);
        e = vVar4;
        f4463f = new v[]{vVar, vVar2, vVar3, vVar4};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static v valueOf(String str) {
        return (v) Enum.valueOf(v.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static v[] values() {
        return (v[]) f4463f.clone();
    }
}

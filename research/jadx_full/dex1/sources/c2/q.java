package c2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final q f469b;
    public static final /* synthetic */ q[] c;

    /* JADX INFO: Fake field, exist only in values array */
    q EF0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        q qVar = new q("UNKNOWN", 0);
        q qVar2 = new q("ANDROID_FIREBASE", 1);
        f469b = qVar2;
        c = new q[]{qVar, qVar2};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static q valueOf(String str) {
        return (q) Enum.valueOf(q.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static q[] values() {
        return (q[]) c.clone();
    }
}

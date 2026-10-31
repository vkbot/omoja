package n7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final j f3943b;
    public static final j c;
    public static final j d;
    public static final j e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final j f3944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ j[] f3945g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        j jVar = new j("CONNECTING", 0);
        f3943b = jVar;
        j jVar2 = new j("READY", 1);
        c = jVar2;
        j jVar3 = new j("TRANSIENT_FAILURE", 2);
        d = jVar3;
        j jVar4 = new j("IDLE", 3);
        e = jVar4;
        j jVar5 = new j("SHUTDOWN", 4);
        f3944f = jVar5;
        f3945g = new j[]{jVar, jVar2, jVar3, jVar4, jVar5};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static j[] values() {
        return (j[]) f3945g.clone();
    }
}

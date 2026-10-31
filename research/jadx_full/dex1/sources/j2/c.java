package j2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c f3023b;
    public static final c c;
    public static final c d;
    public static final /* synthetic */ c[] e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        c cVar = new c("NETWORK_UNMETERED", 0);
        f3023b = cVar;
        c cVar2 = new c("DEVICE_IDLE", 1);
        c = cVar2;
        c cVar3 = new c("DEVICE_CHARGING", 2);
        d = cVar3;
        e = new c[]{cVar, cVar2, cVar3};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static c[] values() {
        return (c[]) e.clone();
    }
}

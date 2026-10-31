package h;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i f2413b;
    public static final /* synthetic */ i[] c;

    /* JADX INFO: Fake field, exist only in values array */
    i EF0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        i iVar = new i("SRGB", 0);
        i iVar2 = new i("DISPLAY_P3", 1);
        f2413b = iVar2;
        c = new i[]{iVar, iVar2};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static i[] values() {
        return (i[]) c.clone();
    }
}

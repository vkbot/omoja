package y1;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ a[] f6109b = {new a("NoIndicator", 0), new a("NormalIndicator", 1), new a("NormalSmallIndicator", 2), new a("TriangleIndicator", 3), new a("SpindleIndicator", 4), new a("LineIndicator", 5), new a("HalfLineIndicator", 6), new a("QuarterLineIndicator", 7), new a("KiteIndicator", 8), new a("NeedleIndicator", 9)};

    /* JADX INFO: Fake field, exist only in values array */
    a EF5;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a[] values() {
        return (a[]) f6109b.clone();
    }
}

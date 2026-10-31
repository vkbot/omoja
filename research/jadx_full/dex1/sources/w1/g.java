package w1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum g {
    NORMAL(0, 720, false, 1, 1),
    /* JADX INFO: Fake field, exist only in values array */
    LEFT(90, 270, true, 2, 1),
    /* JADX INFO: Fake field, exist only in values array */
    TOP(180, 360, true, 1, 2),
    RIGHT(270, 450, true, 2, 1),
    BOTTOM(0, 180, true, 1, 2),
    /* JADX INFO: Fake field, exist only in values array */
    TOP_LEFT(180, 270, false, 1, 1),
    TOP_RIGHT(270, 360, false, 1, 1),
    BOTTOM_RIGHT(0, 90, false, 1, 1),
    BOTTOM_LEFT(90, 180, false, 1, 1);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5870b;
    public final int c;
    public final boolean d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5871f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    g(int i9, int i10, boolean z8, int i11, int i12) {
        this.f5870b = i9;
        this.c = i10;
        this.d = z8;
        this.e = i11;
        this.f5871f = i12;
    }
}

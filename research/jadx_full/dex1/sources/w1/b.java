package w1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum b {
    /* JADX INFO: Fake field, exist only in values array */
    EF0("TOP_LEFT", 1, 0.0f, 0.0f, 0.0f, 0.0f),
    /* JADX INFO: Fake field, exist only in values array */
    EF1("TOP_CENTER", 1, 0.5f, 0.0f, 0.5f, 0.0f),
    /* JADX INFO: Fake field, exist only in values array */
    EF2("TOP_RIGHT", 1, 1.0f, 0.0f, 1.0f, 0.0f),
    /* JADX INFO: Fake field, exist only in values array */
    EF3("LEFT", 0, 0.0f, 0.5f, 0.0f, 0.5f),
    /* JADX INFO: Fake field, exist only in values array */
    EF4("CENTER", 0, 0.5f, 0.5f, 0.5f, 0.5f),
    /* JADX INFO: Fake field, exist only in values array */
    EF5("RIGHT", 0, 1.0f, 0.5f, 1.0f, 0.5f),
    /* JADX INFO: Fake field, exist only in values array */
    EF6("BOTTOM_LEFT", -1, 0.0f, 1.0f, 0.0f, 1.0f),
    f5835h("BOTTOM_CENTER", -1, 0.5f, 1.0f, 0.5f, 1.0f),
    /* JADX INFO: Fake field, exist only in values array */
    EF134("BOTTOM_RIGHT", -1, 1.0f, 1.0f, 1.0f, 1.0f);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5837b;
    public final float c;
    public final float d;
    public final float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5838f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f5839g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    b(String str, int i9, float f8, float f9, float f10, float f11) {
        this.f5837b = f8;
        this.c = f9;
        this.d = f10;
        this.e = f11;
        this.f5838f = i;
        this.f5839g = i9;
    }
}

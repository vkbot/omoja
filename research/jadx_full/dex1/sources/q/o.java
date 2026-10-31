package q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o f4727b = new o(2);
    public static final o c = new o(0);
    public static final o d;
    public static final o e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final o f4728f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final h.g f4729g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f4730h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4731a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        o oVar = new o(1);
        d = oVar;
        e = new o(3);
        f4728f = oVar;
        f4729g = h.g.a(oVar, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy");
        f4730h = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o(int i9) {
        this.f4731a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a(int i9, int i10, int i11, int i12) {
        switch (this.f4731a) {
            case 0:
                if (b(i9, i10, i11, i12) == 1.0f) {
                    return 2;
                }
                return f4727b.a(i9, i10, i11, i12);
            case 1:
                return 2;
            case 2:
                return f4730h ? 2 : 1;
            default:
                return 2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float b(int i9, int i10, int i11, int i12) {
        switch (this.f4731a) {
            case 0:
                return Math.min(1.0f, f4727b.b(i9, i10, i11, i12));
            case 1:
                return Math.max(i11 / i9, i12 / i10);
            case 2:
                if (f4730h) {
                    return Math.min(i11 / i9, i12 / i10);
                }
                int iMax = Math.max(i10 / i12, i9 / i11);
                if (iMax == 0) {
                    return 1.0f;
                }
                return 1.0f / Integer.highestOneBit(iMax);
            default:
                return 1.0f;
        }
    }
}

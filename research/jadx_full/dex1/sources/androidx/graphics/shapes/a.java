package androidx.graphics.shapes;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements FindMinimumFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Cubic f195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AngleMeasurer f196b;
    public final /* synthetic */ float c;
    public final /* synthetic */ float d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(Cubic cubic, AngleMeasurer angleMeasurer, float f8, float f9) {
        this.f195a = cubic;
        this.f196b = angleMeasurer;
        this.c = f8;
        this.d = f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.graphics.shapes.FindMinimumFunction
    public final float invoke(float f8) {
        return AngleMeasurer.a(this.f195a, this.f196b, this.c, this.d, f8);
    }
}

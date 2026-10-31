package i7;

import android.location.Location;
import java.util.function.ToDoubleFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements ToDoubleFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f2668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ double f2669b;
    public final /* synthetic */ double c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(g gVar, double d, double d9) {
        this.f2668a = gVar;
        this.f2669b = d;
        this.c = d9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.ToDoubleFunction
    public final double applyAsDouble(Object obj) {
        this.f2668a.getClass();
        x xVar = ((a) obj).f2666a;
        float[] fArr = new float[1];
        Location.distanceBetween(this.f2669b, this.c, xVar.f2725b, xVar.c, fArr);
        return fArr[0];
    }
}

package z5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f6339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f6340b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(float f8, float f9) {
        this.f6339a = f8;
        this.f6340b = f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float a(o oVar, o oVar2) {
        return a.a.g(oVar.f6339a, oVar.f6340b, oVar2.f6339a, oVar2.f6340b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.f6339a == oVar.f6339a && this.f6340b == oVar.f6340b) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Float.floatToIntBits(this.f6340b) + (Float.floatToIntBits(this.f6339a) * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "(" + this.f6339a + ',' + this.f6340b + ')';
    }
}

package z3;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f6199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f6200b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(float f8, d dVar) {
        while (dVar instanceof b) {
            dVar = ((b) dVar).f6199a;
            f8 += ((b) dVar).f6200b;
        }
        this.f6199a = dVar;
        this.f6200b = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.d
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.f6199a.a(rectF) + this.f6200b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f6199a.equals(bVar.f6199a) && this.f6200b == bVar.f6200b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6199a, Float.valueOf(this.f6200b)});
    }
}

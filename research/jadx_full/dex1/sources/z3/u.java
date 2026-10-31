package z3;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u extends w {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final RectF f6277h = new RectF();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f6278b;
    public final float c;
    public final float d;
    public final float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f6279f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f6280g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u(float f8, float f9, float f10, float f11) {
        this.f6278b = f8;
        this.c = f9;
        this.d = f10;
        this.e = f11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.w
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f6282a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        float f8 = this.d;
        float f9 = this.e;
        RectF rectF = f6277h;
        rectF.set(this.f6278b, this.c, f8, f9);
        path.arcTo(rectF, this.f6279f, this.f6280g, false);
        path.transform(matrix);
    }
}

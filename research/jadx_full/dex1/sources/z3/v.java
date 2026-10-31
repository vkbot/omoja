package z3;

import android.graphics.Matrix;
import android.graphics.Path;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v extends w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f6281b;
    public float c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.w
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f6282a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.f6281b, this.c);
        path.transform(matrix);
    }
}

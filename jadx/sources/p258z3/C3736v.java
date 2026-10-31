package p258z3;

import android.graphics.Matrix;
import android.graphics.Path;

/* JADX INFO: renamed from: z3.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3736v extends AbstractC3737w {

    /* JADX INFO: renamed from: b */
    public float f11124b;

    /* JADX INFO: renamed from: c */
    public float f11125c;

    @Override // p258z3.AbstractC3737w
    /* JADX INFO: renamed from: a */
    public final void mo5968a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f11126a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.f11124b, this.f11125c);
        path.transform(matrix);
    }
}

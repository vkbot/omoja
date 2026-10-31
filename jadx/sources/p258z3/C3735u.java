package p258z3;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: renamed from: z3.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3735u extends AbstractC3737w {

    /* JADX INFO: renamed from: h */
    public static final RectF f11117h = new RectF();

    /* JADX INFO: renamed from: b */
    public final float f11118b;

    /* JADX INFO: renamed from: c */
    public final float f11119c;

    /* JADX INFO: renamed from: d */
    public final float f11120d;

    /* JADX INFO: renamed from: e */
    public final float f11121e;

    /* JADX INFO: renamed from: f */
    public float f11122f;

    /* JADX INFO: renamed from: g */
    public float f11123g;

    public C3735u(float f8, float f10, float f11, float f12) {
        this.f11118b = f8;
        this.f11119c = f10;
        this.f11120d = f11;
        this.f11121e = f12;
    }

    @Override // p258z3.AbstractC3737w
    /* JADX INFO: renamed from: a */
    public final void mo5968a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f11126a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        float f8 = this.f11120d;
        float f10 = this.f11121e;
        RectF rectF = f11117h;
        rectF.set(this.f11118b, this.f11119c, f8, f10);
        path.arcTo(rectF, this.f11122f, this.f11123g, false);
        path.transform(matrix);
    }
}

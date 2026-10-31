package p051e4;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import p258z3.C3725k;

/* JADX INFO: renamed from: e4.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1474g extends C3725k {

    /* JADX INFO: renamed from: J */
    public static final /* synthetic */ int f3573J = 0;

    /* JADX INFO: renamed from: I */
    public C1473f f3574I;

    @Override // p258z3.C3725k
    /* JADX INFO: renamed from: g */
    public final void mo2532g(Canvas canvas) {
        if (this.f3574I.f3572r.isEmpty()) {
            super.mo2532g(canvas);
            return;
        }
        canvas.save();
        int i10 = Build.VERSION.SDK_INT;
        C1473f c1473f = this.f3574I;
        if (i10 >= 26) {
            canvas.clipOutRect(c1473f.f3572r);
        } else {
            canvas.clipRect(c1473f.f3572r, Region.Op.DIFFERENCE);
        }
        super.mo2532g(canvas);
        canvas.restore();
    }

    @Override // p258z3.C3725k, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f3574I = new C1473f(this.f3574I);
        return this;
    }

    /* JADX INFO: renamed from: y */
    public final void m2533y(float f8, float f10, float f11, float f12) {
        RectF rectF = this.f3574I.f3572r;
        if (f8 == rectF.left && f10 == rectF.top && f11 == rectF.right && f12 == rectF.bottom) {
            return;
        }
        rectF.set(f8, f10, f11, f12);
        invalidateSelf();
    }
}

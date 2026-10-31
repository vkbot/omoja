package p051e4;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import p258z3.C3722h;
import p258z3.C3729o;

/* JADX INFO: renamed from: e4.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1473f extends C3722h {

    /* JADX INFO: renamed from: r */
    public final RectF f3572r;

    public C1473f(C1473f c1473f) {
        super(c1473f);
        this.f3572r = c1473f.f3572r;
    }

    @Override // p258z3.C3722h, android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        C1474g c1474g = new C1474g(this);
        c1474g.f3574I = this;
        c1474g.invalidateSelf();
        return c1474g;
    }

    public C1473f(C3729o c3729o, RectF rectF) {
        super(c3729o);
        this.f3572r = rectF;
    }
}

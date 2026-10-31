package e4;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Region$Op;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends z3.k {
    public static final /* synthetic */ int J = 0;
    public f I;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.k
    public final void g(Canvas canvas) {
        if (this.I.r.isEmpty()) {
            super.g(canvas);
            return;
        }
        canvas.save();
        int i9 = Build$VERSION.SDK_INT;
        f fVar = this.I;
        if (i9 >= 26) {
            c5.h.s(canvas, fVar.r);
        } else {
            canvas.clipRect(fVar.r, Region$Op.DIFFERENCE);
        }
        super.g(canvas);
        canvas.restore();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.k, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.I = new f(this.I);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(float f8, float f9, float f10, float f11) {
        RectF rectF = this.I.r;
        if (f8 == rectF.left && f9 == rectF.top && f10 == rectF.right && f11 == rectF.bottom) {
            return;
        }
        rectF.set(f8, f9, f10, f11);
        invalidateSelf();
    }
}

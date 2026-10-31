package e4;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends z3.h {
    public final RectF r;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(f fVar) {
        super(fVar);
        this.r = fVar.r;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.h, android.graphics.drawable.Drawable$ConstantState
    public final Drawable newDrawable() {
        g gVar = new g(this);
        gVar.I = this;
        gVar.invalidateSelf();
        return gVar;
    }

    public f(z3.o oVar, RectF rectF) {
        super(oVar);
        this.r = rectF;
    }
}

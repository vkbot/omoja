package y1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import w1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Path f6120g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(Context context) {
        super(context);
        this.f6120g = new Path();
        h(16.0f * this.f6112b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y1.b
    public final void a(Canvas canvas) {
        canvas.drawPath(this.f6120g, this.f6111a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y1.b
    public final float e() {
        float f8 = f() * 0.18f;
        i iVar = this.c;
        iVar.getClass();
        return f8 + iVar.getPadding();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y1.b
    public final void i() {
        Path path = this.f6120g;
        path.reset();
        path.moveTo(c(), d());
        float fC = c() - this.d;
        float f8 = f() * 0.34f;
        i iVar = this.c;
        iVar.getClass();
        float padding = f8 + iVar.getPadding();
        float fC2 = c();
        float f9 = f() * 0.18f;
        i iVar2 = this.c;
        iVar2.getClass();
        path.quadTo(fC, padding, fC2, f9 + iVar2.getPadding());
        float fC3 = c() + this.d;
        float f10 = f() * 0.34f;
        i iVar3 = this.c;
        iVar3.getClass();
        path.quadTo(fC3, f10 + iVar3.getPadding(), c(), d());
        this.f6111a.setColor(this.e);
    }
}

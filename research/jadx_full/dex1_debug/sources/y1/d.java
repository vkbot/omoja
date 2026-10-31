package y1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.Path$Direction;
import android.graphics.RectF;
import w1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Path f6116g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Path f6117h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f6118i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f6119j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(Context context) {
        super(context);
        this.f6116g = new Path();
        this.f6117h = new Path();
        Paint paint = new Paint(1);
        this.f6118i = paint;
        h(12.0f * this.f6112b);
        paint.setStyle(Paint$Style.STROKE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y1.b
    public final void a(Canvas canvas) {
        canvas.drawPath(this.f6116g, this.f6111a);
        canvas.drawPath(this.f6117h, this.f6118i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y1.b
    public final float b() {
        return this.f6119j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y1.b
    public final void i() {
        Path path = this.f6116g;
        path.reset();
        Path path2 = this.f6117h;
        path2.reset();
        float fC = c();
        i iVar = this.c;
        iVar.getClass();
        path.moveTo(fC, iVar.getPadding());
        float f8 = (f() * 0.5f) + ((float) (Math.sin(Math.toRadians(260.0d)) * ((double) this.d)));
        i iVar2 = this.c;
        iVar2.getClass();
        this.f6119j = f8 + iVar2.getPadding();
        float f9 = (f() * 0.5f) + ((float) (Math.cos(Math.toRadians(260.0d)) * ((double) this.d)));
        i iVar3 = this.c;
        iVar3.getClass();
        path.lineTo(f9 + iVar3.getPadding(), this.f6119j);
        path.arcTo(new RectF(c() - this.d, d() - this.d, c() + this.d, d() + this.d), 260.0f, 20.0f);
        float f10 = this.d * 0.25f;
        path2.addCircle(c(), d(), (this.d - (0.5f * f10)) + 0.6f, Path$Direction.CW);
        this.f6111a.setColor(this.e);
        int i9 = this.e;
        Paint paint = this.f6118i;
        paint.setColor(i9);
        paint.setStrokeWidth(f10);
    }
}

package z1;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f6173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f6174b;
    public final /* synthetic */ k c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(k kVar) {
        this.c = kVar;
        Paint paint = new Paint(1);
        this.f6173a = paint;
        Paint paint2 = new Paint(1);
        this.f6174b = paint2;
        kVar.setLayerType(1, null);
        paint.setStyle(Paint$Style.FILL);
        paint.setColor(kVar.f6180j);
        paint2.setXfermode(k.t);
        if (kVar.isInEditMode()) {
            return;
        }
        paint.setShadowLayer(kVar.f6175b, kVar.c, kVar.d, kVar.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        k kVar = this.c;
        RectF rectF = new RectF(Math.abs(kVar.c) + kVar.f6175b, Math.abs(kVar.d) + kVar.f6175b, kVar.f6178h, kVar.f6179i);
        float f8 = kVar.f6183m;
        canvas.drawRoundRect(rectF, f8, f8, this.f6173a);
        float f9 = kVar.f6183m;
        canvas.drawRoundRect(rectF, f9, f9, this.f6174b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i9) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}

package p256z1;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: renamed from: z1.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3702j extends Drawable {

    /* JADX INFO: renamed from: a */
    public final Paint f10966a;

    /* JADX INFO: renamed from: b */
    public final Paint f10967b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3703k f10968c;

    public C3702j(C3703k c3703k) {
        this.f10968c = c3703k;
        Paint paint = new Paint(1);
        this.f10966a = paint;
        Paint paint2 = new Paint(1);
        this.f10967b = paint2;
        c3703k.setLayerType(1, null);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(c3703k.f10978j);
        paint2.setXfermode(C3703k.f10969t);
        if (c3703k.isInEditMode()) {
            return;
        }
        paint.setShadowLayer(c3703k.f10970b, c3703k.f10971c, c3703k.f10972d, c3703k.f10973e);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        C3703k c3703k = this.f10968c;
        RectF rectF = new RectF(Math.abs(c3703k.f10971c) + c3703k.f10970b, Math.abs(c3703k.f10972d) + c3703k.f10970b, c3703k.f10976h, c3703k.f10977i);
        float f8 = c3703k.f10981m;
        canvas.drawRoundRect(rectF, f8, f8, this.f10966a);
        float f10 = c3703k.f10981m;
        canvas.drawRoundRect(rectF, f10, f10, this.f10967b);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}

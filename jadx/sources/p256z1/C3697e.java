package p256z1;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import com.github.clans.fab.FloatingActionButton;

/* JADX INFO: renamed from: z1.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3697e extends Drawable {

    /* JADX INFO: renamed from: a */
    public final Paint f10951a;

    /* JADX INFO: renamed from: b */
    public final Paint f10952b;

    /* JADX INFO: renamed from: c */
    public final float f10953c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ FloatingActionButton f10954d;

    public C3697e(FloatingActionButton floatingActionButton) {
        this.f10954d = floatingActionButton;
        Paint paint = new Paint(1);
        this.f10951a = paint;
        Paint paint2 = new Paint(1);
        this.f10952b = paint2;
        floatingActionButton.setLayerType(1, null);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(floatingActionButton.f1919h);
        paint2.setXfermode(FloatingActionButton.f1890W);
        if (!floatingActionButton.isInEditMode()) {
            paint.setShadowLayer(floatingActionButton.f1916e, floatingActionButton.f1917f, floatingActionButton.f1918g, floatingActionButton.f1915d);
        }
        float circleSize = floatingActionButton.getCircleSize() / 2;
        this.f10953c = circleSize;
        if (floatingActionButton.f1932u && floatingActionButton.f1911U) {
            this.f10953c = circleSize + floatingActionButton.f1933v;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        PorterDuffXfermode porterDuffXfermode = FloatingActionButton.f1890W;
        FloatingActionButton floatingActionButton = this.f10954d;
        float measuredWidth = floatingActionButton.getMeasuredWidth() / 2;
        float measuredHeight = floatingActionButton.getMeasuredHeight() / 2;
        Paint paint = this.f10951a;
        float f8 = this.f10953c;
        canvas.drawCircle(measuredWidth, measuredHeight, f8, paint);
        canvas.drawCircle(floatingActionButton.getMeasuredWidth() / 2, floatingActionButton.getMeasuredHeight() / 2, f8, this.f10952b);
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

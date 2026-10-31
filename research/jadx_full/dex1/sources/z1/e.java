package z1;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import com.github.clans.fab.FloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f6167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f6168b;
    public final float c;
    public final /* synthetic */ FloatingActionButton d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(FloatingActionButton floatingActionButton) {
        this.d = floatingActionButton;
        Paint paint = new Paint(1);
        this.f6167a = paint;
        Paint paint2 = new Paint(1);
        this.f6168b = paint2;
        floatingActionButton.setLayerType(1, null);
        paint.setStyle(Paint$Style.FILL);
        paint.setColor(floatingActionButton.f1022h);
        paint2.setXfermode(FloatingActionButton.W);
        if (!floatingActionButton.isInEditMode()) {
            paint.setShadowLayer(floatingActionButton.e, floatingActionButton.f1020f, floatingActionButton.f1021g, floatingActionButton.d);
        }
        float fA = FloatingActionButton.a(floatingActionButton) / 2;
        this.c = fA;
        if (floatingActionButton.f1033u && floatingActionButton.U) {
            this.c = fA + floatingActionButton.f1034v;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        PorterDuffXfermode porterDuffXfermode = FloatingActionButton.W;
        FloatingActionButton floatingActionButton = this.d;
        float measuredWidth = floatingActionButton.getMeasuredWidth() / 2;
        float measuredHeight = floatingActionButton.getMeasuredHeight() / 2;
        Paint paint = this.f6167a;
        float f8 = this.c;
        canvas.drawCircle(measuredWidth, measuredHeight, f8, paint);
        canvas.drawCircle(floatingActionButton.getMeasuredWidth() / 2, floatingActionButton.getMeasuredHeight() / 2, f8, this.f6168b);
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

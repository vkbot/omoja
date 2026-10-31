package i7;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.Shader$TileMode;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f2718b;
    public int c;
    public float d;
    public float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f2719f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f2720g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f2721h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2722i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f2723j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setSignalStrength(float f8) {
        this.f2718b = f8;
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(float f8) {
        setSignalStrength(Math.max(0.0f, Math.min(f8, 100.0f)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Paint paint;
        int i9 = this.c;
        super.onDraw(canvas);
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        if (this.f2718b < this.f2721h) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f2723j >= 500) {
                this.f2722i = !this.f2722i;
                this.f2723j = jCurrentTimeMillis;
            }
            if (this.f2722i) {
                Paint paint2 = new Paint();
                paint2.setColor(SupportMenu.CATEGORY_MASK);
                paint2.setAlpha(ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                canvas.drawCircle(width, height, Math.min(getWidth(), getHeight()) / 6.0f, paint2);
            }
            postInvalidateDelayed(500L);
            return;
        }
        Paint paint3 = new Paint();
        paint3.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint3.setAlpha(150);
        float width2 = width - ((getWidth() - 100.0f) / 2.0f);
        float height2 = height - ((getHeight() - 100.0f) / 2.0f);
        float width3 = ((getWidth() - 100.0f) / 2.0f) + width;
        float height3 = ((getHeight() - 100.0f) / 2.0f) + height;
        float f8 = this.f2720g;
        canvas.drawRoundRect(width2, height2, width3, height3, f8, f8, paint3);
        float f9 = i9;
        float width4 = getWidth() / (this.d * f9);
        float f10 = width4 / 2.0f;
        float height4 = getHeight() * this.e;
        float f11 = width4 + f10;
        float f12 = width - (((f11 * f9) - f10) / 2.0f);
        float height5 = ((getHeight() * this.f2719f) / 2.0f) + height;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, getHeight(), new int[]{-16711936, InputDeviceCompat.SOURCE_ANY, SupportMenu.CATEGORY_MASK}, new float[]{0.0f, 0.5f, 1.0f}, Shader$TileMode.CLAMP);
        Paint paint4 = new Paint();
        paint4.setShader(linearGradient);
        Paint paint5 = new Paint();
        paint5.setColor(-12303292);
        paint5.setStyle(Paint$Style.FILL);
        paint5.setAlpha(150);
        int i10 = 0;
        while (i10 < i9) {
            int i11 = i10 + 1;
            float f13 = i10;
            float f14 = (f13 * f11) + f12;
            float f15 = f14 + width4;
            float fMin = height5 - ((i11 / f9) * (Math.min(1.0f, this.f2718b / 100.0f) * height4));
            if (this.f2718b / 100.0f > f13 / f9) {
                canvas.drawRoundRect(f14, fMin, f15, height5, f10, f10, paint4);
                paint = paint5;
            } else {
                paint = paint5;
                canvas.drawRoundRect(f14, fMin, f15, height5, f10, f10, paint);
            }
            i10 = i11;
            paint5 = paint;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onMeasure(int i9, int i10) {
        setMeasuredDimension(View.resolveSize(50, i9), View.resolveSize(50, i10));
    }
}

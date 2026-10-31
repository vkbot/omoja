package p094i7;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import org.apache.commons.net.ftp.FTPReply;

/* JADX INFO: renamed from: i7.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1774w extends View {

    /* JADX INFO: renamed from: b */
    public float f4651b;

    /* JADX INFO: renamed from: c */
    public int f4652c;

    /* JADX INFO: renamed from: d */
    public float f4653d;

    /* JADX INFO: renamed from: e */
    public float f4654e;

    /* JADX INFO: renamed from: f */
    public float f4655f;

    /* JADX INFO: renamed from: g */
    public float f4656g;

    /* JADX INFO: renamed from: h */
    public float f4657h;

    /* JADX INFO: renamed from: i */
    public boolean f4658i;

    /* JADX INFO: renamed from: j */
    public long f4659j;

    private void setSignalStrength(float f8) {
        this.f4651b = f8;
        invalidate();
    }

    /* JADX INFO: renamed from: a */
    public final void m2894a(float f8) {
        setSignalStrength(Math.max(0.0f, Math.min(f8, 100.0f)));
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Paint paint;
        int i10 = this.f4652c;
        super.onDraw(canvas);
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        if (this.f4651b < this.f4657h) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f4659j >= 500) {
                this.f4658i = !this.f4658i;
                this.f4659j = jCurrentTimeMillis;
            }
            if (this.f4658i) {
                Paint paint2 = new Paint();
                paint2.setColor(SupportMenu.CATEGORY_MASK);
                paint2.setAlpha(200);
                canvas.drawCircle(width, height, Math.min(getWidth(), getHeight()) / 6.0f, paint2);
            }
            postInvalidateDelayed(500L);
            return;
        }
        Paint paint3 = new Paint();
        paint3.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint3.setAlpha(FTPReply.FILE_STATUS_OK);
        float width2 = width - ((getWidth() - 100.0f) / 2.0f);
        float height2 = height - ((getHeight() - 100.0f) / 2.0f);
        float width3 = ((getWidth() - 100.0f) / 2.0f) + width;
        float height3 = ((getHeight() - 100.0f) / 2.0f) + height;
        float f8 = this.f4656g;
        canvas.drawRoundRect(width2, height2, width3, height3, f8, f8, paint3);
        float f10 = i10;
        float width4 = getWidth() / (this.f4653d * f10);
        float f11 = width4 / 2.0f;
        float height4 = getHeight() * this.f4654e;
        float f12 = width4 + f11;
        float f13 = width - (((f12 * f10) - f11) / 2.0f);
        float height5 = ((getHeight() * this.f4655f) / 2.0f) + height;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, getHeight(), new int[]{-16711936, InputDeviceCompat.SOURCE_ANY, SupportMenu.CATEGORY_MASK}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
        Paint paint4 = new Paint();
        paint4.setShader(linearGradient);
        Paint paint5 = new Paint();
        paint5.setColor(-12303292);
        paint5.setStyle(Paint.Style.FILL);
        paint5.setAlpha(FTPReply.FILE_STATUS_OK);
        int i11 = 0;
        while (i11 < i10) {
            int i12 = i11 + 1;
            float f14 = i11;
            float f15 = (f14 * f12) + f13;
            float f16 = f15 + width4;
            float fMin = height5 - ((i12 / f10) * (Math.min(1.0f, this.f4651b / 100.0f) * height4));
            if (this.f4651b / 100.0f > f14 / f10) {
                canvas.drawRoundRect(f15, fMin, f16, height5, f11, f11, paint4);
                paint = paint5;
            } else {
                paint = paint5;
                canvas.drawRoundRect(f15, fMin, f16, height5, f11, f11, paint);
            }
            i11 = i12;
            paint5 = paint;
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        setMeasuredDimension(View.resolveSize(50, i10), View.resolveSize(50, i11));
    }
}

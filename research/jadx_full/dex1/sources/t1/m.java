package t1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint$Align;
import android.graphics.Paint$Cap;
import android.graphics.Paint$FontMetrics;
import android.graphics.Paint$Style;
import android.graphics.RectF;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextPaint;
import android.view.View;
import java.io.File;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f5374b;
    public final Paint c;
    public final TextPaint d;
    public final RectF e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f5375f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5376g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final l f5377h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.f5374b = paint;
        Paint paint2 = new Paint(1);
        this.c = paint2;
        TextPaint textPaint = new TextPaint(1);
        this.d = textPaint;
        this.e = new RectF();
        this.f5375f = e0.m.h(new byte[]{-16, 34}, new byte[]{-35, 15, 45, 124, 23, 30, 54, 120});
        this.f5376g = Color.rgb(63, 185, 93);
        this.f5377h = new l(0, this);
        paint.setStyle(Paint$Style.FILL);
        paint.setColor(Color.argb(210, 24, 24, 24));
        paint2.setStyle(Paint$Style.STROKE);
        paint2.setStrokeCap(Paint$Cap.ROUND);
        paint2.setStrokeWidth(a(5));
        textPaint.setColor(-1);
        textPaint.setTextAlign(Paint$Align.CENTER);
        textPaint.setFakeBoldText(true);
        textPaint.setTextSize(a(24));
        setMinimumWidth(a(76));
        setMinimumHeight(a(76));
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a(int i9) {
        return (int) ((i9 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        String absolutePath;
        int iRgb;
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory == null) {
                absolutePath = "";
            } else {
                try {
                    absolutePath = externalStorageDirectory.getCanonicalPath();
                } catch (IOException unused) {
                    absolutePath = externalStorageDirectory.getAbsolutePath();
                }
            }
            long availableBytes = new StatFs(absolutePath).getAvailableBytes();
            double d = availableBytes / 1.073741824E9d;
            this.f5375f = d >= 10.0d ? String.valueOf((int) Math.floor(d)) : String.format(Locale.US, e0.m.h(new byte[]{-36, 96, 51, 51}, new byte[]{-7, 78, 2, 85, 21, -95, 23, 102}), Double.valueOf(d));
            if (availableBytes < 2147483648L) {
                iRgb = Color.rgb(229, 57, 53);
            } else {
                iRgb = availableBytes < 3221225472L ? Color.rgb(251, 192, 45) : Color.rgb(63, 185, 93);
            }
            this.f5376g = iRgb;
        } catch (Exception unused2) {
            this.f5375f = e0.m.h(new byte[]{-127, 110}, new byte[]{-84, 67, 119, 4, -102, -89, -119, 27});
            this.f5376g = Color.rgb(229, 57, 53);
        }
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f5377h);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iMin = Math.min(getWidth(), getHeight());
        Paint paint = this.c;
        float strokeWidth = (paint.getStrokeWidth() / 2.0f) + a(3);
        float f8 = iMin;
        float f9 = f8 - strokeWidth;
        RectF rectF = this.e;
        rectF.set(strokeWidth, strokeWidth, f9, f9);
        float f10 = f8 / 2.0f;
        canvas.drawCircle(f10, f10, f10 - a(4), this.f5374b);
        paint.setColor(this.f5376g);
        canvas.drawArc(rectF, -90.0f, 360.0f, false, paint);
        TextPaint textPaint = this.d;
        Paint$FontMetrics fontMetrics = textPaint.getFontMetrics();
        canvas.drawText(this.f5375f, f10, f10 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), textPaint);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onMeasure(int i9, int i10) {
        int iA = a(76);
        int iMin = Math.min(View.resolveSize(iA, i9), View.resolveSize(iA, i10));
        setMeasuredDimension(iMin, iMin);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i9) {
        super.onWindowVisibilityChanged(i9);
        l lVar = this.f5377h;
        if (i9 == 0) {
            post(lVar);
        } else {
            removeCallbacks(lVar);
        }
    }
}

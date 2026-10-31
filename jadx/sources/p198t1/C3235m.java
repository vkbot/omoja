package p198t1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextPaint;
import android.view.View;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import org.apache.commons.net.ftp.FTPReply;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: t1.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3235m extends View {

    /* JADX INFO: renamed from: b */
    public final Paint f9494b;

    /* JADX INFO: renamed from: c */
    public final Paint f9495c;

    /* JADX INFO: renamed from: d */
    public final TextPaint f9496d;

    /* JADX INFO: renamed from: e */
    public final RectF f9497e;

    /* JADX INFO: renamed from: f */
    public String f9498f;

    /* JADX INFO: renamed from: g */
    public int f9499g;

    /* JADX INFO: renamed from: h */
    public final RunnableC3234l f9500h;

    public C3235m(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.f9494b = paint;
        Paint paint2 = new Paint(1);
        this.f9495c = paint2;
        TextPaint textPaint = new TextPaint(1);
        this.f9496d = textPaint;
        this.f9497e = new RectF();
        this.f9498f = AbstractC1387m.m2421h(new byte[]{-16, 34}, new byte[]{-35, 15, 45, 124, 23, 30, 54, 120});
        this.f9499g = Color.rgb(63, 185, 93);
        this.f9500h = new RunnableC3234l(0, this);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(Color.argb(210, 24, 24, 24));
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        paint2.setStrokeWidth(m5176a(5));
        textPaint.setColor(-1);
        textPaint.setTextAlign(Paint.Align.CENTER);
        textPaint.setFakeBoldText(true);
        textPaint.setTextSize(m5176a(24));
        setMinimumWidth(m5176a(76));
        setMinimumHeight(m5176a(76));
        m5177b();
    }

    /* JADX INFO: renamed from: a */
    public final int m5176a(int i10) {
        return (int) ((i10 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX INFO: renamed from: b */
    public final void m5177b() {
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
            this.f9498f = d >= 10.0d ? String.valueOf((int) Math.floor(d)) : String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{-36, 96, 51, 51}, new byte[]{-7, 78, 2, 85, 21, -95, 23, 102}), Double.valueOf(d));
            if (availableBytes < 2147483648L) {
                iRgb = Color.rgb(FTPReply.ENTERING_EPSV_MODE, 57, 53);
            } else {
                iRgb = availableBytes < 3221225472L ? Color.rgb(251, 192, 45) : Color.rgb(63, 185, 93);
            }
            this.f9499g = iRgb;
        } catch (Exception unused2) {
            this.f9498f = AbstractC1387m.m2421h(new byte[]{-127, 110}, new byte[]{-84, 67, 119, 4, -102, -89, -119, 27});
            this.f9499g = Color.rgb(FTPReply.ENTERING_EPSV_MODE, 57, 53);
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f9500h);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iMin = Math.min(getWidth(), getHeight());
        Paint paint = this.f9495c;
        float strokeWidth = (paint.getStrokeWidth() / 2.0f) + m5176a(3);
        float f8 = iMin;
        float f10 = f8 - strokeWidth;
        RectF rectF = this.f9497e;
        rectF.set(strokeWidth, strokeWidth, f10, f10);
        float f11 = f8 / 2.0f;
        canvas.drawCircle(f11, f11, f11 - m5176a(4), this.f9494b);
        paint.setColor(this.f9499g);
        canvas.drawArc(rectF, -90.0f, 360.0f, false, paint);
        TextPaint textPaint = this.f9496d;
        Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
        canvas.drawText(this.f9498f, f11, f11 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), textPaint);
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int iM5176a = m5176a(76);
        int iMin = Math.min(View.resolveSize(iM5176a, i10), View.resolveSize(iM5176a, i11));
        setMeasuredDimension(iMin, iMin);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        RunnableC3234l runnableC3234l = this.f9500h;
        if (i10 == 0) {
            post(runnableC3234l);
        } else {
            removeCallbacks(runnableC3234l);
        }
    }
}

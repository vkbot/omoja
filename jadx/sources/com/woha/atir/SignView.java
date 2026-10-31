package com.woha.atir;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import p094i7.C1775x;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class SignView extends View {

    /* JADX INFO: renamed from: b */
    public final Paint f2875b;

    /* JADX INFO: renamed from: c */
    public C1775x f2876c;

    public SignView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.f2875b = paint;
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f2875b.setStrokeWidth(5.0f);
        this.f2875b.setStyle(Paint.Style.STROKE);
        this.f2875b.setStrokeCap(Paint.Cap.ROUND);
        this.f2875b.setStrokeJoin(Paint.Join.ROUND);
    }

    /* JADX INFO: renamed from: a */
    public final void m2202a(Canvas canvas, int i10, int i11, int i12, int i13) {
        this.f2875b.setStyle(Paint.Style.STROKE);
        float f8 = i10;
        float f10 = i11;
        canvas.drawCircle(f8, f10, i12, this.f2875b);
        this.f2875b.setTextSize(80.0f);
        this.f2875b.setColor(-1);
        this.f2875b.setStyle(Paint.Style.FILL);
        String strValueOf = String.valueOf(i13);
        canvas.drawText(strValueOf, f8 - (this.f2875b.measureText(strValueOf) / 2.0f), (this.f2875b.getTextSize() / 2.0f) + f10, this.f2875b);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f2876c == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int i10 = width / 2;
        int i11 = height / 2;
        int iMin = (Math.min(width, height) / 2) - 10;
        C1775x c1775x = this.f2876c;
        int i12 = c1775x.f4663d;
        if (i12 == 1) {
            m2202a(canvas, i10, i11, iMin, c1775x.f4664e);
            return;
        }
        if (i12 == 101) {
            m2202a(canvas, i10, i11, iMin, c1775x.f4664e);
            return;
        }
        if (i12 != 107) {
            return;
        }
        this.f2875b.setStyle(Paint.Style.STROKE);
        float f8 = i10;
        canvas.drawCircle(f8, i11, iMin, this.f2875b);
        Path path = new Path();
        path.moveTo(f8, i11 - iMin);
        int i13 = iMin / 2;
        float f10 = i10 - i13;
        float f11 = i11 + i13;
        path.lineTo(f10, f11);
        float f12 = i10 + i13;
        path.lineTo(f12, f11);
        path.close();
        this.f2875b.setStyle(Paint.Style.FILL);
        this.f2875b.setColor(-1);
        canvas.drawPath(path, this.f2875b);
        this.f2875b.setStrokeWidth(10.0f);
        this.f2875b.setColor(ViewCompat.MEASURED_STATE_MASK);
        canvas.drawLine(f10, f11, f12, f11, this.f2875b);
    }

    public void setTrafficObject(C1775x c1775x) {
        this.f2876c = c1775x;
        invalidate();
    }
}

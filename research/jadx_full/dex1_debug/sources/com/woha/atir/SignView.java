package com.woha.atir;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Cap;
import android.graphics.Paint$Join;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import i7.x;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SignView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f1623b;
    public x c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SignView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.f1623b = paint;
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f1623b.setStrokeWidth(5.0f);
        this.f1623b.setStyle(Paint$Style.STROKE);
        this.f1623b.setStrokeCap(Paint$Cap.ROUND);
        this.f1623b.setStrokeJoin(Paint$Join.ROUND);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Canvas canvas, int i9, int i10, int i11, int i12) {
        this.f1623b.setStyle(Paint$Style.STROKE);
        float f8 = i9;
        float f9 = i10;
        canvas.drawCircle(f8, f9, i11, this.f1623b);
        this.f1623b.setTextSize(80.0f);
        this.f1623b.setColor(-1);
        this.f1623b.setStyle(Paint$Style.FILL);
        String strValueOf = String.valueOf(i12);
        canvas.drawText(strValueOf, f8 - (this.f1623b.measureText(strValueOf) / 2.0f), (this.f1623b.getTextSize() / 2.0f) + f9, this.f1623b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.c == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int i9 = width / 2;
        int i10 = height / 2;
        int iMin = (Math.min(width, height) / 2) - 10;
        x xVar = this.c;
        int i11 = xVar.d;
        if (i11 == 1) {
            a(canvas, i9, i10, iMin, xVar.e);
            return;
        }
        if (i11 == 101) {
            a(canvas, i9, i10, iMin, xVar.e);
            return;
        }
        if (i11 != 107) {
            return;
        }
        this.f1623b.setStyle(Paint$Style.STROKE);
        float f8 = i9;
        canvas.drawCircle(f8, i10, iMin, this.f1623b);
        Path path = new Path();
        path.moveTo(f8, i10 - iMin);
        int i12 = iMin / 2;
        float f9 = i9 - i12;
        float f10 = i10 + i12;
        path.lineTo(f9, f10);
        float f11 = i9 + i12;
        path.lineTo(f11, f10);
        path.close();
        this.f1623b.setStyle(Paint$Style.FILL);
        this.f1623b.setColor(-1);
        canvas.drawPath(path, this.f1623b);
        this.f1623b.setStrokeWidth(10.0f);
        this.f1623b.setColor(ViewCompat.MEASURED_STATE_MASK);
        canvas.drawLine(f9, f10, f11, f10, this.f1623b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTrafficObject(x xVar) {
        this.c = xVar;
        invalidate();
    }
}

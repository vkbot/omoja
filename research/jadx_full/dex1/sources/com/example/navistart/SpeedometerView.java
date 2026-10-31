package com.example.navistart;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint$Align;
import android.graphics.Paint$Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import com.bumptech.glide.g;
import e0.l2;
import e0.m;
import e0.t2;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SpeedometerView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double f831b;
    public double c;
    public int d;
    public double e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f832f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f833g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f834h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f835i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Paint f836j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Paint f837k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Paint f838l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Paint f839m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Paint f840n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f841o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Bitmap f842p;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpeedometerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f831b = 100.0d;
        this.c = 0.0d;
        this.d = Color.rgb(180, 180, 180);
        this.e = 20.0d;
        this.f832f = 1;
        this.f833g = new ArrayList();
        float f8 = getResources().getDisplayMetrics().density;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, l2.f1886f, 0, 0);
        try {
            setMaxSpeed(typedArrayObtainStyledAttributes.getFloat(1, 100.0f));
            setSpeed(typedArrayObtainStyledAttributes.getFloat(2, 0.0f));
            setLabelTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, Math.round(f8 * 12.0f)));
            typedArrayObtainStyledAttributes.recycle();
            if (!isInEditMode()) {
                setLayerType(2, null);
            }
            Paint paint = new Paint(1);
            this.f834h = paint;
            Paint$Style paint$Style = Paint$Style.FILL;
            paint.setStyle(paint$Style);
            this.f834h.setColor(Color.rgb(127, 127, 127));
            Paint paint2 = new Paint(1);
            this.f835i = paint2;
            paint2.setStyle(paint$Style);
            this.f835i.setColor(Color.rgb(150, 150, 150));
            Paint paint3 = new Paint(1);
            this.f839m = paint3;
            paint3.setColor(-1);
            this.f839m.setTextSize(this.f841o);
            this.f839m.setTextAlign(Paint$Align.CENTER);
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), 2131165746);
            this.f842p = bitmapDecodeResource;
            this.f842p = Bitmap.createBitmap(bitmapDecodeResource, 0, 0, bitmapDecodeResource.getWidth(), this.f842p.getHeight() / 2);
            Paint paint4 = new Paint(1);
            this.f836j = paint4;
            paint4.setDither(true);
            Paint paint5 = new Paint(1);
            this.f838l = paint5;
            paint5.setStrokeWidth(3.0f);
            Paint paint6 = this.f838l;
            Paint$Style paint$Style2 = Paint$Style.STROKE;
            paint6.setStyle(paint$Style2);
            this.f838l.setColor(this.d);
            Paint paint7 = new Paint(1);
            this.f840n = paint7;
            paint7.setStyle(paint$Style2);
            this.f840n.setStrokeWidth(5.0f);
            this.f840n.setColor(this.d);
            Paint paint8 = new Paint(1);
            this.f837k = paint8;
            paint8.setStrokeWidth(5.0f);
            this.f837k.setStyle(paint$Style2);
            this.f837k.setColor(Color.argb(ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION, 255, 0, 0));
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final RectF a(Canvas canvas, float f8) {
        RectF rectF;
        int width = (canvas.getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = ((canvas.getHeight() - getPaddingTop()) - getPaddingBottom()) * 2;
        if (height >= width) {
            float f9 = width * f8;
            rectF = new RectF(0.0f, 0.0f, f9, f9);
        } else {
            float f10 = height * f8;
            rectF = new RectF(0.0f, 0.0f, f10, f10);
        }
        rectF.offset(((width - rectF.width()) / 2.0f) + getPaddingLeft(), ((height - rectF.height()) / 2.0f) + getPaddingTop());
        return rectF;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDefaultColor() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t2 getLabelConverter() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLabelTextSize() {
        return this.f841o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getMajorTickStep() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getMaxSpeed() {
        return this.f831b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMinorTicks() {
        return this.f832f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getSpeed() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        canvas2.drawColor(0);
        RectF rectFA = a(canvas2, 1.0f);
        canvas2.drawArc(rectFA, 180.0f, 180.0f, true, this.f834h);
        canvas2.drawArc(a(canvas2, 0.9f), 180.0f, 180.0f, true, this.f835i);
        float f8 = 2.0f;
        canvas2.drawBitmap(Bitmap.createScaledBitmap(this.f842p, (int) (((double) rectFA.width()) * 1.1d), ((int) (((double) rectFA.height()) * 1.1d)) / 2, true), rectFA.centerX() - ((rectFA.width() * 1.1f) / 2.0f), rectFA.centerY() - ((rectFA.width() * 1.1f) / 2.0f), this.f836j);
        float f9 = (float) ((this.e / this.f831b) * ((double) 160.0f));
        float f10 = f9 / (this.f832f + 1);
        RectF rectFA2 = a(canvas2, 1.0f);
        float f11 = 0.35f;
        float fWidth = rectFA2.width() * 0.35f;
        float f12 = 10.0f;
        while (f12 <= 170.0f) {
            double d = ((double) ((180.0f - f12) / 180.0f)) * 3.141592653589793d;
            float f13 = f8;
            double d9 = fWidth - 15.0f;
            float f14 = f9;
            float f15 = f11;
            float f16 = fWidth;
            double d10 = ((double) (f12 / 180.0f)) * 3.141592653589793d;
            double d11 = f16 + 15.0f;
            canvas2.drawLine((float) ((Math.cos(d) * d9) + ((double) rectFA2.centerX())), (float) (((double) rectFA2.centerY()) - (Math.sin(d10) * d9)), (float) ((Math.cos(d) * d11) + ((double) rectFA2.centerX())), (float) (((double) rectFA2.centerY()) - (Math.sin(d10) * d11)), this.f838l);
            int i9 = 1;
            while (i9 <= this.f832f) {
                float f17 = (i9 * f10) + f12;
                if (f17 >= (f10 / f13) + 170.0f) {
                    break;
                }
                double d12 = ((double) ((180.0f - f17) / 180.0f)) * 3.141592653589793d;
                float f18 = f16;
                double d13 = f18;
                float fCos = (float) ((Math.cos(d12) * d13) + ((double) rectFA2.centerX()));
                double d14 = ((double) (f17 / 180.0f)) * 3.141592653589793d;
                canvas.drawLine(fCos, (float) (((double) rectFA2.centerY()) - (Math.sin(d14) * d13)), (float) ((Math.cos(d12) * d11) + ((double) rectFA2.centerX())), (float) (((double) rectFA2.centerY()) - (Math.sin(d14) * d11)), this.f838l);
                i9++;
                f16 = f18;
            }
            canvas2 = canvas;
            f12 += f14;
            fWidth = f16;
            f9 = f14;
            f8 = f13;
            f11 = f15;
        }
        float f19 = f11;
        RectF rectFA3 = a(canvas2, 0.7f);
        this.f840n.setColor(this.d);
        canvas2.drawArc(rectFA3, 185.0f, 170.0f, false, this.f840n);
        Iterator it = this.f833g.iterator();
        if (it.hasNext()) {
            throw g.b(it);
        }
        RectF rectFA4 = a(canvas2, 1.0f);
        float fWidth2 = (rectFA4.width() * f19) + 10.0f;
        RectF rectFA5 = a(canvas2, 0.2f);
        float speed = ((float) ((getSpeed() / getMaxSpeed()) * 160.0d)) + 10.0f;
        double d15 = ((double) ((180.0f - speed) / 180.0f)) * 3.141592653589793d;
        double d16 = ((double) (speed / 180.0f)) * 3.141592653589793d;
        double d17 = fWidth2;
        canvas2.drawLine((float) ((Math.cos(d15) * ((double) rectFA5.width()) * 0.5d) + ((double) rectFA4.centerX())), (float) (((double) rectFA4.centerY()) - ((Math.sin(d16) * ((double) rectFA5.width())) * 0.5d)), (float) ((Math.cos(d15) * d17) + ((double) rectFA4.centerX())), (float) (((double) rectFA4.centerY()) - (Math.sin(d16) * d17)), this.f837k);
        canvas.drawArc(rectFA5, 180.0f, 180.0f, true, this.f834h);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onMeasure(int i9, int i10) {
        int mode = View$MeasureSpec.getMode(i9);
        int size = View$MeasureSpec.getSize(i9);
        int mode2 = View$MeasureSpec.getMode(i10);
        int size2 = View$MeasureSpec.getSize(i10);
        if (mode != 1073741824 && mode != Integer.MIN_VALUE) {
            size = -1;
        }
        if (mode2 != 1073741824 && mode2 != Integer.MIN_VALUE) {
            size2 = -1;
        }
        if (size2 >= 0 && size >= 0) {
            size = Math.min(size2, size);
            size2 = size / 2;
        } else if (size >= 0) {
            size2 = size / 2;
        } else if (size2 >= 0) {
            size = size2 * 2;
        } else {
            size = 0;
            size2 = 0;
        }
        setMeasuredDimension(size, size2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDefaultColor(int i9) {
        this.d = i9;
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLabelConverter(t2 t2Var) {
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLabelTextSize(int i9) {
        this.f841o = i9;
        Paint paint = this.f839m;
        if (paint != null) {
            paint.setTextSize(i9);
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMajorTickStep(double d) {
        if (d <= 0.0d) {
            i.k(m.h(new byte[]{-43, ByteCompanionObject.MAX_VALUE, -93, 13, 83, -25, -116, -119, -17, 121, -69, 69, 3, -2, -98, -116, -18, 117, -19, 83, 83, -19, -100, -119, -3, 121, -88, 68, 3, -23, -116, -64, -6, 48, -96, 65, 73, -25, -115, -64, -17, 121, -82, 75, 3, -5, -117, -123, -21, 62}, new byte[]{-101, 16, -51, 32, 35, -120, -1, -32}));
        } else {
            this.e = d;
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxSpeed(double d) {
        if (d <= 0.0d) {
            i.k(m.h(new byte[]{25, 20, 78, 40, -86, 71, 20, 100, 35, 18, 86, 96, -6, 94, 6, 97, 34, 30, 0, 118, -86, 77, 4, 100, 49, 18, 69, 97, -6, 73, 20, 45, 58, 26, 88, 37, -87, 88, 2, 104, 51, 85}, new byte[]{87, 123, 32, 5, -38, 40, 103, 13}));
        } else {
            this.f831b = d;
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMinorTicks(int i9) {
        this.f832f = i9;
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpeed(double d) {
        if (d < 0.0d) {
            i.k(m.h(new byte[]{-83, 85, 9, -78, -78, 102, 88, 49, -105, 83, 17, -6, -30, ByteCompanionObject.MAX_VALUE, 74, 52, -106, 95, 71, -20, -78, 108, 72, 49, -123, 83, 2, -5, -30, 104, 88, 120, -126, 26, 20, -17, -89, 108, 79, 118}, new byte[]{-29, 58, 103, -97, -62, 9, 43, 88}));
            return;
        }
        double d9 = this.f831b;
        if (d > d9) {
            d = d9;
        }
        this.c = d;
        invalidate();
    }
}

package com.example.navistart;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.bumptech.glide.AbstractC1034g;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.ByteCompanionObject;
import org.apache.commons.net.ftp.FTPReply;
import p047e0.AbstractC1385l2;
import p047e0.AbstractC1387m;
import p047e0.InterfaceC1425t2;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class SpeedometerView extends View {

    /* JADX INFO: renamed from: b */
    public double f1620b;

    /* JADX INFO: renamed from: c */
    public double f1621c;

    /* JADX INFO: renamed from: d */
    public int f1622d;

    /* JADX INFO: renamed from: e */
    public double f1623e;

    /* JADX INFO: renamed from: f */
    public int f1624f;

    /* JADX INFO: renamed from: g */
    public final ArrayList f1625g;

    /* JADX INFO: renamed from: h */
    public final Paint f1626h;

    /* JADX INFO: renamed from: i */
    public final Paint f1627i;

    /* JADX INFO: renamed from: j */
    public final Paint f1628j;

    /* JADX INFO: renamed from: k */
    public final Paint f1629k;

    /* JADX INFO: renamed from: l */
    public final Paint f1630l;

    /* JADX INFO: renamed from: m */
    public final Paint f1631m;

    /* JADX INFO: renamed from: n */
    public final Paint f1632n;

    /* JADX INFO: renamed from: o */
    public int f1633o;

    /* JADX INFO: renamed from: p */
    public final Bitmap f1634p;

    public SpeedometerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1620b = 100.0d;
        this.f1621c = 0.0d;
        this.f1622d = Color.rgb(180, 180, 180);
        this.f1623e = 20.0d;
        this.f1624f = 1;
        this.f1625g = new ArrayList();
        float f8 = getResources().getDisplayMetrics().density;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC1385l2.f3308f, 0, 0);
        try {
            setMaxSpeed(typedArrayObtainStyledAttributes.getFloat(1, 100.0f));
            setSpeed(typedArrayObtainStyledAttributes.getFloat(2, 0.0f));
            setLabelTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, Math.round(f8 * 12.0f)));
            typedArrayObtainStyledAttributes.recycle();
            if (!isInEditMode()) {
                setLayerType(2, null);
            }
            Paint paint = new Paint(1);
            this.f1626h = paint;
            Paint.Style style = Paint.Style.FILL;
            paint.setStyle(style);
            this.f1626h.setColor(Color.rgb(127, 127, 127));
            Paint paint2 = new Paint(1);
            this.f1627i = paint2;
            paint2.setStyle(style);
            this.f1627i.setColor(Color.rgb(FTPReply.FILE_STATUS_OK, FTPReply.FILE_STATUS_OK, FTPReply.FILE_STATUS_OK));
            Paint paint3 = new Paint(1);
            this.f1631m = paint3;
            paint3.setColor(-1);
            this.f1631m.setTextSize(this.f1633o);
            this.f1631m.setTextAlign(Paint.Align.CENTER);
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.spot_mask);
            this.f1634p = bitmapDecodeResource;
            this.f1634p = Bitmap.createBitmap(bitmapDecodeResource, 0, 0, bitmapDecodeResource.getWidth(), this.f1634p.getHeight() / 2);
            Paint paint4 = new Paint(1);
            this.f1628j = paint4;
            paint4.setDither(true);
            Paint paint5 = new Paint(1);
            this.f1630l = paint5;
            paint5.setStrokeWidth(3.0f);
            Paint paint6 = this.f1630l;
            Paint.Style style2 = Paint.Style.STROKE;
            paint6.setStyle(style2);
            this.f1630l.setColor(this.f1622d);
            Paint paint7 = new Paint(1);
            this.f1632n = paint7;
            paint7.setStyle(style2);
            this.f1632n.setStrokeWidth(5.0f);
            this.f1632n.setColor(this.f1622d);
            Paint paint8 = new Paint(1);
            this.f1629k = paint8;
            paint8.setStrokeWidth(5.0f);
            this.f1629k.setStyle(style2);
            this.f1629k.setColor(Color.argb(200, 255, 0, 0));
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX INFO: renamed from: a */
    public final RectF m1545a(Canvas canvas, float f8) {
        RectF rectF;
        int width = (canvas.getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = ((canvas.getHeight() - getPaddingTop()) - getPaddingBottom()) * 2;
        if (height >= width) {
            float f10 = width * f8;
            rectF = new RectF(0.0f, 0.0f, f10, f10);
        } else {
            float f11 = height * f8;
            rectF = new RectF(0.0f, 0.0f, f11, f11);
        }
        rectF.offset(((width - rectF.width()) / 2.0f) + getPaddingLeft(), ((height - rectF.height()) / 2.0f) + getPaddingTop());
        return rectF;
    }

    public int getDefaultColor() {
        return this.f1622d;
    }

    public InterfaceC1425t2 getLabelConverter() {
        return null;
    }

    public int getLabelTextSize() {
        return this.f1633o;
    }

    public double getMajorTickStep() {
        return this.f1623e;
    }

    public double getMaxSpeed() {
        return this.f1620b;
    }

    public int getMinorTicks() {
        return this.f1624f;
    }

    public double getSpeed() {
        return this.f1621c;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        canvas2.drawColor(0);
        RectF rectFM1545a = m1545a(canvas2, 1.0f);
        canvas2.drawArc(rectFM1545a, 180.0f, 180.0f, true, this.f1626h);
        canvas2.drawArc(m1545a(canvas2, 0.9f), 180.0f, 180.0f, true, this.f1627i);
        float f8 = 2.0f;
        canvas2.drawBitmap(Bitmap.createScaledBitmap(this.f1634p, (int) (((double) rectFM1545a.width()) * 1.1d), ((int) (((double) rectFM1545a.height()) * 1.1d)) / 2, true), rectFM1545a.centerX() - ((rectFM1545a.width() * 1.1f) / 2.0f), rectFM1545a.centerY() - ((rectFM1545a.width() * 1.1f) / 2.0f), this.f1628j);
        float f10 = (float) ((this.f1623e / this.f1620b) * ((double) 160.0f));
        float f11 = f10 / (this.f1624f + 1);
        RectF rectFM1545a2 = m1545a(canvas2, 1.0f);
        float f12 = 0.35f;
        float fWidth = rectFM1545a2.width() * 0.35f;
        float f13 = 10.0f;
        while (f13 <= 170.0f) {
            double d = ((double) ((180.0f - f13) / 180.0f)) * 3.141592653589793d;
            float f14 = f8;
            double d10 = fWidth - 15.0f;
            float f15 = f10;
            float f16 = f12;
            float f17 = fWidth;
            double d11 = ((double) (f13 / 180.0f)) * 3.141592653589793d;
            double d12 = f17 + 15.0f;
            canvas2.drawLine((float) ((Math.cos(d) * d10) + ((double) rectFM1545a2.centerX())), (float) (((double) rectFM1545a2.centerY()) - (Math.sin(d11) * d10)), (float) ((Math.cos(d) * d12) + ((double) rectFM1545a2.centerX())), (float) (((double) rectFM1545a2.centerY()) - (Math.sin(d11) * d12)), this.f1630l);
            int i10 = 1;
            while (i10 <= this.f1624f) {
                float f18 = (i10 * f11) + f13;
                if (f18 >= (f11 / f14) + 170.0f) {
                    break;
                }
                double d13 = ((double) ((180.0f - f18) / 180.0f)) * 3.141592653589793d;
                float f19 = f17;
                double d14 = f19;
                float fCos = (float) ((Math.cos(d13) * d14) + ((double) rectFM1545a2.centerX()));
                double d15 = ((double) (f18 / 180.0f)) * 3.141592653589793d;
                canvas.drawLine(fCos, (float) (((double) rectFM1545a2.centerY()) - (Math.sin(d15) * d14)), (float) ((Math.cos(d13) * d12) + ((double) rectFM1545a2.centerX())), (float) (((double) rectFM1545a2.centerY()) - (Math.sin(d15) * d12)), this.f1630l);
                i10++;
                f17 = f19;
            }
            canvas2 = canvas;
            f13 += f15;
            fWidth = f17;
            f10 = f15;
            f8 = f14;
            f12 = f16;
        }
        float f20 = f12;
        RectF rectFM1545a3 = m1545a(canvas2, 0.7f);
        this.f1632n.setColor(this.f1622d);
        canvas2.drawArc(rectFM1545a3, 185.0f, 170.0f, false, this.f1632n);
        Iterator it = this.f1625g.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
        RectF rectFM1545a4 = m1545a(canvas2, 1.0f);
        float fWidth2 = (rectFM1545a4.width() * f20) + 10.0f;
        RectF rectFM1545a5 = m1545a(canvas2, 0.2f);
        float speed = ((float) ((getSpeed() / getMaxSpeed()) * 160.0d)) + 10.0f;
        double d16 = ((double) ((180.0f - speed) / 180.0f)) * 3.141592653589793d;
        double d17 = ((double) (speed / 180.0f)) * 3.141592653589793d;
        double d18 = fWidth2;
        canvas2.drawLine((float) ((Math.cos(d16) * ((double) rectFM1545a5.width()) * 0.5d) + ((double) rectFM1545a4.centerX())), (float) (((double) rectFM1545a4.centerY()) - ((Math.sin(d17) * ((double) rectFM1545a5.width())) * 0.5d)), (float) ((Math.cos(d16) * d18) + ((double) rectFM1545a4.centerX())), (float) (((double) rectFM1545a4.centerY()) - (Math.sin(d17) * d18)), this.f1629k);
        canvas.drawArc(rectFM1545a5, 180.0f, 180.0f, true, this.f1626h);
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
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

    public void setDefaultColor(int i10) {
        this.f1622d = i10;
        invalidate();
    }

    public void setLabelConverter(InterfaceC1425t2 interfaceC1425t2) {
        invalidate();
    }

    public void setLabelTextSize(int i10) {
        this.f1633o = i10;
        Paint paint = this.f1631m;
        if (paint != null) {
            paint.setTextSize(i10);
            invalidate();
        }
    }

    public void setMajorTickStep(double d) {
        if (d <= 0.0d) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-43, ByteCompanionObject.MAX_VALUE, -93, 13, 83, -25, -116, -119, -17, 121, -69, 69, 3, -2, -98, -116, -18, 117, -19, 83, 83, -19, -100, -119, -3, 121, -88, 68, 3, -23, -116, -64, -6, 48, -96, 65, 73, -25, -115, -64, -17, 121, -82, 75, 3, -5, -117, -123, -21, 62}, new byte[]{-101, 16, -51, 32, 35, -120, -1, -32}));
        } else {
            this.f1623e = d;
            invalidate();
        }
    }

    public void setMaxSpeed(double d) {
        if (d <= 0.0d) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{25, 20, 78, 40, -86, 71, 20, 100, 35, 18, 86, 96, -6, 94, 6, 97, 34, 30, 0, 118, -86, 77, 4, 100, 49, 18, 69, 97, -6, 73, 20, 45, 58, 26, 88, 37, -87, 88, 2, 104, 51, 85}, new byte[]{87, 123, 32, 5, -38, 40, 103, 13}));
        } else {
            this.f1620b = d;
            invalidate();
        }
    }

    public void setMinorTicks(int i10) {
        this.f1624f = i10;
        invalidate();
    }

    public void setSpeed(double d) {
        if (d < 0.0d) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-83, 85, 9, -78, -78, 102, 88, 49, -105, 83, 17, -6, -30, ByteCompanionObject.MAX_VALUE, 74, 52, -106, 95, 71, -20, -78, 108, 72, 49, -123, 83, 2, -5, -30, 104, 88, 120, -126, 26, 20, -17, -89, 108, 79, 118}, new byte[]{-29, 58, 103, -97, -62, 9, 43, 88}));
            return;
        }
        double d10 = this.f1620b;
        if (d > d10) {
            d = d10;
        }
        this.f1621c = d;
        invalidate();
    }
}

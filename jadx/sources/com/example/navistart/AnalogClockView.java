package com.example.navistart;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import java.util.Calendar;
import p047e0.AbstractC1385l2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class AnalogClockView extends View {

    /* JADX INFO: renamed from: b */
    public int f1216b;

    /* JADX INFO: renamed from: c */
    public double f1217c;

    /* JADX INFO: renamed from: d */
    public int f1218d;

    /* JADX INFO: renamed from: e */
    public int f1219e;

    /* JADX INFO: renamed from: f */
    public boolean f1220f;

    /* JADX INFO: renamed from: g */
    public Paint f1221g;

    /* JADX INFO: renamed from: h */
    public Rect f1222h;

    /* JADX INFO: renamed from: i */
    public int f1223i;

    /* JADX INFO: renamed from: j */
    public int f1224j;

    /* JADX INFO: renamed from: k */
    public final TypedArray f1225k;

    /* JADX INFO: renamed from: l */
    public boolean f1226l;

    /* JADX INFO: renamed from: m */
    public boolean f1227m;

    /* JADX INFO: renamed from: n */
    public int f1228n;

    /* JADX INFO: renamed from: o */
    public int f1229o;

    /* JADX INFO: renamed from: p */
    public int f1230p;

    /* JADX INFO: renamed from: q */
    public int f1231q;

    /* JADX INFO: renamed from: r */
    public int f1232r;

    /* JADX INFO: renamed from: s */
    public int f1233s;

    /* JADX INFO: renamed from: t */
    public int f1234t;

    /* JADX INFO: renamed from: u */
    public int f1235u;

    /* JADX INFO: renamed from: v */
    public int f1236v;

    /* JADX INFO: renamed from: w */
    public int f1237w;

    /* JADX INFO: renamed from: x */
    public int f1238x;

    public AnalogClockView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1225k = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC1385l2.f3303a, 0, 0);
    }

    /* JADX INFO: renamed from: a */
    public final void m1389a(int i10, Paint.Style style, int i11) {
        this.f1221g.reset();
        this.f1221g.setColor(i10);
        this.f1221g.setStyle(style);
        this.f1221g.setStrokeWidth(i11);
        this.f1221g.setAntiAlias(true);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2;
        super.onDraw(canvas);
        if (!this.f1220f) {
            int height = getHeight();
            int width = getWidth();
            this.f1218d = width / 2;
            this.f1219e = height / 2;
            int iMin = Math.min(height, width);
            this.f1216b = (iMin / 2) - 50;
            this.f1217c = -1.4660766124725342d;
            this.f1221g = new Paint();
            this.f1222h = new Rect();
            int i10 = this.f1216b;
            this.f1223i = i10 - (i10 / 2);
            this.f1224j = i10 - (i10 / 4);
            TypedArray typedArray = this.f1225k;
            this.f1226l = typedArray.getBoolean(11, false);
            this.f1227m = typedArray.getBoolean(10, false);
            this.f1228n = typedArray.getColor(7, ViewCompat.MEASURED_STATE_MASK);
            this.f1229o = typedArray.getColor(8, SupportMenu.CATEGORY_MASK);
            this.f1230p = typedArray.getColor(5, ViewCompat.MEASURED_STATE_MASK);
            this.f1231q = typedArray.getColor(3, ViewCompat.MEASURED_STATE_MASK);
            this.f1232r = typedArray.getColor(0, ViewCompat.MEASURED_STATE_MASK);
            this.f1233s = typedArray.getColor(2, -1);
            this.f1234t = typedArray.getInt(1, 8);
            this.f1235u = typedArray.getInt(9, 7);
            this.f1236v = typedArray.getInt(6, 9);
            this.f1237w = typedArray.getInt(4, 12);
            this.f1238x = iMin / 12;
            typedArray.recycle();
            this.f1220f = true;
        }
        m1389a(this.f1233s, Paint.Style.FILL, this.f1234t);
        canvas.drawCircle(this.f1218d, this.f1219e, this.f1216b, this.f1221g);
        int i11 = this.f1232r;
        Paint.Style style = Paint.Style.STROKE;
        m1389a(i11, style, this.f1234t);
        canvas.drawCircle(this.f1218d, this.f1219e, this.f1216b, this.f1221g);
        Calendar calendar = Calendar.getInstance();
        float f8 = calendar.get(11);
        if (f8 > 12.0f) {
            f8 -= 12.0f;
        }
        float f10 = calendar.get(12);
        float f11 = calendar.get(13);
        double d = f10;
        m1389a(this.f1231q, style, this.f1237w);
        double d10 = (((((d / 60.0d) + ((double) f8)) * 5.0d) * 3.141592653589793d) / 30.0d) - 1.5707963267948966d;
        this.f1217c = d10;
        int i12 = this.f1218d;
        canvas.drawLine(i12, this.f1219e, (float) ((Math.cos(d10) * ((double) this.f1223i)) + ((double) i12)), (float) ((Math.sin(this.f1217c) * ((double) this.f1223i)) + ((double) this.f1219e)), this.f1221g);
        m1389a(this.f1230p, style, this.f1236v);
        double d11 = ((d * 3.141592653589793d) / 30.0d) - 1.5707963267948966d;
        this.f1217c = d11;
        int i13 = this.f1218d;
        canvas.drawLine(i13, this.f1219e, (float) ((Math.cos(d11) * ((double) this.f1224j)) + ((double) i13)), (float) ((Math.sin(this.f1217c) * ((double) this.f1223i)) + ((double) this.f1219e)), this.f1221g);
        if (this.f1226l) {
            this.f1221g.reset();
            m1389a(this.f1229o, style, this.f1235u);
            double d12 = ((((double) f11) * 3.141592653589793d) / 30.0d) - 1.5707963267948966d;
            this.f1217c = d12;
            int i14 = this.f1218d;
            canvas2 = canvas;
            canvas2.drawLine(i14, this.f1219e, (float) ((Math.cos(d12) * ((double) this.f1224j)) + ((double) i14)), (float) ((Math.sin(this.f1217c) * ((double) this.f1223i)) + ((double) this.f1219e)), this.f1221g);
        } else {
            canvas2 = canvas;
        }
        if (this.f1227m) {
            this.f1221g.reset();
            this.f1221g.setColor(this.f1228n);
            this.f1221g.setTextSize(this.f1238x);
            for (int i15 = 1; i15 <= 12; i15++) {
                String strValueOf = String.valueOf(i15);
                this.f1221g.getTextBounds(strValueOf, 0, strValueOf.length(), this.f1222h);
                double d13 = ((double) (i15 - 3)) * 0.5235987755982988d;
                canvas2.drawText(strValueOf, (int) ((((Math.cos(d13) * ((double) this.f1216b)) / 1.2d) + ((double) this.f1218d)) - ((double) (this.f1222h.width() / 2))), (int) (((Math.sin(d13) * ((double) this.f1216b)) / 1.2d) + ((double) this.f1219e) + ((double) (this.f1222h.height() / 2))), this.f1221g);
            }
        }
        if (this.f1226l) {
            postInvalidateDelayed(500L);
        } else {
            postInvalidateDelayed(5000L);
        }
    }
}

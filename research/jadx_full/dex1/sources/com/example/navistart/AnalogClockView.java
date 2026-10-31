package com.example.navistart;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import e0.l2;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnalogClockView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f636b;
    public double c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Paint f638g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Rect f639h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f640i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f641j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TypedArray f642k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f643l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f644m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f645n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f646o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f647p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f648q;
    public int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f649s;
    public int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f650u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f651v;
    public int w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f652x;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnalogClockView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f642k = context.getTheme().obtainStyledAttributes(attributeSet, l2.f1884a, 0, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9, Paint$Style paint$Style, int i10) {
        this.f638g.reset();
        this.f638g.setColor(i9);
        this.f638g.setStyle(paint$Style);
        this.f638g.setStrokeWidth(i10);
        this.f638g.setAntiAlias(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2;
        super.onDraw(canvas);
        if (!this.f637f) {
            int height = getHeight();
            int width = getWidth();
            this.d = width / 2;
            this.e = height / 2;
            int iMin = Math.min(height, width);
            this.f636b = (iMin / 2) - 50;
            this.c = -1.4660766124725342d;
            this.f638g = new Paint();
            this.f639h = new Rect();
            int i9 = this.f636b;
            this.f640i = i9 - (i9 / 2);
            this.f641j = i9 - (i9 / 4);
            TypedArray typedArray = this.f642k;
            this.f643l = typedArray.getBoolean(11, false);
            this.f644m = typedArray.getBoolean(10, false);
            this.f645n = typedArray.getColor(7, ViewCompat.MEASURED_STATE_MASK);
            this.f646o = typedArray.getColor(8, SupportMenu.CATEGORY_MASK);
            this.f647p = typedArray.getColor(5, ViewCompat.MEASURED_STATE_MASK);
            this.f648q = typedArray.getColor(3, ViewCompat.MEASURED_STATE_MASK);
            this.r = typedArray.getColor(0, ViewCompat.MEASURED_STATE_MASK);
            this.f649s = typedArray.getColor(2, -1);
            this.t = typedArray.getInt(1, 8);
            this.f650u = typedArray.getInt(9, 7);
            this.f651v = typedArray.getInt(6, 9);
            this.w = typedArray.getInt(4, 12);
            this.f652x = iMin / 12;
            typedArray.recycle();
            this.f637f = true;
        }
        a(this.f649s, Paint$Style.FILL, this.t);
        canvas.drawCircle(this.d, this.e, this.f636b, this.f638g);
        int i10 = this.r;
        Paint$Style paint$Style = Paint$Style.STROKE;
        a(i10, paint$Style, this.t);
        canvas.drawCircle(this.d, this.e, this.f636b, this.f638g);
        Calendar calendar = Calendar.getInstance();
        float f8 = calendar.get(11);
        if (f8 > 12.0f) {
            f8 -= 12.0f;
        }
        float f9 = calendar.get(12);
        float f10 = calendar.get(13);
        double d = f9;
        a(this.f648q, paint$Style, this.w);
        double d9 = (((((d / 60.0d) + ((double) f8)) * 5.0d) * 3.141592653589793d) / 30.0d) - 1.5707963267948966d;
        this.c = d9;
        int i11 = this.d;
        canvas.drawLine(i11, this.e, (float) ((Math.cos(d9) * ((double) this.f640i)) + ((double) i11)), (float) ((Math.sin(this.c) * ((double) this.f640i)) + ((double) this.e)), this.f638g);
        a(this.f647p, paint$Style, this.f651v);
        double d10 = ((d * 3.141592653589793d) / 30.0d) - 1.5707963267948966d;
        this.c = d10;
        int i12 = this.d;
        canvas.drawLine(i12, this.e, (float) ((Math.cos(d10) * ((double) this.f641j)) + ((double) i12)), (float) ((Math.sin(this.c) * ((double) this.f640i)) + ((double) this.e)), this.f638g);
        if (this.f643l) {
            this.f638g.reset();
            a(this.f646o, paint$Style, this.f650u);
            double d11 = ((((double) f10) * 3.141592653589793d) / 30.0d) - 1.5707963267948966d;
            this.c = d11;
            int i13 = this.d;
            canvas2 = canvas;
            canvas2.drawLine(i13, this.e, (float) ((Math.cos(d11) * ((double) this.f641j)) + ((double) i13)), (float) ((Math.sin(this.c) * ((double) this.f640i)) + ((double) this.e)), this.f638g);
        } else {
            canvas2 = canvas;
        }
        if (this.f644m) {
            this.f638g.reset();
            this.f638g.setColor(this.f645n);
            this.f638g.setTextSize(this.f652x);
            for (int i14 = 1; i14 <= 12; i14++) {
                String strValueOf = String.valueOf(i14);
                this.f638g.getTextBounds(strValueOf, 0, strValueOf.length(), this.f639h);
                double d12 = ((double) (i14 - 3)) * 0.5235987755982988d;
                canvas2.drawText(strValueOf, (int) ((((Math.cos(d12) * ((double) this.f636b)) / 1.2d) + ((double) this.d)) - ((double) (this.f639h.width() / 2))), (int) (((Math.sin(d12) * ((double) this.f636b)) / 1.2d) + ((double) this.e) + ((double) (this.f639h.height() / 2))), this.f638g);
            }
        }
        if (this.f643l) {
            postInvalidateDelayed(500L);
        } else {
            postInvalidateDelayed(5000L);
        }
    }
}

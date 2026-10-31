package o0;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint$Cap;
import android.graphics.Paint$Join;
import android.graphics.Paint$Style;
import android.graphics.RectF;
import android.view.View;
import e4.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends View {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f4019p = Color.rgb(47, 128, 237);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f4020q = Color.rgb(30, 41, 59);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f4021b;
    public final Paint c;
    public final Paint d;
    public final Paint e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RectF f4022f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RectF f4023g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f4024h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ValueAnimator f4025i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f4026j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f4027k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f4028l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f4029m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f4030n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4031o;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(Context context, f fVar) {
        super(context);
        Paint paint = new Paint(1);
        this.c = paint;
        Paint paint2 = new Paint(1);
        this.d = paint2;
        Paint paint3 = new Paint(1);
        this.e = paint3;
        this.f4022f = new RectF();
        this.f4023g = new RectF();
        this.f4021b = fVar;
        float f8 = context.getResources().getDisplayMetrics().density;
        this.f4024h = f8;
        paint.setStyle(Paint$Style.FILL);
        Paint$Style paint$Style = Paint$Style.STROKE;
        paint2.setStyle(paint$Style);
        paint2.setStrokeWidth(1.5f * f8);
        paint3.setStyle(paint$Style);
        paint3.setStrokeWidth(2.3f * f8);
        paint3.setStrokeCap(Paint$Cap.ROUND);
        paint3.setStrokeJoin(Paint$Join.ROUND);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float a(float f8, float f9, float f10) {
        return f10 < f9 ? f9 : Math.max(f9, Math.min(f10, f8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(int i9, int i10) {
        return Color.argb(Math.max(0, Math.min(255, i10)), Color.red(i9), Color.green(i9), Color.blue(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        this.f4031o = false;
        ValueAnimator valueAnimator = this.f4025i;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f4030n, 0.0f);
        this.f4025i = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(180L);
        this.f4025i.addUpdateListener(new h(2, this));
        this.f4025i.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(float f8, float f9, float f10, float f11, float f12) {
        ValueAnimator valueAnimator = this.f4025i;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f4025i = null;
        }
        this.f4026j = a(f8, 0.0f, Math.max(0, getWidth()));
        this.f4027k = a(f9, 0.0f, Math.max(0, getHeight()));
        this.f4028l = f10;
        this.f4029m = f11;
        this.f4031o = true;
        this.f4030n = Math.max(0.18f, f12);
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.f4025i;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f4025i = null;
        }
        super.onDetachedFromWindow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f8;
        float f9;
        int i9;
        float f10;
        float f11;
        super.onDraw(canvas);
        if (this.f4030n <= 0.01f) {
            return;
        }
        f fVar = f.f4035f;
        f fVar2 = this.f4021b;
        boolean z8 = fVar2 == fVar || fVar2 == f.f4036g;
        float width = getWidth();
        float height = getHeight();
        float f12 = this.f4024h;
        float f13 = z8 ? 3.0f * f12 : 0.0f;
        float fMax = Math.max(8.0f * f12, Math.min(z8 ? height : width, 18.0f * f12));
        float fA = a(this.f4026j, 0.0f, width);
        float fA2 = a(this.f4027k, 0.0f, height);
        float f14 = this.f4031o ? 1.0f : this.f4030n;
        Paint paint = this.d;
        RectF rectF = this.f4023g;
        int i10 = f4019p;
        Paint paint2 = this.c;
        boolean z9 = z8;
        RectF rectF2 = this.f4022f;
        if (z9) {
            float f15 = fMax / 2.0f;
            float f16 = (height - f13) - f15;
            float f17 = f16 - f15;
            f8 = f12;
            float f18 = width - f13;
            f9 = f14;
            float f19 = f16 + f15;
            rectF2.set(f13, f17, f18, f19);
            paint2.setColor(b(i10, (int) (f9 * 34.0f)));
            canvas.drawRoundRect(rectF2, fMax, fMax, paint2);
            float f20 = this.f4028l;
            float f21 = this.f4029m;
            float f22 = f13;
            float fSqrt = (float) Math.sqrt((f21 * f21) + (f20 * f20));
            float f23 = 72.0f * f8;
            float fA3 = a((fSqrt * 0.16f) + f23, f23, Math.max(f23, width - (f22 * 2.0f))) / 2.0f;
            float fA4 = a(fA, f22 + fA3, f18 - fA3);
            rectF.set(fA4 - fA3, f17, fA4 + fA3, f19);
            paint2.setColor(b(i10, (int) (((this.f4030n * 90.0f) + 70.0f) * f9)));
            canvas.drawRoundRect(rectF, fMax, fMax, paint2);
            paint.setColor(b(i10, (int) (f9 * 120.0f)));
            canvas.drawRoundRect(rectF, fMax, fMax, paint);
            paint2.setColor(b(-1, (int) (f9 * 160.0f)));
            canvas.drawCircle(a(fA, f22 + f15, f18 - f15), f16, fMax * 0.28f, paint2);
            i9 = -1;
        } else {
            f8 = f12;
            float f24 = f13;
            f9 = f14;
            float f25 = (fVar2 == f.f4034b || fVar2 == f.c) ? (fMax / 2.0f) + f24 : (width - f24) - (fMax / 2.0f);
            float f26 = fMax / 2.0f;
            float f27 = f25 - f26;
            float f28 = f25 + f26;
            float f29 = height - f24;
            rectF2.set(f27, f24, f28, f29);
            paint2.setColor(b(i10, (int) (f9 * 34.0f)));
            canvas.drawRoundRect(rectF2, fMax, fMax, paint2);
            float f30 = this.f4028l;
            float f31 = this.f4029m;
            float f32 = f25;
            float f33 = 72.0f * f8;
            float fA5 = a((((float) Math.sqrt((f31 * f31) + (f30 * f30))) * 0.16f) + f33, f33, Math.max(f33, height - (f24 * 2.0f))) / 2.0f;
            float fA6 = a(fA2, f24 + fA5, f29 - fA5);
            rectF.set(f27, fA6 - fA5, f28, fA6 + fA5);
            paint2.setColor(b(i10, (int) (((this.f4030n * 90.0f) + 70.0f) * f9)));
            canvas.drawRoundRect(rectF, fMax, fMax, paint2);
            paint.setColor(b(i10, (int) (f9 * 120.0f)));
            canvas.drawRoundRect(rectF, fMax, fMax, paint);
            i9 = -1;
            paint2.setColor(b(-1, (int) (f9 * 160.0f)));
            canvas.drawCircle(f32, a(fA2, f24 + f26, f29 - f26), fMax * 0.28f, paint2);
        }
        float f34 = this.f4028l;
        float f35 = this.f4029m;
        float fA7 = a(((float) Math.sqrt((f35 * f35) + (f34 * f34))) * 0.26f, 12.0f * f8, 34.0f * f8);
        float f36 = this.f4028l;
        float f37 = this.f4029m;
        float fSqrt2 = (float) Math.sqrt((f37 * f37) + (f36 * f36));
        if (fSqrt2 < 4.0f * f8) {
            if (z9) {
                f11 = 0.0f;
            } else {
                if (fVar2 == f.f4034b || fVar2 == f.c) {
                    i9 = 1;
                }
                f11 = i9;
            }
            f36 = f11;
            f37 = z9 ? -1.0f : 0.0f;
            f10 = 1.0f;
        } else {
            f10 = fSqrt2;
        }
        float f38 = f36 / f10;
        float f39 = f37 / f10;
        float f40 = f38 * fA7;
        float fA8 = a(fA - (f40 * 0.35f), 0.0f, getWidth());
        float f41 = fA7 * f39;
        float fA9 = a(fA2 - (0.35f * f41), 0.0f, getHeight());
        float fA10 = a(fA + f40, 0.0f, getWidth());
        float fA11 = a(fA2 + f41, 0.0f, getHeight());
        int iB = b(f4020q, (int) (f9 * 170.0f));
        Paint paint3 = this.e;
        paint3.setColor(iB);
        canvas.drawLine(fA8, fA9, fA10, fA11, paint3);
        float f42 = 6.0f * f8;
        float f43 = f38 * f42;
        float f44 = fA10 - f43;
        float f45 = f39 * f42;
        float f46 = f45 * 0.65f;
        float f47 = fA11 - f45;
        float f48 = f43 * 0.65f;
        canvas.drawLine(fA10, fA11, a(f44 - f46, 0.0f, getWidth()), a(f47 + f48, 0.0f, getHeight()), paint3);
        canvas.drawLine(fA10, fA11, a(f44 + f46, 0.0f, getWidth()), a(f47 - f48, 0.0f, getHeight()), paint3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        if (this.f4026j == 0.0f && this.f4027k == 0.0f) {
            this.f4026j = i9 / 2.0f;
            this.f4027k = i10 / 2.0f;
        }
    }
}

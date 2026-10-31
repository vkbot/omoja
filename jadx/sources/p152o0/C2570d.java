package p152o0;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import org.apache.commons.net.telnet.TelnetCommand;
import p051e4.C1475h;

/* JADX INFO: renamed from: o0.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2570d extends View {

    /* JADX INFO: renamed from: p */
    public static final int f7114p = Color.rgb(47, 128, TelnetCommand.SUSP);

    /* JADX INFO: renamed from: q */
    public static final int f7115q = Color.rgb(30, 41, 59);

    /* JADX INFO: renamed from: b */
    public final EnumC2572f f7116b;

    /* JADX INFO: renamed from: c */
    public final Paint f7117c;

    /* JADX INFO: renamed from: d */
    public final Paint f7118d;

    /* JADX INFO: renamed from: e */
    public final Paint f7119e;

    /* JADX INFO: renamed from: f */
    public final RectF f7120f;

    /* JADX INFO: renamed from: g */
    public final RectF f7121g;

    /* JADX INFO: renamed from: h */
    public final float f7122h;

    /* JADX INFO: renamed from: i */
    public ValueAnimator f7123i;

    /* JADX INFO: renamed from: j */
    public float f7124j;

    /* JADX INFO: renamed from: k */
    public float f7125k;

    /* JADX INFO: renamed from: l */
    public float f7126l;

    /* JADX INFO: renamed from: m */
    public float f7127m;

    /* JADX INFO: renamed from: n */
    public float f7128n;

    /* JADX INFO: renamed from: o */
    public boolean f7129o;

    public C2570d(Context context, EnumC2572f enumC2572f) {
        super(context);
        Paint paint = new Paint(1);
        this.f7117c = paint;
        Paint paint2 = new Paint(1);
        this.f7118d = paint2;
        Paint paint3 = new Paint(1);
        this.f7119e = paint3;
        this.f7120f = new RectF();
        this.f7121g = new RectF();
        this.f7116b = enumC2572f;
        float f8 = context.getResources().getDisplayMetrics().density;
        this.f7122h = f8;
        paint.setStyle(Paint.Style.FILL);
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        paint2.setStrokeWidth(1.5f * f8);
        paint3.setStyle(style);
        paint3.setStrokeWidth(2.3f * f8);
        paint3.setStrokeCap(Paint.Cap.ROUND);
        paint3.setStrokeJoin(Paint.Join.ROUND);
    }

    /* JADX INFO: renamed from: a */
    public static float m3999a(float f8, float f10, float f11) {
        return f11 < f10 ? f10 : Math.max(f10, Math.min(f11, f8));
    }

    /* JADX INFO: renamed from: b */
    public static int m4000b(int i10, int i11) {
        return Color.argb(Math.max(0, Math.min(255, i11)), Color.red(i10), Color.green(i10), Color.blue(i10));
    }

    /* JADX INFO: renamed from: c */
    public final void m4001c() {
        this.f7129o = false;
        ValueAnimator valueAnimator = this.f7123i;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f7128n, 0.0f);
        this.f7123i = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(180L);
        this.f7123i.addUpdateListener(new C1475h(2, this));
        this.f7123i.start();
    }

    /* JADX INFO: renamed from: d */
    public final void m4002d(float f8, float f10, float f11, float f12, float f13) {
        ValueAnimator valueAnimator = this.f7123i;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f7123i = null;
        }
        this.f7124j = m3999a(f8, 0.0f, Math.max(0, getWidth()));
        this.f7125k = m3999a(f10, 0.0f, Math.max(0, getHeight()));
        this.f7126l = f11;
        this.f7127m = f12;
        this.f7129o = true;
        this.f7128n = Math.max(0.18f, f13);
        invalidate();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.f7123i;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f7123i = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f8;
        float f10;
        int i10;
        float f11;
        float f12;
        super.onDraw(canvas);
        if (this.f7128n <= 0.01f) {
            return;
        }
        EnumC2572f enumC2572f = EnumC2572f.f7136f;
        EnumC2572f enumC2572f2 = this.f7116b;
        boolean z9 = enumC2572f2 == enumC2572f || enumC2572f2 == EnumC2572f.f7137g;
        float width = getWidth();
        float height = getHeight();
        float f13 = this.f7122h;
        float f14 = z9 ? 3.0f * f13 : 0.0f;
        float fMax = Math.max(8.0f * f13, Math.min(z9 ? height : width, 18.0f * f13));
        float fM3999a = m3999a(this.f7124j, 0.0f, width);
        float fM3999a2 = m3999a(this.f7125k, 0.0f, height);
        float f15 = this.f7129o ? 1.0f : this.f7128n;
        Paint paint = this.f7118d;
        RectF rectF = this.f7121g;
        int i11 = f7114p;
        Paint paint2 = this.f7117c;
        boolean z10 = z9;
        RectF rectF2 = this.f7120f;
        if (z10) {
            float f16 = fMax / 2.0f;
            float f17 = (height - f14) - f16;
            float f18 = f17 - f16;
            f8 = f13;
            float f19 = width - f14;
            f10 = f15;
            float f20 = f17 + f16;
            rectF2.set(f14, f18, f19, f20);
            paint2.setColor(m4000b(i11, (int) (f10 * 34.0f)));
            canvas.drawRoundRect(rectF2, fMax, fMax, paint2);
            float f21 = this.f7126l;
            float f22 = this.f7127m;
            float f23 = f14;
            float fSqrt = (float) Math.sqrt((f22 * f22) + (f21 * f21));
            float f24 = 72.0f * f8;
            float fM3999a3 = m3999a((fSqrt * 0.16f) + f24, f24, Math.max(f24, width - (f23 * 2.0f))) / 2.0f;
            float fM3999a4 = m3999a(fM3999a, f23 + fM3999a3, f19 - fM3999a3);
            rectF.set(fM3999a4 - fM3999a3, f18, fM3999a4 + fM3999a3, f20);
            paint2.setColor(m4000b(i11, (int) (((this.f7128n * 90.0f) + 70.0f) * f10)));
            canvas.drawRoundRect(rectF, fMax, fMax, paint2);
            paint.setColor(m4000b(i11, (int) (f10 * 120.0f)));
            canvas.drawRoundRect(rectF, fMax, fMax, paint);
            paint2.setColor(m4000b(-1, (int) (f10 * 160.0f)));
            canvas.drawCircle(m3999a(fM3999a, f23 + f16, f19 - f16), f17, fMax * 0.28f, paint2);
            i10 = -1;
        } else {
            f8 = f13;
            float f25 = f14;
            f10 = f15;
            float f26 = (enumC2572f2 == EnumC2572f.f7132b || enumC2572f2 == EnumC2572f.f7133c) ? (fMax / 2.0f) + f25 : (width - f25) - (fMax / 2.0f);
            float f27 = fMax / 2.0f;
            float f28 = f26 - f27;
            float f29 = f26 + f27;
            float f30 = height - f25;
            rectF2.set(f28, f25, f29, f30);
            paint2.setColor(m4000b(i11, (int) (f10 * 34.0f)));
            canvas.drawRoundRect(rectF2, fMax, fMax, paint2);
            float f31 = this.f7126l;
            float f32 = this.f7127m;
            float f33 = f26;
            float f34 = 72.0f * f8;
            float fM3999a5 = m3999a((((float) Math.sqrt((f32 * f32) + (f31 * f31))) * 0.16f) + f34, f34, Math.max(f34, height - (f25 * 2.0f))) / 2.0f;
            float fM3999a6 = m3999a(fM3999a2, f25 + fM3999a5, f30 - fM3999a5);
            rectF.set(f28, fM3999a6 - fM3999a5, f29, fM3999a6 + fM3999a5);
            paint2.setColor(m4000b(i11, (int) (((this.f7128n * 90.0f) + 70.0f) * f10)));
            canvas.drawRoundRect(rectF, fMax, fMax, paint2);
            paint.setColor(m4000b(i11, (int) (f10 * 120.0f)));
            canvas.drawRoundRect(rectF, fMax, fMax, paint);
            i10 = -1;
            paint2.setColor(m4000b(-1, (int) (f10 * 160.0f)));
            canvas.drawCircle(f33, m3999a(fM3999a2, f25 + f27, f30 - f27), fMax * 0.28f, paint2);
        }
        float f35 = this.f7126l;
        float f36 = this.f7127m;
        float fM3999a7 = m3999a(((float) Math.sqrt((f36 * f36) + (f35 * f35))) * 0.26f, 12.0f * f8, 34.0f * f8);
        float f37 = this.f7126l;
        float f38 = this.f7127m;
        float fSqrt2 = (float) Math.sqrt((f38 * f38) + (f37 * f37));
        if (fSqrt2 < 4.0f * f8) {
            if (z10) {
                f12 = 0.0f;
            } else {
                if (enumC2572f2 == EnumC2572f.f7132b || enumC2572f2 == EnumC2572f.f7133c) {
                    i10 = 1;
                }
                f12 = i10;
            }
            f37 = f12;
            f38 = z10 ? -1.0f : 0.0f;
            f11 = 1.0f;
        } else {
            f11 = fSqrt2;
        }
        float f39 = f37 / f11;
        float f40 = f38 / f11;
        float f41 = f39 * fM3999a7;
        float fM3999a8 = m3999a(fM3999a - (f41 * 0.35f), 0.0f, getWidth());
        float f42 = fM3999a7 * f40;
        float fM3999a9 = m3999a(fM3999a2 - (0.35f * f42), 0.0f, getHeight());
        float fM3999a10 = m3999a(fM3999a + f41, 0.0f, getWidth());
        float fM3999a11 = m3999a(fM3999a2 + f42, 0.0f, getHeight());
        int iM4000b = m4000b(f7115q, (int) (f10 * 170.0f));
        Paint paint3 = this.f7119e;
        paint3.setColor(iM4000b);
        canvas.drawLine(fM3999a8, fM3999a9, fM3999a10, fM3999a11, paint3);
        float f43 = 6.0f * f8;
        float f44 = f39 * f43;
        float f45 = fM3999a10 - f44;
        float f46 = f40 * f43;
        float f47 = f46 * 0.65f;
        float f48 = fM3999a11 - f46;
        float f49 = f44 * 0.65f;
        canvas.drawLine(fM3999a10, fM3999a11, m3999a(f45 - f47, 0.0f, getWidth()), m3999a(f48 + f49, 0.0f, getHeight()), paint3);
        canvas.drawLine(fM3999a10, fM3999a11, m3999a(f45 + f47, 0.0f, getWidth()), m3999a(f48 - f49, 0.0f, getHeight()), paint3);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.f7124j == 0.0f && this.f7125k == 0.0f) {
            this.f7124j = i10 / 2.0f;
            this.f7125k = i11 / 2.0f;
        }
    }
}

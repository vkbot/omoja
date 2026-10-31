package com.google.android.material.timepicker;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Nullable;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.R;
import java.util.ArrayList;
import p004a3.AbstractC0007a;
import p018b3.AbstractC0884a;
import p019b4.C0890a;
import p192s3.AbstractC3203q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
class ClockHandView extends View {

    /* JADX INFO: renamed from: o */
    public static final /* synthetic */ int f2581o = 0;

    /* JADX INFO: renamed from: b */
    public final ValueAnimator f2582b;

    /* JADX INFO: renamed from: c */
    public boolean f2583c;

    /* JADX INFO: renamed from: d */
    public final ArrayList f2584d;

    /* JADX INFO: renamed from: e */
    public final int f2585e;

    /* JADX INFO: renamed from: f */
    public final float f2586f;

    /* JADX INFO: renamed from: g */
    public final Paint f2587g;

    /* JADX INFO: renamed from: h */
    public final RectF f2588h;

    /* JADX INFO: renamed from: i */
    public final int f2589i;

    /* JADX INFO: renamed from: j */
    public float f2590j;

    /* JADX INFO: renamed from: k */
    public boolean f2591k;

    /* JADX INFO: renamed from: l */
    public double f2592l;

    /* JADX INFO: renamed from: m */
    public int f2593m;

    /* JADX INFO: renamed from: n */
    public int f2594n;

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f2582b = valueAnimator;
        this.f2584d = new ArrayList();
        Paint paint = new Paint();
        this.f2587g = paint;
        this.f2588h = new RectF();
        this.f2594n = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0007a.f29h, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        AbstractC1031d.m1287q(context, R.attr.motionDurationLong2, 200);
        AbstractC1031d.m1288r(context, R.attr.motionEasingEmphasizedInterpolator, AbstractC0884a.f662b);
        this.f2593m = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f2585e = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        Resources resources = getResources();
        this.f2589i = resources.getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f2586f = resources.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        m1875a(0.0f);
        ViewConfiguration.get(context).getScaledTouchSlop();
        setImportantForAccessibility(2);
        typedArrayObtainStyledAttributes.recycle();
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.d
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int i10 = ClockHandView.f2581o;
                this.f2600a.m1876b(((Float) valueAnimator2.getAnimatedValue()).floatValue());
            }
        });
        valueAnimator.addListener(new C0890a());
    }

    /* JADX INFO: renamed from: a */
    public final void m1875a(float f8) {
        this.f2582b.cancel();
        m1876b(f8);
    }

    /* JADX INFO: renamed from: b */
    public final void m1876b(float f8) {
        float f10 = f8 % 360.0f;
        this.f2590j = f10;
        this.f2592l = Math.toRadians(f10 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i10 = this.f2594n;
        int iRound = this.f2593m;
        if (i10 == 2) {
            iRound = Math.round(iRound * 0.66f);
        }
        float f11 = width;
        float f12 = iRound;
        float fCos = (((float) Math.cos(this.f2592l)) * f12) + f11;
        float fSin = (f12 * ((float) Math.sin(this.f2592l))) + height;
        float f13 = this.f2585e;
        this.f2588h.set(fCos - f13, fSin - f13, fCos + f13, fSin + f13);
        ArrayList arrayList = this.f2584d;
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            ClockFaceView clockFaceView = (ClockFaceView) ((InterfaceC1121e) obj);
            if (Math.abs(clockFaceView.f2579r - f10) > 0.001f) {
                clockFaceView.f2579r = f10;
                clockFaceView.m1874b();
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i10 = this.f2594n;
        int iRound = this.f2593m;
        if (i10 == 2) {
            iRound = Math.round(iRound * 0.66f);
        }
        float f8 = width;
        float f10 = iRound;
        float fCos = (((float) Math.cos(this.f2592l)) * f10) + f8;
        float f11 = height;
        float fSin = (f10 * ((float) Math.sin(this.f2592l))) + f11;
        Paint paint = this.f2587g;
        paint.setStrokeWidth(0.0f);
        int i11 = this.f2585e;
        canvas.drawCircle(fCos, fSin, i11, paint);
        double dSin = Math.sin(this.f2592l);
        double d = iRound - i11;
        paint.setStrokeWidth(this.f2589i);
        canvas.drawLine(f8, f11, width + ((int) (Math.cos(this.f2592l) * d)), height + ((int) (d * dSin)), paint);
        canvas.drawCircle(f8, f11, this.f2586f, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        super.onLayout(z9, i10, i11, i12, i13);
        if (this.f2582b.isRunning()) {
            return;
        }
        m1875a(this.f2590j);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z9;
        boolean z10;
        int actionMasked = motionEvent.getActionMasked();
        float x9 = motionEvent.getX();
        float y9 = motionEvent.getY();
        boolean z11 = false;
        if (actionMasked == 0) {
            this.f2591k = false;
            z9 = true;
            z10 = false;
        } else if (actionMasked == 1 || actionMasked == 2) {
            z10 = this.f2591k;
            if (this.f2583c) {
                this.f2594n = ((float) Math.hypot((double) (x9 - ((float) (getWidth() / 2))), (double) (y9 - ((float) (getHeight() / 2))))) <= ((float) Math.round(((float) this.f2593m) * 0.66f)) + AbstractC3203q.m5138a(12, getContext()) ? 2 : 1;
            }
            z9 = false;
        } else {
            z10 = false;
            z9 = false;
        }
        boolean z12 = this.f2591k;
        int degrees = (int) Math.toDegrees(Math.atan2(y9 - (getHeight() / 2), x9 - (getWidth() / 2)));
        int i10 = degrees + 90;
        if (i10 < 0) {
            i10 = degrees + 450;
        }
        float f8 = i10;
        boolean z13 = this.f2590j != f8;
        if (z9 && z13) {
            z11 = true;
        } else if (z13 || z10) {
            m1875a(f8);
            z11 = true;
        }
        this.f2591k = z12 | z11;
        return true;
    }
}

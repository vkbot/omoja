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
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import java.util.ArrayList;
import s3.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ClockHandView extends View {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ int f1439o = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ValueAnimator f1440b;
    public boolean c;
    public final ArrayList d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f1441f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Paint f1442g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final RectF f1443h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f1444i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f1445j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1446k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public double f1447l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1448m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1449n;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 2130903951);
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f1440b = valueAnimator;
        this.d = new ArrayList();
        Paint paint = new Paint();
        this.f1442g = paint;
        this.f1443h = new RectF();
        this.f1449n = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a3.a.f11h, 2130903951, 2132018420);
        com.bumptech.glide.d.q(context, 2130904052, ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        com.bumptech.glide.d.r(context, 2130904068, b3.a.f306b);
        this.f1448m = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        Resources resources = getResources();
        this.f1444i = resources.getDimensionPixelSize(2131100436);
        this.f1441f = resources.getDimensionPixelSize(2131100434);
        int color = typedArrayObtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        a(0.0f);
        ViewConfiguration.get(context).getScaledTouchSlop();
        setImportantForAccessibility(2);
        typedArrayObtainStyledAttributes.recycle();
        valueAnimator.addUpdateListener(new d(this));
        valueAnimator.addListener(new b4.a());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(float f8) {
        this.f1440b.cancel();
        b(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(float f8) {
        float f9 = f8 % 360.0f;
        this.f1445j = f9;
        this.f1447l = Math.toRadians(f9 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i9 = this.f1449n;
        int iRound = this.f1448m;
        if (i9 == 2) {
            iRound = Math.round(iRound * 0.66f);
        }
        float f10 = width;
        float f11 = iRound;
        float fCos = (((float) Math.cos(this.f1447l)) * f11) + f10;
        float fSin = (f11 * ((float) Math.sin(this.f1447l))) + height;
        float f12 = this.e;
        this.f1443h.set(fCos - f12, fSin - f12, fCos + f12, fSin + f12);
        ArrayList arrayList = this.d;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ClockFaceView clockFaceView = (ClockFaceView) ((e) obj);
            if (Math.abs(clockFaceView.r - f9) > 0.001f) {
                clockFaceView.r = f9;
                clockFaceView.b();
            }
        }
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i9 = this.f1449n;
        int iRound = this.f1448m;
        if (i9 == 2) {
            iRound = Math.round(iRound * 0.66f);
        }
        float f8 = width;
        float f9 = iRound;
        float fCos = (((float) Math.cos(this.f1447l)) * f9) + f8;
        float f10 = height;
        float fSin = (f9 * ((float) Math.sin(this.f1447l))) + f10;
        Paint paint = this.f1442g;
        paint.setStrokeWidth(0.0f);
        int i10 = this.e;
        canvas.drawCircle(fCos, fSin, i10, paint);
        double dSin = Math.sin(this.f1447l);
        double d = iRound - i10;
        paint.setStrokeWidth(this.f1444i);
        canvas.drawLine(f8, f10, width + ((int) (Math.cos(this.f1447l) * d)), height + ((int) (d * dSin)), paint);
        canvas.drawCircle(f8, f10, this.f1441f, paint);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        super.onLayout(z8, i9, i10, i11, i12);
        if (this.f1440b.isRunning()) {
            return;
        }
        a(this.f1445j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z8;
        boolean z9;
        int actionMasked = motionEvent.getActionMasked();
        float x8 = motionEvent.getX();
        float y8 = motionEvent.getY();
        boolean z10 = false;
        if (actionMasked == 0) {
            this.f1446k = false;
            z8 = true;
            z9 = false;
        } else if (actionMasked == 1 || actionMasked == 2) {
            z9 = this.f1446k;
            if (this.c) {
                this.f1449n = ((float) Math.hypot((double) (x8 - ((float) (getWidth() / 2))), (double) (y8 - ((float) (getHeight() / 2))))) <= ((float) Math.round(((float) this.f1448m) * 0.66f)) + q.a(12, getContext()) ? 2 : 1;
            }
            z8 = false;
        } else {
            z9 = false;
            z8 = false;
        }
        boolean z11 = this.f1446k;
        int degrees = (int) Math.toDegrees(Math.atan2(y8 - (getHeight() / 2), x8 - (getWidth() / 2)));
        int i9 = degrees + 90;
        if (i9 < 0) {
            i9 = degrees + 450;
        }
        float f8 = i9;
        boolean z12 = this.f1445j != f8;
        if (z8 && z12) {
            z10 = true;
        } else if (z12 || z9) {
            a(f8);
            z10 = true;
        }
        this.f1446k = z11 | z10;
        return true;
    }
}

package com.github.clans.fab;

import android.R$attr;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import com.google.android.material.datepicker.m;
import e3.d;
import j1.i;
import z1.a;
import z1.b;
import z1.c;
import z1.e;
import z1.k;
import z1.l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FloatingActionButton extends ImageButton {
    public static final PorterDuffXfermode W = new PorterDuffXfermode(PorterDuff$Mode.CLEAR);
    public float A;
    public boolean B;
    public RectF C;
    public final Paint D;
    public final Paint E;
    public boolean F;
    public long G;
    public float H;
    public long I;
    public double J;
    public boolean K;
    public final int L;
    public float M;
    public float N;
    public float O;
    public int P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public int T;
    public boolean U;
    public final GestureDetector V;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1019b;
    public boolean c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1020f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1021g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1022h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1023i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1024j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1025k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Drawable f1026l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f1027m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Animation f1028n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Animation f1029o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f1030p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public View$OnClickListener f1031q;
    public RippleDrawable r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1032s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1033u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1034v;
    public int w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1035x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f1036y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f1037z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.e = d.e(getContext(), 4.0f);
        this.f1020f = d.e(getContext(), 1.0f);
        this.f1021g = d.e(getContext(), 3.0f);
        this.f1027m = d.e(getContext(), 24.0f);
        this.f1034v = d.e(getContext(), 6.0f);
        this.f1037z = -1.0f;
        this.A = -1.0f;
        this.C = new RectF();
        this.D = new Paint(1);
        this.E = new Paint(1);
        this.H = 195.0f;
        this.I = 0L;
        this.K = true;
        this.L = 16;
        this.T = 100;
        this.V = new GestureDetector(getContext(), new b(0, this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.f6189a, 0, 0);
        this.f1022h = typedArrayObtainStyledAttributes.getColor(9, -2473162);
        this.f1023i = typedArrayObtainStyledAttributes.getColor(10, -1617853);
        this.f1024j = typedArrayObtainStyledAttributes.getColor(8, -5592406);
        this.f1025k = typedArrayObtainStyledAttributes.getColor(11, -1711276033);
        this.c = typedArrayObtainStyledAttributes.getBoolean(26, true);
        this.d = typedArrayObtainStyledAttributes.getColor(21, 1711276032);
        this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(22, this.e);
        this.f1020f = typedArrayObtainStyledAttributes.getDimensionPixelSize(23, this.f1020f);
        this.f1021g = typedArrayObtainStyledAttributes.getDimensionPixelSize(24, this.f1021g);
        this.f1019b = typedArrayObtainStyledAttributes.getInt(27, 0);
        this.f1030p = typedArrayObtainStyledAttributes.getString(14);
        this.R = typedArrayObtainStyledAttributes.getBoolean(18, false);
        this.w = typedArrayObtainStyledAttributes.getColor(17, -16738680);
        this.f1035x = typedArrayObtainStyledAttributes.getColor(16, 1291845632);
        this.T = typedArrayObtainStyledAttributes.getInt(19, this.T);
        this.U = typedArrayObtainStyledAttributes.getBoolean(20, true);
        if (typedArrayObtainStyledAttributes.hasValue(15)) {
            this.P = typedArrayObtainStyledAttributes.getInt(15, 0);
            this.S = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(12)) {
            float dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(12, 0);
            if (isInEditMode()) {
                setElevation(dimensionPixelOffset);
            } else {
                setElevationCompat(dimensionPixelOffset);
            }
        }
        this.f1028n = AnimationUtils.loadAnimation(getContext(), typedArrayObtainStyledAttributes.getResourceId(25, 2130771997));
        this.f1029o = AnimationUtils.loadAnimation(getContext(), typedArrayObtainStyledAttributes.getResourceId(13, 2130771996));
        typedArrayObtainStyledAttributes.recycle();
        if (isInEditMode()) {
            if (this.R) {
                setIndeterminate(true);
            } else if (this.S) {
                j();
                k(this.P, false);
            }
        }
        setClickable(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int a(FloatingActionButton floatingActionButton) {
        return floatingActionButton.getCircleSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getCircleSize() {
        return getResources().getDimensionPixelSize(this.f1019b == 0 ? 2131099797 : 2131099796);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getShadowX() {
        return Math.abs(this.f1020f) + this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getShadowY() {
        return Math.abs(this.f1021g) + this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setBackgroundCompat(Drawable drawable) {
        setBackground(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b() {
        int circleSize = getCircleSize() + (f() ? getShadowY() * 2 : 0);
        return this.f1033u ? (this.f1034v * 2) + circleSize : circleSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c() {
        int circleSize = getCircleSize() + (f() ? getShadowX() * 2 : 0);
        return this.f1033u ? (this.f1034v * 2) + circleSize : circleSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final c d(int i9) {
        c cVar = new c(this, new OvalShape());
        cVar.getPaint().setColor(i9);
        return cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final RippleDrawable e() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, d(this.f1024j));
        stateListDrawable.addState(new int[]{R$attr.state_pressed}, d(this.f1023i));
        stateListDrawable.addState(new int[0], d(this.f1022h));
        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{this.f1025k}), stateListDrawable, null);
        setOutlineProvider(new a(0));
        setClipToOutline(true);
        this.r = rippleDrawable;
        return rippleDrawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean f() {
        return !this.f1032s && this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(boolean z8) {
        if (getVisibility() == 4) {
            return;
        }
        if (z8) {
            this.f1028n.cancel();
            startAnimation(this.f1029o);
        }
        super.setVisibility(4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getButtonSize() {
        return this.f1019b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getColorDisabled() {
        return this.f1024j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getColorNormal() {
        return this.f1022h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getColorPressed() {
        return this.f1023i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getColorRipple() {
        return this.f1025k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Animation getHideAnimation() {
        return this.f1029o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Drawable getIconDrawable() {
        Drawable drawable = this.f1026l;
        return drawable != null ? drawable : new ColorDrawable(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getLabelText() {
        return this.f1030p;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k getLabelView() {
        return (k) getTag(2131296762);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLabelVisibility() {
        k labelView = getLabelView();
        if (labelView != null) {
            return labelView.getVisibility();
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized int getMax() {
        return this.T;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View$OnClickListener getOnClickListener() {
        return this.f1031q;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized int getProgress() {
        return this.F ? 0 : this.P;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getShadowColor() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getShadowRadius() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getShadowXOffset() {
        return this.f1020f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getShadowYOffset() {
        return this.f1021g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Animation getShowAnimation() {
        return this.f1028n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h() {
        RippleDrawable rippleDrawable = this.r;
        rippleDrawable.setState(new int[]{R$attr.state_enabled, R$attr.state_pressed});
        rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
        rippleDrawable.setVisible(true, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i() {
        RippleDrawable rippleDrawable = this.r;
        rippleDrawable.setState(new int[]{R$attr.state_enabled});
        rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
        rippleDrawable.setVisible(true, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        if (this.B) {
            return;
        }
        if (this.f1037z == -1.0f) {
            this.f1037z = getX();
        }
        if (this.A == -1.0f) {
            this.A = getY();
        }
        this.B = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void k(int i9, boolean z8) {
        if (this.F) {
            return;
        }
        this.P = i9;
        this.Q = z8;
        if (!this.B) {
            this.S = true;
            return;
        }
        this.f1033u = true;
        this.f1036y = true;
        l();
        j();
        n();
        if (i9 < 0) {
            i9 = 0;
        } else {
            int i10 = this.T;
            if (i9 > i10) {
                i9 = i10;
            }
        }
        float f8 = i9;
        if (f8 == this.O) {
            return;
        }
        int i11 = this.T;
        this.O = i11 > 0 ? (f8 / i11) * 360.0f : 0.0f;
        this.G = SystemClock.uptimeMillis();
        if (!z8) {
            this.N = this.O;
        }
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l() {
        int shadowX = f() ? getShadowX() : 0;
        int shadowY = f() ? getShadowY() : 0;
        int i9 = this.f1034v;
        this.C = new RectF((i9 / 2) + shadowX, (i9 / 2) + shadowY, (c() - shadowX) - (this.f1034v / 2), (b() - shadowY) - (this.f1034v / 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(boolean z8) {
        if (getVisibility() == 4) {
            if (z8) {
                this.f1029o.cancel();
                startAnimation(this.f1028n);
            }
            super.setVisibility(0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n() {
        LayerDrawable layerDrawable = f() ? new LayerDrawable(new Drawable[]{new e(this), e(), getIconDrawable()}) : new LayerDrawable(new Drawable[]{e(), getIconDrawable()});
        int iMax = getIconDrawable() != null ? Math.max(getIconDrawable().getIntrinsicWidth(), getIconDrawable().getIntrinsicHeight()) : -1;
        int circleSize = getCircleSize();
        if (iMax <= 0) {
            iMax = this.f1027m;
        }
        int i9 = (circleSize - iMax) / 2;
        int iAbs = f() ? Math.abs(this.f1020f) + this.e : 0;
        int iAbs2 = f() ? Math.abs(this.f1021g) + this.e : 0;
        if (this.f1033u) {
            int i10 = this.f1034v;
            iAbs += i10;
            iAbs2 += i10;
        }
        int i11 = iAbs + i9;
        int i12 = iAbs2 + i9;
        layerDrawable.setLayerInset(f() ? 2 : 1, i11, i12, i11, i12);
        setBackgroundCompat(layerDrawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2;
        super.onDraw(canvas);
        if (this.f1033u) {
            if (this.U) {
                canvas.drawArc(this.C, 360.0f, 360.0f, false, this.D);
                canvas2 = canvas;
            } else {
                canvas2 = canvas;
            }
            boolean z8 = this.F;
            Paint paint = this.E;
            boolean z9 = true;
            if (z8) {
                long jUptimeMillis = SystemClock.uptimeMillis() - this.G;
                float f8 = (jUptimeMillis * this.H) / 1000.0f;
                long j9 = this.I;
                int i9 = this.L;
                if (j9 >= 200) {
                    double d = this.J + jUptimeMillis;
                    this.J = d;
                    if (d > 500.0d) {
                        this.J = d - 500.0d;
                        this.I = 0L;
                        this.K = !this.K;
                    }
                    float fCos = (((float) Math.cos(((this.J / 500.0d) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
                    float f9 = 270 - i9;
                    if (this.K) {
                        this.M = fCos * f9;
                    } else {
                        float f10 = (1.0f - fCos) * f9;
                        this.N = (this.M - f10) + this.N;
                        this.M = f10;
                    }
                } else {
                    this.I = j9 + jUptimeMillis;
                }
                float f11 = this.N + f8;
                this.N = f11;
                if (f11 > 360.0f) {
                    this.N = f11 - 360.0f;
                }
                this.G = SystemClock.uptimeMillis();
                float f12 = this.N - 90.0f;
                float f13 = i9 + this.M;
                if (isInEditMode()) {
                    f12 = 0.0f;
                    f13 = 135.0f;
                }
                canvas2.drawArc(this.C, f12, f13, false, paint);
            } else {
                if (this.N != this.O) {
                    float fUptimeMillis = ((SystemClock.uptimeMillis() - this.G) / 1000.0f) * this.H;
                    float f14 = this.N;
                    float f15 = this.O;
                    if (f14 > f15) {
                        this.N = Math.max(f14 - fUptimeMillis, f15);
                    } else {
                        this.N = Math.min(f14 + fUptimeMillis, f15);
                    }
                    this.G = SystemClock.uptimeMillis();
                } else {
                    z9 = false;
                }
                canvas2.drawArc(this.C, -90.0f, this.N, false, paint);
            }
            if (z9) {
                invalidate();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i9, int i10) {
        setMeasuredDimension(c(), b());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof z1.d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        z1.d dVar = (z1.d) parcelable;
        super.onRestoreInstanceState(dVar.getSuperState());
        this.N = dVar.f6156b;
        this.O = dVar.c;
        this.H = dVar.d;
        this.f1034v = dVar.f6157f;
        this.w = dVar.f6158g;
        this.f1035x = dVar.f6159h;
        this.R = dVar.f6163l;
        this.S = dVar.f6164m;
        this.P = dVar.e;
        this.Q = dVar.f6165n;
        this.U = dVar.f6166o;
        this.G = SystemClock.uptimeMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        z1.d dVar = new z1.d(super.onSaveInstanceState());
        dVar.f6156b = this.N;
        dVar.c = this.O;
        dVar.d = this.H;
        dVar.f6157f = this.f1034v;
        dVar.f6158g = this.w;
        dVar.f6159h = this.f1035x;
        boolean z8 = this.F;
        dVar.f6163l = z8;
        dVar.f6164m = this.f1033u && this.P > 0 && !z8;
        dVar.e = this.P;
        dVar.f6165n = this.Q;
        dVar.f6166o = this.U;
        return dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onSizeChanged(int i9, int i10, int i11, int i12) {
        float y8;
        j();
        if (this.R) {
            setIndeterminate(true);
            this.R = false;
        } else if (this.S) {
            k(this.P, this.Q);
            this.S = false;
        } else if (this.f1036y) {
            boolean z8 = this.f1033u;
            float x8 = this.f1037z;
            if (z8) {
                x8 = x8 > getX() ? getX() + this.f1034v : getX() - this.f1034v;
                y8 = this.A > getY() ? getY() + this.f1034v : getY() - this.f1034v;
            } else {
                y8 = this.A;
            }
            setX(x8);
            setY(y8);
            this.f1036y = false;
        }
        super.onSizeChanged(i9, i10, i11, i12);
        l();
        int i13 = this.f1035x;
        Paint paint = this.D;
        paint.setColor(i13);
        Paint$Style paint$Style = Paint$Style.STROKE;
        paint.setStyle(paint$Style);
        paint.setStrokeWidth(this.f1034v);
        int i14 = this.w;
        Paint paint2 = this.E;
        paint2.setColor(i14);
        paint2.setStyle(paint$Style);
        paint2.setStrokeWidth(this.f1034v);
        n();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f1031q != null && isEnabled()) {
            k kVar = (k) getTag(2131296762);
            if (kVar == null) {
                return super.onTouchEvent(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action == 1 || action == 3) {
                kVar.d();
                i();
            }
            this.V.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setButtonSize(int i9) {
        if (i9 != 0 && i9 != 1) {
            i.k("Use @FabSize constants only!");
        } else if (this.f1019b != i9) {
            this.f1019b = i9;
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColorDisabled(int i9) {
        if (i9 != this.f1024j) {
            this.f1024j = i9;
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColorDisabledResId(int i9) {
        setColorDisabled(getResources().getColor(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColorNormal(int i9) {
        if (this.f1022h != i9) {
            this.f1022h = i9;
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColorNormalResId(int i9) {
        setColorNormal(getResources().getColor(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColorPressed(int i9) {
        if (i9 != this.f1023i) {
            this.f1023i = i9;
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColorPressedResId(int i9) {
        setColorPressed(getResources().getColor(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColorRipple(int i9) {
        if (i9 != this.f1025k) {
            this.f1025k = i9;
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColorRippleResId(int i9) {
        setColorRipple(getResources().getColor(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setElevation(float f8) {
        if (f8 > 0.0f) {
            super.setElevation(f8);
            if (!isInEditMode()) {
                this.f1032s = true;
                this.c = false;
            }
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setElevationCompat(float f8) {
        this.d = 637534208;
        float f9 = f8 / 2.0f;
        this.e = Math.round(f9);
        this.f1020f = 0;
        if (this.f1019b == 0) {
            f9 = f8;
        }
        this.f1021g = Math.round(f9);
        super.setElevation(f8);
        this.t = true;
        this.c = false;
        n();
        ViewGroup$LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            setLayoutParams(layoutParams);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setEnabled(boolean z8) {
        super.setEnabled(z8);
        k kVar = (k) getTag(2131296762);
        if (kVar != null) {
            kVar.setEnabled(z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHideAnimation(Animation animation) {
        this.f1029o = animation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f1026l != drawable) {
            this.f1026l = drawable;
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView
    public void setImageResource(int i9) {
        Drawable drawable = getResources().getDrawable(i9);
        if (this.f1026l != drawable) {
            this.f1026l = drawable;
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized void setIndeterminate(boolean z8) {
        if (!z8) {
            try {
                this.N = 0.0f;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f1033u = z8;
        this.f1036y = true;
        this.F = z8;
        this.G = SystemClock.uptimeMillis();
        l();
        n();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLabelText(String str) {
        this.f1030p = str;
        k labelView = getLabelView();
        if (labelView != null) {
            labelView.setText(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLabelTextColor(int i9) {
        getLabelView().setTextColor(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLabelVisibility(int i9) {
        k labelView = getLabelView();
        if (labelView != null) {
            labelView.setVisibility(i9);
            labelView.setHandleVisibilityChanges(i9 == 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if ((viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) && this.t) {
            ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) viewGroup$LayoutParams;
            viewGroup$MarginLayoutParams.leftMargin += getShadowX();
            viewGroup$MarginLayoutParams.topMargin += getShadowY();
            viewGroup$MarginLayoutParams.rightMargin += getShadowX();
            viewGroup$MarginLayoutParams.bottomMargin += getShadowY();
        }
        super.setLayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized void setMax(int i9) {
        this.T = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setOnClickListener(View$OnClickListener view$OnClickListener) {
        super.setOnClickListener(view$OnClickListener);
        this.f1031q = view$OnClickListener;
        View view = (View) getTag(2131296762);
        if (view != null) {
            view.setOnClickListener(new m(2, this));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShadowColor(int i9) {
        if (this.d != i9) {
            this.d = i9;
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShadowColorResource(int i9) {
        int color = getResources().getColor(i9);
        if (this.d != color) {
            this.d = color;
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShadowRadius(int i9) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i9);
        if (this.e != dimensionPixelSize) {
            this.e = dimensionPixelSize;
            requestLayout();
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShadowXOffset(int i9) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i9);
        if (this.f1020f != dimensionPixelSize) {
            this.f1020f = dimensionPixelSize;
            requestLayout();
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShadowYOffset(int i9) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i9);
        if (this.f1021g != dimensionPixelSize) {
            this.f1021g = dimensionPixelSize;
            requestLayout();
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowAnimation(Animation animation) {
        this.f1028n = animation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized void setShowProgressBackground(boolean z8) {
        this.U = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowShadow(boolean z8) {
        if (this.c != z8) {
            this.c = z8;
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i9) {
        super.setVisibility(i9);
        k kVar = (k) getTag(2131296762);
        if (kVar != null) {
            kVar.setVisibility(i9);
        }
    }

    public void setLabelTextColor(ColorStateList colorStateList) {
        getLabelView().setTextColor(colorStateList);
    }

    public void setShadowRadius(float f8) {
        this.e = d.e(getContext(), f8);
        requestLayout();
        n();
    }

    public void setShadowXOffset(float f8) {
        this.f1020f = d.e(getContext(), f8);
        requestLayout();
        n();
    }

    public void setShadowYOffset(float f8) {
        this.f1021g = d.e(getContext(), f8);
        requestLayout();
        n();
    }
}

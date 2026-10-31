package com.github.clans.fab;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
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
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import com.example.navistart.R;
import com.google.android.material.datepicker.ViewOnClickListenerC1102m;
import p050e3.C1461d;
import p099j1.C1929i;
import p256z1.AbstractC3704l;
import p256z1.C3693a;
import p256z1.C3694b;
import p256z1.C3695c;
import p256z1.C3696d;
import p256z1.C3697e;
import p256z1.C3703k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class FloatingActionButton extends ImageButton {

    /* JADX INFO: renamed from: W */
    public static final PorterDuffXfermode f1890W = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);

    /* JADX INFO: renamed from: A */
    public float f1891A;

    /* JADX INFO: renamed from: B */
    public boolean f1892B;

    /* JADX INFO: renamed from: C */
    public RectF f1893C;

    /* JADX INFO: renamed from: D */
    public final Paint f1894D;

    /* JADX INFO: renamed from: E */
    public final Paint f1895E;

    /* JADX INFO: renamed from: F */
    public boolean f1896F;

    /* JADX INFO: renamed from: G */
    public long f1897G;

    /* JADX INFO: renamed from: H */
    public float f1898H;

    /* JADX INFO: renamed from: I */
    public long f1899I;

    /* JADX INFO: renamed from: J */
    public double f1900J;

    /* JADX INFO: renamed from: K */
    public boolean f1901K;

    /* JADX INFO: renamed from: L */
    public final int f1902L;

    /* JADX INFO: renamed from: M */
    public float f1903M;

    /* JADX INFO: renamed from: N */
    public float f1904N;

    /* JADX INFO: renamed from: O */
    public float f1905O;

    /* JADX INFO: renamed from: P */
    public int f1906P;

    /* JADX INFO: renamed from: Q */
    public boolean f1907Q;

    /* JADX INFO: renamed from: R */
    public boolean f1908R;

    /* JADX INFO: renamed from: S */
    public boolean f1909S;

    /* JADX INFO: renamed from: T */
    public int f1910T;

    /* JADX INFO: renamed from: U */
    public boolean f1911U;

    /* JADX INFO: renamed from: V */
    public final GestureDetector f1912V;

    /* JADX INFO: renamed from: b */
    public int f1913b;

    /* JADX INFO: renamed from: c */
    public boolean f1914c;

    /* JADX INFO: renamed from: d */
    public int f1915d;

    /* JADX INFO: renamed from: e */
    public int f1916e;

    /* JADX INFO: renamed from: f */
    public int f1917f;

    /* JADX INFO: renamed from: g */
    public int f1918g;

    /* JADX INFO: renamed from: h */
    public int f1919h;

    /* JADX INFO: renamed from: i */
    public int f1920i;

    /* JADX INFO: renamed from: j */
    public int f1921j;

    /* JADX INFO: renamed from: k */
    public int f1922k;

    /* JADX INFO: renamed from: l */
    public Drawable f1923l;

    /* JADX INFO: renamed from: m */
    public final int f1924m;

    /* JADX INFO: renamed from: n */
    public Animation f1925n;

    /* JADX INFO: renamed from: o */
    public Animation f1926o;

    /* JADX INFO: renamed from: p */
    public String f1927p;

    /* JADX INFO: renamed from: q */
    public View.OnClickListener f1928q;

    /* JADX INFO: renamed from: r */
    public RippleDrawable f1929r;

    /* JADX INFO: renamed from: s */
    public boolean f1930s;

    /* JADX INFO: renamed from: t */
    public boolean f1931t;

    /* JADX INFO: renamed from: u */
    public boolean f1932u;

    /* JADX INFO: renamed from: v */
    public int f1933v;

    /* JADX INFO: renamed from: w */
    public int f1934w;

    /* JADX INFO: renamed from: x */
    public int f1935x;

    /* JADX INFO: renamed from: y */
    public boolean f1936y;

    /* JADX INFO: renamed from: z */
    public float f1937z;

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1916e = C1461d.m2506e(getContext(), 4.0f);
        this.f1917f = C1461d.m2506e(getContext(), 1.0f);
        this.f1918g = C1461d.m2506e(getContext(), 3.0f);
        this.f1924m = C1461d.m2506e(getContext(), 24.0f);
        this.f1933v = C1461d.m2506e(getContext(), 6.0f);
        this.f1937z = -1.0f;
        this.f1891A = -1.0f;
        this.f1893C = new RectF();
        this.f1894D = new Paint(1);
        this.f1895E = new Paint(1);
        this.f1898H = 195.0f;
        this.f1899I = 0L;
        this.f1901K = true;
        this.f1902L = 16;
        this.f1910T = 100;
        this.f1912V = new GestureDetector(getContext(), new C3694b(0, this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3704l.f10988a, 0, 0);
        this.f1919h = typedArrayObtainStyledAttributes.getColor(9, -2473162);
        this.f1920i = typedArrayObtainStyledAttributes.getColor(10, -1617853);
        this.f1921j = typedArrayObtainStyledAttributes.getColor(8, -5592406);
        this.f1922k = typedArrayObtainStyledAttributes.getColor(11, -1711276033);
        this.f1914c = typedArrayObtainStyledAttributes.getBoolean(26, true);
        this.f1915d = typedArrayObtainStyledAttributes.getColor(21, 1711276032);
        this.f1916e = typedArrayObtainStyledAttributes.getDimensionPixelSize(22, this.f1916e);
        this.f1917f = typedArrayObtainStyledAttributes.getDimensionPixelSize(23, this.f1917f);
        this.f1918g = typedArrayObtainStyledAttributes.getDimensionPixelSize(24, this.f1918g);
        this.f1913b = typedArrayObtainStyledAttributes.getInt(27, 0);
        this.f1927p = typedArrayObtainStyledAttributes.getString(14);
        this.f1908R = typedArrayObtainStyledAttributes.getBoolean(18, false);
        this.f1934w = typedArrayObtainStyledAttributes.getColor(17, -16738680);
        this.f1935x = typedArrayObtainStyledAttributes.getColor(16, 1291845632);
        this.f1910T = typedArrayObtainStyledAttributes.getInt(19, this.f1910T);
        this.f1911U = typedArrayObtainStyledAttributes.getBoolean(20, true);
        if (typedArrayObtainStyledAttributes.hasValue(15)) {
            this.f1906P = typedArrayObtainStyledAttributes.getInt(15, 0);
            this.f1909S = true;
        }
        if (typedArrayObtainStyledAttributes.hasValue(12)) {
            float dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(12, 0);
            if (isInEditMode()) {
                setElevation(dimensionPixelOffset);
            } else {
                setElevationCompat(dimensionPixelOffset);
            }
        }
        this.f1925n = AnimationUtils.loadAnimation(getContext(), typedArrayObtainStyledAttributes.getResourceId(25, R.anim.fab_scale_up));
        this.f1926o = AnimationUtils.loadAnimation(getContext(), typedArrayObtainStyledAttributes.getResourceId(13, R.anim.fab_scale_down));
        typedArrayObtainStyledAttributes.recycle();
        if (isInEditMode()) {
            if (this.f1908R) {
                setIndeterminate(true);
            } else if (this.f1909S) {
                m1690j();
                m1691k(this.f1906P, false);
            }
        }
        setClickable(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCircleSize() {
        return getResources().getDimensionPixelSize(this.f1913b == 0 ? R.dimen.fab_size_normal : R.dimen.fab_size_mini);
    }

    private int getShadowX() {
        return Math.abs(this.f1917f) + this.f1916e;
    }

    private int getShadowY() {
        return Math.abs(this.f1918g) + this.f1916e;
    }

    private void setBackgroundCompat(Drawable drawable) {
        setBackground(drawable);
    }

    /* JADX INFO: renamed from: b */
    public final int m1682b() {
        int circleSize = getCircleSize() + (m1686f() ? getShadowY() * 2 : 0);
        return this.f1932u ? (this.f1933v * 2) + circleSize : circleSize;
    }

    /* JADX INFO: renamed from: c */
    public final int m1683c() {
        int circleSize = getCircleSize() + (m1686f() ? getShadowX() * 2 : 0);
        return this.f1932u ? (this.f1933v * 2) + circleSize : circleSize;
    }

    /* JADX INFO: renamed from: d */
    public final C3695c m1684d(int i10) {
        C3695c c3695c = new C3695c(this, new OvalShape());
        c3695c.getPaint().setColor(i10);
        return c3695c;
    }

    /* JADX INFO: renamed from: e */
    public final RippleDrawable m1685e() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, m1684d(this.f1921j));
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, m1684d(this.f1920i));
        stateListDrawable.addState(new int[0], m1684d(this.f1919h));
        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{this.f1922k}), stateListDrawable, null);
        setOutlineProvider(new C3693a(0));
        setClipToOutline(true);
        this.f1929r = rippleDrawable;
        return rippleDrawable;
    }

    /* JADX INFO: renamed from: f */
    public final boolean m1686f() {
        return !this.f1930s && this.f1914c;
    }

    /* JADX INFO: renamed from: g */
    public final void m1687g(boolean z9) {
        if (getVisibility() == 4) {
            return;
        }
        if (z9) {
            this.f1925n.cancel();
            startAnimation(this.f1926o);
        }
        super.setVisibility(4);
    }

    public int getButtonSize() {
        return this.f1913b;
    }

    public int getColorDisabled() {
        return this.f1921j;
    }

    public int getColorNormal() {
        return this.f1919h;
    }

    public int getColorPressed() {
        return this.f1920i;
    }

    public int getColorRipple() {
        return this.f1922k;
    }

    public Animation getHideAnimation() {
        return this.f1926o;
    }

    public Drawable getIconDrawable() {
        Drawable drawable = this.f1923l;
        return drawable != null ? drawable : new ColorDrawable(0);
    }

    public String getLabelText() {
        return this.f1927p;
    }

    public C3703k getLabelView() {
        return (C3703k) getTag(R.id.fab_label);
    }

    public int getLabelVisibility() {
        C3703k labelView = getLabelView();
        if (labelView != null) {
            return labelView.getVisibility();
        }
        return -1;
    }

    public synchronized int getMax() {
        return this.f1910T;
    }

    public View.OnClickListener getOnClickListener() {
        return this.f1928q;
    }

    public synchronized int getProgress() {
        return this.f1896F ? 0 : this.f1906P;
    }

    public int getShadowColor() {
        return this.f1915d;
    }

    public int getShadowRadius() {
        return this.f1916e;
    }

    public int getShadowXOffset() {
        return this.f1917f;
    }

    public int getShadowYOffset() {
        return this.f1918g;
    }

    public Animation getShowAnimation() {
        return this.f1925n;
    }

    /* JADX INFO: renamed from: h */
    public final void m1688h() {
        RippleDrawable rippleDrawable = this.f1929r;
        rippleDrawable.setState(new int[]{android.R.attr.state_enabled, android.R.attr.state_pressed});
        rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
        rippleDrawable.setVisible(true, true);
    }

    /* JADX INFO: renamed from: i */
    public final void m1689i() {
        RippleDrawable rippleDrawable = this.f1929r;
        rippleDrawable.setState(new int[]{android.R.attr.state_enabled});
        rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
        rippleDrawable.setVisible(true, true);
    }

    /* JADX INFO: renamed from: j */
    public final void m1690j() {
        if (this.f1892B) {
            return;
        }
        if (this.f1937z == -1.0f) {
            this.f1937z = getX();
        }
        if (this.f1891A == -1.0f) {
            this.f1891A = getY();
        }
        this.f1892B = true;
    }

    /* JADX INFO: renamed from: k */
    public final synchronized void m1691k(int i10, boolean z9) {
        if (this.f1896F) {
            return;
        }
        this.f1906P = i10;
        this.f1907Q = z9;
        if (!this.f1892B) {
            this.f1909S = true;
            return;
        }
        this.f1932u = true;
        this.f1936y = true;
        m1692l();
        m1690j();
        m1694n();
        if (i10 < 0) {
            i10 = 0;
        } else {
            int i11 = this.f1910T;
            if (i10 > i11) {
                i10 = i11;
            }
        }
        float f8 = i10;
        if (f8 == this.f1905O) {
            return;
        }
        int i12 = this.f1910T;
        this.f1905O = i12 > 0 ? (f8 / i12) * 360.0f : 0.0f;
        this.f1897G = SystemClock.uptimeMillis();
        if (!z9) {
            this.f1904N = this.f1905O;
        }
        invalidate();
    }

    /* JADX INFO: renamed from: l */
    public final void m1692l() {
        int shadowX = m1686f() ? getShadowX() : 0;
        int shadowY = m1686f() ? getShadowY() : 0;
        int i10 = this.f1933v;
        this.f1893C = new RectF((i10 / 2) + shadowX, (i10 / 2) + shadowY, (m1683c() - shadowX) - (this.f1933v / 2), (m1682b() - shadowY) - (this.f1933v / 2));
    }

    /* JADX INFO: renamed from: m */
    public final void m1693m(boolean z9) {
        if (getVisibility() == 4) {
            if (z9) {
                this.f1926o.cancel();
                startAnimation(this.f1925n);
            }
            super.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: n */
    public final void m1694n() {
        LayerDrawable layerDrawable = m1686f() ? new LayerDrawable(new Drawable[]{new C3697e(this), m1685e(), getIconDrawable()}) : new LayerDrawable(new Drawable[]{m1685e(), getIconDrawable()});
        int iMax = getIconDrawable() != null ? Math.max(getIconDrawable().getIntrinsicWidth(), getIconDrawable().getIntrinsicHeight()) : -1;
        int circleSize = getCircleSize();
        if (iMax <= 0) {
            iMax = this.f1924m;
        }
        int i10 = (circleSize - iMax) / 2;
        int iAbs = m1686f() ? Math.abs(this.f1917f) + this.f1916e : 0;
        int iAbs2 = m1686f() ? Math.abs(this.f1918g) + this.f1916e : 0;
        if (this.f1932u) {
            int i11 = this.f1933v;
            iAbs += i11;
            iAbs2 += i11;
        }
        int i12 = iAbs + i10;
        int i13 = iAbs2 + i10;
        layerDrawable.setLayerInset(m1686f() ? 2 : 1, i12, i13, i12, i13);
        setBackgroundCompat(layerDrawable);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2;
        super.onDraw(canvas);
        if (this.f1932u) {
            if (this.f1911U) {
                canvas.drawArc(this.f1893C, 360.0f, 360.0f, false, this.f1894D);
                canvas2 = canvas;
            } else {
                canvas2 = canvas;
            }
            boolean z9 = this.f1896F;
            Paint paint = this.f1895E;
            boolean z10 = true;
            if (z9) {
                long jUptimeMillis = SystemClock.uptimeMillis() - this.f1897G;
                float f8 = (jUptimeMillis * this.f1898H) / 1000.0f;
                long j10 = this.f1899I;
                int i10 = this.f1902L;
                if (j10 >= 200) {
                    double d = this.f1900J + jUptimeMillis;
                    this.f1900J = d;
                    if (d > 500.0d) {
                        this.f1900J = d - 500.0d;
                        this.f1899I = 0L;
                        this.f1901K = !this.f1901K;
                    }
                    float fCos = (((float) Math.cos(((this.f1900J / 500.0d) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
                    float f10 = 270 - i10;
                    if (this.f1901K) {
                        this.f1903M = fCos * f10;
                    } else {
                        float f11 = (1.0f - fCos) * f10;
                        this.f1904N = (this.f1903M - f11) + this.f1904N;
                        this.f1903M = f11;
                    }
                } else {
                    this.f1899I = j10 + jUptimeMillis;
                }
                float f12 = this.f1904N + f8;
                this.f1904N = f12;
                if (f12 > 360.0f) {
                    this.f1904N = f12 - 360.0f;
                }
                this.f1897G = SystemClock.uptimeMillis();
                float f13 = this.f1904N - 90.0f;
                float f14 = i10 + this.f1903M;
                if (isInEditMode()) {
                    f13 = 0.0f;
                    f14 = 135.0f;
                }
                canvas2.drawArc(this.f1893C, f13, f14, false, paint);
            } else {
                if (this.f1904N != this.f1905O) {
                    float fUptimeMillis = ((SystemClock.uptimeMillis() - this.f1897G) / 1000.0f) * this.f1898H;
                    float f15 = this.f1904N;
                    float f16 = this.f1905O;
                    if (f15 > f16) {
                        this.f1904N = Math.max(f15 - fUptimeMillis, f16);
                    } else {
                        this.f1904N = Math.min(f15 + fUptimeMillis, f16);
                    }
                    this.f1897G = SystemClock.uptimeMillis();
                } else {
                    z10 = false;
                }
                canvas2.drawArc(this.f1893C, -90.0f, this.f1904N, false, paint);
            }
            if (z10) {
                invalidate();
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i10, int i11) {
        setMeasuredDimension(m1683c(), m1682b());
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C3696d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C3696d c3696d = (C3696d) parcelable;
        super.onRestoreInstanceState(c3696d.getSuperState());
        this.f1904N = c3696d.f10937b;
        this.f1905O = c3696d.f10938c;
        this.f1898H = c3696d.f10939d;
        this.f1933v = c3696d.f10941f;
        this.f1934w = c3696d.f10942g;
        this.f1935x = c3696d.f10943h;
        this.f1908R = c3696d.f10947l;
        this.f1909S = c3696d.f10948m;
        this.f1906P = c3696d.f10940e;
        this.f1907Q = c3696d.f10949n;
        this.f1911U = c3696d.f10950o;
        this.f1897G = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C3696d c3696d = new C3696d(super.onSaveInstanceState());
        c3696d.f10937b = this.f1904N;
        c3696d.f10938c = this.f1905O;
        c3696d.f10939d = this.f1898H;
        c3696d.f10941f = this.f1933v;
        c3696d.f10942g = this.f1934w;
        c3696d.f10943h = this.f1935x;
        boolean z9 = this.f1896F;
        c3696d.f10947l = z9;
        c3696d.f10948m = this.f1932u && this.f1906P > 0 && !z9;
        c3696d.f10940e = this.f1906P;
        c3696d.f10949n = this.f1907Q;
        c3696d.f10950o = this.f1911U;
        return c3696d;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        float y9;
        m1690j();
        if (this.f1908R) {
            setIndeterminate(true);
            this.f1908R = false;
        } else if (this.f1909S) {
            m1691k(this.f1906P, this.f1907Q);
            this.f1909S = false;
        } else if (this.f1936y) {
            boolean z9 = this.f1932u;
            float x9 = this.f1937z;
            if (z9) {
                x9 = x9 > getX() ? getX() + this.f1933v : getX() - this.f1933v;
                y9 = this.f1891A > getY() ? getY() + this.f1933v : getY() - this.f1933v;
            } else {
                y9 = this.f1891A;
            }
            setX(x9);
            setY(y9);
            this.f1936y = false;
        }
        super.onSizeChanged(i10, i11, i12, i13);
        m1692l();
        int i14 = this.f1935x;
        Paint paint = this.f1894D;
        paint.setColor(i14);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        paint.setStrokeWidth(this.f1933v);
        int i15 = this.f1934w;
        Paint paint2 = this.f1895E;
        paint2.setColor(i15);
        paint2.setStyle(style);
        paint2.setStrokeWidth(this.f1933v);
        m1694n();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f1928q != null && isEnabled()) {
            C3703k c3703k = (C3703k) getTag(R.id.fab_label);
            if (c3703k == null) {
                return super.onTouchEvent(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action == 1 || action == 3) {
                c3703k.m5917d();
                m1689i();
            }
            this.f1912V.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setButtonSize(int i10) {
        if (i10 != 0 && i10 != 1) {
            C1929i.m3029k("Use @FabSize constants only!");
        } else if (this.f1913b != i10) {
            this.f1913b = i10;
            m1694n();
        }
    }

    public void setColorDisabled(int i10) {
        if (i10 != this.f1921j) {
            this.f1921j = i10;
            m1694n();
        }
    }

    public void setColorDisabledResId(int i10) {
        setColorDisabled(getResources().getColor(i10));
    }

    public void setColorNormal(int i10) {
        if (this.f1919h != i10) {
            this.f1919h = i10;
            m1694n();
        }
    }

    public void setColorNormalResId(int i10) {
        setColorNormal(getResources().getColor(i10));
    }

    public void setColorPressed(int i10) {
        if (i10 != this.f1920i) {
            this.f1920i = i10;
            m1694n();
        }
    }

    public void setColorPressedResId(int i10) {
        setColorPressed(getResources().getColor(i10));
    }

    public void setColorRipple(int i10) {
        if (i10 != this.f1922k) {
            this.f1922k = i10;
            m1694n();
        }
    }

    public void setColorRippleResId(int i10) {
        setColorRipple(getResources().getColor(i10));
    }

    @Override // android.view.View
    public void setElevation(float f8) {
        if (f8 > 0.0f) {
            super.setElevation(f8);
            if (!isInEditMode()) {
                this.f1930s = true;
                this.f1914c = false;
            }
            m1694n();
        }
    }

    public void setElevationCompat(float f8) {
        this.f1915d = 637534208;
        float f10 = f8 / 2.0f;
        this.f1916e = Math.round(f10);
        this.f1917f = 0;
        if (this.f1913b == 0) {
            f10 = f8;
        }
        this.f1918g = Math.round(f10);
        super.setElevation(f8);
        this.f1931t = true;
        this.f1914c = false;
        m1694n();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            setLayoutParams(layoutParams);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z9) {
        super.setEnabled(z9);
        C3703k c3703k = (C3703k) getTag(R.id.fab_label);
        if (c3703k != null) {
            c3703k.setEnabled(z9);
        }
    }

    public void setHideAnimation(Animation animation) {
        this.f1926o = animation;
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f1923l != drawable) {
            this.f1923l = drawable;
            m1694n();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        Drawable drawable = getResources().getDrawable(i10);
        if (this.f1923l != drawable) {
            this.f1923l = drawable;
            m1694n();
        }
    }

    public synchronized void setIndeterminate(boolean z9) {
        if (!z9) {
            try {
                this.f1904N = 0.0f;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f1932u = z9;
        this.f1936y = true;
        this.f1896F = z9;
        this.f1897G = SystemClock.uptimeMillis();
        m1692l();
        m1694n();
    }

    public void setLabelText(String str) {
        this.f1927p = str;
        C3703k labelView = getLabelView();
        if (labelView != null) {
            labelView.setText(str);
        }
    }

    public void setLabelTextColor(int i10) {
        getLabelView().setTextColor(i10);
    }

    public void setLabelVisibility(int i10) {
        C3703k labelView = getLabelView();
        if (labelView != null) {
            labelView.setVisibility(i10);
            labelView.setHandleVisibilityChanges(i10 == 0);
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && this.f1931t) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.leftMargin += getShadowX();
            marginLayoutParams.topMargin += getShadowY();
            marginLayoutParams.rightMargin += getShadowX();
            marginLayoutParams.bottomMargin += getShadowY();
        }
        super.setLayoutParams(layoutParams);
    }

    public synchronized void setMax(int i10) {
        this.f1910T = i10;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.f1928q = onClickListener;
        View view = (View) getTag(R.id.fab_label);
        if (view != null) {
            view.setOnClickListener(new ViewOnClickListenerC1102m(2, this));
        }
    }

    public void setShadowColor(int i10) {
        if (this.f1915d != i10) {
            this.f1915d = i10;
            m1694n();
        }
    }

    public void setShadowColorResource(int i10) {
        int color = getResources().getColor(i10);
        if (this.f1915d != color) {
            this.f1915d = color;
            m1694n();
        }
    }

    public void setShadowRadius(int i10) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i10);
        if (this.f1916e != dimensionPixelSize) {
            this.f1916e = dimensionPixelSize;
            requestLayout();
            m1694n();
        }
    }

    public void setShadowXOffset(int i10) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i10);
        if (this.f1917f != dimensionPixelSize) {
            this.f1917f = dimensionPixelSize;
            requestLayout();
            m1694n();
        }
    }

    public void setShadowYOffset(int i10) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i10);
        if (this.f1918g != dimensionPixelSize) {
            this.f1918g = dimensionPixelSize;
            requestLayout();
            m1694n();
        }
    }

    public void setShowAnimation(Animation animation) {
        this.f1925n = animation;
    }

    public synchronized void setShowProgressBackground(boolean z9) {
        this.f1911U = z9;
    }

    public void setShowShadow(boolean z9) {
        if (this.f1914c != z9) {
            this.f1914c = z9;
            m1694n();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        C3703k c3703k = (C3703k) getTag(R.id.fab_label);
        if (c3703k != null) {
            c3703k.setVisibility(i10);
        }
    }

    public void setLabelTextColor(ColorStateList colorStateList) {
        getLabelView().setTextColor(colorStateList);
    }

    public void setShadowRadius(float f8) {
        this.f1916e = C1461d.m2506e(getContext(), f8);
        requestLayout();
        m1694n();
    }

    public void setShadowXOffset(float f8) {
        this.f1917f = C1461d.m2506e(getContext(), f8);
        requestLayout();
        m1694n();
    }

    public void setShadowYOffset(float f8) {
        this.f1918g = C1461d.m2506e(getContext(), f8);
        requestLayout();
        m1694n();
    }
}

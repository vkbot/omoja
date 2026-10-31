package com.github.clans.fab;

import ai.onnxruntime.AbstractC0074a;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import androidx.constraintlayout.motion.widget.Key;
import com.example.navistart.R;
import com.google.android.material.datepicker.ViewOnClickListenerC1102m;
import p050e3.C1461d;
import p256z1.AbstractC3704l;
import p256z1.C3694b;
import p256z1.C3698f;
import p256z1.C3703k;
import p256z1.InterfaceC3701i;
import p256z1.RunnableC3699g;
import p256z1.RunnableC3700h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class FloatingActionMenu extends ViewGroup {

    /* JADX INFO: renamed from: A */
    public final boolean f1938A;

    /* JADX INFO: renamed from: B */
    public final int f1939B;

    /* JADX INFO: renamed from: C */
    public final float f1940C;

    /* JADX INFO: renamed from: D */
    public final float f1941D;

    /* JADX INFO: renamed from: E */
    public final float f1942E;

    /* JADX INFO: renamed from: F */
    public int f1943F;

    /* JADX INFO: renamed from: G */
    public int f1944G;

    /* JADX INFO: renamed from: H */
    public int f1945H;

    /* JADX INFO: renamed from: I */
    public final Drawable f1946I;

    /* JADX INFO: renamed from: J */
    public int f1947J;

    /* JADX INFO: renamed from: K */
    public final OvershootInterpolator f1948K;

    /* JADX INFO: renamed from: L */
    public final AnticipateInterpolator f1949L;

    /* JADX INFO: renamed from: M */
    public boolean f1950M;

    /* JADX INFO: renamed from: N */
    public final boolean f1951N;

    /* JADX INFO: renamed from: O */
    public final int f1952O;

    /* JADX INFO: renamed from: P */
    public final int f1953P;

    /* JADX INFO: renamed from: Q */
    public final int f1954Q;

    /* JADX INFO: renamed from: R */
    public final int f1955R;

    /* JADX INFO: renamed from: S */
    public final Typeface f1956S;

    /* JADX INFO: renamed from: T */
    public boolean f1957T;

    /* JADX INFO: renamed from: U */
    public final ImageView f1958U;

    /* JADX INFO: renamed from: V */
    public Animation f1959V;

    /* JADX INFO: renamed from: W */
    public Animation f1960W;

    /* JADX INFO: renamed from: a0 */
    public final Animation f1961a0;

    /* JADX INFO: renamed from: b */
    public final AnimatorSet f1962b;

    /* JADX INFO: renamed from: b0 */
    public final Animation f1963b0;

    /* JADX INFO: renamed from: c */
    public final AnimatorSet f1964c;

    /* JADX INFO: renamed from: c0 */
    public boolean f1965c0;

    /* JADX INFO: renamed from: d */
    public AnimatorSet f1966d;

    /* JADX INFO: renamed from: d0 */
    public final int f1967d0;

    /* JADX INFO: renamed from: e */
    public final int f1968e;

    /* JADX INFO: renamed from: e0 */
    public final ValueAnimator f1969e0;

    /* JADX INFO: renamed from: f */
    public final FloatingActionButton f1970f;

    /* JADX INFO: renamed from: f0 */
    public final ValueAnimator f1971f0;

    /* JADX INFO: renamed from: g */
    public int f1972g;

    /* JADX INFO: renamed from: g0 */
    public final int f1973g0;

    /* JADX INFO: renamed from: h */
    public final int f1974h;

    /* JADX INFO: renamed from: h0 */
    public final int f1975h0;

    /* JADX INFO: renamed from: i */
    public final int f1976i;

    /* JADX INFO: renamed from: i0 */
    public final ContextThemeWrapper f1977i0;

    /* JADX INFO: renamed from: j */
    public int f1978j;

    /* JADX INFO: renamed from: j0 */
    public final String f1979j0;

    /* JADX INFO: renamed from: k */
    public boolean f1980k;

    /* JADX INFO: renamed from: k0 */
    public final boolean f1981k0;

    /* JADX INFO: renamed from: l */
    public boolean f1982l;

    /* JADX INFO: renamed from: m */
    public final Handler f1983m;

    /* JADX INFO: renamed from: n */
    public final int f1984n;

    /* JADX INFO: renamed from: o */
    public final int f1985o;

    /* JADX INFO: renamed from: p */
    public final int f1986p;

    /* JADX INFO: renamed from: q */
    public final int f1987q;

    /* JADX INFO: renamed from: r */
    public final int f1988r;

    /* JADX INFO: renamed from: s */
    public final int f1989s;

    /* JADX INFO: renamed from: t */
    public final ColorStateList f1990t;

    /* JADX INFO: renamed from: u */
    public final float f1991u;

    /* JADX INFO: renamed from: v */
    public final int f1992v;

    /* JADX INFO: renamed from: w */
    public final boolean f1993w;

    /* JADX INFO: renamed from: x */
    public final int f1994x;

    /* JADX INFO: renamed from: y */
    public final int f1995y;

    /* JADX INFO: renamed from: z */
    public final int f1996z;

    /* JADX WARN: Code duplicated, block: B:38:0x0321 A[PHI: r0
  0x0321: PHI (r0v110 float) = (r0v97 float), (r0v112 float) binds: [B:42:0x0328, B:37:0x031f] A[DONT_GENERATE, DONT_INLINE]] */
    public FloatingActionMenu(Context context, AttributeSet attributeSet) {
        float f8;
        super(context, attributeSet, 0);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f1962b = animatorSet;
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f1964c = animatorSet2;
        this.f1968e = C1461d.m2506e(getContext(), 0.0f);
        this.f1974h = C1461d.m2506e(getContext(), 0.0f);
        this.f1976i = C1461d.m2506e(getContext(), 0.0f);
        this.f1983m = new Handler();
        this.f1986p = C1461d.m2506e(getContext(), 4.0f);
        this.f1987q = C1461d.m2506e(getContext(), 8.0f);
        this.f1988r = C1461d.m2506e(getContext(), 4.0f);
        this.f1989s = C1461d.m2506e(getContext(), 8.0f);
        this.f1992v = C1461d.m2506e(getContext(), 3.0f);
        this.f1940C = 4.0f;
        this.f1941D = 1.0f;
        this.f1942E = 3.0f;
        this.f1950M = true;
        this.f1957T = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3704l.f10989b, 0, 0);
        this.f1968e = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, this.f1968e);
        this.f1974h = typedArrayObtainStyledAttributes.getDimensionPixelSize(19, this.f1974h);
        int i10 = typedArrayObtainStyledAttributes.getInt(26, 0);
        this.f1975h0 = i10;
        this.f1984n = typedArrayObtainStyledAttributes.getResourceId(27, i10 == 0 ? R.anim.fab_slide_in_from_right : R.anim.fab_slide_in_from_left);
        this.f1985o = typedArrayObtainStyledAttributes.getResourceId(18, this.f1975h0 == 0 ? R.anim.fab_slide_out_to_right : R.anim.fab_slide_out_to_left);
        this.f1986p = typedArrayObtainStyledAttributes.getDimensionPixelSize(25, this.f1986p);
        this.f1987q = typedArrayObtainStyledAttributes.getDimensionPixelSize(24, this.f1987q);
        this.f1988r = typedArrayObtainStyledAttributes.getDimensionPixelSize(22, this.f1988r);
        this.f1989s = typedArrayObtainStyledAttributes.getDimensionPixelSize(23, this.f1989s);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(31);
        this.f1990t = colorStateList;
        if (colorStateList == null) {
            this.f1990t = ColorStateList.valueOf(-1);
        }
        this.f1991u = typedArrayObtainStyledAttributes.getDimension(32, getResources().getDimension(R.dimen.labels_text_size));
        this.f1992v = typedArrayObtainStyledAttributes.getDimensionPixelSize(15, this.f1992v);
        this.f1993w = typedArrayObtainStyledAttributes.getBoolean(28, true);
        this.f1994x = typedArrayObtainStyledAttributes.getColor(12, -13421773);
        this.f1995y = typedArrayObtainStyledAttributes.getColor(13, -12303292);
        this.f1996z = typedArrayObtainStyledAttributes.getColor(14, 1728053247);
        this.f1938A = typedArrayObtainStyledAttributes.getBoolean(38, true);
        this.f1939B = typedArrayObtainStyledAttributes.getColor(34, 1711276032);
        this.f1940C = typedArrayObtainStyledAttributes.getDimension(35, this.f1940C);
        this.f1941D = typedArrayObtainStyledAttributes.getDimension(36, this.f1941D);
        this.f1942E = typedArrayObtainStyledAttributes.getDimension(37, this.f1942E);
        this.f1943F = typedArrayObtainStyledAttributes.getColor(4, -2473162);
        this.f1944G = typedArrayObtainStyledAttributes.getColor(5, -1617853);
        this.f1945H = typedArrayObtainStyledAttributes.getColor(6, -1711276033);
        this.f1947J = typedArrayObtainStyledAttributes.getInt(0, 50);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(11);
        this.f1946I = drawable;
        if (drawable == null) {
            this.f1946I = getResources().getDrawable(R.drawable.fab_add);
        }
        this.f1951N = typedArrayObtainStyledAttributes.getBoolean(29, false);
        this.f1952O = typedArrayObtainStyledAttributes.getInt(17, 0);
        this.f1953P = typedArrayObtainStyledAttributes.getInt(20, -1);
        this.f1954Q = typedArrayObtainStyledAttributes.getInt(10, 0);
        this.f1955R = typedArrayObtainStyledAttributes.getResourceId(30, 0);
        String string = typedArrayObtainStyledAttributes.getString(16);
        try {
            if (!TextUtils.isEmpty(string)) {
                this.f1956S = Typeface.createFromAsset(getContext().getAssets(), string);
            }
            this.f1967d0 = typedArrayObtainStyledAttributes.getInt(33, 0);
            this.f1973g0 = typedArrayObtainStyledAttributes.getColor(1, 0);
            if (typedArrayObtainStyledAttributes.hasValue(8)) {
                this.f1981k0 = true;
                this.f1979j0 = typedArrayObtainStyledAttributes.getString(8);
            }
            if (typedArrayObtainStyledAttributes.hasValue(21)) {
                int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(21, 0);
                this.f1986p = dimensionPixelSize;
                this.f1987q = dimensionPixelSize;
                this.f1988r = dimensionPixelSize;
                this.f1989s = dimensionPixelSize;
            }
            this.f1948K = new OvershootInterpolator();
            this.f1949L = new AnticipateInterpolator();
            this.f1977i0 = new ContextThemeWrapper(getContext(), this.f1955R);
            int iAlpha = Color.alpha(this.f1973g0);
            int iRed = Color.red(this.f1973g0);
            int iGreen = Color.green(this.f1973g0);
            int iBlue = Color.blue(this.f1973g0);
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, iAlpha);
            this.f1969e0 = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(300L);
            this.f1969e0.addUpdateListener(new C3698f(this, iRed, iGreen, iBlue, 0));
            ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(iAlpha, 0);
            this.f1971f0 = valueAnimatorOfInt2;
            valueAnimatorOfInt2.setDuration(300L);
            this.f1971f0.addUpdateListener(new C3698f(this, iRed, iGreen, iBlue, 1));
            FloatingActionButton floatingActionButton = new FloatingActionButton(getContext(), null);
            this.f1970f = floatingActionButton;
            boolean z9 = this.f1938A;
            floatingActionButton.f1914c = z9;
            if (z9) {
                floatingActionButton.f1916e = C1461d.m2506e(getContext(), this.f1940C);
                this.f1970f.f1917f = C1461d.m2506e(getContext(), this.f1941D);
                this.f1970f.f1918g = C1461d.m2506e(getContext(), this.f1942E);
            }
            FloatingActionButton floatingActionButton2 = this.f1970f;
            int i11 = this.f1943F;
            int i12 = this.f1944G;
            int i13 = this.f1945H;
            floatingActionButton2.f1919h = i11;
            floatingActionButton2.f1920i = i12;
            floatingActionButton2.f1922k = i13;
            floatingActionButton2.f1915d = this.f1939B;
            floatingActionButton2.f1913b = this.f1954Q;
            floatingActionButton2.m1694n();
            this.f1970f.setLabelText(this.f1979j0);
            ImageView imageView = new ImageView(getContext());
            this.f1958U = imageView;
            imageView.setImageDrawable(this.f1946I);
            addView(this.f1970f, super.generateDefaultLayoutParams());
            addView(this.f1958U);
            int i14 = this.f1967d0;
            int i15 = this.f1975h0;
            float f10 = 135.0f;
            if (i14 == 0) {
                f8 = i15 == 0 ? -135.0f : 135.0f;
                if (i15 == 0) {
                    f10 = -135.0f;
                }
            } else {
                f8 = i15 == 0 ? 135.0f : -135.0f;
                if (i15 != 0) {
                    f10 = -135.0f;
                }
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f1958U, Key.ROTATION, f8, 0.0f);
            animatorSet.play(ObjectAnimator.ofFloat(this.f1958U, Key.ROTATION, 0.0f, f10));
            animatorSet2.play(objectAnimatorOfFloat);
            animatorSet.setInterpolator(this.f1948K);
            animatorSet2.setInterpolator(this.f1949L);
            animatorSet.setDuration(300L);
            animatorSet2.setDuration(300L);
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(9, R.anim.fab_scale_up);
            setMenuButtonShowAnimation(AnimationUtils.loadAnimation(getContext(), resourceId));
            this.f1961a0 = AnimationUtils.loadAnimation(getContext(), resourceId);
            int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(7, R.anim.fab_scale_down);
            setMenuButtonHideAnimation(AnimationUtils.loadAnimation(getContext(), resourceId2));
            this.f1963b0 = AnimationUtils.loadAnimation(getContext(), resourceId2);
            typedArrayObtainStyledAttributes.recycle();
        } catch (RuntimeException e) {
            throw new IllegalArgumentException(AbstractC0074a.m161l("Unable to load specified custom font: ", string), e);
        }
    }

    private void setLabelEllipsize(C3703k c3703k) {
        int i10 = this.f1952O;
        if (i10 == 1) {
            c3703k.setEllipsize(TextUtils.TruncateAt.START);
            return;
        }
        if (i10 == 2) {
            c3703k.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        } else if (i10 == 3) {
            c3703k.setEllipsize(TextUtils.TruncateAt.END);
        } else {
            if (i10 != 4) {
                return;
            }
            c3703k.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1695a(boolean z9) {
        if (!this.f1980k) {
            return;
        }
        if (this.f1973g0 != 0) {
            this.f1971f0.start();
        }
        if (this.f1957T) {
            AnimatorSet animatorSet = this.f1966d;
            if (animatorSet != null) {
                animatorSet.start();
            } else {
                this.f1964c.start();
                this.f1962b.cancel();
            }
        }
        int i10 = 0;
        this.f1982l = false;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int childCount = getChildCount();
            Handler handler = this.f1983m;
            if (i10 >= childCount) {
                handler.postDelayed(new RunnableC3700h(this, 1), (i11 + 1) * this.f1947J);
                return;
            }
            View childAt = getChildAt(i10);
            if ((childAt instanceof FloatingActionButton) && childAt.getVisibility() != 8) {
                i11++;
                handler.postDelayed(new RunnableC3699g(this, (FloatingActionButton) childAt, z9, 1), i12);
                i12 += this.f1947J;
            }
            i10++;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimationDelayPerItem() {
        return this.f1947J;
    }

    public AnimatorSet getIconToggleAnimatorSet() {
        return this.f1966d;
    }

    public int getMenuButtonColorNormal() {
        return this.f1943F;
    }

    public int getMenuButtonColorPressed() {
        return this.f1944G;
    }

    public int getMenuButtonColorRipple() {
        return this.f1945H;
    }

    public String getMenuButtonLabelText() {
        return this.f1979j0;
    }

    public ImageView getMenuIconView() {
        return this.f1958U;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        bringChildToFront(this.f1970f);
        bringChildToFront(this.f1958U);
        this.f1978j = getChildCount();
        for (int i10 = 0; i10 < this.f1978j; i10++) {
            if (getChildAt(i10) != this.f1958U) {
                FloatingActionButton floatingActionButton = (FloatingActionButton) getChildAt(i10);
                if (floatingActionButton.getTag(R.id.fab_label) == null) {
                    String labelText = floatingActionButton.getLabelText();
                    if (!TextUtils.isEmpty(labelText)) {
                        C3703k c3703k = new C3703k(this.f1977i0);
                        c3703k.f10975g = true;
                        c3703k.f10986r = true;
                        c3703k.f10987s = new GestureDetector(c3703k.getContext(), new C3694b(1, c3703k));
                        c3703k.setClickable(true);
                        c3703k.setFab(floatingActionButton);
                        c3703k.setShowAnimation(AnimationUtils.loadAnimation(getContext(), this.f1984n));
                        c3703k.setHideAnimation(AnimationUtils.loadAnimation(getContext(), this.f1985o));
                        if (this.f1955R > 0) {
                            c3703k.setTextAppearance(getContext(), this.f1955R);
                            c3703k.setShowShadow(false);
                            c3703k.setUsingStyle(true);
                        } else {
                            c3703k.f10978j = this.f1994x;
                            c3703k.f10979k = this.f1995y;
                            c3703k.f10980l = this.f1996z;
                            c3703k.setShowShadow(this.f1993w);
                            c3703k.setCornerRadius(this.f1992v);
                            if (this.f1952O > 0) {
                                setLabelEllipsize(c3703k);
                            }
                            c3703k.setMaxLines(this.f1953P);
                            c3703k.m5918e();
                            c3703k.setTextSize(0, this.f1991u);
                            c3703k.setTextColor(this.f1990t);
                            boolean z9 = this.f1993w;
                            int iAbs = this.f1989s;
                            int iAbs2 = this.f1986p;
                            if (z9) {
                                iAbs += Math.abs(floatingActionButton.getShadowXOffset()) + floatingActionButton.getShadowRadius();
                                iAbs2 += Math.abs(floatingActionButton.getShadowYOffset()) + floatingActionButton.getShadowRadius();
                            }
                            c3703k.setPadding(iAbs, iAbs2, this.f1989s, this.f1986p);
                            if (this.f1953P < 0 || this.f1951N) {
                                c3703k.setSingleLine(this.f1951N);
                            }
                        }
                        Typeface typeface = this.f1956S;
                        if (typeface != null) {
                            c3703k.setTypeface(typeface);
                        }
                        c3703k.setText(labelText);
                        c3703k.setOnClickListener(floatingActionButton.getOnClickListener());
                        addView(c3703k);
                        floatingActionButton.setTag(R.id.fab_label, c3703k);
                    }
                    FloatingActionButton floatingActionButton2 = this.f1970f;
                    if (floatingActionButton == floatingActionButton2) {
                        floatingActionButton2.setOnClickListener(new ViewOnClickListenerC1102m(3, this));
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        int i14 = this.f1972g;
        int paddingRight = this.f1975h0 == 0 ? ((i12 - i10) - (i14 / 2)) - getPaddingRight() : getPaddingLeft() + (i14 / 2);
        boolean z10 = this.f1967d0 == 0;
        int measuredHeight = z10 ? ((i13 - i11) - this.f1970f.getMeasuredHeight()) - getPaddingBottom() : getPaddingTop();
        int measuredWidth = paddingRight - (this.f1970f.getMeasuredWidth() / 2);
        FloatingActionButton floatingActionButton = this.f1970f;
        floatingActionButton.layout(measuredWidth, measuredHeight, floatingActionButton.getMeasuredWidth() + measuredWidth, this.f1970f.getMeasuredHeight() + measuredHeight);
        int measuredWidth2 = paddingRight - (this.f1958U.getMeasuredWidth() / 2);
        int measuredHeight2 = ((this.f1970f.getMeasuredHeight() / 2) + measuredHeight) - (this.f1958U.getMeasuredHeight() / 2);
        ImageView imageView = this.f1958U;
        imageView.layout(measuredWidth2, measuredHeight2, imageView.getMeasuredWidth() + measuredWidth2, this.f1958U.getMeasuredHeight() + measuredHeight2);
        if (z10) {
            measuredHeight = this.f1968e + this.f1970f.getMeasuredHeight() + measuredHeight;
        }
        for (int i15 = this.f1978j - 1; i15 >= 0; i15--) {
            View childAt = getChildAt(i15);
            if (childAt != this.f1958U) {
                FloatingActionButton floatingActionButton2 = (FloatingActionButton) childAt;
                if (floatingActionButton2.getVisibility() != 8) {
                    int measuredWidth3 = paddingRight - (floatingActionButton2.getMeasuredWidth() / 2);
                    if (z10) {
                        measuredHeight = (measuredHeight - floatingActionButton2.getMeasuredHeight()) - this.f1968e;
                    }
                    if (floatingActionButton2 != this.f1970f) {
                        floatingActionButton2.layout(measuredWidth3, measuredHeight, floatingActionButton2.getMeasuredWidth() + measuredWidth3, floatingActionButton2.getMeasuredHeight() + measuredHeight);
                        if (!this.f1982l) {
                            floatingActionButton2.m1687g(false);
                        }
                    }
                    View view = (View) floatingActionButton2.getTag(R.id.fab_label);
                    if (view != null) {
                        int measuredWidth4 = ((this.f1981k0 ? this.f1972g : floatingActionButton2.getMeasuredWidth()) / 2) + this.f1974h;
                        int i16 = this.f1975h0;
                        int i17 = i16 == 0 ? paddingRight - measuredWidth4 : measuredWidth4 + paddingRight;
                        int measuredWidth5 = i16 == 0 ? i17 - view.getMeasuredWidth() : view.getMeasuredWidth() + i17;
                        int i18 = this.f1975h0;
                        int i19 = i18 == 0 ? measuredWidth5 : i17;
                        if (i18 != 0) {
                            i17 = measuredWidth5;
                        }
                        int measuredHeight3 = ((floatingActionButton2.getMeasuredHeight() - view.getMeasuredHeight()) / 2) + (measuredHeight - this.f1976i);
                        view.layout(i19, measuredHeight3, i17, view.getMeasuredHeight() + measuredHeight3);
                        if (!this.f1982l) {
                            view.setVisibility(4);
                        }
                    }
                    measuredHeight = z10 ? measuredHeight - this.f1968e : this.f1968e + childAt.getMeasuredHeight() + measuredHeight;
                }
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        this.f1972g = 0;
        measureChildWithMargins(this.f1958U, i10, 0, i11, 0);
        for (int i12 = 0; i12 < this.f1978j; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8 && childAt != this.f1958U) {
                measureChildWithMargins(childAt, i10, 0, i11, 0);
                this.f1972g = Math.max(this.f1972g, childAt.getMeasuredWidth());
            }
        }
        int i13 = 0;
        int iMax = 0;
        int measuredHeight = 0;
        while (true) {
            if (i13 >= this.f1978j) {
                break;
            }
            View childAt2 = getChildAt(i13);
            if (childAt2.getVisibility() != 8 && childAt2 != this.f1958U) {
                int measuredWidth = childAt2.getMeasuredWidth();
                measuredHeight += childAt2.getMeasuredHeight();
                C3703k c3703k = (C3703k) childAt2.getTag(R.id.fab_label);
                if (c3703k != null) {
                    int measuredWidth2 = (this.f1972g - childAt2.getMeasuredWidth()) / (this.f1981k0 ? 1 : 2);
                    measureChildWithMargins(c3703k, i10, (c3703k.f10975g ? Math.abs(c3703k.f10971c) + c3703k.f10970b : 0) + childAt2.getMeasuredWidth() + this.f1974h + measuredWidth2, i11, 0);
                    iMax = Math.max(iMax, c3703k.getMeasuredWidth() + measuredWidth + measuredWidth2);
                }
            }
            i13++;
        }
        int paddingRight = getPaddingRight() + getPaddingLeft() + Math.max(this.f1972g, iMax + this.f1974h);
        double paddingBottom = getPaddingBottom() + getPaddingTop() + ((this.f1978j - 1) * this.f1968e) + measuredHeight;
        int defaultSize = (int) ((0.03d * paddingBottom) + paddingBottom);
        if (getLayoutParams().width == -1) {
            paddingRight = View.getDefaultSize(getSuggestedMinimumWidth(), i10);
        }
        if (getLayoutParams().height == -1) {
            defaultSize = View.getDefaultSize(getSuggestedMinimumHeight(), i11);
        }
        setMeasuredDimension(paddingRight, defaultSize);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f1965c0) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            return this.f1980k;
        }
        if (action != 1) {
            return false;
        }
        m1695a(this.f1950M);
        return true;
    }

    public void setAnimated(boolean z9) {
        this.f1950M = z9;
        this.f1962b.setDuration(z9 ? 300L : 0L);
        this.f1964c.setDuration(z9 ? 300L : 0L);
    }

    public void setAnimationDelayPerItem(int i10) {
        this.f1947J = i10;
    }

    public void setClosedOnTouchOutside(boolean z9) {
        this.f1965c0 = z9;
    }

    public void setIconAnimated(boolean z9) {
        this.f1957T = z9;
    }

    public void setIconAnimationCloseInterpolator(Interpolator interpolator) {
        this.f1964c.setInterpolator(interpolator);
    }

    public void setIconAnimationInterpolator(Interpolator interpolator) {
        this.f1962b.setInterpolator(interpolator);
        this.f1964c.setInterpolator(interpolator);
    }

    public void setIconAnimationOpenInterpolator(Interpolator interpolator) {
        this.f1962b.setInterpolator(interpolator);
    }

    public void setIconToggleAnimatorSet(AnimatorSet animatorSet) {
        this.f1966d = animatorSet;
    }

    public void setMenuButtonColorNormal(int i10) {
        this.f1943F = i10;
        this.f1970f.setColorNormal(i10);
    }

    public void setMenuButtonColorNormalResId(int i10) {
        this.f1943F = getResources().getColor(i10);
        this.f1970f.setColorNormalResId(i10);
    }

    public void setMenuButtonColorPressed(int i10) {
        this.f1944G = i10;
        this.f1970f.setColorPressed(i10);
    }

    public void setMenuButtonColorPressedResId(int i10) {
        this.f1944G = getResources().getColor(i10);
        this.f1970f.setColorPressedResId(i10);
    }

    public void setMenuButtonColorRipple(int i10) {
        this.f1945H = i10;
        this.f1970f.setColorRipple(i10);
    }

    public void setMenuButtonColorRippleResId(int i10) {
        this.f1945H = getResources().getColor(i10);
        this.f1970f.setColorRippleResId(i10);
    }

    public void setMenuButtonHideAnimation(Animation animation) {
        this.f1960W = animation;
        this.f1970f.setHideAnimation(animation);
    }

    public void setMenuButtonLabelText(String str) {
        this.f1970f.setLabelText(str);
    }

    public void setMenuButtonShowAnimation(Animation animation) {
        this.f1959V = animation;
        this.f1970f.setShowAnimation(animation);
    }

    public void setOnMenuButtonClickListener(View.OnClickListener onClickListener) {
        this.f1970f.setOnClickListener(onClickListener);
    }

    public void setOnMenuButtonLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f1970f.setOnLongClickListener(onLongClickListener);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public void setOnMenuToggleListener(InterfaceC3701i interfaceC3701i) {
    }
}

package com.github.clans.fab;

import ai.onnxruntime.a;
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
import android.text.TextUtils$TruncateAt;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import androidx.constraintlayout.motion.widget.Key;
import com.google.android.material.datepicker.m;
import e3.d;
import z1.b;
import z1.f;
import z1.g;
import z1.h;
import z1.i;
import z1.k;
import z1.l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FloatingActionMenu extends ViewGroup {
    public final boolean A;
    public final int B;
    public final float C;
    public final float D;
    public final float E;
    public int F;
    public int G;
    public int H;
    public final Drawable I;
    public int J;
    public final OvershootInterpolator K;
    public final AnticipateInterpolator L;
    public boolean M;
    public final boolean N;
    public final int O;
    public final int P;
    public final int Q;
    public final int R;
    public final Typeface S;
    public boolean T;
    public final ImageView U;
    public Animation V;
    public Animation W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Animation f1038a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnimatorSet f1039b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final Animation f1040b0;
    public final AnimatorSet c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f1041c0;
    public AnimatorSet d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final int f1042d0;
    public final int e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final ValueAnimator f1043e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FloatingActionButton f1044f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final ValueAnimator f1045f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1046g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final int f1047g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1048h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final int f1049h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f1050i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final ContextThemeWrapper f1051i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1052j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final String f1053j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1054k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final boolean f1055k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1056l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Handler f1057m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f1058n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f1059o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f1060p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f1061q;
    public final int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f1062s;
    public final ColorStateList t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float f1063u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f1064v;
    public final boolean w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f1065x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f1066y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f1067z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:38:0x0321 A[PHI: r0
  0x0321: PHI (r0v110 float) = (r0v97 float), (r0v112 float) binds: [B:42:0x0328, B:37:0x031f] A[DONT_GENERATE, DONT_INLINE]] */
    public FloatingActionMenu(Context context, AttributeSet attributeSet) {
        float f8;
        super(context, attributeSet, 0);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f1039b = animatorSet;
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.c = animatorSet2;
        this.e = d.e(getContext(), 0.0f);
        this.f1048h = d.e(getContext(), 0.0f);
        this.f1050i = d.e(getContext(), 0.0f);
        this.f1057m = new Handler();
        this.f1060p = d.e(getContext(), 4.0f);
        this.f1061q = d.e(getContext(), 8.0f);
        this.r = d.e(getContext(), 4.0f);
        this.f1062s = d.e(getContext(), 8.0f);
        this.f1064v = d.e(getContext(), 3.0f);
        this.C = 4.0f;
        this.D = 1.0f;
        this.E = 3.0f;
        this.M = true;
        this.T = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.f6190b, 0, 0);
        this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, this.e);
        this.f1048h = typedArrayObtainStyledAttributes.getDimensionPixelSize(19, this.f1048h);
        int i9 = typedArrayObtainStyledAttributes.getInt(26, 0);
        this.f1049h0 = i9;
        this.f1058n = typedArrayObtainStyledAttributes.getResourceId(27, i9 == 0 ? 2130771999 : 2130771998);
        this.f1059o = typedArrayObtainStyledAttributes.getResourceId(18, this.f1049h0 == 0 ? 2130772001 : 2130772000);
        this.f1060p = typedArrayObtainStyledAttributes.getDimensionPixelSize(25, this.f1060p);
        this.f1061q = typedArrayObtainStyledAttributes.getDimensionPixelSize(24, this.f1061q);
        this.r = typedArrayObtainStyledAttributes.getDimensionPixelSize(22, this.r);
        this.f1062s = typedArrayObtainStyledAttributes.getDimensionPixelSize(23, this.f1062s);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(31);
        this.t = colorStateList;
        if (colorStateList == null) {
            this.t = ColorStateList.valueOf(-1);
        }
        this.f1063u = typedArrayObtainStyledAttributes.getDimension(32, getResources().getDimension(2131099811));
        this.f1064v = typedArrayObtainStyledAttributes.getDimensionPixelSize(15, this.f1064v);
        this.w = typedArrayObtainStyledAttributes.getBoolean(28, true);
        this.f1065x = typedArrayObtainStyledAttributes.getColor(12, -13421773);
        this.f1066y = typedArrayObtainStyledAttributes.getColor(13, -12303292);
        this.f1067z = typedArrayObtainStyledAttributes.getColor(14, 1728053247);
        this.A = typedArrayObtainStyledAttributes.getBoolean(38, true);
        this.B = typedArrayObtainStyledAttributes.getColor(34, 1711276032);
        this.C = typedArrayObtainStyledAttributes.getDimension(35, this.C);
        this.D = typedArrayObtainStyledAttributes.getDimension(36, this.D);
        this.E = typedArrayObtainStyledAttributes.getDimension(37, this.E);
        this.F = typedArrayObtainStyledAttributes.getColor(4, -2473162);
        this.G = typedArrayObtainStyledAttributes.getColor(5, -1617853);
        this.H = typedArrayObtainStyledAttributes.getColor(6, -1711276033);
        this.J = typedArrayObtainStyledAttributes.getInt(0, 50);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(11);
        this.I = drawable;
        if (drawable == null) {
            this.I = getResources().getDrawable(2131165418);
        }
        this.N = typedArrayObtainStyledAttributes.getBoolean(29, false);
        this.O = typedArrayObtainStyledAttributes.getInt(17, 0);
        this.P = typedArrayObtainStyledAttributes.getInt(20, -1);
        this.Q = typedArrayObtainStyledAttributes.getInt(10, 0);
        this.R = typedArrayObtainStyledAttributes.getResourceId(30, 0);
        String string = typedArrayObtainStyledAttributes.getString(16);
        try {
            if (!TextUtils.isEmpty(string)) {
                this.S = Typeface.createFromAsset(getContext().getAssets(), string);
            }
            this.f1042d0 = typedArrayObtainStyledAttributes.getInt(33, 0);
            this.f1047g0 = typedArrayObtainStyledAttributes.getColor(1, 0);
            if (typedArrayObtainStyledAttributes.hasValue(8)) {
                this.f1055k0 = true;
                this.f1053j0 = typedArrayObtainStyledAttributes.getString(8);
            }
            if (typedArrayObtainStyledAttributes.hasValue(21)) {
                int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(21, 0);
                this.f1060p = dimensionPixelSize;
                this.f1061q = dimensionPixelSize;
                this.r = dimensionPixelSize;
                this.f1062s = dimensionPixelSize;
            }
            this.K = new OvershootInterpolator();
            this.L = new AnticipateInterpolator();
            this.f1051i0 = new ContextThemeWrapper(getContext(), this.R);
            int iAlpha = Color.alpha(this.f1047g0);
            int iRed = Color.red(this.f1047g0);
            int iGreen = Color.green(this.f1047g0);
            int iBlue = Color.blue(this.f1047g0);
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, iAlpha);
            this.f1043e0 = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(300L);
            this.f1043e0.addUpdateListener(new f(this, iRed, iGreen, iBlue, 0));
            ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(iAlpha, 0);
            this.f1045f0 = valueAnimatorOfInt2;
            valueAnimatorOfInt2.setDuration(300L);
            this.f1045f0.addUpdateListener(new f(this, iRed, iGreen, iBlue, 1));
            FloatingActionButton floatingActionButton = new FloatingActionButton(getContext(), null);
            this.f1044f = floatingActionButton;
            boolean z8 = this.A;
            floatingActionButton.c = z8;
            if (z8) {
                floatingActionButton.e = d.e(getContext(), this.C);
                this.f1044f.f1020f = d.e(getContext(), this.D);
                this.f1044f.f1021g = d.e(getContext(), this.E);
            }
            FloatingActionButton floatingActionButton2 = this.f1044f;
            int i10 = this.F;
            int i11 = this.G;
            int i12 = this.H;
            floatingActionButton2.f1022h = i10;
            floatingActionButton2.f1023i = i11;
            floatingActionButton2.f1025k = i12;
            floatingActionButton2.d = this.B;
            floatingActionButton2.f1019b = this.Q;
            floatingActionButton2.n();
            this.f1044f.setLabelText(this.f1053j0);
            ImageView imageView = new ImageView(getContext());
            this.U = imageView;
            imageView.setImageDrawable(this.I);
            addView(this.f1044f, super.generateDefaultLayoutParams());
            addView(this.U);
            int i13 = this.f1042d0;
            int i14 = this.f1049h0;
            float f9 = 135.0f;
            if (i13 == 0) {
                f8 = i14 == 0 ? -135.0f : 135.0f;
                if (i14 == 0) {
                    f9 = -135.0f;
                }
            } else {
                f8 = i14 == 0 ? 135.0f : -135.0f;
                if (i14 != 0) {
                    f9 = -135.0f;
                }
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.U, Key.ROTATION, f8, 0.0f);
            animatorSet.play(ObjectAnimator.ofFloat(this.U, Key.ROTATION, 0.0f, f9));
            animatorSet2.play(objectAnimatorOfFloat);
            animatorSet.setInterpolator(this.K);
            animatorSet2.setInterpolator(this.L);
            animatorSet.setDuration(300L);
            animatorSet2.setDuration(300L);
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(9, 2130771997);
            setMenuButtonShowAnimation(AnimationUtils.loadAnimation(getContext(), resourceId));
            this.f1038a0 = AnimationUtils.loadAnimation(getContext(), resourceId);
            int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(7, 2130771996);
            setMenuButtonHideAnimation(AnimationUtils.loadAnimation(getContext(), resourceId2));
            this.f1040b0 = AnimationUtils.loadAnimation(getContext(), resourceId2);
            typedArrayObtainStyledAttributes.recycle();
        } catch (RuntimeException e) {
            throw new IllegalArgumentException(a.l("Unable to load specified custom font: ", string), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setLabelEllipsize(k kVar) {
        int i9 = this.O;
        if (i9 == 1) {
            kVar.setEllipsize(TextUtils$TruncateAt.START);
            return;
        }
        if (i9 == 2) {
            kVar.setEllipsize(TextUtils$TruncateAt.MIDDLE);
        } else if (i9 == 3) {
            kVar.setEllipsize(TextUtils$TruncateAt.END);
        } else {
            if (i9 != 4) {
                return;
            }
            kVar.setEllipsize(TextUtils$TruncateAt.MARQUEE);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(boolean z8) {
        if (!this.f1054k) {
            return;
        }
        if (this.f1047g0 != 0) {
            this.f1045f0.start();
        }
        if (this.T) {
            AnimatorSet animatorSet = this.d;
            if (animatorSet != null) {
                animatorSet.start();
            } else {
                this.c.start();
                this.f1039b.cancel();
            }
        }
        int i9 = 0;
        this.f1056l = false;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int childCount = getChildCount();
            Handler handler = this.f1057m;
            if (i9 >= childCount) {
                handler.postDelayed(new h(this, 1), (i10 + 1) * this.J);
                return;
            }
            View childAt = getChildAt(i9);
            if ((childAt instanceof FloatingActionButton) && childAt.getVisibility() != 8) {
                i10++;
                handler.postDelayed(new g(this, (FloatingActionButton) childAt, z8, 1), i11);
                i11 += this.J;
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup$MarginLayoutParams(-2, -2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup$MarginLayoutParams(getContext(), attributeSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getAnimationDelayPerItem() {
        return this.J;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimatorSet getIconToggleAnimatorSet() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMenuButtonColorNormal() {
        return this.F;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMenuButtonColorPressed() {
        return this.G;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMenuButtonColorRipple() {
        return this.H;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getMenuButtonLabelText() {
        return this.f1053j0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ImageView getMenuIconView() {
        return this.U;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        bringChildToFront(this.f1044f);
        bringChildToFront(this.U);
        this.f1052j = getChildCount();
        for (int i9 = 0; i9 < this.f1052j; i9++) {
            if (getChildAt(i9) != this.U) {
                FloatingActionButton floatingActionButton = (FloatingActionButton) getChildAt(i9);
                if (floatingActionButton.getTag(2131296762) == null) {
                    String labelText = floatingActionButton.getLabelText();
                    if (!TextUtils.isEmpty(labelText)) {
                        k kVar = new k(this.f1051i0);
                        kVar.f6177g = true;
                        kVar.r = true;
                        kVar.f6188s = new GestureDetector(kVar.getContext(), new b(1, kVar));
                        kVar.setClickable(true);
                        kVar.setFab(floatingActionButton);
                        kVar.setShowAnimation(AnimationUtils.loadAnimation(getContext(), this.f1058n));
                        kVar.setHideAnimation(AnimationUtils.loadAnimation(getContext(), this.f1059o));
                        if (this.R > 0) {
                            kVar.setTextAppearance(getContext(), this.R);
                            kVar.setShowShadow(false);
                            kVar.setUsingStyle(true);
                        } else {
                            kVar.f6180j = this.f1065x;
                            kVar.f6181k = this.f1066y;
                            kVar.f6182l = this.f1067z;
                            kVar.setShowShadow(this.w);
                            kVar.setCornerRadius(this.f1064v);
                            if (this.O > 0) {
                                setLabelEllipsize(kVar);
                            }
                            kVar.setMaxLines(this.P);
                            kVar.e();
                            kVar.setTextSize(0, this.f1063u);
                            kVar.setTextColor(this.t);
                            boolean z8 = this.w;
                            int iAbs = this.f1062s;
                            int iAbs2 = this.f1060p;
                            if (z8) {
                                iAbs += Math.abs(floatingActionButton.getShadowXOffset()) + floatingActionButton.getShadowRadius();
                                iAbs2 += Math.abs(floatingActionButton.getShadowYOffset()) + floatingActionButton.getShadowRadius();
                            }
                            kVar.setPadding(iAbs, iAbs2, this.f1062s, this.f1060p);
                            if (this.P < 0 || this.N) {
                                kVar.setSingleLine(this.N);
                            }
                        }
                        Typeface typeface = this.S;
                        if (typeface != null) {
                            kVar.setTypeface(typeface);
                        }
                        kVar.setText(labelText);
                        kVar.setOnClickListener(floatingActionButton.getOnClickListener());
                        addView(kVar);
                        floatingActionButton.setTag(2131296762, kVar);
                    }
                    FloatingActionButton floatingActionButton2 = this.f1044f;
                    if (floatingActionButton == floatingActionButton2) {
                        floatingActionButton2.setOnClickListener(new m(3, this));
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        int i13 = this.f1046g;
        int paddingRight = this.f1049h0 == 0 ? ((i11 - i9) - (i13 / 2)) - getPaddingRight() : getPaddingLeft() + (i13 / 2);
        boolean z9 = this.f1042d0 == 0;
        int measuredHeight = z9 ? ((i12 - i10) - this.f1044f.getMeasuredHeight()) - getPaddingBottom() : getPaddingTop();
        int measuredWidth = paddingRight - (this.f1044f.getMeasuredWidth() / 2);
        FloatingActionButton floatingActionButton = this.f1044f;
        floatingActionButton.layout(measuredWidth, measuredHeight, floatingActionButton.getMeasuredWidth() + measuredWidth, this.f1044f.getMeasuredHeight() + measuredHeight);
        int measuredWidth2 = paddingRight - (this.U.getMeasuredWidth() / 2);
        int measuredHeight2 = ((this.f1044f.getMeasuredHeight() / 2) + measuredHeight) - (this.U.getMeasuredHeight() / 2);
        ImageView imageView = this.U;
        imageView.layout(measuredWidth2, measuredHeight2, imageView.getMeasuredWidth() + measuredWidth2, this.U.getMeasuredHeight() + measuredHeight2);
        if (z9) {
            measuredHeight = this.e + this.f1044f.getMeasuredHeight() + measuredHeight;
        }
        for (int i14 = this.f1052j - 1; i14 >= 0; i14--) {
            View childAt = getChildAt(i14);
            if (childAt != this.U) {
                FloatingActionButton floatingActionButton2 = (FloatingActionButton) childAt;
                if (floatingActionButton2.getVisibility() != 8) {
                    int measuredWidth3 = paddingRight - (floatingActionButton2.getMeasuredWidth() / 2);
                    if (z9) {
                        measuredHeight = (measuredHeight - floatingActionButton2.getMeasuredHeight()) - this.e;
                    }
                    if (floatingActionButton2 != this.f1044f) {
                        floatingActionButton2.layout(measuredWidth3, measuredHeight, floatingActionButton2.getMeasuredWidth() + measuredWidth3, floatingActionButton2.getMeasuredHeight() + measuredHeight);
                        if (!this.f1056l) {
                            floatingActionButton2.g(false);
                        }
                    }
                    View view = (View) floatingActionButton2.getTag(2131296762);
                    if (view != null) {
                        int measuredWidth4 = ((this.f1055k0 ? this.f1046g : floatingActionButton2.getMeasuredWidth()) / 2) + this.f1048h;
                        int i15 = this.f1049h0;
                        int i16 = i15 == 0 ? paddingRight - measuredWidth4 : measuredWidth4 + paddingRight;
                        int measuredWidth5 = i15 == 0 ? i16 - view.getMeasuredWidth() : view.getMeasuredWidth() + i16;
                        int i17 = this.f1049h0;
                        int i18 = i17 == 0 ? measuredWidth5 : i16;
                        if (i17 != 0) {
                            i16 = measuredWidth5;
                        }
                        int measuredHeight3 = ((floatingActionButton2.getMeasuredHeight() - view.getMeasuredHeight()) / 2) + (measuredHeight - this.f1050i);
                        view.layout(i18, measuredHeight3, i16, view.getMeasuredHeight() + measuredHeight3);
                        if (!this.f1056l) {
                            view.setVisibility(4);
                        }
                    }
                    measuredHeight = z9 ? measuredHeight - this.e : this.e + childAt.getMeasuredHeight() + measuredHeight;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onMeasure(int i9, int i10) {
        this.f1046g = 0;
        measureChildWithMargins(this.U, i9, 0, i10, 0);
        for (int i11 = 0; i11 < this.f1052j; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8 && childAt != this.U) {
                measureChildWithMargins(childAt, i9, 0, i10, 0);
                this.f1046g = Math.max(this.f1046g, childAt.getMeasuredWidth());
            }
        }
        int i12 = 0;
        int iMax = 0;
        int measuredHeight = 0;
        while (true) {
            if (i12 >= this.f1052j) {
                break;
            }
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8 && childAt2 != this.U) {
                int measuredWidth = childAt2.getMeasuredWidth();
                measuredHeight += childAt2.getMeasuredHeight();
                k kVar = (k) childAt2.getTag(2131296762);
                if (kVar != null) {
                    int measuredWidth2 = (this.f1046g - childAt2.getMeasuredWidth()) / (this.f1055k0 ? 1 : 2);
                    measureChildWithMargins(kVar, i9, (kVar.f6177g ? Math.abs(kVar.c) + kVar.f6175b : 0) + childAt2.getMeasuredWidth() + this.f1048h + measuredWidth2, i10, 0);
                    iMax = Math.max(iMax, kVar.getMeasuredWidth() + measuredWidth + measuredWidth2);
                }
            }
            i12++;
        }
        int paddingRight = getPaddingRight() + getPaddingLeft() + Math.max(this.f1046g, iMax + this.f1048h);
        double paddingBottom = getPaddingBottom() + getPaddingTop() + ((this.f1052j - 1) * this.e) + measuredHeight;
        int defaultSize = (int) ((0.03d * paddingBottom) + paddingBottom);
        if (getLayoutParams().width == -1) {
            paddingRight = View.getDefaultSize(getSuggestedMinimumWidth(), i9);
        }
        if (getLayoutParams().height == -1) {
            defaultSize = View.getDefaultSize(getSuggestedMinimumHeight(), i10);
        }
        setMeasuredDimension(paddingRight, defaultSize);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f1041c0) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            return this.f1054k;
        }
        if (action != 1) {
            return false;
        }
        a(this.M);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAnimated(boolean z8) {
        this.M = z8;
        this.f1039b.setDuration(z8 ? 300L : 0L);
        this.c.setDuration(z8 ? 300L : 0L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAnimationDelayPerItem(int i9) {
        this.J = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setClosedOnTouchOutside(boolean z8) {
        this.f1041c0 = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconAnimated(boolean z8) {
        this.T = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconAnimationCloseInterpolator(Interpolator interpolator) {
        this.c.setInterpolator(interpolator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconAnimationInterpolator(Interpolator interpolator) {
        this.f1039b.setInterpolator(interpolator);
        this.c.setInterpolator(interpolator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconAnimationOpenInterpolator(Interpolator interpolator) {
        this.f1039b.setInterpolator(interpolator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconToggleAnimatorSet(AnimatorSet animatorSet) {
        this.d = animatorSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMenuButtonColorNormal(int i9) {
        this.F = i9;
        this.f1044f.setColorNormal(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMenuButtonColorNormalResId(int i9) {
        this.F = getResources().getColor(i9);
        this.f1044f.setColorNormalResId(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMenuButtonColorPressed(int i9) {
        this.G = i9;
        this.f1044f.setColorPressed(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMenuButtonColorPressedResId(int i9) {
        this.G = getResources().getColor(i9);
        this.f1044f.setColorPressedResId(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMenuButtonColorRipple(int i9) {
        this.H = i9;
        this.f1044f.setColorRipple(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMenuButtonColorRippleResId(int i9) {
        this.H = getResources().getColor(i9);
        this.f1044f.setColorRippleResId(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMenuButtonHideAnimation(Animation animation) {
        this.W = animation;
        this.f1044f.setHideAnimation(animation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMenuButtonLabelText(String str) {
        this.f1044f.setLabelText(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMenuButtonShowAnimation(Animation animation) {
        this.V = animation;
        this.f1044f.setShowAnimation(animation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnMenuButtonClickListener(View$OnClickListener view$OnClickListener) {
        this.f1044f.setOnClickListener(view$OnClickListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnMenuButtonLongClickListener(View$OnLongClickListener view$OnLongClickListener) {
        this.f1044f.setOnLongClickListener(view$OnLongClickListener);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return new ViewGroup$MarginLayoutParams(viewGroup$LayoutParams);
    }

    public void setOnMenuToggleListener(i iVar) {
    }
}

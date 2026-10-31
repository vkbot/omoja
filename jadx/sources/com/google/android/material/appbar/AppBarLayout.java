package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.support.v4.media.C0090h;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.AbstractC1034g;
import com.example.navistart.R;
import com.google.android.material.appbar.AppBarLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import p004a3.AbstractC0007a;
import p016b1.AbstractC0880u;
import p018b3.AbstractC0884a;
import p028c3.AbstractC0980f;
import p028c3.AbstractC0981g;
import p028c3.AbstractC0984j;
import p028c3.C0977c;
import p028c3.C0983i;
import p071g4.AbstractC1618a;
import p099j1.C1929i;
import p134m3.AbstractC2381a;
import p142n0.C2467b;
import p154o3.AbstractC2585c;
import p184r5.C3105c;
import p192s3.AbstractC3198l;
import p228w3.AbstractC3517b;
import p228w3.AbstractC3518c;
import p258z3.C3725k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {

    /* JADX INFO: renamed from: B */
    public static final /* synthetic */ int f2041B = 0;

    /* JADX INFO: renamed from: A */
    public Behavior f2042A;

    /* JADX INFO: renamed from: b */
    public int f2043b;

    /* JADX INFO: renamed from: c */
    public int f2044c;

    /* JADX INFO: renamed from: d */
    public int f2045d;

    /* JADX INFO: renamed from: e */
    public int f2046e;

    /* JADX INFO: renamed from: f */
    public boolean f2047f;

    /* JADX INFO: renamed from: g */
    public int f2048g;

    /* JADX INFO: renamed from: h */
    public WindowInsetsCompat f2049h;

    /* JADX INFO: renamed from: i */
    public boolean f2050i;

    /* JADX INFO: renamed from: j */
    public boolean f2051j;

    /* JADX INFO: renamed from: k */
    public boolean f2052k;

    /* JADX INFO: renamed from: l */
    public boolean f2053l;

    /* JADX INFO: renamed from: m */
    public ColorStateList f2054m;

    /* JADX INFO: renamed from: n */
    public int f2055n;

    /* JADX INFO: renamed from: o */
    public WeakReference f2056o;

    /* JADX INFO: renamed from: p */
    public ValueAnimator f2057p;

    /* JADX INFO: renamed from: q */
    public ValueAnimator.AnimatorUpdateListener f2058q;

    /* JADX INFO: renamed from: r */
    public final ArrayList f2059r;

    /* JADX INFO: renamed from: s */
    public final LinkedHashSet f2060s;

    /* JADX INFO: renamed from: t */
    public final long f2061t;

    /* JADX INFO: renamed from: u */
    public final TimeInterpolator f2062u;

    /* JADX INFO: renamed from: v */
    public int[] f2063v;

    /* JADX INFO: renamed from: w */
    public int f2064w;

    /* JADX INFO: renamed from: x */
    public Drawable f2065x;

    /* JADX INFO: renamed from: y */
    public Integer f2066y;

    /* JADX INFO: renamed from: z */
    public final float f2067z;

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(AbstractC1618a.m2696a(context, attributeSet, R.attr.appBarLayoutStyle, R.style.Widget_Design_AppBarLayout), attributeSet, R.attr.appBarLayoutStyle);
        this.f2044c = -1;
        this.f2045d = -1;
        this.f2046e = -1;
        this.f2048g = 0;
        this.f2059r = new ArrayList();
        this.f2060s = new LinkedHashSet();
        Context context2 = getContext();
        setOrientation(1);
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
        }
        Context context3 = getContext();
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context3, attributeSet, AbstractC0984j.f933a, R.attr.appBarLayoutStyle, R.style.Widget_Design_AppBarLayout, new int[0]);
        try {
            if (typedArrayM5136d.hasValue(0)) {
                setStateListAnimator(AnimatorInflater.loadStateListAnimator(context3, typedArrayM5136d.getResourceId(0, 0)));
            }
            typedArrayM5136d.recycle();
            TypedArray typedArrayM5136d2 = AbstractC3198l.m5136d(context2, attributeSet, AbstractC0007a.f22a, R.attr.appBarLayoutStyle, R.style.Widget_Design_AppBarLayout, new int[0]);
            this.f2054m = AbstractC3518c.m5587a(context2, typedArrayM5136d2, 6);
            this.f2061t = AbstractC1031d.m1287q(context2, R.attr.motionDurationMedium2, getResources().getInteger(R.integer.app_bar_elevation_anim_duration));
            this.f2062u = AbstractC1031d.m1288r(context2, R.attr.motionEasingStandardInterpolator, AbstractC0884a.f661a);
            if (typedArrayM5136d2.hasValue(4)) {
                m1737d(typedArrayM5136d2.getBoolean(4, false), false, false);
            }
            if (typedArrayM5136d2.hasValue(3)) {
                AbstractC0984j.m1130a(this, typedArrayM5136d2.getDimensionPixelSize(3, 0));
            }
            setBackground(typedArrayM5136d2.getDrawable(0));
            if (Build.VERSION.SDK_INT >= 26) {
                if (typedArrayM5136d2.hasValue(2)) {
                    setKeyboardNavigationCluster(typedArrayM5136d2.getBoolean(2, false));
                }
                if (typedArrayM5136d2.hasValue(1)) {
                    setTouchscreenBlocksFocus(typedArrayM5136d2.getBoolean(1, false));
                }
            }
            this.f2067z = getResources().getDimension(R.dimen.design_appbar_elevation);
            this.f2053l = typedArrayM5136d2.getBoolean(5, false);
            this.f2055n = typedArrayM5136d2.getResourceId(7, -1);
            setStatusBarForeground(typedArrayM5136d2.getDrawable(8));
            typedArrayM5136d2.recycle();
            ViewCompat.setOnApplyWindowInsetsListener(this, new C3105c(4, this));
        } catch (Throwable th) {
            typedArrayM5136d.recycle();
            throw th;
        }
    }

    /* JADX INFO: renamed from: b */
    public static C0977c m1734b(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            C0977c c0977c = new C0977c((LinearLayout.LayoutParams) layoutParams);
            c0977c.f909a = 1;
            return c0977c;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            C0977c c0977c2 = new C0977c((ViewGroup.MarginLayoutParams) layoutParams);
            c0977c2.f909a = 1;
            return c0977c2;
        }
        C0977c c0977c3 = new C0977c(layoutParams);
        c0977c3.f909a = 1;
        return c0977c3;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0977c generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        C0977c c0977c = new C0977c(context, attributeSet);
        c0977c.f909a = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0007a.f23b);
        c0977c.f909a = typedArrayObtainStyledAttributes.getInt(1, 0);
        c0977c.f910b = typedArrayObtainStyledAttributes.getInt(0, 0) != 1 ? null : new C0090h(3);
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            c0977c.f911c = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        return c0977c;
    }

    /* JADX INFO: renamed from: c */
    public final void m1736c() {
        Behavior behavior = this.f2042A;
        C1086d c1086dM1746j = (behavior == null || this.f2044c == -1 || this.f2048g != 0) ? null : behavior.m1746j(AbsSavedState.EMPTY_STATE, this);
        this.f2044c = -1;
        this.f2045d = -1;
        this.f2046e = -1;
        if (c1086dM1746j != null) {
            Behavior behavior2 = this.f2042A;
            if (behavior2.f2071m != null) {
                return;
            }
            behavior2.f2071m = c1086dM1746j;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0977c;
    }

    /* JADX INFO: renamed from: d */
    public final void m1737d(boolean z9, boolean z10, boolean z11) {
        this.f2048g = (z9 ? 1 : 2) | (z10 ? 4 : 0) | (z11 ? 8 : 0);
        requestLayout();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f2065x == null || getTopInset() <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(0.0f, -this.f2043b);
        this.f2065x.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f2065x;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: renamed from: e */
    public final boolean m1738e(boolean z9) {
        if (this.f2050i || this.f2052k == z9) {
            return false;
        }
        this.f2052k = z9;
        refreshDrawableState();
        if (!(getBackground() instanceof C3725k)) {
            return true;
        }
        if (this.f2054m != null) {
            m1740g(z9 ? 0.0f : 1.0f, z9 ? 1.0f : 0.0f);
            return true;
        }
        if (!this.f2053l) {
            return true;
        }
        float f8 = this.f2067z;
        m1740g(z9 ? 0.0f : f8, z9 ? f8 : 0.0f);
        return true;
    }

    /* JADX INFO: renamed from: f */
    public final boolean m1739f(View view) {
        int i10;
        if (this.f2056o == null && (i10 = this.f2055n) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i10) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.f2055n);
            }
            if (viewFindViewById != null) {
                this.f2056o = new WeakReference(viewFindViewById);
            }
        }
        WeakReference weakReference = this.f2056o;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view = view2;
        }
        if (view != null) {
            return view.canScrollVertically(-1) || view.getScrollY() > 0;
        }
        return false;
    }

    /* JADX INFO: renamed from: g */
    public final void m1740g(float f8, float f10) {
        ValueAnimator valueAnimator = this.f2057p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f8, f10);
        this.f2057p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f2061t);
        this.f2057p.setInterpolator(this.f2062u);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f2058q;
        if (animatorUpdateListener != null) {
            this.f2057p.addUpdateListener(animatorUpdateListener);
        }
        this.f2057p.start();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        C0977c c0977c = new C0977c(-1, -2);
        c0977c.f909a = 1;
        return c0977c;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        Behavior behavior = new Behavior();
        this.f2042A = behavior;
        return behavior;
    }

    public int getDownNestedPreScrollRange() {
        int iMin;
        int minimumHeight;
        int i10 = this.f2045d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() != 8) {
                C0977c c0977c = (C0977c) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i12 = c0977c.f909a;
                if ((i12 & 5) != 5) {
                    if (i11 > 0) {
                        break;
                    }
                } else {
                    int i13 = ((LinearLayout.LayoutParams) c0977c).topMargin + ((LinearLayout.LayoutParams) c0977c).bottomMargin;
                    if ((i12 & 8) != 0) {
                        minimumHeight = childAt.getMinimumHeight();
                    } else {
                        if ((i12 & 2) != 0) {
                            minimumHeight = measuredHeight - childAt.getMinimumHeight();
                        } else {
                            iMin = i13 + measuredHeight;
                        }
                        if (childCount == 0 && childAt.getFitsSystemWindows()) {
                            iMin = Math.min(iMin, measuredHeight - getTopInset());
                        }
                        i11 += iMin;
                    }
                    iMin = minimumHeight + i13;
                    if (childCount == 0) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                    i11 += iMin;
                }
            }
        }
        int iMax = Math.max(0, i11);
        this.f2045d = iMax;
        return iMax;
    }

    public int getDownNestedScrollRange() {
        int i10 = this.f2046e;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                C0977c c0977c = (C0977c) childAt.getLayoutParams();
                int measuredHeight = ((LinearLayout.LayoutParams) c0977c).topMargin + ((LinearLayout.LayoutParams) c0977c).bottomMargin + childAt.getMeasuredHeight();
                int i12 = c0977c.f909a;
                if ((i12 & 1) == 0) {
                    break;
                }
                minimumHeight += measuredHeight;
                if ((i12 & 2) != 0) {
                    minimumHeight -= childAt.getMinimumHeight();
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.f2046e = iMax;
        return iMax;
    }

    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.f2055n;
    }

    @Nullable
    public C3725k getMaterialShapeBackground() {
        Drawable background = getBackground();
        if (background instanceof C3725k) {
            return (C3725k) background;
        }
        return null;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = getMinimumHeight();
        if (minimumHeight != 0) {
            int i10 = (minimumHeight * 2) + topInset;
            return i10 < getHeight() ? i10 : minimumHeight + topInset;
        }
        int childCount = getChildCount();
        int minimumHeight2 = childCount >= 1 ? getChildAt(childCount - 1).getMinimumHeight() : 0;
        if (minimumHeight2 == 0) {
            return getHeight() / 3;
        }
        int i11 = (minimumHeight2 * 2) + topInset;
        return i11 < getHeight() ? i11 : minimumHeight2 + topInset;
    }

    public int getPendingAction() {
        return this.f2048g;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.f2065x;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    public final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.f2049h;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i10 = this.f2044c;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                C0977c c0977c = (C0977c) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i12 = c0977c.f909a;
                if ((i12 & 1) == 0) {
                    break;
                }
                int topInset = measuredHeight + ((LinearLayout.LayoutParams) c0977c).topMargin + ((LinearLayout.LayoutParams) c0977c).bottomMargin + minimumHeight;
                if (i11 == 0 && childAt.getFitsSystemWindows()) {
                    topInset -= getTopInset();
                }
                minimumHeight = topInset;
                if ((i12 & 2) != 0) {
                    minimumHeight -= childAt.getMinimumHeight();
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.f2044c = iMax;
        return iMax;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof C3725k) {
            AbstractC0880u.m1006w(this, (C3725k) background);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        if (this.f2063v == null) {
            this.f2063v = new int[4];
        }
        int[] iArr = this.f2063v;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + iArr.length);
        boolean z9 = this.f2051j;
        iArr[0] = z9 ? R.attr.state_liftable : -2130904330;
        iArr[1] = (z9 && this.f2052k) ? R.attr.state_lifted : -2130904331;
        iArr[2] = z9 ? R.attr.state_collapsible : -2130904326;
        iArr[3] = (z9 && this.f2052k) ? R.attr.state_collapsed : -2130904325;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference weakReference = this.f2056o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f2056o = null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        super.onLayout(z9, i10, i11, i12, i13);
        boolean z10 = true;
        if (getFitsSystemWindows() && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !childAt.getFitsSystemWindows()) {
                int topInset = getTopInset();
                for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                    ViewCompat.offsetTopAndBottom(getChildAt(childCount), topInset);
                }
            }
        }
        m1736c();
        this.f2047f = false;
        int childCount2 = getChildCount();
        for (int i14 = 0; i14 < childCount2; i14++) {
            if (((C0977c) getChildAt(i14).getLayoutParams()).f911c != null) {
                this.f2047f = true;
                break;
            }
        }
        Drawable drawable = this.f2065x;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f2050i) {
            return;
        }
        if (!this.f2053l) {
            int childCount3 = getChildCount();
            int i15 = 0;
            while (true) {
                if (i15 >= childCount3) {
                    z10 = false;
                    break;
                }
                int i16 = ((C0977c) getChildAt(i15).getLayoutParams()).f909a;
                if ((i16 & 1) == 1 && (i16 & 10) != 0) {
                    break;
                } else {
                    i15++;
                }
            }
        }
        if (this.f2051j != z10) {
            this.f2051j = z10;
            refreshDrawableState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        if (mode != 1073741824 && getFitsSystemWindows() && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !childAt.getFitsSystemWindows()) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = MathUtils.clamp(getTopInset() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i11));
                } else if (mode == 0) {
                    measuredHeight += getTopInset();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        m1736c();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        final C3725k c3725k;
        ColorStateList colorStateList;
        Context context = getContext();
        final Integer numValueOf = null;
        if (drawable instanceof C3725k) {
            c3725k = (C3725k) drawable;
        } else {
            ColorStateList colorStateListM4029d = AbstractC2585c.m4029d(drawable);
            if (colorStateListM4029d == null) {
                c3725k = null;
            } else {
                C3725k c3725k2 = new C3725k();
                c3725k2.m5948q(colorStateListM4029d);
                c3725k = c3725k2;
            }
        }
        if (c3725k != null && (colorStateList = c3725k.f11048c.f11024d) != null) {
            this.f2064w = colorStateList.getDefaultColor();
            final ColorStateList colorStateList2 = this.f2054m;
            if (colorStateList2 != null) {
                Context context2 = getContext();
                TypedValue typedValueM5584a = AbstractC3517b.m5584a(R.attr.colorSurface, context2);
                if (typedValueM5584a != null) {
                    int i10 = typedValueM5584a.resourceId;
                    numValueOf = Integer.valueOf(i10 != 0 ? ContextCompat.getColor(context2, i10) : typedValueM5584a.data);
                }
                this.f2058q = new ValueAnimator.AnimatorUpdateListener() { // from class: c3.a
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        Integer num;
                        AppBarLayout appBarLayout = this.f903a;
                        LinkedHashSet linkedHashSet = appBarLayout.f2060s;
                        ArrayList arrayList = appBarLayout.f2059r;
                        int iM3748c = AbstractC2381a.m3748c(((Float) valueAnimator.getAnimatedValue()).floatValue(), appBarLayout.f2064w, colorStateList2.getDefaultColor());
                        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iM3748c);
                        C3725k c3725k3 = c3725k;
                        c3725k3.m5948q(colorStateListValueOf);
                        if (appBarLayout.f2065x != null && (num = appBarLayout.f2066y) != null && num.equals(numValueOf)) {
                            appBarLayout.f2065x.setTint(iM3748c);
                        }
                        if (!arrayList.isEmpty()) {
                            int size = arrayList.size();
                            int i11 = 0;
                            while (i11 < size) {
                                Object obj = arrayList.get(i11);
                                i11++;
                                if (obj != null) {
                                    C2467b.m3822a();
                                    return;
                                } else if (c3725k3.f11048c.f11024d != null) {
                                    throw null;
                                }
                            }
                        }
                        if (linkedHashSet.isEmpty()) {
                            return;
                        }
                        Iterator it = linkedHashSet.iterator();
                        if (it.hasNext()) {
                            throw AbstractC1034g.m1295b(it);
                        }
                    }
                };
            } else {
                c3725k.m5944m(context);
                this.f2058q = new ValueAnimator.AnimatorUpdateListener() { // from class: c3.b
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        int i11 = AppBarLayout.f2041B;
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        c3725k.m5947p(fFloatValue);
                        AppBarLayout appBarLayout = this.f907a;
                        Drawable drawable2 = appBarLayout.f2065x;
                        if (drawable2 instanceof C3725k) {
                            ((C3725k) drawable2).m5947p(fFloatValue);
                        }
                        Iterator it = appBarLayout.f2059r.iterator();
                        if (it.hasNext()) {
                            throw AbstractC1034g.m1295b(it);
                        }
                        Iterator it2 = appBarLayout.f2060s.iterator();
                        if (it2.hasNext()) {
                            throw AbstractC1034g.m1295b(it2);
                        }
                    }
                };
            }
            drawable = c3725k;
        }
        super.setBackground(drawable);
    }

    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        Drawable background = getBackground();
        if (background instanceof C3725k) {
            ((C3725k) background).m5947p(f8);
        }
    }

    public void setExpanded(boolean z9) {
        m1737d(z9, isLaidOut(), true);
    }

    public void setLiftOnScroll(boolean z9) {
        this.f2053l = z9;
    }

    public void setLiftOnScrollColor(@Nullable ColorStateList colorStateList) {
        if (this.f2054m != colorStateList) {
            this.f2054m = colorStateList;
            setBackground(getBackground());
        }
    }

    public void setLiftOnScrollTargetView(@Nullable View view) {
        this.f2055n = -1;
        if (view != null) {
            this.f2056o = new WeakReference(view);
            return;
        }
        WeakReference weakReference = this.f2056o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f2056o = null;
    }

    public void setLiftOnScrollTargetViewId(@IdRes int i10) {
        this.f2055n = i10;
        WeakReference weakReference = this.f2056o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f2056o = null;
    }

    public void setLiftableOverrideEnabled(boolean z9) {
        this.f2050i = z9;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i10) {
        if (i10 == 1) {
            super.setOrientation(i10);
        } else {
            C1929i.m3029k("AppBarLayout is always vertical and does not support horizontal orientation");
        }
    }

    public void setPendingAction(int i10) {
        this.f2048g = i10;
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f2065x;
        if (drawable2 != drawable) {
            Integer numValueOf = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f2065x = drawableMutate;
            if (drawableMutate instanceof C3725k) {
                numValueOf = Integer.valueOf(((C3725k) drawableMutate).f11068w);
            } else {
                ColorStateList colorStateListM4029d = AbstractC2585c.m4029d(drawableMutate);
                if (colorStateListM4029d != null) {
                    numValueOf = Integer.valueOf(colorStateListM4029d.getDefaultColor());
                }
            }
            this.f2066y = numValueOf;
            Drawable drawable3 = this.f2065x;
            boolean z9 = false;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f2065x.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f2065x, getLayoutDirection());
                this.f2065x.setVisible(getVisibility() == 0, false);
                this.f2065x.setCallback(this);
            }
            if (this.f2065x != null && getTopInset() > 0) {
                z9 = true;
            }
            setWillNotDraw(!z9);
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarForegroundColor(@ColorInt int i10) {
        setStatusBarForeground(new ColorDrawable(i10));
    }

    public void setStatusBarForegroundResource(@DrawableRes int i10) {
        setStatusBarForeground(AppCompatResources.getDrawable(getContext(), i10));
    }

    @Deprecated
    public void setTargetElevation(float f8) {
        AbstractC0984j.m1130a(this, f8);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z9 = i10 == 0;
        Drawable drawable = this.f2065x;
        if (drawable != null) {
            drawable.setVisible(z9, false);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2065x;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m1734b(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m1734b(layoutParams);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class BaseBehavior<T extends AppBarLayout> extends AbstractC0980f {

        /* JADX INFO: renamed from: j */
        public int f2068j;

        /* JADX INFO: renamed from: k */
        public int f2069k;

        /* JADX INFO: renamed from: l */
        public ValueAnimator f2070l;

        /* JADX INFO: renamed from: m */
        public C1086d f2071m;

        /* JADX INFO: renamed from: n */
        public WeakReference f2072n;

        public BaseBehavior() {
            this.f919f = -1;
            this.f921h = -1;
        }

        /* JADX INFO: renamed from: f */
        public static View m1741f(BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).getBehavior() instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: h */
        public static View m1742h(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof AbsListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:26:0x005a  */
        /* JADX INFO: renamed from: l */
        public static void m1743l(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10, int i11, boolean z9) {
            View childAt;
            boolean zM1739f;
            int iAbs = Math.abs(i10);
            int childCount = appBarLayout.getChildCount();
            int i12 = 0;
            while (true) {
                if (i12 >= childCount) {
                    childAt = null;
                    break;
                }
                childAt = appBarLayout.getChildAt(i12);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    break;
                } else {
                    i12++;
                }
            }
            if (childAt != null) {
                int i13 = ((C0977c) childAt.getLayoutParams()).f909a;
                if ((i13 & 1) != 0) {
                    int minimumHeight = childAt.getMinimumHeight();
                    zM1739f = true;
                    if (i11 <= 0 || (i13 & 12) == 0 ? (i13 & 2) == 0 || (-i10) < (childAt.getBottom() - minimumHeight) - appBarLayout.getTopInset() : (-i10) < (childAt.getBottom() - minimumHeight) - appBarLayout.getTopInset()) {
                        zM1739f = false;
                    }
                } else {
                    zM1739f = false;
                }
            } else {
                zM1739f = false;
            }
            if (appBarLayout.f2053l) {
                zM1739f = appBarLayout.m1739f(m1742h(coordinatorLayout));
            }
            boolean zM1738e = appBarLayout.m1738e(zM1739f);
            if (!z9) {
                if (zM1738e) {
                    List<View> dependents = coordinatorLayout.getDependents(appBarLayout);
                    int size = dependents.size();
                    for (int i14 = 0; i14 < size; i14++) {
                        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i14).getLayoutParams()).getBehavior();
                        if (behavior instanceof ScrollingViewBehavior) {
                            if (((ScrollingViewBehavior) behavior).f926f == 0) {
                                return;
                            }
                        }
                    }
                    return;
                }
                return;
            }
            if (appBarLayout.getBackground() != null) {
                appBarLayout.getBackground().jumpToCurrentState();
            }
            if (appBarLayout.getForeground() != null) {
                appBarLayout.getForeground().jumpToCurrentState();
            }
            if (appBarLayout.getStateListAnimator() != null) {
                appBarLayout.getStateListAnimator().jumpToCurrentState();
            }
        }

        @Override // p028c3.AbstractC0980f
        /* JADX INFO: renamed from: c */
        public final int mo1097c() {
            return m1102a() + this.f2068j;
        }

        /* JADX WARN: Code duplicated, block: B:40:0x00ab  */
        /* JADX WARN: Code duplicated, block: B:43:0x00b2  */
        /* JADX WARN: Code duplicated, block: B:62:0x0157  */
        /* JADX WARN: Code duplicated, block: B:64:0x015c  */
        /* JADX WARN: Code duplicated, block: B:65:0x015e  */
        @Override // p028c3.AbstractC0980f
        /* JADX INFO: renamed from: d */
        public final int mo1098d(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
            int top;
            boolean z9;
            int i13;
            int i14;
            C0090h c0090h;
            int topInset;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int iMo1097c = mo1097c();
            int i15 = 0;
            if (i11 == 0 || iMo1097c < i11 || iMo1097c > i12) {
                this.f2068j = 0;
            } else {
                int iClamp = MathUtils.clamp(i10, i11, i12);
                if (iMo1097c != iClamp) {
                    if (!appBarLayout.f2047f) {
                        top = iClamp;
                        break;
                    }
                    int iAbs = Math.abs(iClamp);
                    int childCount = appBarLayout.getChildCount();
                    int i16 = 0;
                    while (true) {
                        if (i16 < childCount) {
                            View childAt = appBarLayout.getChildAt(i16);
                            C0977c c0977c = (C0977c) childAt.getLayoutParams();
                            Interpolator interpolator = c0977c.f911c;
                            if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                                if (interpolator != null) {
                                    int i17 = c0977c.f909a;
                                    if ((i17 & 1) != 0) {
                                        topInset = childAt.getHeight() + ((LinearLayout.LayoutParams) c0977c).topMargin + ((LinearLayout.LayoutParams) c0977c).bottomMargin;
                                        if ((i17 & 2) != 0) {
                                            topInset -= childAt.getMinimumHeight();
                                        }
                                    } else {
                                        topInset = 0;
                                    }
                                    if (childAt.getFitsSystemWindows()) {
                                        topInset -= appBarLayout.getTopInset();
                                    }
                                    if (topInset > 0) {
                                        float f8 = topInset;
                                        top = (childAt.getTop() + Math.round(interpolator.getInterpolation((iAbs - childAt.getTop()) / f8) * f8)) * Integer.signum(iClamp);
                                        break;
                                    }
                                }
                            } else {
                                i16++;
                            }
                        }
                        top = iClamp;
                        break;
                    }
                    C0983i c0983i = this.f927a;
                    int i18 = 1;
                    if (c0983i != null) {
                        if (c0983i.f931c != top) {
                            c0983i.f931c = top;
                            c0983i.m1105b();
                            z9 = true;
                        }
                        int i19 = iMo1097c - iClamp;
                        this.f2068j = iClamp - top;
                        if (z9) {
                            i14 = 0;
                            while (i14 < appBarLayout.getChildCount()) {
                                C0977c c0977c2 = (C0977c) appBarLayout.getChildAt(i14).getLayoutParams();
                                c0090h = c0977c2.f910b;
                                if (c0090h == null && (c0977c2.f909a & i18) != 0) {
                                    View childAt2 = appBarLayout.getChildAt(i14);
                                    float fM1102a = m1102a();
                                    Rect rect = (Rect) c0090h.f192d;
                                    Rect rect2 = (Rect) c0090h.f191c;
                                    childAt2.getDrawingRect(rect2);
                                    appBarLayout.offsetDescendantRectToMyCoords(childAt2, rect2);
                                    rect2.offset(0, -appBarLayout.getTopInset());
                                    float fAbs = rect2.top - Math.abs(fM1102a);
                                    if (fAbs <= 0.0f) {
                                        float fClamp = 1.0f - MathUtils.clamp(Math.abs(fAbs / rect2.height()), 0.0f, 1.0f);
                                        float fHeight = (-fAbs) - ((rect2.height() * 0.3f) * (1.0f - (fClamp * fClamp)));
                                        childAt2.setTranslationY(fHeight);
                                        childAt2.getDrawingRect(rect);
                                        rect.offset(0, (int) (-fHeight));
                                        if (fHeight >= rect.height()) {
                                            childAt2.setAlpha(0.0f);
                                        } else {
                                            childAt2.setAlpha(1.0f);
                                        }
                                        childAt2.setClipBounds(rect);
                                    } else {
                                        childAt2.setClipBounds(null);
                                        childAt2.setTranslationY(0.0f);
                                        childAt2.setAlpha(1.0f);
                                    }
                                }
                                i14++;
                                i18 = 1;
                            }
                        }
                        if (!z9 && appBarLayout.f2047f) {
                            coordinatorLayout.dispatchDependentViewsChanged(appBarLayout);
                        }
                        appBarLayout.f2043b = m1102a();
                        if (!appBarLayout.willNotDraw()) {
                            appBarLayout.postInvalidateOnAnimation();
                        }
                        if (iClamp < iMo1097c) {
                            i13 = -1;
                        } else {
                            i13 = 1;
                        }
                        m1743l(coordinatorLayout, appBarLayout, iClamp, i13, false);
                        i15 = i19;
                    } else {
                        this.f928b = top;
                    }
                    z9 = false;
                    int i110 = iMo1097c - iClamp;
                    this.f2068j = iClamp - top;
                    if (z9) {
                        i14 = 0;
                        while (i14 < appBarLayout.getChildCount()) {
                            C0977c c0977c3 = (C0977c) appBarLayout.getChildAt(i14).getLayoutParams();
                            c0090h = c0977c3.f910b;
                            if (c0090h == null) {
                            }
                            i14++;
                            i18 = 1;
                        }
                    }
                    if (!z9) {
                        coordinatorLayout.dispatchDependentViewsChanged(appBarLayout);
                    }
                    appBarLayout.f2043b = m1102a();
                    if (!appBarLayout.willNotDraw()) {
                        appBarLayout.postInvalidateOnAnimation();
                    }
                    if (iClamp < iMo1097c) {
                        i13 = -1;
                    } else {
                        i13 = 1;
                    }
                    m1743l(coordinatorLayout, appBarLayout, iClamp, i13, false);
                    i15 = i110;
                }
            }
            if (!ViewCompat.hasAccessibilityDelegate(coordinatorLayout)) {
                ViewCompat.setAccessibilityDelegate(coordinatorLayout, new C1084b(coordinatorLayout, this, appBarLayout));
            }
            return i15;
        }

        /* JADX INFO: renamed from: g */
        public final void m1744g(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10) {
            int iAbs = Math.abs(mo1097c() - i10);
            float fAbs = Math.abs(0.0f);
            int iRound = fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            int iMo1097c = mo1097c();
            ValueAnimator valueAnimator = this.f2070l;
            if (iMo1097c == i10) {
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f2070l.cancel();
                return;
            }
            if (valueAnimator == null) {
                ValueAnimator valueAnimator2 = new ValueAnimator();
                this.f2070l = valueAnimator2;
                valueAnimator2.setInterpolator(AbstractC0884a.f665e);
                this.f2070l.addUpdateListener(new C1083a(coordinatorLayout, this, appBarLayout));
            } else {
                valueAnimator.cancel();
            }
            this.f2070l.setDuration(Math.min(iRound, 600));
            this.f2070l.setIntValues(iMo1097c, i10);
            this.f2070l.start();
        }

        /* JADX WARN: Code duplicated, block: B:9:0x002b  */
        /* JADX INFO: renamed from: i */
        public final void m1745i(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10, int[] iArr) {
            AppBarLayout appBarLayout2;
            int i11;
            int downNestedPreScrollRange;
            if (i10 == 0) {
                appBarLayout2 = appBarLayout;
            } else {
                if (i10 < 0) {
                    i11 = -appBarLayout.getTotalScrollRange();
                    downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange() + i11;
                } else {
                    i11 = -appBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                int i12 = i11;
                int i13 = downNestedPreScrollRange;
                if (i12 != i13) {
                    appBarLayout2 = appBarLayout;
                    iArr[1] = mo1098d(coordinatorLayout, appBarLayout2, mo1097c() - i10, i12, i13);
                } else {
                    appBarLayout2 = appBarLayout;
                }
            }
            if (appBarLayout2.f2053l) {
                appBarLayout2.m1738e(appBarLayout2.m1739f(view));
            }
        }

        /* JADX INFO: renamed from: j */
        public final C1086d m1746j(Parcelable parcelable, AppBarLayout appBarLayout) {
            int iM1102a = m1102a();
            int childCount = appBarLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = appBarLayout.getChildAt(i10);
                int bottom = childAt.getBottom() + iM1102a;
                if (childAt.getTop() + iM1102a <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.EMPTY_STATE;
                    }
                    C1086d c1086d = new C1086d(parcelable);
                    boolean z9 = iM1102a == 0;
                    c1086d.f2086c = z9;
                    c1086d.f2085b = !z9 && (-iM1102a) >= appBarLayout.getTotalScrollRange();
                    c1086d.f2087d = i10;
                    c1086d.f2089f = bottom == appBarLayout.getTopInset() + childAt.getMinimumHeight();
                    c1086d.f2088e = bottom / childAt.getHeight();
                    return c1086d;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: k */
        public final void m1747k(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int paddingTop = appBarLayout.getPaddingTop() + appBarLayout.getTopInset();
            int iMo1097c = mo1097c() - paddingTop;
            int childCount = appBarLayout.getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 >= childCount) {
                    i10 = -1;
                    break;
                }
                View childAt = appBarLayout.getChildAt(i10);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                C0977c c0977c = (C0977c) childAt.getLayoutParams();
                if ((c0977c.f909a & 32) == 32) {
                    top -= ((LinearLayout.LayoutParams) c0977c).topMargin;
                    bottom += ((LinearLayout.LayoutParams) c0977c).bottomMargin;
                }
                int i11 = -iMo1097c;
                if (top <= i11 && bottom >= i11) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 >= 0) {
                View childAt2 = appBarLayout.getChildAt(i10);
                C0977c c0977c2 = (C0977c) childAt2.getLayoutParams();
                int i12 = c0977c2.f909a;
                if ((i12 & 17) == 17) {
                    int topInset = -childAt2.getTop();
                    int minimumHeight = -childAt2.getBottom();
                    if (i10 == 0 && appBarLayout.getFitsSystemWindows() && childAt2.getFitsSystemWindows()) {
                        topInset -= appBarLayout.getTopInset();
                    }
                    if ((i12 & 2) == 2) {
                        minimumHeight += childAt2.getMinimumHeight();
                    } else if ((i12 & 5) == 5) {
                        int minimumHeight2 = childAt2.getMinimumHeight() + minimumHeight;
                        if (iMo1097c < minimumHeight2) {
                            topInset = minimumHeight2;
                        } else {
                            minimumHeight = minimumHeight2;
                        }
                    }
                    if ((i12 & 32) == 32) {
                        topInset += ((LinearLayout.LayoutParams) c0977c2).topMargin;
                        minimumHeight -= ((LinearLayout.LayoutParams) c0977c2).bottomMargin;
                    }
                    if (iMo1097c < (minimumHeight + topInset) / 2) {
                        topInset = minimumHeight;
                    }
                    m1744g(coordinatorLayout, appBarLayout, MathUtils.clamp(topInset + paddingTop, -appBarLayout.getTotalScrollRange(), 0));
                }
            }
        }

        @Override // p028c3.AbstractC0982h, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
            int iRound;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.onLayoutChild(coordinatorLayout, appBarLayout, i10);
            int pendingAction = appBarLayout.getPendingAction();
            C1086d c1086d = this.f2071m;
            if (c1086d == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z9 = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i11 = -appBarLayout.getUpNestedPreScrollRange();
                        if (z9) {
                            m1744g(coordinatorLayout, appBarLayout, i11);
                        } else {
                            m1099e(coordinatorLayout, appBarLayout, i11);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z9) {
                            m1744g(coordinatorLayout, appBarLayout, 0);
                        } else {
                            m1099e(coordinatorLayout, appBarLayout, 0);
                        }
                    }
                }
            } else if (c1086d.f2085b) {
                m1099e(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange());
            } else if (c1086d.f2086c) {
                m1099e(coordinatorLayout, appBarLayout, 0);
            } else {
                View childAt = appBarLayout.getChildAt(c1086d.f2087d);
                int i12 = -childAt.getBottom();
                if (this.f2071m.f2089f) {
                    iRound = appBarLayout.getTopInset() + childAt.getMinimumHeight() + i12;
                } else {
                    iRound = Math.round(childAt.getHeight() * this.f2071m.f2088e) + i12;
                }
                m1099e(coordinatorLayout, appBarLayout, iRound);
            }
            appBarLayout.f2048g = 0;
            this.f2071m = null;
            int iClamp = MathUtils.clamp(m1102a(), -appBarLayout.getTotalScrollRange(), 0);
            C0983i c0983i = this.f927a;
            if (c0983i == null) {
                this.f928b = iClamp;
            } else if (c0983i.f931c != iClamp) {
                c0983i.f931c = iClamp;
                c0983i.m1105b();
            }
            m1743l(coordinatorLayout, appBarLayout, m1102a(), 0, true);
            appBarLayout.f2043b = m1102a();
            if (!appBarLayout.willNotDraw()) {
                appBarLayout.postInvalidateOnAnimation();
            }
            if (!ViewCompat.hasAccessibilityDelegate(coordinatorLayout)) {
                ViewCompat.setAccessibilityDelegate(coordinatorLayout, new C1084b(coordinatorLayout, this, appBarLayout));
            }
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams())).height != -2) {
                return super.onMeasureChild(coordinatorLayout, appBarLayout, i10, i11, i12, i13);
            }
            coordinatorLayout.onMeasureChild(appBarLayout, i10, i11, View.MeasureSpec.makeMeasureSpec(0, 0), i13);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int[] iArr, int i12) {
            m1745i(coordinatorLayout, (AppBarLayout) view, view2, i11, iArr);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            CoordinatorLayout coordinatorLayout2;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i13 < 0) {
                int i15 = -appBarLayout.getDownNestedScrollRange();
                coordinatorLayout2 = coordinatorLayout;
                iArr[1] = mo1098d(coordinatorLayout2, appBarLayout, mo1097c() - i13, i15, 0);
            } else {
                coordinatorLayout2 = coordinatorLayout;
            }
            if (i13 != 0 || ViewCompat.hasAccessibilityDelegate(coordinatorLayout2)) {
                return;
            }
            ViewCompat.setAccessibilityDelegate(coordinatorLayout2, new C1084b(coordinatorLayout2, this, appBarLayout));
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (!(parcelable instanceof C1086d)) {
                super.onRestoreInstanceState(coordinatorLayout, appBarLayout, parcelable);
                this.f2071m = null;
            } else {
                C1086d c1086d = (C1086d) parcelable;
                this.f2071m = c1086d;
                super.onRestoreInstanceState(coordinatorLayout, appBarLayout, c1086d.getSuperState());
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, appBarLayout);
            C1086d c1086dM1746j = m1746j(parcelableOnSaveInstanceState, appBarLayout);
            return c1086dM1746j == null ? parcelableOnSaveInstanceState : c1086dM1746j;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
            ValueAnimator valueAnimator;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            boolean z9 = (i10 & 2) != 0 && (appBarLayout.f2053l || appBarLayout.f2052k || (appBarLayout.getTotalScrollRange() != 0 && coordinatorLayout.getHeight() - view2.getHeight() <= appBarLayout.getHeight()));
            if (z9 && (valueAnimator = this.f2070l) != null) {
                valueAnimator.cancel();
            }
            this.f2072n = null;
            this.f2069k = i11;
            return z9;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void onStopNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.f2069k == 0 || i10 == 1) {
                m1747k(coordinatorLayout, appBarLayout);
                if (appBarLayout.f2053l) {
                    appBarLayout.m1738e(appBarLayout.m1739f(view2));
                }
            }
            this.f2072n = new WeakReference(view2);
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f919f = -1;
            this.f921h = -1;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        C0977c c0977c = new C0977c(-1, -2);
        c0977c.f909a = 1;
        return c0977c;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class ScrollingViewBehavior extends AbstractC0981g {
        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0007a.f12D);
            this.f926f = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        /* JADX INFO: renamed from: d */
        public static AppBarLayout m1748d(List list) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = (View) list.get(i10);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).f2068j) + this.f925e) - m1101c(view2));
            }
            if (!(view2 instanceof AppBarLayout)) {
                return false;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view2;
            if (!appBarLayout.f2053l) {
                return false;
            }
            appBarLayout.m1738e(appBarLayout.m1739f(view));
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.setAccessibilityDelegate(coordinatorLayout, null);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z9) {
            AppBarLayout appBarLayoutM1748d = m1748d(coordinatorLayout.getDependencies(view));
            if (appBarLayoutM1748d != null) {
                Rect rect2 = new Rect(rect);
                rect2.offset(view.getLeft(), view.getTop());
                int width = coordinatorLayout.getWidth();
                int height = coordinatorLayout.getHeight();
                Rect rect3 = this.f923c;
                rect3.set(0, 0, width, height);
                if (!rect3.contains(rect2)) {
                    appBarLayoutM1748d.m1737d(false, !z9, true);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior() {
        }
    }
}

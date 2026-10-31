package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.support.v4.media.h;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout$AttachedBehavior;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import b1.u;
import c3.j;
import j1.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import s3.l;
import z3.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout$AttachedBehavior {
    public static final /* synthetic */ int B = 0;
    public AppBarLayout$Behavior A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1102b;
    public int c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1103f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1104g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public WindowInsetsCompat f1105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1107j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1108k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1109l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ColorStateList f1110m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1111n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public WeakReference f1112o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ValueAnimator f1113p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ValueAnimator$AnimatorUpdateListener f1114q;
    public final ArrayList r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final LinkedHashSet f1115s;
    public final long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final TimeInterpolator f1116u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int[] f1117v;
    public int w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Drawable f1118x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Integer f1119y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final float f1120z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(g4.a.a(context, attributeSet, 2130903102, 2132018096), attributeSet, 2130903102);
        this.c = -1;
        this.d = -1;
        this.e = -1;
        this.f1104g = 0;
        this.r = new ArrayList();
        this.f1115s = new LinkedHashSet();
        Context context2 = getContext();
        setOrientation(1);
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
        }
        Context context3 = getContext();
        TypedArray typedArrayD = l.d(context3, attributeSet, j.f489a, 2130903102, 2132018096, new int[0]);
        try {
            if (typedArrayD.hasValue(0)) {
                setStateListAnimator(AnimatorInflater.loadStateListAnimator(context3, typedArrayD.getResourceId(0, 0)));
            }
            typedArrayD.recycle();
            TypedArray typedArrayD2 = l.d(context2, attributeSet, a3.a.f7a, 2130903102, 2132018096, new int[0]);
            this.f1110m = w3.c.a(context2, typedArrayD2, 6);
            this.t = com.bumptech.glide.d.q(context2, 2130904056, getResources().getInteger(2131361794));
            this.f1116u = com.bumptech.glide.d.r(context2, 2130904074, b3.a.f305a);
            if (typedArrayD2.hasValue(4)) {
                d(typedArrayD2.getBoolean(4, false), false, false);
            }
            if (typedArrayD2.hasValue(3)) {
                j.a(this, typedArrayD2.getDimensionPixelSize(3, 0));
            }
            setBackground(typedArrayD2.getDrawable(0));
            if (Build$VERSION.SDK_INT >= 26) {
                if (typedArrayD2.hasValue(2)) {
                    androidx.core.graphics.a.y(this, typedArrayD2.getBoolean(2, false));
                }
                if (typedArrayD2.hasValue(1)) {
                    setTouchscreenBlocksFocus(typedArrayD2.getBoolean(1, false));
                }
            }
            this.f1120z = getResources().getDimension(2131099745);
            this.f1109l = typedArrayD2.getBoolean(5, false);
            this.f1111n = typedArrayD2.getResourceId(7, -1);
            setStatusBarForeground(typedArrayD2.getDrawable(8));
            typedArrayD2.recycle();
            ViewCompat.setOnApplyWindowInsetsListener(this, new r5.c(4, this));
        } catch (Throwable th) {
            typedArrayD.recycle();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static c3.c b(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof LinearLayout$LayoutParams) {
            c3.c cVar = new c3.c((LinearLayout$LayoutParams) viewGroup$LayoutParams);
            cVar.f477a = 1;
            return cVar;
        }
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            c3.c cVar2 = new c3.c((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams);
            cVar2.f477a = 1;
            return cVar2;
        }
        c3.c cVar3 = new c3.c(viewGroup$LayoutParams);
        cVar3.f477a = 1;
        return cVar3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final c3.c a(AttributeSet attributeSet) {
        Context context = getContext();
        c3.c cVar = new c3.c(context, attributeSet);
        cVar.f477a = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a3.a.f8b);
        cVar.f477a = typedArrayObtainStyledAttributes.getInt(1, 0);
        cVar.f478b = typedArrayObtainStyledAttributes.getInt(0, 0) != 1 ? null : new h(3);
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            cVar.c = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        return cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        AppBarLayout$Behavior appBarLayout$Behavior = this.A;
        d dVarJ = (appBarLayout$Behavior == null || this.c == -1 || this.f1104g != 0) ? null : appBarLayout$Behavior.j(AbsSavedState.EMPTY_STATE, this);
        this.c = -1;
        this.d = -1;
        this.e = -1;
        if (dVarJ != null) {
            AppBarLayout$Behavior appBarLayout$Behavior2 = this.A;
            if (appBarLayout$Behavior2.f1124m != null) {
                return;
            }
            appBarLayout$Behavior2.f1124m = dVarJ;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof c3.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(boolean z8, boolean z9, boolean z10) {
        this.f1104g = (z8 ? 1 : 2) | (z9 ? 4 : 0) | (z10 ? 8 : 0);
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f1118x == null || getTopInset() <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(0.0f, -this.f1102b);
        this.f1118x.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1118x;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean e(boolean z8) {
        if (this.f1106i || this.f1108k == z8) {
            return false;
        }
        this.f1108k = z8;
        refreshDrawableState();
        if (!(getBackground() instanceof k)) {
            return true;
        }
        if (this.f1110m != null) {
            g(z8 ? 0.0f : 1.0f, z8 ? 1.0f : 0.0f);
            return true;
        }
        if (!this.f1109l) {
            return true;
        }
        float f8 = this.f1120z;
        g(z8 ? 0.0f : f8, z8 ? f8 : 0.0f);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean f(View view) {
        int i9;
        if (this.f1112o == null && (i9 = this.f1111n) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i9) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.f1111n);
            }
            if (viewFindViewById != null) {
                this.f1112o = new WeakReference(viewFindViewById);
            }
        }
        WeakReference weakReference = this.f1112o;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view = view2;
        }
        if (view != null) {
            return view.canScrollVertically(-1) || view.getScrollY() > 0;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(float f8, float f9) {
        ValueAnimator valueAnimator = this.f1113p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f8, f9);
        this.f1113p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.t);
        this.f1113p.setInterpolator(this.f1116u);
        ValueAnimator$AnimatorUpdateListener valueAnimator$AnimatorUpdateListener = this.f1114q;
        if (valueAnimator$AnimatorUpdateListener != null) {
            this.f1113p.addUpdateListener(valueAnimator$AnimatorUpdateListener);
        }
        this.f1113p.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup$LayoutParams generateDefaultLayoutParams() {
        c3.c cVar = new c3.c(-1, -2);
        cVar.f477a = 1;
        return cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return a(attributeSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$AttachedBehavior
    @NonNull
    public CoordinatorLayout$Behavior<AppBarLayout> getBehavior() {
        AppBarLayout$Behavior appBarLayout$Behavior = new AppBarLayout$Behavior();
        this.A = appBarLayout$Behavior;
        return appBarLayout$Behavior;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDownNestedPreScrollRange() {
        int iMin;
        int minimumHeight;
        int i9 = this.d;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() != 8) {
                c3.c cVar = (c3.c) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i11 = cVar.f477a;
                if ((i11 & 5) != 5) {
                    if (i10 > 0) {
                        break;
                    }
                } else {
                    int i12 = ((LinearLayout$LayoutParams) cVar).topMargin + ((LinearLayout$LayoutParams) cVar).bottomMargin;
                    if ((i11 & 8) != 0) {
                        minimumHeight = childAt.getMinimumHeight();
                    } else {
                        if ((i11 & 2) != 0) {
                            minimumHeight = measuredHeight - childAt.getMinimumHeight();
                        } else {
                            iMin = i12 + measuredHeight;
                        }
                        if (childCount == 0 && childAt.getFitsSystemWindows()) {
                            iMin = Math.min(iMin, measuredHeight - getTopInset());
                        }
                        i10 += iMin;
                    }
                    iMin = minimumHeight + i12;
                    if (childCount == 0) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                    i10 += iMin;
                }
            }
        }
        int iMax = Math.max(0, i10);
        this.d = iMax;
        return iMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDownNestedScrollRange() {
        int i9 = this.e;
        if (i9 != -1) {
            return i9;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                c3.c cVar = (c3.c) childAt.getLayoutParams();
                int measuredHeight = ((LinearLayout$LayoutParams) cVar).topMargin + ((LinearLayout$LayoutParams) cVar).bottomMargin + childAt.getMeasuredHeight();
                int i11 = cVar.f477a;
                if ((i11 & 1) == 0) {
                    break;
                }
                minimumHeight += measuredHeight;
                if ((i11 & 2) != 0) {
                    minimumHeight -= childAt.getMinimumHeight();
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.e = iMax;
        return iMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.f1111n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public k getMaterialShapeBackground() {
        Drawable background = getBackground();
        if (background instanceof k) {
            return (k) background;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = getMinimumHeight();
        if (minimumHeight != 0) {
            int i9 = (minimumHeight * 2) + topInset;
            return i9 < getHeight() ? i9 : minimumHeight + topInset;
        }
        int childCount = getChildCount();
        int minimumHeight2 = childCount >= 1 ? getChildAt(childCount - 1).getMinimumHeight() : 0;
        if (minimumHeight2 == 0) {
            return getHeight() / 3;
        }
        int i10 = (minimumHeight2 * 2) + topInset;
        return i10 < getHeight() ? i10 : minimumHeight2 + topInset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPendingAction() {
        return this.f1104g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getStatusBarForeground() {
        return this.f1118x;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.f1105h;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getTotalScrollRange() {
        int i9 = this.c;
        if (i9 != -1) {
            return i9;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                c3.c cVar = (c3.c) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i11 = cVar.f477a;
                if ((i11 & 1) == 0) {
                    break;
                }
                int topInset = measuredHeight + ((LinearLayout$LayoutParams) cVar).topMargin + ((LinearLayout$LayoutParams) cVar).bottomMargin + minimumHeight;
                if (i10 == 0 && childAt.getFitsSystemWindows()) {
                    topInset -= getTopInset();
                }
                minimumHeight = topInset;
                if ((i11 & 2) != 0) {
                    minimumHeight -= childAt.getMinimumHeight();
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.c = iMax;
        return iMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof k) {
            u.w(this, (k) background);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i9) {
        if (this.f1117v == null) {
            this.f1117v = new int[4];
        }
        int[] iArr = this.f1117v;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i9 + iArr.length);
        boolean z8 = this.f1107j;
        iArr[0] = z8 ? 2130904330 : -2130904330;
        iArr[1] = (z8 && this.f1108k) ? 2130904331 : -2130904331;
        iArr[2] = z8 ? 2130904326 : -2130904326;
        iArr[3] = (z8 && this.f1108k) ? 2130904325 : -2130904325;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference weakReference = this.f1112o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f1112o = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        super.onLayout(z8, i9, i10, i11, i12);
        boolean z9 = true;
        if (getFitsSystemWindows() && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !childAt.getFitsSystemWindows()) {
                int topInset = getTopInset();
                for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                    ViewCompat.offsetTopAndBottom(getChildAt(childCount), topInset);
                }
            }
        }
        c();
        this.f1103f = false;
        int childCount2 = getChildCount();
        for (int i13 = 0; i13 < childCount2; i13++) {
            if (((c3.c) getChildAt(i13).getLayoutParams()).c != null) {
                this.f1103f = true;
                break;
            }
        }
        Drawable drawable = this.f1118x;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f1106i) {
            return;
        }
        if (!this.f1109l) {
            int childCount3 = getChildCount();
            int i14 = 0;
            while (true) {
                if (i14 >= childCount3) {
                    z9 = false;
                    break;
                }
                int i15 = ((c3.c) getChildAt(i14).getLayoutParams()).f477a;
                if ((i15 & 1) == 1 && (i15 & 10) != 0) {
                    break;
                } else {
                    i14++;
                }
            }
        }
        if (this.f1107j != z9) {
            this.f1107j = z9;
            refreshDrawableState();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        int mode = View$MeasureSpec.getMode(i10);
        if (mode != 1073741824 && getFitsSystemWindows() && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !childAt.getFitsSystemWindows()) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = MathUtils.clamp(getTopInset() + getMeasuredHeight(), 0, View$MeasureSpec.getSize(i10));
                } else if (mode == 0) {
                    measuredHeight += getTopInset();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        k kVar;
        ColorStateList colorStateList;
        Context context = getContext();
        Integer numValueOf = null;
        if (drawable instanceof k) {
            kVar = (k) drawable;
        } else {
            ColorStateList colorStateListD = o3.c.d(drawable);
            if (colorStateListD == null) {
                kVar = null;
            } else {
                k kVar2 = new k();
                kVar2.q(colorStateListD);
                kVar = kVar2;
            }
        }
        if (kVar != null && (colorStateList = kVar.c.d) != null) {
            this.w = colorStateList.getDefaultColor();
            ColorStateList colorStateList2 = this.f1110m;
            if (colorStateList2 != null) {
                Context context2 = getContext();
                TypedValue typedValueA = w3.b.a(2130903359, context2);
                if (typedValueA != null) {
                    int i9 = typedValueA.resourceId;
                    numValueOf = Integer.valueOf(i9 != 0 ? ContextCompat.getColor(context2, i9) : typedValueA.data);
                }
                this.f1114q = new c3.a(this, colorStateList2, kVar, numValueOf);
            } else {
                kVar.m(context);
                this.f1114q = new c3.b(this, kVar);
            }
            drawable = kVar;
        }
        super.setBackground(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        Drawable background = getBackground();
        if (background instanceof k) {
            ((k) background).p(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setExpanded(boolean z8) {
        d(z8, isLaidOut(), true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLiftOnScroll(boolean z8) {
        this.f1109l = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLiftOnScrollColor(@Nullable ColorStateList colorStateList) {
        if (this.f1110m != colorStateList) {
            this.f1110m = colorStateList;
            setBackground(getBackground());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLiftOnScrollTargetView(@Nullable View view) {
        this.f1111n = -1;
        if (view != null) {
            this.f1112o = new WeakReference(view);
            return;
        }
        WeakReference weakReference = this.f1112o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f1112o = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLiftOnScrollTargetViewId(@IdRes int i9) {
        this.f1111n = i9;
        WeakReference weakReference = this.f1112o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f1112o = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLiftableOverrideEnabled(boolean z8) {
        this.f1106i = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout
    public void setOrientation(int i9) {
        if (i9 == 1) {
            super.setOrientation(i9);
        } else {
            i.k("AppBarLayout is always vertical and does not support horizontal orientation");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPendingAction(int i9) {
        this.f1104g = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f1118x;
        if (drawable2 != drawable) {
            Integer numValueOf = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f1118x = drawableMutate;
            if (drawableMutate instanceof k) {
                numValueOf = Integer.valueOf(((k) drawableMutate).w);
            } else {
                ColorStateList colorStateListD = o3.c.d(drawableMutate);
                if (colorStateListD != null) {
                    numValueOf = Integer.valueOf(colorStateListD.getDefaultColor());
                }
            }
            this.f1119y = numValueOf;
            Drawable drawable3 = this.f1118x;
            boolean z8 = false;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f1118x.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f1118x, getLayoutDirection());
                this.f1118x.setVisible(getVisibility() == 0, false);
                this.f1118x.setCallback(this);
            }
            if (this.f1118x != null && getTopInset() > 0) {
                z8 = true;
            }
            setWillNotDraw(!z8);
            postInvalidateOnAnimation();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStatusBarForegroundColor(@ColorInt int i9) {
        setStatusBarForeground(new ColorDrawable(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStatusBarForegroundResource(@DrawableRes int i9) {
        setStatusBarForeground(AppCompatResources.getDrawable(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setTargetElevation(float f8) {
        j.a(this, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setVisibility(int i9) {
        super.setVisibility(i9);
        boolean z8 = i9 == 0;
        Drawable drawable = this.f1118x;
        if (drawable != null) {
            drawable.setVisible(z8, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1118x;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return b(viewGroup$LayoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return a(attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return b(viewGroup$LayoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout$LayoutParams generateDefaultLayoutParams() {
        c3.c cVar = new c3.c(-1, -2);
        cVar.f477a = 1;
        return cVar;
    }
}

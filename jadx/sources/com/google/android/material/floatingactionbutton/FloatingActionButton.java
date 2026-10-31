package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TintableImageSourceView;
import com.example.navistart.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.List;
import p004a3.AbstractC0007a;
import p016b1.AbstractC0880u;
import p018b3.C0888e;
import p029c4.C0985a;
import p050e3.C1460c;
import p071g4.AbstractC1618a;
import p081h4.C1665c;
import p099j1.C1929i;
import p102j4.C1963b;
import p141n.C2455p;
import p175q3.InterfaceC3060a;
import p182r3.C3095b;
import p182r3.C3100g;
import p182r3.C3101h;
import p192s3.AbstractC3190d;
import p192s3.AbstractC3198l;
import p192s3.AbstractC3203q;
import p192s3.AbstractC3204r;
import p228w3.AbstractC3518c;
import p238x3.AbstractC3567a;
import p258z3.C3729o;
import p258z3.InterfaceC3740z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class FloatingActionButton extends AbstractC3204r implements TintableBackgroundView, TintableImageSourceView, InterfaceC3060a, InterfaceC3740z, CoordinatorLayout.AttachedBehavior {

    /* JADX INFO: renamed from: c */
    public ColorStateList f2351c;

    /* JADX INFO: renamed from: d */
    public PorterDuff.Mode f2352d;

    /* JADX INFO: renamed from: e */
    public ColorStateList f2353e;

    /* JADX INFO: renamed from: f */
    public PorterDuff.Mode f2354f;

    /* JADX INFO: renamed from: g */
    public ColorStateList f2355g;

    /* JADX INFO: renamed from: h */
    public int f2356h;

    /* JADX INFO: renamed from: i */
    public int f2357i;

    /* JADX INFO: renamed from: j */
    public int f2358j;

    /* JADX INFO: renamed from: k */
    public int f2359k;

    /* JADX INFO: renamed from: l */
    public boolean f2360l;

    /* JADX INFO: renamed from: m */
    public final Rect f2361m;

    /* JADX INFO: renamed from: n */
    public final Rect f2362n;

    /* JADX INFO: renamed from: o */
    public final AppCompatImageHelper f2363o;

    /* JADX INFO: renamed from: p */
    public final C1963b f2364p;

    /* JADX INFO: renamed from: q */
    public C3101h f2365q;

    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        Drawable drawable;
        Drawable layerDrawable;
        super(AbstractC1618a.m2696a(context, attributeSet, R.attr.floatingActionButtonStyle, R.style.Widget_Design_FloatingActionButton), attributeSet, R.attr.floatingActionButtonStyle);
        this.f9375b = getVisibility();
        this.f2361m = new Rect();
        this.f2362n = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context2, attributeSet, AbstractC0007a.f31j, R.attr.floatingActionButtonStyle, R.style.Widget_Design_FloatingActionButton, new int[0]);
        this.f2351c = AbstractC3518c.m5587a(context2, typedArrayM5136d, 1);
        this.f2352d = AbstractC3203q.m5139b(typedArrayM5136d.getInt(2, -1), null);
        this.f2355g = AbstractC3518c.m5587a(context2, typedArrayM5136d, 32);
        this.f2356h = typedArrayM5136d.getInt(7, -1);
        this.f2357i = typedArrayM5136d.getDimensionPixelSize(6, 0);
        int dimensionPixelSize = typedArrayM5136d.getDimensionPixelSize(3, 0);
        float dimension = typedArrayM5136d.getDimension(4, 0.0f);
        float dimension2 = typedArrayM5136d.getDimension(29, 0.0f);
        float dimension3 = typedArrayM5136d.getDimension(31, 0.0f);
        this.f2360l = typedArrayM5136d.getBoolean(36, false);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mtrl_fab_min_touch_target);
        setMaxImageSize(typedArrayM5136d.getDimensionPixelSize(30, 0));
        C0888e c0888eM1019a = C0888e.m1019a(context2, typedArrayM5136d, 35);
        C0888e c0888eM1019a2 = C0888e.m1019a(context2, typedArrayM5136d, 28);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, AbstractC0007a.f44w, R.attr.floatingActionButtonStyle, R.style.Widget_Design_FloatingActionButton);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        C3729o c3729oM5956a = C3729o.m5958b(context2, resourceId, resourceId2, C3729o.f11085m).m5956a();
        boolean z9 = typedArrayM5136d.getBoolean(5, false);
        setEnabled(typedArrayM5136d.getBoolean(0, true));
        typedArrayM5136d.recycle();
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.f2363o = appCompatImageHelper;
        appCompatImageHelper.loadFromAttributes(attributeSet, R.attr.floatingActionButtonStyle);
        this.f2364p = new C1963b(this);
        getImpl().m4935g(c3729oM5956a);
        C3101h impl = getImpl();
        ColorStateList colorStateList = this.f2351c;
        PorterDuff.Mode mode = this.f2352d;
        ColorStateList colorStateList2 = this.f2355g;
        FloatingActionButton floatingActionButton = impl.f8854s;
        C3100g c3100g = new C3100g((C3729o) Preconditions.checkNotNull(impl.f8836a));
        impl.f8837b = c3100g;
        c3100g.setTintList(colorStateList);
        if (mode != null) {
            impl.f8837b.setTintMode(mode);
        }
        impl.f8837b.m5944m(floatingActionButton.getContext());
        if (dimensionPixelSize > 0) {
            Context context3 = floatingActionButton.getContext();
            C3095b c3095b = new C3095b((C3729o) Preconditions.checkNotNull(impl.f8836a));
            int color = ContextCompat.getColor(context3, R.color.design_fab_stroke_top_outer_color);
            int color2 = ContextCompat.getColor(context3, R.color.design_fab_stroke_top_inner_color);
            int color3 = ContextCompat.getColor(context3, R.color.design_fab_stroke_end_inner_color);
            int color4 = ContextCompat.getColor(context3, R.color.design_fab_stroke_end_outer_color);
            c3095b.f8803i = color;
            c3095b.f8804j = color2;
            c3095b.f8805k = color3;
            c3095b.f8806l = color4;
            float f8 = dimensionPixelSize;
            if (c3095b.f8802h != f8) {
                c3095b.f8802h = f8;
                c3095b.f8796b.setStrokeWidth(f8 * 1.3333f);
                c3095b.f8808n = true;
                c3095b.invalidateSelf();
            }
            if (colorStateList != null) {
                c3095b.f8807m = colorStateList.getColorForState(c3095b.getState(), c3095b.f8807m);
            }
            c3095b.f8810p = colorStateList;
            c3095b.f8808n = true;
            c3095b.invalidateSelf();
            impl.f8839d = c3095b;
            layerDrawable = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(impl.f8839d), (Drawable) Preconditions.checkNotNull(impl.f8837b)});
            drawable = null;
        } else {
            drawable = null;
            impl.f8839d = null;
            layerDrawable = impl.f8837b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(AbstractC3567a.m5684b(colorStateList2), layerDrawable, drawable);
        impl.f8838c = rippleDrawable;
        impl.f8840e = rippleDrawable;
        getImpl().f8846k = dimensionPixelSize2;
        C3101h impl2 = getImpl();
        if (impl2.f8843h != dimension) {
            impl2.f8843h = dimension;
            impl2.m4933e(dimension, impl2.f8844i, impl2.f8845j);
        }
        C3101h impl3 = getImpl();
        if (impl3.f8844i != dimension2) {
            impl3.f8844i = dimension2;
            impl3.m4933e(impl3.f8843h, dimension2, impl3.f8845j);
        }
        C3101h impl4 = getImpl();
        if (impl4.f8845j != dimension3) {
            impl4.f8845j = dimension3;
            impl4.m4933e(impl4.f8843h, impl4.f8844i, dimension3);
        }
        getImpl().f8849n = c0888eM1019a;
        getImpl().f8850o = c0888eM1019a2;
        getImpl().f8841f = z9;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private C3101h getImpl() {
        if (this.f2365q == null) {
            this.f2365q = new C3101h(this, new C2455p(8, this));
        }
        return this.f2365q;
    }

    /* JADX INFO: renamed from: c */
    public final int m1815c(int i10) {
        int i11 = this.f2357i;
        if (i11 != 0) {
            return i11;
        }
        Resources resources = getResources();
        if (i10 != -1) {
            return i10 != 1 ? resources.getDimensionPixelSize(R.dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? m1815c(1) : m1815c(0);
    }

    /* JADX INFO: renamed from: d */
    public final void m1816d() {
        C3101h impl = getImpl();
        FloatingActionButton floatingActionButton = impl.f8854s;
        int visibility = floatingActionButton.getVisibility();
        int i10 = impl.f8853r;
        if (visibility == 0) {
            if (i10 == 1) {
                return;
            }
        } else if (i10 != 2) {
            return;
        }
        Animator animator = impl.f8848m;
        if (animator != null) {
            animator.cancel();
        }
        FloatingActionButton floatingActionButton2 = impl.f8854s;
        if (!floatingActionButton2.isLaidOut() || floatingActionButton2.isInEditMode()) {
            floatingActionButton.m5140a(4, false);
            return;
        }
        C0888e c0888e = impl.f8850o;
        AnimatorSet animatorSetM4930b = c0888e != null ? impl.m4930b(c0888e, 0.0f, 0.0f, 0.0f) : impl.m4931c(0.0f, C3101h.f8826B, C3101h.f8827C, 0.4f, 0.4f);
        animatorSetM4930b.addListener(new C1665c(impl));
        animatorSetM4930b.start();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
    }

    /* JADX INFO: renamed from: e */
    public final void m1817e() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f2353e;
        if (colorStateList == null) {
            DrawableCompat.clearColorFilter(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f2354f;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(colorForState, mode));
    }

    /* JADX INFO: renamed from: f */
    public final void m1818f() {
        C3101h impl = getImpl();
        FloatingActionButton floatingActionButton = impl.f8854s;
        Matrix matrix = impl.f8859x;
        FloatingActionButton floatingActionButton2 = impl.f8854s;
        int visibility = floatingActionButton.getVisibility();
        int i10 = impl.f8853r;
        if (visibility != 0) {
            if (i10 == 2) {
                return;
            }
        } else if (i10 != 1) {
            return;
        }
        Animator animator = impl.f8848m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z9 = impl.f8849n == null;
        if (!floatingActionButton2.isLaidOut() || floatingActionButton2.isInEditMode()) {
            floatingActionButton.m5140a(0, false);
            floatingActionButton.setAlpha(1.0f);
            floatingActionButton.setScaleY(1.0f);
            floatingActionButton.setScaleX(1.0f);
            impl.f8851p = 1.0f;
            impl.m4929a(1.0f, matrix);
            floatingActionButton2.setImageMatrix(matrix);
            return;
        }
        if (floatingActionButton.getVisibility() != 0) {
            floatingActionButton.setAlpha(0.0f);
            floatingActionButton.setScaleY(z9 ? 0.4f : 0.0f);
            floatingActionButton.setScaleX(z9 ? 0.4f : 0.0f);
            float f8 = z9 ? 0.4f : 0.0f;
            impl.f8851p = f8;
            impl.m4929a(f8, matrix);
            floatingActionButton2.setImageMatrix(matrix);
        }
        C0888e c0888e = impl.f8849n;
        AnimatorSet animatorSetM4930b = c0888e != null ? impl.m4930b(c0888e, 1.0f, 1.0f, 1.0f) : impl.m4931c(1.0f, C3101h.f8835z, C3101h.f8825A, 1.0f, 1.0f);
        animatorSetM4930b.addListener(new C1460c(5, impl));
        animatorSetM4930b.start();
    }

    @Override // android.widget.ImageButton, android.widget.ImageView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "com.google.android.material.floatingactionbutton.FloatingActionButton";
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f2351c;
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f2352d;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().f8854s.getElevation();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().f8844i;
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().f8845j;
    }

    @Nullable
    public Drawable getContentBackground() {
        return getImpl().f8840e;
    }

    @Px
    public int getCustomSize() {
        return this.f2357i;
    }

    public int getExpandedComponentIdHint() {
        return this.f2364p.f5345b;
    }

    @Nullable
    public C0888e getHideMotionSpec() {
        return getImpl().f8850o;
    }

    @ColorInt
    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f2355g;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f2355g;
    }

    @NonNull
    public C3729o getShapeAppearanceModel() {
        return (C3729o) Preconditions.checkNotNull(getImpl().f8836a);
    }

    @Nullable
    public C0888e getShowMotionSpec() {
        return getImpl().f8849n;
    }

    public int getSize() {
        return this.f2356h;
    }

    public int getSizeDimension() {
        return m1815c(this.f2356h);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.f2353e;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f2354f;
    }

    public boolean getUseCompatPadding() {
        return this.f2360l;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3101h impl = getImpl();
        C3100g c3100g = impl.f8837b;
        if (c3100g != null) {
            AbstractC0880u.m1006w(impl.f8854s, c3100g);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().f8854s.getViewTreeObserver();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i10, int i11) {
        int sizeDimension = getSizeDimension();
        this.f2358j = (sizeDimension - this.f2359k) / 2;
        getImpl().m4936h();
        int iMin = Math.min(View.resolveSize(sizeDimension, i10), View.resolveSize(sizeDimension, i11));
        Rect rect = this.f2361m;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0985a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0985a c0985a = (C0985a) parcelable;
        super.onRestoreInstanceState(c0985a.getSuperState());
        Bundle bundle = (Bundle) Preconditions.checkNotNull((Bundle) c0985a.f934b.get("expandableWidgetHelper"));
        C1963b c1963b = this.f2364p;
        c1963b.getClass();
        c1963b.f5346c = bundle.getBoolean("expanded", false);
        c1963b.f5345b = bundle.getInt("expandedComponentIdHint", 0);
        if (c1963b.f5346c) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) c1963b.f5347d;
            ViewParent parent = floatingActionButton.getParent();
            if (parent instanceof CoordinatorLayout) {
                ((CoordinatorLayout) parent).dispatchDependentViewsChanged(floatingActionButton);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        C0985a c0985a = new C0985a(parcelableOnSaveInstanceState);
        C1963b c1963b = this.f2364p;
        c1963b.getClass();
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", c1963b.f5346c);
        bundle.putInt("expandedComponentIdHint", c1963b.f5345b);
        c0985a.f934b.put("expandableWidgetHelper", bundle);
        return c0985a;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            Rect rect = this.f2362n;
            rect.set(0, 0, measuredWidth, measuredHeight);
            int i10 = rect.left;
            Rect rect2 = this.f2361m;
            rect.left = i10 + rect2.left;
            rect.top += rect2.top;
            rect.right -= rect2.right;
            rect.bottom -= rect2.bottom;
            C3101h c3101h = this.f2365q;
            int i11 = -(c3101h.f8841f ? Math.max((c3101h.f8846k - c3101h.f8854s.getSizeDimension()) / 2, 0) : 0);
            rect.inset(i11, i11);
            if (!rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f2351c != colorStateList) {
            this.f2351c = colorStateList;
            C3101h impl = getImpl();
            C3100g c3100g = impl.f8837b;
            if (c3100g != null) {
                c3100g.setTintList(colorStateList);
            }
            C3095b c3095b = impl.f8839d;
            if (c3095b != null) {
                if (colorStateList != null) {
                    c3095b.f8807m = colorStateList.getColorForState(c3095b.getState(), c3095b.f8807m);
                }
                c3095b.f8810p = colorStateList;
                c3095b.f8808n = true;
                c3095b.invalidateSelf();
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f2352d != mode) {
            this.f2352d = mode;
            C3100g c3100g = getImpl().f8837b;
            if (c3100g != null) {
                c3100g.setTintMode(mode);
            }
        }
    }

    public void setCompatElevation(float f8) {
        C3101h impl = getImpl();
        if (impl.f8843h != f8) {
            impl.f8843h = f8;
            impl.m4933e(f8, impl.f8844i, impl.f8845j);
        }
    }

    public void setCompatElevationResource(@DimenRes int i10) {
        setCompatElevation(getResources().getDimension(i10));
    }

    public void setCompatHoveredFocusedTranslationZ(float f8) {
        C3101h impl = getImpl();
        if (impl.f8844i != f8) {
            impl.f8844i = f8;
            impl.m4933e(impl.f8843h, f8, impl.f8845j);
        }
    }

    public void setCompatHoveredFocusedTranslationZResource(@DimenRes int i10) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i10));
    }

    public void setCompatPressedTranslationZ(float f8) {
        C3101h impl = getImpl();
        if (impl.f8845j != f8) {
            impl.f8845j = f8;
            impl.m4933e(impl.f8843h, impl.f8844i, f8);
        }
    }

    public void setCompatPressedTranslationZResource(@DimenRes int i10) {
        setCompatPressedTranslationZ(getResources().getDimension(i10));
    }

    public void setCustomSize(@Px int i10) {
        if (i10 < 0) {
            C1929i.m3029k("Custom size must be non-negative");
        } else if (i10 != this.f2357i) {
            this.f2357i = i10;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        C3100g c3100g = getImpl().f8837b;
        if (c3100g != null) {
            c3100g.m5947p(f8);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z9) {
        if (z9 != getImpl().f8841f) {
            getImpl().f8841f = z9;
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(@IdRes int i10) {
        this.f2364p.f5345b = i10;
    }

    public void setHideMotionSpec(@Nullable C0888e c0888e) {
        getImpl().f8850o = c0888e;
    }

    public void setHideMotionSpecResource(@AnimatorRes int i10) {
        setHideMotionSpec(C0888e.m1020b(i10, getContext()));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            C3101h impl = getImpl();
            float f8 = impl.f8851p;
            impl.f8851p = f8;
            Matrix matrix = impl.f8859x;
            impl.m4929a(f8, matrix);
            impl.f8854s.setImageMatrix(matrix);
            if (this.f2353e != null) {
                m1817e();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i10) {
        this.f2363o.setImageResource(i10);
        m1817e();
    }

    public void setMaxImageSize(int i10) {
        this.f2359k = i10;
        C3101h impl = getImpl();
        if (impl.f8852q != i10) {
            impl.f8852q = i10;
            float f8 = impl.f8851p;
            impl.f8851p = f8;
            Matrix matrix = impl.f8859x;
            impl.m4929a(f8, matrix);
            impl.f8854s.setImageMatrix(matrix);
        }
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f2355g != colorStateList) {
            this.f2355g = colorStateList;
            C3101h impl = getImpl();
            ColorStateList colorStateList2 = this.f2355g;
            RippleDrawable rippleDrawable = impl.f8838c;
            if (rippleDrawable != null) {
                rippleDrawable.setColor(AbstractC3567a.m5684b(colorStateList2));
            } else if (rippleDrawable != null) {
                rippleDrawable.setTintList(AbstractC3567a.m5684b(colorStateList2));
            }
        }
    }

    @Override // android.view.View
    public void setScaleX(float f8) {
        super.setScaleX(f8);
        getImpl().getClass();
    }

    @Override // android.view.View
    public void setScaleY(float f8) {
        super.setScaleY(f8);
        getImpl().getClass();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setShadowPaddingEnabled(boolean z9) {
        C3101h impl = getImpl();
        impl.f8842g = z9;
        impl.m4936h();
    }

    @Override // p258z3.InterfaceC3740z
    public void setShapeAppearanceModel(@NonNull C3729o c3729o) {
        getImpl().m4935g(c3729o);
    }

    public void setShowMotionSpec(@Nullable C0888e c0888e) {
        getImpl().f8849n = c0888e;
    }

    public void setShowMotionSpecResource(@AnimatorRes int i10) {
        setShowMotionSpec(C0888e.m1020b(i10, getContext()));
    }

    public void setSize(int i10) {
        this.f2357i = 0;
        if (i10 != this.f2356h) {
            this.f2356h = i10;
            requestLayout();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f2353e != colorStateList) {
            this.f2353e = colorStateList;
            m1817e();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f2354f != mode) {
            this.f2354f = mode;
            m1817e();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f8) {
        super.setTranslationX(f8);
        getImpl().m4934f();
    }

    @Override // android.view.View
    public void setTranslationY(float f8) {
        super.setTranslationY(f8);
        getImpl().m4934f();
    }

    @Override // android.view.View
    public void setTranslationZ(float f8) {
        super.setTranslationZ(f8);
        getImpl().m4934f();
    }

    public void setUseCompatPadding(boolean z9) {
        if (this.f2360l != z9) {
            this.f2360l = z9;
            getImpl().m4936h();
        }
    }

    @Override // p192s3.AbstractC3204r, android.widget.ImageView, android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* JADX INFO: renamed from: a */
        public Rect f2366a;

        /* JADX INFO: renamed from: b */
        public final boolean f2367b;

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0007a.f32k);
            this.f2367b = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        /* JADX INFO: renamed from: a */
        public final boolean m1819a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
            if (!this.f2367b || layoutParams.getAnchorId() != appBarLayout.getId() || floatingActionButton.getUserSetVisibility() != 0) {
                return false;
            }
            if (this.f2366a == null) {
                this.f2366a = new Rect();
            }
            Rect rect = this.f2366a;
            AbstractC3190d.m5128a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.m1816d();
                return true;
            }
            floatingActionButton.m1818f();
            return true;
        }

        /* JADX INFO: renamed from: b */
        public final boolean m1820b(View view, FloatingActionButton floatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
            if (!this.f2367b || layoutParams.getAnchorId() != view.getId() || floatingActionButton.getUserSetVisibility() != 0) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.m1816d();
                return true;
            }
            floatingActionButton.m1818f();
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            Rect rect2 = floatingActionButton.f2361m;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                m1819a(coordinatorLayout, (AppBarLayout) view2, floatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior : false) {
                    m1820b(view2, floatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                View view2 = dependencies.get(i12);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior : false) && m1820b(view2, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (m1819a(coordinatorLayout, (AppBarLayout) view2, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i10);
            Rect rect = floatingActionButton.f2361m;
            if (rect.centerX() > 0 && rect.centerY() > 0) {
                CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
                int i13 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin ? -rect.left : 0;
                if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin) {
                    i11 = rect.bottom;
                } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin) {
                    i11 = -rect.top;
                }
                if (i11 != 0) {
                    ViewCompat.offsetTopAndBottom(floatingActionButton, i11);
                }
                if (i13 != 0) {
                    ViewCompat.offsetLeftAndRight(floatingActionButton, i13);
                }
            }
            return true;
        }

        public BaseBehavior() {
            this.f2367b = true;
        }
    }

    public void setRippleColor(@ColorInt int i10) {
        setRippleColor(ColorStateList.valueOf(i10));
    }
}

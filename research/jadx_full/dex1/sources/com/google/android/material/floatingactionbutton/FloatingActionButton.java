package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PorterDuff$Mode;
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
import android.view.ViewParent;
import android.widget.ImageView$ScaleType;
import androidx.annotation.AnimatorRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$AttachedBehavior;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableImageSourceView;
import b1.u;
import b3.e;
import j1.i;
import j4.b;
import n.p;
import q3.a;
import r3.g;
import r3.h;
import s3.l;
import s3.q;
import s3.r;
import w3.c;
import z3.o;
import z3.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FloatingActionButton extends r implements TintableBackgroundView, TintableImageSourceView, a, z, CoordinatorLayout$AttachedBehavior {
    public ColorStateList c;
    public PorterDuff$Mode d;
    public ColorStateList e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public PorterDuff$Mode f1297f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f1298g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1299h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1300i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1301j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1302k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1303l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Rect f1304m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Rect f1305n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final AppCompatImageHelper f1306o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final b f1307p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public h f1308q;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        Drawable drawable;
        Drawable layerDrawable;
        super(g4.a.a(context, attributeSet, 2130903629, 2132018100), attributeSet, 2130903629);
        this.f5299b = getVisibility();
        this.f1304m = new Rect();
        this.f1305n = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayD = l.d(context2, attributeSet, a3.a.f13j, 2130903629, 2132018100, new int[0]);
        this.c = c.a(context2, typedArrayD, 1);
        this.d = q.b(typedArrayD.getInt(2, -1), null);
        this.f1298g = c.a(context2, typedArrayD, 32);
        this.f1299h = typedArrayD.getInt(7, -1);
        this.f1300i = typedArrayD.getDimensionPixelSize(6, 0);
        int dimensionPixelSize = typedArrayD.getDimensionPixelSize(3, 0);
        float dimension = typedArrayD.getDimension(4, 0.0f);
        float dimension2 = typedArrayD.getDimension(29, 0.0f);
        float dimension3 = typedArrayD.getDimension(31, 0.0f);
        this.f1303l = typedArrayD.getBoolean(36, false);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(2131100578);
        setMaxImageSize(typedArrayD.getDimensionPixelSize(30, 0));
        e eVarA = e.a(context2, typedArrayD, 35);
        e eVarA2 = e.a(context2, typedArrayD, 28);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, a3.a.w, 2130903629, 2132018100);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        o oVarA = o.b(context2, resourceId, resourceId2, o.f6257m).a();
        boolean z8 = typedArrayD.getBoolean(5, false);
        setEnabled(typedArrayD.getBoolean(0, true));
        typedArrayD.recycle();
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.f1306o = appCompatImageHelper;
        appCompatImageHelper.loadFromAttributes(attributeSet, 2130903629);
        this.f1307p = new b(this);
        getImpl().g(oVarA);
        h impl = getImpl();
        ColorStateList colorStateList = this.c;
        PorterDuff$Mode porterDuff$Mode = this.d;
        ColorStateList colorStateList2 = this.f1298g;
        FloatingActionButton floatingActionButton = impl.f4978s;
        g gVar = new g((o) Preconditions.checkNotNull(impl.f4964a));
        impl.f4965b = gVar;
        gVar.setTintList(colorStateList);
        if (porterDuff$Mode != null) {
            impl.f4965b.setTintMode(porterDuff$Mode);
        }
        impl.f4965b.m(floatingActionButton.getContext());
        if (dimensionPixelSize > 0) {
            Context context3 = floatingActionButton.getContext();
            r3.b bVar = new r3.b((o) Preconditions.checkNotNull(impl.f4964a));
            int color = ContextCompat.getColor(context3, 2131034204);
            int color2 = ContextCompat.getColor(context3, 2131034203);
            int color3 = ContextCompat.getColor(context3, 2131034201);
            int color4 = ContextCompat.getColor(context3, 2131034202);
            bVar.f4945i = color;
            bVar.f4946j = color2;
            bVar.f4947k = color3;
            bVar.f4948l = color4;
            float f8 = dimensionPixelSize;
            if (bVar.f4944h != f8) {
                bVar.f4944h = f8;
                bVar.f4941b.setStrokeWidth(f8 * 1.3333f);
                bVar.f4950n = true;
                bVar.invalidateSelf();
            }
            if (colorStateList != null) {
                bVar.f4949m = colorStateList.getColorForState(bVar.getState(), bVar.f4949m);
            }
            bVar.f4952p = colorStateList;
            bVar.f4950n = true;
            bVar.invalidateSelf();
            impl.d = bVar;
            layerDrawable = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(impl.d), (Drawable) Preconditions.checkNotNull(impl.f4965b)});
            drawable = null;
        } else {
            drawable = null;
            impl.d = null;
            layerDrawable = impl.f4965b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(x3.a.b(colorStateList2), layerDrawable, drawable);
        impl.c = rippleDrawable;
        impl.e = rippleDrawable;
        getImpl().f4971k = dimensionPixelSize2;
        h impl2 = getImpl();
        if (impl2.f4968h != dimension) {
            impl2.f4968h = dimension;
            impl2.e(dimension, impl2.f4969i, impl2.f4970j);
        }
        h impl3 = getImpl();
        if (impl3.f4969i != dimension2) {
            impl3.f4969i = dimension2;
            impl3.e(impl3.f4968h, dimension2, impl3.f4970j);
        }
        h impl4 = getImpl();
        if (impl4.f4970j != dimension3) {
            impl4.f4970j = dimension3;
            impl4.e(impl4.f4968h, impl4.f4969i, dimension3);
        }
        getImpl().f4974n = eVarA;
        getImpl().f4975o = eVarA2;
        getImpl().f4966f = z8;
        setScaleType(ImageView$ScaleType.MATRIX);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(FloatingActionButton floatingActionButton, Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private h getImpl() {
        if (this.f1308q == null) {
            this.f1308q = new h(this, new p(8, this));
        }
        return this.f1308q;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c(int i9) {
        int i10 = this.f1300i;
        if (i10 != 0) {
            return i10;
        }
        Resources resources = getResources();
        if (i9 != -1) {
            return i9 != 1 ? resources.getDimensionPixelSize(2131099765) : resources.getDimensionPixelSize(2131099764);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? c(1) : c(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        h impl = getImpl();
        FloatingActionButton floatingActionButton = impl.f4978s;
        int visibility = floatingActionButton.getVisibility();
        int i9 = impl.r;
        if (visibility == 0) {
            if (i9 == 1) {
                return;
            }
        } else if (i9 != 2) {
            return;
        }
        Animator animator = impl.f4973m;
        if (animator != null) {
            animator.cancel();
        }
        FloatingActionButton floatingActionButton2 = impl.f4978s;
        if (!floatingActionButton2.isLaidOut() || floatingActionButton2.isInEditMode()) {
            floatingActionButton.a(4, false);
            return;
        }
        e eVar = impl.f4975o;
        AnimatorSet animatorSetB = eVar != null ? impl.b(eVar, 0.0f, 0.0f, 0.0f) : impl.c(0.0f, h.B, h.C, 0.4f, 0.4f);
        animatorSetB.addListener(new h4.c(impl));
        animatorSetB.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.e;
        if (colorStateList == null) {
            DrawableCompat.clearColorFilter(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff$Mode porterDuff$Mode = this.f1297f;
        if (porterDuff$Mode == null) {
            porterDuff$Mode = PorterDuff$Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(colorForState, porterDuff$Mode));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f() {
        h impl = getImpl();
        FloatingActionButton floatingActionButton = impl.f4978s;
        Matrix matrix = impl.f4981x;
        FloatingActionButton floatingActionButton2 = impl.f4978s;
        int visibility = floatingActionButton.getVisibility();
        int i9 = impl.r;
        if (visibility != 0) {
            if (i9 == 2) {
                return;
            }
        } else if (i9 != 1) {
            return;
        }
        Animator animator = impl.f4973m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z8 = impl.f4974n == null;
        if (!floatingActionButton2.isLaidOut() || floatingActionButton2.isInEditMode()) {
            floatingActionButton.a(0, false);
            floatingActionButton.setAlpha(1.0f);
            floatingActionButton.setScaleY(1.0f);
            floatingActionButton.setScaleX(1.0f);
            impl.f4976p = 1.0f;
            impl.a(1.0f, matrix);
            floatingActionButton2.setImageMatrix(matrix);
            return;
        }
        if (floatingActionButton.getVisibility() != 0) {
            floatingActionButton.setAlpha(0.0f);
            floatingActionButton.setScaleY(z8 ? 0.4f : 0.0f);
            floatingActionButton.setScaleX(z8 ? 0.4f : 0.0f);
            float f8 = z8 ? 0.4f : 0.0f;
            impl.f4976p = f8;
            impl.a(f8, matrix);
            floatingActionButton2.setImageMatrix(matrix);
        }
        e eVar = impl.f4974n;
        AnimatorSet animatorSetB = eVar != null ? impl.b(eVar, 1.0f, 1.0f, 1.0f) : impl.c(1.0f, h.f4963z, h.A, 1.0f, 1.0f);
        animatorSetB.addListener(new e3.c(5, impl));
        animatorSetB.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageButton, android.widget.ImageView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "com.google.android.material.floatingactionbutton.FloatingActionButton";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    @Nullable
    public PorterDuff$Mode getBackgroundTintMode() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$AttachedBehavior
    @NonNull
    public CoordinatorLayout$Behavior<FloatingActionButton> getBehavior() {
        return new FloatingActionButton$Behavior();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getCompatElevation() {
        return getImpl().f4978s.getElevation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().f4969i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getCompatPressedTranslationZ() {
        return getImpl().f4970j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getContentBackground() {
        return getImpl().e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getCustomSize() {
        return this.f1300i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getExpandedComponentIdHint() {
        return this.f1307p.f3046b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public e getHideMotionSpec() {
        return getImpl().f4975o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f1298g;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f1298g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public o getShapeAppearanceModel() {
        return (o) Preconditions.checkNotNull(getImpl().f4964a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public e getShowMotionSpec() {
        return getImpl().f4974n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSize() {
        return this.f1299h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSizeDimension() {
        return c(this.f1299h);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff$Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public PorterDuff$Mode getSupportImageTintMode() {
        return this.f1297f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getUseCompatPadding() {
        return this.f1303l;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        h impl = getImpl();
        g gVar = impl.f4965b;
        if (gVar != null) {
            u.w(impl.f4978s, gVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().f4978s.getViewTreeObserver();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i9, int i10) {
        int sizeDimension = getSizeDimension();
        this.f1301j = (sizeDimension - this.f1302k) / 2;
        getImpl().h();
        int iMin = Math.min(View.resolveSize(sizeDimension, i9), View.resolveSize(sizeDimension, i10));
        Rect rect = this.f1304m;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof c4.a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c4.a aVar = (c4.a) parcelable;
        super.onRestoreInstanceState(aVar.getSuperState());
        Bundle bundle = (Bundle) Preconditions.checkNotNull((Bundle) aVar.f490b.get("expandableWidgetHelper"));
        b bVar = this.f1307p;
        bVar.getClass();
        bVar.c = bundle.getBoolean("expanded", false);
        bVar.f3046b = bundle.getInt("expandedComponentIdHint", 0);
        if (bVar.c) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) bVar.d;
            ViewParent parent = floatingActionButton.getParent();
            if (parent instanceof CoordinatorLayout) {
                ((CoordinatorLayout) parent).dispatchDependentViewsChanged(floatingActionButton);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        c4.a aVar = new c4.a(parcelableOnSaveInstanceState);
        b bVar = this.f1307p;
        bVar.getClass();
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", bVar.c);
        bundle.putInt("expandedComponentIdHint", bVar.f3046b);
        aVar.f490b.put("expandableWidgetHelper", bundle);
        return aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            Rect rect = this.f1305n;
            rect.set(0, 0, measuredWidth, measuredHeight);
            int i9 = rect.left;
            Rect rect2 = this.f1304m;
            rect.left = i9 + rect2.left;
            rect.top += rect2.top;
            rect.right -= rect2.right;
            rect.bottom -= rect2.bottom;
            h hVar = this.f1308q;
            int i10 = -(hVar.f4966f ? Math.max((hVar.f4971k - hVar.f4978s.getSizeDimension()) / 2, 0) : 0);
            rect.inset(i10, i10);
            if (!rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundColor(int i9) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundResource(int i9) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.c != colorStateList) {
            this.c = colorStateList;
            h impl = getImpl();
            g gVar = impl.f4965b;
            if (gVar != null) {
                gVar.setTintList(colorStateList);
            }
            r3.b bVar = impl.d;
            if (bVar != null) {
                if (colorStateList != null) {
                    bVar.f4949m = colorStateList.getColorForState(bVar.getState(), bVar.f4949m);
                }
                bVar.f4952p = colorStateList;
                bVar.f4950n = true;
                bVar.invalidateSelf();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        if (this.d != porterDuff$Mode) {
            this.d = porterDuff$Mode;
            g gVar = getImpl().f4965b;
            if (gVar != null) {
                gVar.setTintMode(porterDuff$Mode);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCompatElevation(float f8) {
        h impl = getImpl();
        if (impl.f4968h != f8) {
            impl.f4968h = f8;
            impl.e(f8, impl.f4969i, impl.f4970j);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCompatElevationResource(@DimenRes int i9) {
        setCompatElevation(getResources().getDimension(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCompatHoveredFocusedTranslationZ(float f8) {
        h impl = getImpl();
        if (impl.f4969i != f8) {
            impl.f4969i = f8;
            impl.e(impl.f4968h, f8, impl.f4970j);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCompatHoveredFocusedTranslationZResource(@DimenRes int i9) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCompatPressedTranslationZ(float f8) {
        h impl = getImpl();
        if (impl.f4970j != f8) {
            impl.f4970j = f8;
            impl.e(impl.f4968h, impl.f4969i, f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCompatPressedTranslationZResource(@DimenRes int i9) {
        setCompatPressedTranslationZ(getResources().getDimension(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCustomSize(@Px int i9) {
        if (i9 < 0) {
            i.k("Custom size must be non-negative");
        } else if (i9 != this.f1300i) {
            this.f1300i = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        g gVar = getImpl().f4965b;
        if (gVar != null) {
            gVar.p(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEnsureMinTouchTargetSize(boolean z8) {
        if (z8 != getImpl().f4966f) {
            getImpl().f4966f = z8;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setExpandedComponentIdHint(@IdRes int i9) {
        this.f1307p.f3046b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHideMotionSpec(@Nullable e eVar) {
        getImpl().f4975o = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHideMotionSpecResource(@AnimatorRes int i9) {
        setHideMotionSpec(e.b(i9, getContext()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            h impl = getImpl();
            float f8 = impl.f4976p;
            impl.f4976p = f8;
            Matrix matrix = impl.f4981x;
            impl.a(f8, matrix);
            impl.f4978s.setImageMatrix(matrix);
            if (this.e != null) {
                e();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i9) {
        this.f1306o.setImageResource(i9);
        e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxImageSize(int i9) {
        this.f1302k = i9;
        h impl = getImpl();
        if (impl.f4977q != i9) {
            impl.f4977q = i9;
            float f8 = impl.f4976p;
            impl.f4976p = f8;
            Matrix matrix = impl.f4981x;
            impl.a(f8, matrix);
            impl.f4978s.setImageMatrix(matrix);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f1298g != colorStateList) {
            this.f1298g = colorStateList;
            h impl = getImpl();
            ColorStateList colorStateList2 = this.f1298g;
            RippleDrawable rippleDrawable = impl.c;
            if (rippleDrawable != null) {
                rippleDrawable.setColor(x3.a.b(colorStateList2));
            } else if (rippleDrawable != null) {
                rippleDrawable.setTintList(x3.a.b(colorStateList2));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setScaleX(float f8) {
        super.setScaleX(f8);
        getImpl().getClass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setScaleY(float f8) {
        super.setScaleY(f8);
        getImpl().getClass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setShadowPaddingEnabled(boolean z8) {
        h impl = getImpl();
        impl.f4967g = z8;
        impl.h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.z
    public void setShapeAppearanceModel(@NonNull o oVar) {
        getImpl().g(oVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowMotionSpec(@Nullable e eVar) {
        getImpl().f4974n = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowMotionSpecResource(@AnimatorRes int i9) {
        setShowMotionSpec(e.b(i9, getContext()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSize(int i9) {
        this.f1300i = 0;
        if (i9 != this.f1299h) {
            this.f1299h = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        setBackgroundTintMode(porterDuff$Mode);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.e != colorStateList) {
            this.e = colorStateList;
            e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        if (this.f1297f != porterDuff$Mode) {
            this.f1297f = porterDuff$Mode;
            e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setTranslationX(float f8) {
        super.setTranslationX(f8);
        getImpl().f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setTranslationY(float f8) {
        super.setTranslationY(f8);
        getImpl().f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setTranslationZ(float f8) {
        super.setTranslationZ(f8);
        getImpl().f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setUseCompatPadding(boolean z8) {
        if (this.f1303l != z8) {
            this.f1303l = z8;
            getImpl().h();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // s3.r, android.widget.ImageView, android.view.View
    public void setVisibility(int i9) {
        super.setVisibility(i9);
    }

    public void setRippleColor(@ColorInt int i9) {
        setRippleColor(ColorStateList.valueOf(i9));
    }
}

package com.google.android.material.card;

import android.R$attr;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build$VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import b1.u;
import g4.a;
import i3.c;
import s3.l;
import z3.h;
import z3.k;
import z3.n;
import z3.o;
import z3.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MaterialCardView extends CardView implements Checkable, z {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f1210f = {R$attr.state_checkable};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f1211g = {R$attr.state_checked};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f1212h = {2130904327};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f1213b;
    public final boolean c;
    public boolean d;
    public boolean e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public MaterialCardView(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, 2130903949, 2132018340), attributeSet, 2130903949);
        this.d = false;
        this.e = false;
        this.c = true;
        TypedArray typedArrayD = l.d(getContext(), attributeSet, a3.a.f21s, 2130903949, 2132018340, new int[0]);
        c cVar = new c(this, attributeSet);
        this.f1213b = cVar;
        ColorStateList cardBackgroundColor = super.getCardBackgroundColor();
        k kVar = cVar.c;
        kVar.q(cardBackgroundColor);
        cVar.f2639b.set(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        cVar.l();
        MaterialCardView materialCardView = cVar.f2638a;
        ColorStateList colorStateListA = w3.c.a(materialCardView.getContext(), typedArrayD, 11);
        cVar.f2648n = colorStateListA;
        if (colorStateListA == null) {
            cVar.f2648n = ColorStateList.valueOf(-1);
        }
        cVar.f2642h = typedArrayD.getDimensionPixelSize(12, 0);
        boolean z8 = typedArrayD.getBoolean(0, false);
        cVar.f2652s = z8;
        materialCardView.setLongClickable(z8);
        cVar.f2646l = w3.c.a(materialCardView.getContext(), typedArrayD, 6);
        cVar.g(w3.c.c(materialCardView.getContext(), typedArrayD, 2));
        cVar.f2640f = typedArrayD.getDimensionPixelSize(5, 0);
        cVar.e = typedArrayD.getDimensionPixelSize(4, 0);
        cVar.f2641g = typedArrayD.getInteger(3, 8388661);
        ColorStateList colorStateListA2 = w3.c.a(materialCardView.getContext(), typedArrayD, 7);
        cVar.f2645k = colorStateListA2;
        if (colorStateListA2 == null) {
            cVar.f2645k = ColorStateList.valueOf(m3.a.a(androidx.appcompat.R$attr.colorControlHighlight, materialCardView));
        }
        ColorStateList colorStateListA3 = w3.c.a(materialCardView.getContext(), typedArrayD, 1);
        colorStateListA3 = colorStateListA3 == null ? ColorStateList.valueOf(0) : colorStateListA3;
        k kVar2 = cVar.d;
        kVar2.q(colorStateListA3);
        RippleDrawable rippleDrawable = cVar.f2649o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(cVar.f2645k);
        }
        kVar.p(materialCardView.getCardElevation());
        float f8 = cVar.f2642h;
        ColorStateList colorStateList = cVar.f2648n;
        kVar2.c.f6220k = f8;
        kVar2.invalidateSelf();
        h hVar = kVar2.c;
        if (hVar.e != colorStateList) {
            hVar.e = colorStateList;
            kVar2.onStateChange(kVar2.getState());
        }
        materialCardView.setBackgroundInternal(cVar.d(kVar));
        Drawable drawableC = cVar.j() ? cVar.c() : kVar2;
        cVar.f2643i = drawableC;
        materialCardView.setForeground(cVar.d(drawableC));
        typedArrayD.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f1213b.c.getBounds());
        return rectF;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        c cVar;
        RippleDrawable rippleDrawable;
        if (Build$VERSION.SDK_INT <= 26 || (rippleDrawable = (cVar = this.f1213b).f2649o) == null) {
            return;
        }
        Rect bounds = rippleDrawable.getBounds();
        int i9 = bounds.bottom;
        cVar.f2649o.setBounds(bounds.left, bounds.top, bounds.right, i9 - 1);
        cVar.f2649o.setBounds(bounds.left, bounds.top, bounds.right, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(int i9, int i10, int i11, int i12) {
        super.setContentPadding(i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.f1213b.c.c.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.f1213b.d.c.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getCardViewRadius() {
        return super.getRadius();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getCheckedIcon() {
        return this.f1213b.f2644j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCheckedIconGravity() {
        return this.f1213b.f2641g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Dimension
    public int getCheckedIconMargin() {
        return this.f1213b.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Dimension
    public int getCheckedIconSize() {
        return this.f1213b.f2640f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.f1213b.f2646l;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f1213b.f2639b.bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f1213b.f2639b.left;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f1213b.f2639b.right;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f1213b.f2639b.top;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.f1213b.c.c.f6219j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f1213b.c.k();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ColorStateList getRippleColor() {
        return this.f1213b.f2645k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public o getShapeAppearanceModel() {
        return this.f1213b.f2647m;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    @Deprecated
    public int getStrokeColor() {
        ColorStateList colorStateList = this.f1213b.f2648n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.f1213b.f2648n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Dimension
    public int getStrokeWidth() {
        return this.f1213b.f2642h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        c cVar = this.f1213b;
        cVar.k();
        u.w(this, cVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i9) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i9 + 3);
        c cVar = this.f1213b;
        if (cVar != null && cVar.f2652s) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1210f);
        }
        if (this.d) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1211g);
        }
        if (this.e) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1212h);
        }
        return iArrOnCreateDrawableState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(this.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        c cVar = this.f1213b;
        accessibilityNodeInfo.setCheckable(cVar != null && cVar.f2652s);
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(this.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        this.f1213b.e(getMeasuredWidth(), getMeasuredHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.c) {
            c cVar = this.f1213b;
            if (!cVar.r) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                cVar.r = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@ColorInt int i9) {
        this.f1213b.c.q(ColorStateList.valueOf(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f8) {
        super.setCardElevation(f8);
        c cVar = this.f1213b;
        cVar.c.p(cVar.f2638a.getCardElevation());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        k kVar = this.f1213b.d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        kVar.q(colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckable(boolean z8) {
        this.f1213b.f2652s = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Checkable
    public void setChecked(boolean z8) {
        if (this.d != z8) {
            toggle();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.f1213b.g(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIconGravity(int i9) {
        c cVar = this.f1213b;
        if (cVar.f2641g != i9) {
            cVar.f2641g = i9;
            MaterialCardView materialCardView = cVar.f2638a;
            cVar.e(materialCardView.getMeasuredWidth(), materialCardView.getMeasuredHeight());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIconMargin(@Dimension int i9) {
        this.f1213b.e = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIconMarginResource(@DimenRes int i9) {
        if (i9 != -1) {
            this.f1213b.e = getResources().getDimensionPixelSize(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIconResource(@DrawableRes int i9) {
        this.f1213b.g(AppCompatResources.getDrawable(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIconSize(@Dimension int i9) {
        this.f1213b.f2640f = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIconSizeResource(@DimenRes int i9) {
        if (i9 != 0) {
            this.f1213b.f2640f = getResources().getDimensionPixelSize(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        c cVar = this.f1213b;
        cVar.f2646l = colorStateList;
        Drawable drawable = cVar.f2644j;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setClickable(boolean z8) {
        super.setClickable(z8);
        c cVar = this.f1213b;
        if (cVar != null) {
            cVar.k();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public final void setContentPadding(int i9, int i10, int i11, int i12) {
        c cVar = this.f1213b;
        cVar.f2639b.set(i9, i10, i11, i12);
        cVar.l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDragged(boolean z8) {
        if (this.e != z8) {
            this.e = z8;
            refreshDrawableState();
            a();
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f8) {
        super.setMaxCardElevation(f8);
        this.f1213b.m();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z8) {
        super.setPreventCornerOverlap(z8);
        c cVar = this.f1213b;
        cVar.m();
        cVar.l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f8) {
        c cVar = this.f1213b;
        cVar.c.r(f8);
        k kVar = cVar.d;
        if (kVar != null) {
            kVar.r(f8);
        }
        k kVar2 = cVar.f2651q;
        if (kVar2 != null) {
            kVar2.r(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f8) {
        super.setRadius(f8);
        c cVar = this.f1213b;
        n nVarG = cVar.f2647m.g();
        nVarG.e = new z3.a(f8);
        nVarG.f6250f = new z3.a(f8);
        nVarG.f6251g = new z3.a(f8);
        nVarG.f6252h = new z3.a(f8);
        cVar.h(nVarG.a());
        cVar.f2643i.invalidateSelf();
        if (cVar.i() || (cVar.f2638a.getPreventCornerOverlap() && !cVar.c.n())) {
            cVar.l();
        }
        if (cVar.i()) {
            cVar.m();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        c cVar = this.f1213b;
        cVar.f2645k = colorStateList;
        RippleDrawable rippleDrawable = cVar.f2649o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRippleColorResource(@ColorRes int i9) {
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), i9);
        c cVar = this.f1213b;
        cVar.f2645k = colorStateList;
        RippleDrawable rippleDrawable = cVar.f2649o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.z
    public void setShapeAppearanceModel(@NonNull o oVar) {
        setClipToOutline(oVar.f(getBoundsAsRectF()));
        this.f1213b.h(oVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStrokeColor(ColorStateList colorStateList) {
        c cVar = this.f1213b;
        if (cVar.f2648n != colorStateList) {
            cVar.f2648n = colorStateList;
            k kVar = cVar.d;
            kVar.c.f6220k = cVar.f2642h;
            kVar.invalidateSelf();
            h hVar = kVar.c;
            if (hVar.e != colorStateList) {
                hVar.e = colorStateList;
                kVar.onStateChange(kVar.getState());
            }
        }
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStrokeWidth(@Dimension int i9) {
        c cVar = this.f1213b;
        if (i9 != cVar.f2642h) {
            cVar.f2642h = i9;
            k kVar = cVar.d;
            ColorStateList colorStateList = cVar.f2648n;
            kVar.c.f6220k = i9;
            kVar.invalidateSelf();
            h hVar = kVar.c;
            if (hVar.e != colorStateList) {
                hVar.e = colorStateList;
                kVar.onStateChange(kVar.getState());
            }
        }
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z8) {
        super.setUseCompatPadding(z8);
        c cVar = this.f1213b;
        cVar.m();
        cVar.l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Checkable
    public final void toggle() {
        c cVar = this.f1213b;
        if (cVar != null && cVar.f2652s && isEnabled()) {
            this.d = !this.d;
            refreshDrawableState();
            a();
            cVar.f(this.d, true);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.f1213b.c.q(colorStateList);
    }

    public void setOnCheckedChangeListener(@Nullable i3.a aVar) {
    }

    public void setStrokeColor(@ColorInt int i9) {
        setStrokeColor(ColorStateList.valueOf(i9));
    }
}

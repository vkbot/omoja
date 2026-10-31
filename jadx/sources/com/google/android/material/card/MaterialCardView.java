package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
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
import androidx.appcompat.C0148R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import p004a3.AbstractC0007a;
import p016b1.AbstractC0880u;
import p071g4.AbstractC1618a;
import p090i3.C1742c;
import p090i3.InterfaceC1740a;
import p134m3.AbstractC2381a;
import p192s3.AbstractC3198l;
import p228w3.AbstractC3518c;
import p258z3.C3711a;
import p258z3.C3722h;
import p258z3.C3725k;
import p258z3.C3728n;
import p258z3.C3729o;
import p258z3.InterfaceC3740z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialCardView extends CardView implements Checkable, InterfaceC3740z {

    /* JADX INFO: renamed from: f */
    public static final int[] f2219f = {R.attr.state_checkable};

    /* JADX INFO: renamed from: g */
    public static final int[] f2220g = {R.attr.state_checked};

    /* JADX INFO: renamed from: h */
    public static final int[] f2221h = {com.example.navistart.R.attr.state_dragged};

    /* JADX INFO: renamed from: b */
    public final C1742c f2222b;

    /* JADX INFO: renamed from: c */
    public final boolean f2223c;

    /* JADX INFO: renamed from: d */
    public boolean f2224d;

    /* JADX INFO: renamed from: e */
    public boolean f2225e;

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
        super(AbstractC1618a.m2696a(context, attributeSet, com.example.navistart.R.attr.materialCardViewStyle, com.example.navistart.R.style.Widget_MaterialComponents_CardView), attributeSet, com.example.navistart.R.attr.materialCardViewStyle);
        this.f2224d = false;
        this.f2225e = false;
        this.f2223c = true;
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(getContext(), attributeSet, AbstractC0007a.f40s, com.example.navistart.R.attr.materialCardViewStyle, com.example.navistart.R.style.Widget_MaterialComponents_CardView, new int[0]);
        C1742c c1742c = new C1742c(this, attributeSet);
        this.f2222b = c1742c;
        ColorStateList cardBackgroundColor = super.getCardBackgroundColor();
        C3725k c3725k = c1742c.f4534c;
        c3725k.m5948q(cardBackgroundColor);
        c1742c.f4533b.set(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        c1742c.m2869l();
        MaterialCardView materialCardView = c1742c.f4532a;
        ColorStateList colorStateListM5587a = AbstractC3518c.m5587a(materialCardView.getContext(), typedArrayM5136d, 11);
        c1742c.f4545n = colorStateListM5587a;
        if (colorStateListM5587a == null) {
            c1742c.f4545n = ColorStateList.valueOf(-1);
        }
        c1742c.f4539h = typedArrayM5136d.getDimensionPixelSize(12, 0);
        boolean z9 = typedArrayM5136d.getBoolean(0, false);
        c1742c.f4550s = z9;
        materialCardView.setLongClickable(z9);
        c1742c.f4543l = AbstractC3518c.m5587a(materialCardView.getContext(), typedArrayM5136d, 6);
        c1742c.m2864g(AbstractC3518c.m5589c(materialCardView.getContext(), typedArrayM5136d, 2));
        c1742c.f4537f = typedArrayM5136d.getDimensionPixelSize(5, 0);
        c1742c.f4536e = typedArrayM5136d.getDimensionPixelSize(4, 0);
        c1742c.f4538g = typedArrayM5136d.getInteger(3, 8388661);
        ColorStateList colorStateListM5587a2 = AbstractC3518c.m5587a(materialCardView.getContext(), typedArrayM5136d, 7);
        c1742c.f4542k = colorStateListM5587a2;
        if (colorStateListM5587a2 == null) {
            c1742c.f4542k = ColorStateList.valueOf(AbstractC2381a.m3746a(C0148R.attr.colorControlHighlight, materialCardView));
        }
        ColorStateList colorStateListM5587a3 = AbstractC3518c.m5587a(materialCardView.getContext(), typedArrayM5136d, 1);
        colorStateListM5587a3 = colorStateListM5587a3 == null ? ColorStateList.valueOf(0) : colorStateListM5587a3;
        C3725k c3725k2 = c1742c.f4535d;
        c3725k2.m5948q(colorStateListM5587a3);
        RippleDrawable rippleDrawable = c1742c.f4546o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(c1742c.f4542k);
        }
        c3725k.m5947p(materialCardView.getCardElevation());
        float f8 = c1742c.f4539h;
        ColorStateList colorStateList = c1742c.f4545n;
        c3725k2.f11048c.f11031k = f8;
        c3725k2.invalidateSelf();
        C3722h c3722h = c3725k2.f11048c;
        if (c3722h.f11025e != colorStateList) {
            c3722h.f11025e = colorStateList;
            c3725k2.onStateChange(c3725k2.getState());
        }
        materialCardView.setBackgroundInternal(c1742c.m2861d(c3725k));
        Drawable drawableM2860c = c1742c.m2867j() ? c1742c.m2860c() : c3725k2;
        c1742c.f4540i = drawableM2860c;
        materialCardView.setForeground(c1742c.m2861d(drawableM2860c));
        typedArrayM5136d.recycle();
    }

    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f2222b.f4534c.getBounds());
        return rectF;
    }

    /* JADX INFO: renamed from: a */
    public final void m1784a() {
        C1742c c1742c;
        RippleDrawable rippleDrawable;
        if (Build.VERSION.SDK_INT <= 26 || (rippleDrawable = (c1742c = this.f2222b).f4546o) == null) {
            return;
        }
        Rect bounds = rippleDrawable.getBounds();
        int i10 = bounds.bottom;
        c1742c.f4546o.setBounds(bounds.left, bounds.top, bounds.right, i10 - 1);
        c1742c.f4546o.setBounds(bounds.left, bounds.top, bounds.right, i10);
    }

    /* JADX INFO: renamed from: b */
    public final void m1785b(int i10, int i11, int i12, int i13) {
        super.setContentPadding(i10, i11, i12, i13);
    }

    @Override // androidx.cardview.widget.CardView
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.f2222b.f4534c.f11048c.f11024d;
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.f2222b.f4535d.f11048c.f11024d;
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.f2222b.f4541j;
    }

    public int getCheckedIconGravity() {
        return this.f2222b.f4538g;
    }

    @Dimension
    public int getCheckedIconMargin() {
        return this.f2222b.f4536e;
    }

    @Dimension
    public int getCheckedIconSize() {
        return this.f2222b.f4537f;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.f2222b.f4543l;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f2222b.f4533b.bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f2222b.f4533b.left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f2222b.f4533b.right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f2222b.f4533b.top;
    }

    @FloatRange(from = 0.0d, m378to = 1.0d)
    public float getProgress() {
        return this.f2222b.f4534c.f11048c.f11030j;
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f2222b.f4534c.m5942k();
    }

    public ColorStateList getRippleColor() {
        return this.f2222b.f4542k;
    }

    @NonNull
    public C3729o getShapeAppearanceModel() {
        return this.f2222b.f4544m;
    }

    @ColorInt
    @Deprecated
    public int getStrokeColor() {
        ColorStateList colorStateList = this.f2222b.f4545n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.f2222b.f4545n;
    }

    @Dimension
    public int getStrokeWidth() {
        return this.f2222b.f4539h;
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f2224d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1742c c1742c = this.f2222b;
        c1742c.m2868k();
        AbstractC0880u.m1006w(this, c1742c.f4534c);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 3);
        C1742c c1742c = this.f2222b;
        if (c1742c != null && c1742c.f4550s) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2219f);
        }
        if (this.f2224d) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2220g);
        }
        if (this.f2225e) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2221h);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(this.f2224d);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        C1742c c1742c = this.f2222b;
        accessibilityNodeInfo.setCheckable(c1742c != null && c1742c.f4550s);
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(this.f2224d);
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.f2222b.m2862e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f2223c) {
            C1742c c1742c = this.f2222b;
            if (!c1742c.f4549r) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                c1742c.f4549r = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@ColorInt int i10) {
        this.f2222b.f4534c.m5948q(ColorStateList.valueOf(i10));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f8) {
        super.setCardElevation(f8);
        C1742c c1742c = this.f2222b;
        c1742c.f4534c.m5947p(c1742c.f4532a.getCardElevation());
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        C3725k c3725k = this.f2222b.f4535d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        c3725k.m5948q(colorStateList);
    }

    public void setCheckable(boolean z9) {
        this.f2222b.f4550s = z9;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z9) {
        if (this.f2224d != z9) {
            toggle();
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.f2222b.m2864g(drawable);
    }

    public void setCheckedIconGravity(int i10) {
        C1742c c1742c = this.f2222b;
        if (c1742c.f4538g != i10) {
            c1742c.f4538g = i10;
            MaterialCardView materialCardView = c1742c.f4532a;
            c1742c.m2862e(materialCardView.getMeasuredWidth(), materialCardView.getMeasuredHeight());
        }
    }

    public void setCheckedIconMargin(@Dimension int i10) {
        this.f2222b.f4536e = i10;
    }

    public void setCheckedIconMarginResource(@DimenRes int i10) {
        if (i10 != -1) {
            this.f2222b.f4536e = getResources().getDimensionPixelSize(i10);
        }
    }

    public void setCheckedIconResource(@DrawableRes int i10) {
        this.f2222b.m2864g(AppCompatResources.getDrawable(getContext(), i10));
    }

    public void setCheckedIconSize(@Dimension int i10) {
        this.f2222b.f4537f = i10;
    }

    public void setCheckedIconSizeResource(@DimenRes int i10) {
        if (i10 != 0) {
            this.f2222b.f4537f = getResources().getDimensionPixelSize(i10);
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        C1742c c1742c = this.f2222b;
        c1742c.f4543l = colorStateList;
        Drawable drawable = c1742c.f4541j;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z9) {
        super.setClickable(z9);
        C1742c c1742c = this.f2222b;
        if (c1742c != null) {
            c1742c.m2868k();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public final void setContentPadding(int i10, int i11, int i12, int i13) {
        C1742c c1742c = this.f2222b;
        c1742c.f4533b.set(i10, i11, i12, i13);
        c1742c.m2869l();
    }

    public void setDragged(boolean z9) {
        if (this.f2225e != z9) {
            this.f2225e = z9;
            refreshDrawableState();
            m1784a();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f8) {
        super.setMaxCardElevation(f8);
        this.f2222b.m2870m();
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z9) {
        super.setPreventCornerOverlap(z9);
        C1742c c1742c = this.f2222b;
        c1742c.m2870m();
        c1742c.m2869l();
    }

    public void setProgress(@FloatRange(from = 0.0d, m378to = 1.0d) float f8) {
        C1742c c1742c = this.f2222b;
        c1742c.f4534c.m5949r(f8);
        C3725k c3725k = c1742c.f4535d;
        if (c3725k != null) {
            c3725k.m5949r(f8);
        }
        C3725k c3725k2 = c1742c.f4548q;
        if (c3725k2 != null) {
            c3725k2.m5949r(f8);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f8) {
        super.setRadius(f8);
        C1742c c1742c = this.f2222b;
        C3728n c3728nM5963g = c1742c.f4544m.m5963g();
        c3728nM5963g.f11077e = new C3711a(f8);
        c3728nM5963g.f11078f = new C3711a(f8);
        c3728nM5963g.f11079g = new C3711a(f8);
        c3728nM5963g.f11080h = new C3711a(f8);
        c1742c.m2865h(c3728nM5963g.m5956a());
        c1742c.f4540i.invalidateSelf();
        if (c1742c.m2866i() || (c1742c.f4532a.getPreventCornerOverlap() && !c1742c.f4534c.m5945n())) {
            c1742c.m2869l();
        }
        if (c1742c.m2866i()) {
            c1742c.m2870m();
        }
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        C1742c c1742c = this.f2222b;
        c1742c.f4542k = colorStateList;
        RippleDrawable rippleDrawable = c1742c.f4546o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i10) {
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), i10);
        C1742c c1742c = this.f2222b;
        c1742c.f4542k = colorStateList;
        RippleDrawable rippleDrawable = c1742c.f4546o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    @Override // p258z3.InterfaceC3740z
    public void setShapeAppearanceModel(@NonNull C3729o c3729o) {
        setClipToOutline(c3729o.m5962f(getBoundsAsRectF()));
        this.f2222b.m2865h(c3729o);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        C1742c c1742c = this.f2222b;
        if (c1742c.f4545n != colorStateList) {
            c1742c.f4545n = colorStateList;
            C3725k c3725k = c1742c.f4535d;
            c3725k.f11048c.f11031k = c1742c.f4539h;
            c3725k.invalidateSelf();
            C3722h c3722h = c3725k.f11048c;
            if (c3722h.f11025e != colorStateList) {
                c3722h.f11025e = colorStateList;
                c3725k.onStateChange(c3725k.getState());
            }
        }
        invalidate();
    }

    public void setStrokeWidth(@Dimension int i10) {
        C1742c c1742c = this.f2222b;
        if (i10 != c1742c.f4539h) {
            c1742c.f4539h = i10;
            C3725k c3725k = c1742c.f4535d;
            ColorStateList colorStateList = c1742c.f4545n;
            c3725k.f11048c.f11031k = i10;
            c3725k.invalidateSelf();
            C3722h c3722h = c3725k.f11048c;
            if (c3722h.f11025e != colorStateList) {
                c3722h.f11025e = colorStateList;
                c3725k.onStateChange(c3725k.getState());
            }
        }
        invalidate();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z9) {
        super.setUseCompatPadding(z9);
        C1742c c1742c = this.f2222b;
        c1742c.m2870m();
        c1742c.m2869l();
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        C1742c c1742c = this.f2222b;
        if (c1742c != null && c1742c.f4550s && isEnabled()) {
            this.f2224d = !this.f2224d;
            refreshDrawableState();
            m1784a();
            c1742c.m2863f(this.f2224d, true);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.f2222b.f4534c.m5948q(colorStateList);
    }

    public void setOnCheckedChangeListener(@Nullable InterfaceC1740a interfaceC1740a) {
    }

    public void setStrokeColor(@ColorInt int i10) {
        setStrokeColor(ColorStateList.valueOf(i10));
    }
}

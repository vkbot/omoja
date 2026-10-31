package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.fragment.app.C0566h;
import com.bumptech.glide.AbstractC1034g;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p004a3.AbstractC0007a;
import p016b1.AbstractC0880u;
import p062f5.RunnableC1556j;
import p071g4.AbstractC1618a;
import p080h3.AbstractC1659e;
import p080h3.C1655a;
import p080h3.C1657c;
import p080h3.C1660f;
import p080h3.InterfaceC1656b;
import p099j1.C1929i;
import p184r5.C3105c;
import p192s3.AbstractC3198l;
import p192s3.AbstractC3203q;
import p228w3.AbstractC3517b;
import p228w3.AbstractC3518c;
import p238x3.AbstractC3567a;
import p258z3.C3711a;
import p258z3.C3714b0;
import p258z3.C3716c0;
import p258z3.C3718d0;
import p258z3.C3725k;
import p258z3.C3728n;
import p258z3.C3729o;
import p258z3.InterfaceC3740z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialButton extends AppCompatButton implements Checkable, InterfaceC3740z {

    /* JADX INFO: renamed from: D */
    public static final int[] f2181D = {R.attr.state_checkable};

    /* JADX INFO: renamed from: E */
    public static final int[] f2182E = {R.attr.state_checked};

    /* JADX INFO: renamed from: F */
    public static final C1655a f2183F = new C1655a("widthIncrease");

    /* JADX INFO: renamed from: A */
    public float f2184A;

    /* JADX INFO: renamed from: B */
    public float f2185B;

    /* JADX INFO: renamed from: C */
    public SpringAnimation f2186C;

    /* JADX INFO: renamed from: b */
    public final C1660f f2187b;

    /* JADX INFO: renamed from: c */
    public final LinkedHashSet f2188c;

    /* JADX INFO: renamed from: d */
    public InterfaceC1656b f2189d;

    /* JADX INFO: renamed from: e */
    public PorterDuff.Mode f2190e;

    /* JADX INFO: renamed from: f */
    public ColorStateList f2191f;

    /* JADX INFO: renamed from: g */
    public Drawable f2192g;

    /* JADX INFO: renamed from: h */
    public String f2193h;

    /* JADX INFO: renamed from: i */
    public int f2194i;

    /* JADX INFO: renamed from: j */
    public int f2195j;

    /* JADX INFO: renamed from: k */
    public int f2196k;

    /* JADX INFO: renamed from: l */
    public int f2197l;

    /* JADX INFO: renamed from: m */
    public boolean f2198m;

    /* JADX INFO: renamed from: n */
    public boolean f2199n;

    /* JADX INFO: renamed from: o */
    public int f2200o;

    /* JADX INFO: renamed from: p */
    public int f2201p;

    /* JADX INFO: renamed from: q */
    public float f2202q;

    /* JADX INFO: renamed from: r */
    public int f2203r;

    /* JADX INFO: renamed from: s */
    public int f2204s;

    /* JADX INFO: renamed from: t */
    public LinearLayout.LayoutParams f2205t;

    /* JADX INFO: renamed from: u */
    public boolean f2206u;

    /* JADX INFO: renamed from: v */
    public int f2207v;

    /* JADX INFO: renamed from: w */
    public boolean f2208w;

    /* JADX INFO: renamed from: x */
    public int f2209x;

    /* JADX INFO: renamed from: y */
    public C3718d0 f2210y;

    /* JADX INFO: renamed from: z */
    public int f2211z;

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(AbstractC1618a.m2697b(context, attributeSet, new int[]{com.example.navistart.R.attr.materialSizeOverlay}, com.example.navistart.R.attr.materialButtonStyle, com.example.navistart.R.style.Widget_MaterialComponents_Button), attributeSet, com.example.navistart.R.attr.materialButtonStyle);
        this.f2188c = new LinkedHashSet();
        this.f2198m = false;
        this.f2199n = false;
        this.f2201p = -1;
        this.f2202q = -1.0f;
        this.f2203r = -1;
        this.f2204s = -1;
        this.f2209x = -1;
        Context context2 = getContext();
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context2, attributeSet, AbstractC0007a.f35n, com.example.navistart.R.attr.materialButtonStyle, com.example.navistart.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.f2197l = typedArrayM5136d.getDimensionPixelSize(13, 0);
        int i10 = typedArrayM5136d.getInt(16, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f2190e = AbstractC3203q.m5139b(i10, mode);
        this.f2191f = AbstractC3518c.m5587a(getContext(), typedArrayM5136d, 15);
        this.f2192g = AbstractC3518c.m5589c(getContext(), typedArrayM5136d, 11);
        this.f2200o = typedArrayM5136d.getInteger(12, 1);
        this.f2194i = typedArrayM5136d.getDimensionPixelSize(14, 0);
        C3714b0 c3714b0M5926b = C3714b0.m5926b(context2, typedArrayM5136d, 19);
        C3729o c3729oM5927c = c3714b0M5926b != null ? c3714b0M5926b.m5927c() : C3729o.m5959c(context2, attributeSet, com.example.navistart.R.attr.materialButtonStyle, com.example.navistart.R.style.Widget_MaterialComponents_Button).m5956a();
        boolean z9 = typedArrayM5136d.getBoolean(17, false);
        C1660f c1660f = new C1660f(this, c3729oM5927c);
        this.f2187b = c1660f;
        c1660f.f4236f = typedArrayM5136d.getDimensionPixelOffset(2, 0);
        c1660f.f4237g = typedArrayM5136d.getDimensionPixelOffset(3, 0);
        c1660f.f4238h = typedArrayM5136d.getDimensionPixelOffset(4, 0);
        c1660f.f4239i = typedArrayM5136d.getDimensionPixelOffset(5, 0);
        if (typedArrayM5136d.hasValue(9)) {
            int dimensionPixelSize = typedArrayM5136d.getDimensionPixelSize(9, -1);
            c1660f.f4240j = dimensionPixelSize;
            float f8 = dimensionPixelSize;
            C3728n c3728nM5963g = c1660f.f4232b.m5963g();
            c3728nM5963g.f11077e = new C3711a(f8);
            c3728nM5963g.f11078f = new C3711a(f8);
            c3728nM5963g.f11079g = new C3711a(f8);
            c3728nM5963g.f11080h = new C3711a(f8);
            c1660f.f4232b = c3728nM5963g.m5956a();
            c1660f.f4233c = null;
            c1660f.m2767d();
            c1660f.f4249s = true;
        }
        c1660f.f4241k = typedArrayM5136d.getDimensionPixelSize(22, 0);
        c1660f.f4242l = AbstractC3203q.m5139b(typedArrayM5136d.getInt(8, -1), mode);
        c1660f.f4243m = AbstractC3518c.m5587a(getContext(), typedArrayM5136d, 7);
        c1660f.f4244n = AbstractC3518c.m5587a(getContext(), typedArrayM5136d, 21);
        c1660f.f4245o = AbstractC3518c.m5587a(getContext(), typedArrayM5136d, 18);
        c1660f.f4250t = typedArrayM5136d.getBoolean(6, false);
        c1660f.f4253w = typedArrayM5136d.getDimensionPixelSize(10, 0);
        c1660f.f4251u = typedArrayM5136d.getBoolean(23, true);
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (typedArrayM5136d.hasValue(0)) {
            c1660f.f4248r = true;
            setSupportBackgroundTintList(c1660f.f4243m);
            setSupportBackgroundTintMode(c1660f.f4242l);
        } else {
            c1660f.m2766c();
        }
        setPaddingRelative(paddingStart + c1660f.f4236f, paddingTop + c1660f.f4238h, paddingEnd + c1660f.f4237g, paddingBottom + c1660f.f4239i);
        setCheckedInternal(typedArrayM5136d.getBoolean(1, false));
        if (c3714b0M5926b != null) {
            c1660f.f4234d = m1775d();
            if (c1660f.f4233c != null) {
                c1660f.m2767d();
            }
            c1660f.f4233c = c3714b0M5926b;
            c1660f.m2767d();
        }
        setOpticalCenterEnabled(z9);
        typedArrayM5136d.recycle();
        setCompoundDrawablePadding(this.f2197l);
        m1779h(this.f2192g != null);
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m1772a(MaterialButton materialButton) {
        materialButton.f2207v = materialButton.getOpticalCenterShift();
        materialButton.m1781j();
        materialButton.invalidate();
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment == 1) {
            return getGravityTextAlignment();
        }
        if (textAlignment == 6 || textAlignment == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDisplayedWidthIncrease() {
        return this.f2184A;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (gravity != 1) {
            return (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getOpticalCenterShift() {
        C3725k c3725kM2764a;
        if (this.f2206u && this.f2208w && (c3725kM2764a = this.f2187b.m2764a(false)) != null) {
            return (int) (c3725kM2764a.m5940i() * 0.11f);
        }
        return 0;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = 0.0f;
        for (int i10 = 0; i10 < lineCount; i10++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i10));
        }
        return (int) Math.ceil(fMax);
    }

    private void setCheckedInternal(boolean z9) {
        C1660f c1660f = this.f2187b;
        if (c1660f == null || !c1660f.f4250t || this.f2198m == z9) {
            return;
        }
        this.f2198m = z9;
        refreshDrawableState();
        if (getParent() instanceof MaterialButtonToggleGroup) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
            boolean z10 = this.f2198m;
            if (!materialButtonToggleGroup.f2214m) {
                materialButtonToggleGroup.m1782f(getId(), z10);
            }
        }
        if (this.f2199n) {
            return;
        }
        this.f2199n = true;
        Iterator it = this.f2188c.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
        this.f2199n = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayedWidthIncrease(float f8) {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        if (this.f2184A != f8) {
            this.f2184A = f8;
            m1781j();
            invalidate();
            if (getParent() instanceof AbstractC1659e) {
                AbstractC1659e abstractC1659e = (AbstractC1659e) getParent();
                int i10 = (int) this.f2184A;
                int iIndexOfChild = abstractC1659e.indexOfChild(this);
                if (iIndexOfChild < 0) {
                    return;
                }
                int i11 = iIndexOfChild - 1;
                while (true) {
                    materialButton = null;
                    if (i11 < 0) {
                        materialButton2 = null;
                        break;
                    } else {
                        if (abstractC1659e.m2761c(i11)) {
                            materialButton2 = (MaterialButton) abstractC1659e.getChildAt(i11);
                            break;
                        }
                        i11--;
                    }
                }
                int childCount = abstractC1659e.getChildCount();
                while (true) {
                    iIndexOfChild++;
                    if (iIndexOfChild >= childCount) {
                        break;
                    } else if (abstractC1659e.m2761c(iIndexOfChild)) {
                        materialButton = (MaterialButton) abstractC1659e.getChildAt(iIndexOfChild);
                        break;
                    }
                }
                if (materialButton2 == null && materialButton == null) {
                    return;
                }
                if (materialButton2 == null) {
                    materialButton.setDisplayedWidthDecrease(i10);
                }
                if (materialButton == null) {
                    materialButton2.setDisplayedWidthDecrease(i10);
                }
                if (materialButton2 == null || materialButton == null) {
                    return;
                }
                materialButton2.setDisplayedWidthDecrease(i10 / 2);
                materialButton.setDisplayedWidthDecrease((i10 + 1) / 2);
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public final SpringForce m1775d() {
        Context context = getContext();
        TypedValue typedValueM5584a = AbstractC3517b.m5584a(com.example.navistart.R.attr.motionSpringFastSpatial, context);
        int[] iArr = AbstractC0007a.f45x;
        TypedArray typedArrayObtainStyledAttributes = typedValueM5584a == null ? context.obtainStyledAttributes(null, iArr, 0, com.example.navistart.R.style.Motion_Material3_Spring_Standard_Fast_Spatial) : context.obtainStyledAttributes(typedValueM5584a.resourceId, iArr);
        SpringForce springForce = new SpringForce();
        try {
            float f8 = typedArrayObtainStyledAttributes.getFloat(1, Float.MIN_VALUE);
            if (f8 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have stiffness value.");
            }
            float f10 = typedArrayObtainStyledAttributes.getFloat(0, Float.MIN_VALUE);
            if (f10 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have a damping value.");
            }
            springForce.setStiffness(f8);
            springForce.setDampingRatio(f10);
            typedArrayObtainStyledAttributes.recycle();
            return springForce;
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX INFO: renamed from: e */
    public final boolean m1776e() {
        C1660f c1660f = this.f2187b;
        return (c1660f == null || c1660f.f4248r) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0081  */
    /* JADX WARN: Code duplicated, block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: f */
    public final void m1777f(boolean z9) {
        int i10;
        if (this.f2210y == null) {
            return;
        }
        if (this.f2186C == null) {
            SpringAnimation springAnimation = new SpringAnimation(this, f2183F);
            this.f2186C = springAnimation;
            springAnimation.setSpring(m1775d());
        }
        if (this.f2208w) {
            int i11 = this.f2211z;
            C3718d0 c3718d0 = this.f2210y;
            int[] drawableState = getDrawableState();
            int[][] iArr = c3718d0.f11017c;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                i10 = -1;
                if (i13 >= c3718d0.f11015a) {
                    i13 = -1;
                    break;
                } else if (StateSet.stateSetMatches(iArr[i13], drawableState)) {
                    break;
                } else {
                    i13++;
                }
            }
            if (i13 < 0) {
                int[] iArr2 = StateSet.WILD_CARD;
                int[][] iArr3 = c3718d0.f11017c;
                for (int i14 = 0; i14 < c3718d0.f11015a; i14++) {
                    if (StateSet.stateSetMatches(iArr3[i14], iArr2)) {
                        i10 = i14;
                        break;
                    }
                }
                i13 = i10;
            }
            C3716c0 c3716c0 = (C3716c0) (i13 < 0 ? c3718d0.f11016b : c3718d0.f11018d[i13]).f6648c;
            int width = getWidth();
            float f8 = c3716c0.f11014b;
            int i15 = c3716c0.f11013a;
            if (i15 != 1) {
                if (i15 == 2) {
                }
                this.f2186C.animateToFinalPosition(Math.min(i11, i12));
                if (z9) {
                    this.f2186C.skipToEnd();
                }
            }
            f8 *= width;
            i12 = (int) f8;
            this.f2186C.animateToFinalPosition(Math.min(i11, i12));
            if (z9) {
                this.f2186C.skipToEnd();
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m1778g() {
        int i10 = this.f2200o;
        if (i10 == 1 || i10 == 2) {
            setCompoundDrawablesRelative(this.f2192g, null, null, null);
            return;
        }
        if (i10 == 3 || i10 == 4) {
            setCompoundDrawablesRelative(null, null, this.f2192g, null);
        } else if (i10 == 16 || i10 == 32) {
            setCompoundDrawablesRelative(null, this.f2192g, null, null);
        }
    }

    @NonNull
    public String getA11yClassName() {
        if (!TextUtils.isEmpty(this.f2193h)) {
            return this.f2193h;
        }
        C1660f c1660f = this.f2187b;
        return ((c1660f == null || !c1660f.f4250t) ? Button.class : CompoundButton.class).getName();
    }

    @Px
    public int getAllowedWidthDecrease() {
        return this.f2209x;
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Px
    public int getCornerRadius() {
        if (m1776e()) {
            return this.f2187b.f4240j;
        }
        return 0;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public SpringForce getCornerSpringForce() {
        return this.f2187b.f4234d;
    }

    public Drawable getIcon() {
        return this.f2192g;
    }

    public int getIconGravity() {
        return this.f2200o;
    }

    @Px
    public int getIconPadding() {
        return this.f2197l;
    }

    @Px
    public int getIconSize() {
        return this.f2194i;
    }

    public ColorStateList getIconTint() {
        return this.f2191f;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f2190e;
    }

    @Dimension
    public int getInsetBottom() {
        return this.f2187b.f4239i;
    }

    @Dimension
    public int getInsetTop() {
        return this.f2187b.f4238h;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (m1776e()) {
            return this.f2187b.f4245o;
        }
        return null;
    }

    @NonNull
    public C3729o getShapeAppearanceModel() {
        if (m1776e()) {
            return this.f2187b.f4232b;
        }
        C1929i.m3030l("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
        return null;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public C3714b0 getStateListShapeAppearanceModel() {
        if (m1776e()) {
            return this.f2187b.f4233c;
        }
        C1929i.m3030l("Attempted to get StateListShapeAppearanceModel from a MaterialButton which has an overwritten background.");
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (m1776e()) {
            return this.f2187b.f4244n;
        }
        return null;
    }

    @Px
    public int getStrokeWidth() {
        if (m1776e()) {
            return this.f2187b.f4241k;
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        return m1776e() ? this.f2187b.f4243m : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m1776e() ? this.f2187b.f4242l : super.getSupportBackgroundTintMode();
    }

    /* JADX INFO: renamed from: h */
    public final void m1779h(boolean z9) {
        Drawable drawable = this.f2192g;
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.f2192g = drawableMutate;
            drawableMutate.setTintList(this.f2191f);
            PorterDuff.Mode mode = this.f2190e;
            if (mode != null) {
                this.f2192g.setTintMode(mode);
            }
            int intrinsicWidth = this.f2194i;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f2192g.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f2194i;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f2192g.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f2192g;
            int i10 = this.f2195j;
            int i11 = this.f2196k;
            drawable2.setBounds(i10, i11, intrinsicWidth + i10, intrinsicHeight + i11);
            this.f2192g.setVisible(true, z9);
        }
        if (z9) {
            m1778g();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i12 = this.f2200o;
        if (((i12 == 1 || i12 == 2) && drawable3 != this.f2192g) || (((i12 == 3 || i12 == 4) && drawable5 != this.f2192g) || ((i12 == 16 || i12 == 32) && drawable4 != this.f2192g))) {
            m1778g();
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m1780i(int i10, int i11) {
        if (this.f2192g == null || getLayout() == null) {
            return;
        }
        int i12 = this.f2200o;
        if (i12 != 1 && i12 != 2 && i12 != 3 && i12 != 4) {
            if (i12 == 16 || i12 == 32) {
                this.f2195j = 0;
                if (i12 == 16) {
                    this.f2196k = 0;
                    m1779h(false);
                    return;
                }
                int intrinsicHeight = this.f2194i;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f2192g.getIntrinsicHeight();
                }
                int iMax = Math.max(0, (((((i11 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f2197l) - getPaddingBottom()) / 2);
                if (this.f2196k != iMax) {
                    this.f2196k = iMax;
                    m1779h(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f2196k = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i13 = this.f2200o;
        if (i13 == 1 || i13 == 3 || ((i13 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i13 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f2195j = 0;
            m1779h(false);
            return;
        }
        int intrinsicWidth = this.f2194i;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f2192g.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i10 - getTextLayoutWidth()) - getPaddingEnd()) - intrinsicWidth) - this.f2197l) - getPaddingStart();
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if ((getLayoutDirection() == 1) != (this.f2200o == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.f2195j != textLayoutWidth) {
            this.f2195j = textLayoutWidth;
            m1779h(false);
        }
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f2198m;
    }

    /* JADX INFO: renamed from: j */
    public final void m1781j() {
        int i10 = (int) (this.f2184A - this.f2185B);
        int i11 = (i10 / 2) + this.f2207v;
        getLayoutParams().width = (int) (this.f2202q + i10);
        setPaddingRelative(this.f2203r + i11, getPaddingTop(), (this.f2204s + i10) - i11, getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (m1776e()) {
            AbstractC0880u.m1006w(this, this.f2187b.m2764a(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        C1660f c1660f = this.f2187b;
        if (c1660f != null && c1660f.f4250t) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2181D);
        }
        if (this.f2198m) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2182E);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.f2198m);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        C1660f c1660f = this.f2187b;
        accessibilityNodeInfo.setCheckable(c1660f != null && c1660f.f4250t);
        accessibilityNodeInfo.setChecked(this.f2198m);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        int i14;
        super.onLayout(z9, i10, i11, i12, i13);
        m1780i(getMeasuredWidth(), getMeasuredHeight());
        int i15 = getResources().getConfiguration().orientation;
        if (this.f2201p != i15) {
            this.f2201p = i15;
            this.f2202q = -1.0f;
        }
        if (this.f2202q == -1.0f) {
            this.f2202q = getMeasuredWidth();
            if (this.f2205t == null && (getParent() instanceof AbstractC1659e) && ((AbstractC1659e) getParent()).getButtonSizeChange() != null) {
                this.f2205t = (LinearLayout.LayoutParams) getLayoutParams();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f2205t);
                layoutParams.width = (int) this.f2202q;
                setLayoutParams(layoutParams);
            }
        }
        boolean z10 = false;
        if (this.f2209x == -1) {
            if (this.f2192g == null) {
                i14 = 0;
            } else {
                int iconPadding = getIconPadding();
                int intrinsicWidth = this.f2194i;
                if (intrinsicWidth == 0) {
                    intrinsicWidth = this.f2192g.getIntrinsicWidth();
                }
                i14 = iconPadding + intrinsicWidth;
            }
            this.f2209x = (getMeasuredWidth() - getTextLayoutWidth()) - i14;
        }
        if (this.f2203r == -1) {
            this.f2203r = getPaddingStart();
        }
        if (this.f2204s == -1) {
            this.f2204s = getPaddingEnd();
        }
        if ((getParent() instanceof AbstractC1659e) && ((AbstractC1659e) getParent()).getOrientation() == 0) {
            z10 = true;
        }
        this.f2208w = z10;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1657c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1657c c1657c = (C1657c) parcelable;
        super.onRestoreInstanceState(c1657c.getSuperState());
        setChecked(c1657c.f4218b);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        C1657c c1657c = new C1657c(super.onSaveInstanceState());
        c1657c.f4218b = this.f2198m;
        return c1657c;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        m1780i(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (isEnabled() && this.f2187b.f4251u) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f2192g != null) {
            if (this.f2192g.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setA11yClassName(@Nullable String str) {
        this.f2193h = str;
    }

    @Override // android.view.View
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i10) {
        if (!m1776e()) {
            super.setBackgroundColor(i10);
            return;
        }
        C1660f c1660f = this.f2187b;
        if (c1660f.m2764a(false) != null) {
            c1660f.m2764a(false).setTint(i10);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (!m1776e()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
        C1660f c1660f = this.f2187b;
        c1660f.f4248r = true;
        MaterialButton materialButton = c1660f.f4231a;
        materialButton.setSupportBackgroundTintList(c1660f.f4243m);
        materialButton.setSupportBackgroundTintMode(c1660f.f4242l);
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i10) {
        setBackgroundDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z9) {
        if (m1776e()) {
            this.f2187b.f4250t = z9;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z9) {
        setCheckedInternal(z9);
    }

    public void setCornerRadius(@Px int i10) {
        if (m1776e()) {
            C1660f c1660f = this.f2187b;
            if (c1660f.f4249s && c1660f.f4240j == i10) {
                return;
            }
            c1660f.f4240j = i10;
            c1660f.f4249s = true;
            float f8 = i10;
            C3728n c3728nM5963g = c1660f.f4232b.m5963g();
            c3728nM5963g.f11077e = new C3711a(f8);
            c3728nM5963g.f11078f = new C3711a(f8);
            c3728nM5963g.f11079g = new C3711a(f8);
            c3728nM5963g.f11080h = new C3711a(f8);
            c1660f.f4232b = c3728nM5963g.m5956a();
            c1660f.f4233c = null;
            c1660f.m2767d();
        }
    }

    public void setCornerRadiusResource(@DimenRes int i10) {
        if (m1776e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i10));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setCornerSpringForce(@NonNull SpringForce springForce) {
        C1660f c1660f = this.f2187b;
        c1660f.f4234d = springForce;
        if (c1660f.f4233c != null) {
            c1660f.m2767d();
        }
    }

    public void setDisplayedWidthDecrease(int i10) {
        this.f2185B = Math.min(i10, this.f2209x);
        m1781j();
        invalidate();
    }

    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        if (m1776e()) {
            this.f2187b.m2764a(false).m5947p(f8);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.f2192g != drawable) {
            this.f2192g = drawable;
            m1779h(true);
            m1780i(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i10) {
        if (this.f2200o != i10) {
            this.f2200o = i10;
            m1780i(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(@Px int i10) {
        if (this.f2197l != i10) {
            this.f2197l = i10;
            setCompoundDrawablePadding(i10);
        }
    }

    public void setIconResource(@DrawableRes int i10) {
        setIcon(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    public void setIconSize(@Px int i10) {
        if (i10 < 0) {
            C1929i.m3029k("iconSize cannot be less than 0");
        } else if (this.f2194i != i10) {
            this.f2194i = i10;
            m1779h(true);
        }
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f2191f != colorStateList) {
            this.f2191f = colorStateList;
            m1779h(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f2190e != mode) {
            this.f2190e = mode;
            m1779h(false);
        }
    }

    public void setIconTintResource(@ColorRes int i10) {
        setIconTint(AppCompatResources.getColorStateList(getContext(), i10));
    }

    public void setInsetBottom(@Dimension int i10) {
        C1660f c1660f = this.f2187b;
        c1660f.m2765b(c1660f.f4238h, i10);
    }

    public void setInsetTop(@Dimension int i10) {
        C1660f c1660f = this.f2187b;
        c1660f.m2765b(i10, c1660f.f4239i);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(@Nullable InterfaceC1656b interfaceC1656b) {
        this.f2189d = interfaceC1656b;
    }

    public void setOpticalCenterEnabled(boolean z9) {
        if (this.f2206u != z9) {
            this.f2206u = z9;
            C1660f c1660f = this.f2187b;
            if (z9) {
                C0566h c0566h = new C0566h(12, this);
                c1660f.f4235e = c0566h;
                C3725k c3725kM2764a = c1660f.m2764a(false);
                if (c3725kM2764a != null) {
                    c3725kM2764a.f11046F = c0566h;
                }
            } else {
                c1660f.f4235e = null;
                C3725k c3725kM2764a2 = c1660f.m2764a(false);
                if (c3725kM2764a2 != null) {
                    c3725kM2764a2.f11046F = null;
                }
            }
            post(new RunnableC1556j(3, this));
        }
    }

    @Override // android.view.View
    public void setPressed(boolean z9) {
        InterfaceC1656b interfaceC1656b = this.f2189d;
        if (interfaceC1656b != null) {
            ((MaterialButtonToggleGroup) ((C3105c) interfaceC1656b).f8867c).invalidate();
        }
        super.setPressed(z9);
        m1777f(false);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (m1776e()) {
            C1660f c1660f = this.f2187b;
            MaterialButton materialButton = c1660f.f4231a;
            if (c1660f.f4245o != colorStateList) {
                c1660f.f4245o = colorStateList;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(AbstractC3567a.m5684b(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(@ColorRes int i10) {
        if (m1776e()) {
            setRippleColor(AppCompatResources.getColorStateList(getContext(), i10));
        }
    }

    @Override // p258z3.InterfaceC3740z
    public void setShapeAppearanceModel(@NonNull C3729o c3729o) {
        if (!m1776e()) {
            C1929i.m3030l("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
            return;
        }
        C1660f c1660f = this.f2187b;
        c1660f.f4232b = c3729o;
        c1660f.f4233c = null;
        c1660f.m2767d();
    }

    public void setShouldDrawSurfaceColorStroke(boolean z9) {
        if (m1776e()) {
            C1660f c1660f = this.f2187b;
            c1660f.f4247q = z9;
            c1660f.m2768e();
        }
    }

    public void setSizeChange(@NonNull C3718d0 c3718d0) {
        if (this.f2210y != c3718d0) {
            this.f2210y = c3718d0;
            m1777f(true);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setStateListShapeAppearanceModel(@NonNull C3714b0 c3714b0) {
        if (!m1776e()) {
            C1929i.m3030l("Attempted to set StateListShapeAppearanceModel on a MaterialButton which has an overwritten background.");
            return;
        }
        C1660f c1660f = this.f2187b;
        if (c1660f.f4234d == null && c3714b0.m5928d()) {
            c1660f.f4234d = m1775d();
            if (c1660f.f4233c != null) {
                c1660f.m2767d();
            }
        }
        c1660f.f4233c = c3714b0;
        c1660f.m2767d();
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (m1776e()) {
            C1660f c1660f = this.f2187b;
            if (c1660f.f4244n != colorStateList) {
                c1660f.f4244n = colorStateList;
                c1660f.m2768e();
            }
        }
    }

    public void setStrokeColorResource(@ColorRes int i10) {
        if (m1776e()) {
            setStrokeColor(AppCompatResources.getColorStateList(getContext(), i10));
        }
    }

    public void setStrokeWidth(@Px int i10) {
        if (m1776e()) {
            C1660f c1660f = this.f2187b;
            if (c1660f.f4241k != i10) {
                c1660f.f4241k = i10;
                c1660f.m2768e();
            }
        }
    }

    public void setStrokeWidthResource(@DimenRes int i10) {
        if (m1776e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (!m1776e()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        C1660f c1660f = this.f2187b;
        if (c1660f.f4243m != colorStateList) {
            c1660f.f4243m = colorStateList;
            if (c1660f.m2764a(false) != null) {
                c1660f.m2764a(false).setTintList(c1660f.f4243m);
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (!m1776e()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        C1660f c1660f = this.f2187b;
        if (c1660f.f4242l != mode) {
            c1660f.f4242l = mode;
            if (c1660f.m2764a(false) == null || c1660f.f4242l == null) {
                return;
            }
            c1660f.m2764a(false).setTintMode(c1660f.f4242l);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i10) {
        super.setTextAlignment(i10);
        m1780i(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z9) {
        this.f2187b.f4251u = z9;
    }

    @Override // android.widget.TextView
    public void setWidth(@Px int i10) {
        this.f2202q = -1.0f;
        super.setWidth(i10);
    }

    public void setWidthChangeMax(@Px int i10) {
        if (this.f2211z != i10) {
            this.f2211z = i10;
            m1777f(true);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f2198m);
    }
}

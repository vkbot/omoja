package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.navigation.C0674b;
import java.lang.ref.WeakReference;
import p004a3.AbstractC0007a;
import p016b1.AbstractC0880u;
import p018b3.C0888e;
import p047e0.C1418s0;
import p071g4.AbstractC1618a;
import p124l3.C2200a;
import p124l3.C2201b;
import p124l3.C2202c;
import p124l3.C2204e;
import p124l3.InterfaceC2203d;
import p192s3.AbstractC3198l;
import p192s3.C3196j;
import p192s3.InterfaceC3192f;
import p228w3.AbstractC3517b;
import p228w3.AbstractC3518c;
import p228w3.C3521f;
import p238x3.AbstractC3567a;
import p258z3.C3729o;
import p258z3.InterfaceC3740z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Chip extends AppCompatCheckBox implements InterfaceC2203d, InterfaceC3740z, Checkable {

    /* JADX INFO: renamed from: t */
    public static final Rect f2229t = new Rect();

    /* JADX INFO: renamed from: u */
    public static final int[] f2230u = {R.attr.state_selected};

    /* JADX INFO: renamed from: v */
    public static final int[] f2231v = {R.attr.state_checkable};

    /* JADX INFO: renamed from: b */
    public C2204e f2232b;

    /* JADX INFO: renamed from: c */
    public InsetDrawable f2233c;

    /* JADX INFO: renamed from: d */
    public RippleDrawable f2234d;

    /* JADX INFO: renamed from: e */
    public View.OnClickListener f2235e;

    /* JADX INFO: renamed from: f */
    public CompoundButton.OnCheckedChangeListener f2236f;

    /* JADX INFO: renamed from: g */
    public boolean f2237g;

    /* JADX INFO: renamed from: h */
    public boolean f2238h;

    /* JADX INFO: renamed from: i */
    public boolean f2239i;

    /* JADX INFO: renamed from: j */
    public boolean f2240j;

    /* JADX INFO: renamed from: k */
    public boolean f2241k;

    /* JADX INFO: renamed from: l */
    public int f2242l;

    /* JADX INFO: renamed from: m */
    public int f2243m;

    /* JADX INFO: renamed from: n */
    public CharSequence f2244n;

    /* JADX INFO: renamed from: o */
    public final C2202c f2245o;

    /* JADX INFO: renamed from: p */
    public boolean f2246p;

    /* JADX INFO: renamed from: q */
    public final Rect f2247q;

    /* JADX INFO: renamed from: r */
    public final RectF f2248r;

    /* JADX INFO: renamed from: s */
    public final C2200a f2249s;

    public Chip(Context context, AttributeSet attributeSet) {
        int resourceId;
        super(AbstractC1618a.m2696a(context, attributeSet, com.example.navistart.R.attr.chipStyle, com.example.navistart.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, com.example.navistart.R.attr.chipStyle);
        this.f2247q = new Rect();
        this.f2248r = new RectF();
        this.f2249s = new C2200a(0, this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                C0674b.m840g("Please set left drawable using R.attr#chipIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                C0674b.m840g("Please set start drawable using R.attr#chipIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                C0674b.m840g("Please set end drawable using R.attr#closeIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                C0674b.m840g("Please set end drawable using R.attr#closeIcon.");
                throw null;
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                C0674b.m840g("Chip does not support multi-line text");
                throw null;
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        C2204e c2204e = new C2204e(context2, attributeSet);
        Context context3 = c2204e.f5784p0;
        int[] iArr = AbstractC0007a.f27f;
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context3, attributeSet, iArr, com.example.navistart.R.attr.chipStyle, com.example.navistart.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        c2204e.f5758P0 = typedArrayM5136d.hasValue(37);
        Context context4 = c2204e.f5784p0;
        ColorStateList colorStateListM5587a = AbstractC3518c.m5587a(context4, typedArrayM5136d, 24);
        if (c2204e.f5743I != colorStateListM5587a) {
            c2204e.f5743I = colorStateListM5587a;
            c2204e.onStateChange(c2204e.getState());
        }
        ColorStateList colorStateListM5587a2 = AbstractC3518c.m5587a(context4, typedArrayM5136d, 11);
        if (c2204e.f5745J != colorStateListM5587a2) {
            c2204e.f5745J = colorStateListM5587a2;
            c2204e.onStateChange(c2204e.getState());
        }
        float dimension = typedArrayM5136d.getDimension(19, 0.0f);
        if (c2204e.f5747K != dimension) {
            c2204e.f5747K = dimension;
            c2204e.invalidateSelf();
            c2204e.m3510F();
        }
        if (typedArrayM5136d.hasValue(12)) {
            c2204e.m3516L(typedArrayM5136d.getDimension(12, 0.0f));
        }
        c2204e.m3521Q(AbstractC3518c.m5587a(context4, typedArrayM5136d, 22));
        c2204e.m3522R(typedArrayM5136d.getDimension(23, 0.0f));
        c2204e.m3532b0(AbstractC3518c.m5587a(context4, typedArrayM5136d, 36));
        String text = typedArrayM5136d.getText(5);
        text = text == null ? "" : text;
        boolean zEquals = TextUtils.equals(c2204e.f5757P, text);
        C3196j c3196j = c2204e.f5790v0;
        if (!zEquals) {
            c2204e.f5757P = text;
            c3196j.f9366e = true;
            c2204e.invalidateSelf();
            c2204e.m3510F();
        }
        C3521f c3521f = (!typedArrayM5136d.hasValue(0) || (resourceId = typedArrayM5136d.getResourceId(0, 0)) == 0) ? null : new C3521f(context4, resourceId);
        c3521f.f10452l = typedArrayM5136d.getDimension(1, c3521f.f10452l);
        c3196j.m5132b(c3521f, context4);
        int i10 = typedArrayM5136d.getInt(3, 0);
        if (i10 == 1) {
            c2204e.f5752M0 = TextUtils.TruncateAt.START;
        } else if (i10 == 2) {
            c2204e.f5752M0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i10 == 3) {
            c2204e.f5752M0 = TextUtils.TruncateAt.END;
        }
        c2204e.m3520P(typedArrayM5136d.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            c2204e.m3520P(typedArrayM5136d.getBoolean(15, false));
        }
        c2204e.m3517M(AbstractC3518c.m5589c(context4, typedArrayM5136d, 14));
        if (typedArrayM5136d.hasValue(17)) {
            c2204e.m3519O(AbstractC3518c.m5587a(context4, typedArrayM5136d, 17));
        }
        c2204e.m3518N(typedArrayM5136d.getDimension(16, -1.0f));
        c2204e.m3529Y(typedArrayM5136d.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            c2204e.m3529Y(typedArrayM5136d.getBoolean(26, false));
        }
        c2204e.m3523S(AbstractC3518c.m5589c(context4, typedArrayM5136d, 25));
        c2204e.m3528X(AbstractC3518c.m5587a(context4, typedArrayM5136d, 30));
        c2204e.m3525U(typedArrayM5136d.getDimension(28, 0.0f));
        c2204e.m3512H(typedArrayM5136d.getBoolean(6, false));
        c2204e.m3515K(typedArrayM5136d.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            c2204e.m3515K(typedArrayM5136d.getBoolean(8, false));
        }
        c2204e.m3513I(AbstractC3518c.m5589c(context4, typedArrayM5136d, 7));
        if (typedArrayM5136d.hasValue(9)) {
            c2204e.m3514J(AbstractC3518c.m5587a(context4, typedArrayM5136d, 9));
        }
        c2204e.f5774f0 = C0888e.m1019a(context4, typedArrayM5136d, 39);
        c2204e.f5775g0 = C0888e.m1019a(context4, typedArrayM5136d, 33);
        float dimension2 = typedArrayM5136d.getDimension(21, 0.0f);
        if (c2204e.f5776h0 != dimension2) {
            c2204e.f5776h0 = dimension2;
            c2204e.invalidateSelf();
            c2204e.m3510F();
        }
        c2204e.m3531a0(typedArrayM5136d.getDimension(35, 0.0f));
        c2204e.m3530Z(typedArrayM5136d.getDimension(34, 0.0f));
        float dimension3 = typedArrayM5136d.getDimension(41, 0.0f);
        if (c2204e.f5779k0 != dimension3) {
            c2204e.f5779k0 = dimension3;
            c2204e.invalidateSelf();
            c2204e.m3510F();
        }
        float dimension4 = typedArrayM5136d.getDimension(40, 0.0f);
        if (c2204e.f5780l0 != dimension4) {
            c2204e.f5780l0 = dimension4;
            c2204e.invalidateSelf();
            c2204e.m3510F();
        }
        c2204e.m3526V(typedArrayM5136d.getDimension(29, 0.0f));
        c2204e.m3524T(typedArrayM5136d.getDimension(27, 0.0f));
        float dimension5 = typedArrayM5136d.getDimension(13, 0.0f);
        if (c2204e.f5783o0 != dimension5) {
            c2204e.f5783o0 = dimension5;
            c2204e.invalidateSelf();
            c2204e.m3510F();
        }
        c2204e.f5756O0 = typedArrayM5136d.getDimensionPixelSize(4, Integer.MAX_VALUE);
        typedArrayM5136d.recycle();
        AbstractC3198l.m5133a(context2, attributeSet, com.example.navistart.R.attr.chipStyle, com.example.navistart.R.style.Widget_MaterialComponents_Chip_Action);
        AbstractC3198l.m5134b(context2, attributeSet, iArr, com.example.navistart.R.attr.chipStyle, com.example.navistart.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.example.navistart.R.attr.chipStyle, com.example.navistart.R.style.Widget_MaterialComponents_Chip_Action);
        this.f2241k = typedArrayObtainStyledAttributes.getBoolean(32, false);
        TypedValue typedValueM5584a = AbstractC3517b.m5584a(com.example.navistart.R.attr.minTouchTargetSize, context2);
        this.f2243m = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(20, (int) ((typedValueM5584a == null || typedValueM5584a.type != 5) ? context2.getResources().getDimension(com.example.navistart.R.dimen.mtrl_min_touch_target_size) : typedValueM5584a.getDimension(context2.getResources().getDisplayMetrics()))));
        typedArrayObtainStyledAttributes.recycle();
        setChipDrawable(c2204e);
        c2204e.m5947p(getElevation());
        AbstractC3198l.m5133a(context2, attributeSet, com.example.navistart.R.attr.chipStyle, com.example.navistart.R.style.Widget_MaterialComponents_Chip_Action);
        AbstractC3198l.m5134b(context2, attributeSet, iArr, com.example.navistart.R.attr.chipStyle, com.example.navistart.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, com.example.navistart.R.attr.chipStyle, com.example.navistart.R.style.Widget_MaterialComponents_Chip_Action);
        boolean zHasValue = typedArrayObtainStyledAttributes2.hasValue(37);
        typedArrayObtainStyledAttributes2.recycle();
        this.f2245o = new C2202c(this, this);
        m1793e();
        if (!zHasValue) {
            setOutlineProvider(new C2201b(this));
        }
        setChecked(this.f2237g);
        setText(c2204e.f5757P);
        setEllipsize(c2204e.f5752M0);
        m1796h();
        if (!this.f2232b.f5754N0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        m1795g();
        if (this.f2241k) {
            setMinHeight(this.f2243m);
        }
        this.f2242l = getLayoutDirection();
        super.setOnCheckedChangeListener(new C1418s0(5, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public RectF getCloseIconTouchBounds() {
        RectF rectF = this.f2248r;
        rectF.setEmpty();
        if (m1792d() && this.f2235e != null) {
            C2204e c2204e = this.f2232b;
            Rect bounds = c2204e.getBounds();
            rectF.setEmpty();
            if (c2204e.m3535e0()) {
                float f8 = c2204e.f5783o0 + c2204e.f5782n0 + c2204e.f5768Z + c2204e.f5781m0 + c2204e.f5780l0;
                if (DrawableCompat.getLayoutDirection(c2204e) == 0) {
                    float f10 = bounds.right;
                    rectF.right = f10;
                    rectF.left = f10 - f8;
                } else {
                    float f11 = bounds.left;
                    rectF.left = f11;
                    rectF.right = f11 + f8;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i10 = (int) closeIconTouchBounds.left;
        int i11 = (int) closeIconTouchBounds.top;
        int i12 = (int) closeIconTouchBounds.right;
        int i13 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.f2247q;
        rect.set(i10, i11, i12, i13);
        return rect;
    }

    @Nullable
    private C3521f getTextAppearance() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5790v0.f9368g;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z9) {
        if (this.f2239i != z9) {
            this.f2239i = z9;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z9) {
        if (this.f2238h != z9) {
            this.f2238h = z9;
            refreshDrawableState();
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1791c(int i10) {
        this.f2243m = i10;
        if (!this.f2241k) {
            InsetDrawable insetDrawable = this.f2233c;
            if (insetDrawable == null) {
                m1794f();
                return;
            } else {
                if (insetDrawable != null) {
                    this.f2233c = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    m1794f();
                    return;
                }
                return;
            }
        }
        int iMax = Math.max(0, i10 - ((int) this.f2232b.f5747K));
        int iMax2 = Math.max(0, i10 - this.f2232b.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            InsetDrawable insetDrawable2 = this.f2233c;
            if (insetDrawable2 == null) {
                m1794f();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.f2233c = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    m1794f();
                    return;
                }
                return;
            }
        }
        int i11 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i12 = iMax > 0 ? iMax / 2 : 0;
        if (this.f2233c != null) {
            Rect rect = new Rect();
            this.f2233c.getPadding(rect);
            if (rect.top == i12 && rect.bottom == i12 && rect.left == i11 && rect.right == i11) {
                m1794f();
                return;
            }
        }
        if (getMinHeight() != i10) {
            setMinHeight(i10);
        }
        if (getMinWidth() != i10) {
            setMinWidth(i10);
        }
        this.f2233c = new InsetDrawable((Drawable) this.f2232b, i11, i12, i11, i12);
        m1794f();
    }

    /* JADX INFO: renamed from: d */
    public final boolean m1792d() {
        C2204e c2204e = this.f2232b;
        if (c2204e == null) {
            return false;
        }
        Drawable drawable = c2204e.f5765W;
        return (drawable != null ? DrawableCompat.unwrap(drawable) : null) != null;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.f2246p) {
            return this.f2245o.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f2246p) {
            return super.dispatchKeyEvent(keyEvent);
        }
        C2202c c2202c = this.f2245o;
        if (!c2202c.dispatchKeyEvent(keyEvent) || c2202c.getKeyboardFocusedVirtualViewId() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i10;
        super.drawableStateChanged();
        C2204e c2204e = this.f2232b;
        boolean zM3527W = false;
        int i11 = 0;
        zM3527W = false;
        if (c2204e != null && C2204e.m3505E(c2204e.f5765W)) {
            C2204e c2204e2 = this.f2232b;
            ?? IsEnabled = isEnabled();
            if (this.f2240j) {
                i10 = IsEnabled;
                i10 = IsEnabled + 1;
            }
            i10 = IsEnabled;
            int i12 = i10;
            if (this.f2239i) {
                i12 = i10 + 1;
            }
            int i13 = i12;
            if (this.f2238h) {
                i13 = i12 + 1;
            }
            int i14 = i13;
            if (isChecked()) {
                i14 = i13 + 1;
            }
            int[] iArr = new int[i14];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i11 = 1;
            }
            if (this.f2240j) {
                iArr[i11] = 16842908;
                i11++;
            }
            if (this.f2239i) {
                iArr[i11] = 16843623;
                i11++;
            }
            if (this.f2238h) {
                iArr[i11] = 16842919;
                i11++;
            }
            if (isChecked()) {
                iArr[i11] = 16842913;
            }
            zM3527W = c2204e2.m3527W(iArr);
        }
        if (zM3527W) {
            invalidate();
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m1793e() {
        C2204e c2204e;
        if (!m1792d() || (c2204e = this.f2232b) == null || !c2204e.f5764V || this.f2235e == null) {
            ViewCompat.setAccessibilityDelegate(this, null);
            this.f2246p = false;
        } else {
            ViewCompat.setAccessibilityDelegate(this, this.f2245o);
            this.f2246p = true;
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m1794f() {
        this.f2234d = new RippleDrawable(AbstractC3567a.m5684b(this.f2232b.f5755O), getBackgroundDrawable(), null);
        this.f2232b.getClass();
        setBackground(this.f2234d);
        m1795g();
    }

    /* JADX INFO: renamed from: g */
    public final void m1795g() {
        C2204e c2204e;
        if (TextUtils.isEmpty(getText()) || (c2204e = this.f2232b) == null) {
            return;
        }
        int iM3508B = (int) (c2204e.m3508B() + c2204e.f5783o0 + c2204e.f5780l0);
        C2204e c2204e2 = this.f2232b;
        int iM3507A = (int) (c2204e2.m3507A() + c2204e2.f5776h0 + c2204e2.f5779k0);
        if (this.f2233c != null) {
            Rect rect = new Rect();
            this.f2233c.getPadding(rect);
            iM3507A += rect.left;
            iM3508B += rect.right;
        }
        setPaddingRelative(iM3507A, getPaddingTop(), iM3508B, getPaddingBottom());
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f2244n)) {
            return this.f2244n;
        }
        C2204e c2204e = this.f2232b;
        if (c2204e == null || !c2204e.f5770b0) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        getParent();
        return "android.widget.Button";
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f2233c;
        return insetDrawable == null ? this.f2232b : insetDrawable;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5772d0;
        }
        return null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5773e0;
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5745J;
        }
        return null;
    }

    public float getChipCornerRadius() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return Math.max(0.0f, c2204e.m3509C());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f2232b;
    }

    public float getChipEndPadding() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5783o0;
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        Drawable drawable;
        C2204e c2204e = this.f2232b;
        if (c2204e == null || (drawable = c2204e.f5760R) == null) {
            return null;
        }
        return DrawableCompat.unwrap(drawable);
    }

    public float getChipIconSize() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5762T;
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5761S;
        }
        return null;
    }

    public float getChipMinHeight() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5747K;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5776h0;
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5751M;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5753N;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        Drawable drawable;
        C2204e c2204e = this.f2232b;
        if (c2204e == null || (drawable = c2204e.f5765W) == null) {
            return null;
        }
        return DrawableCompat.unwrap(drawable);
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5769a0;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5782n0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5768Z;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5781m0;
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5767Y;
        }
        return null;
    }

    @Override // android.widget.TextView
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5752M0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.f2246p) {
            C2202c c2202c = this.f2245o;
            if (c2202c.getKeyboardFocusedVirtualViewId() == 1 || c2202c.getAccessibilityFocusedVirtualViewId() == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    @Nullable
    public C0888e getHideMotionSpec() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5775g0;
        }
        return null;
    }

    public float getIconEndPadding() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5778j0;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5777i0;
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5755O;
        }
        return null;
    }

    @NonNull
    public C3729o getShapeAppearanceModel() {
        return this.f2232b.f11048c.f11021a;
    }

    @Nullable
    public C0888e getShowMotionSpec() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5774f0;
        }
        return null;
    }

    public float getTextEndPadding() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5780l0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            return c2204e.f5779k0;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: h */
    public final void m1796h() {
        TextPaint paint = getPaint();
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            paint.drawableState = c2204e.getState();
        }
        C3521f textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.m5594d(getContext(), paint, this.f2249s);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0880u.m1006w(this, this.f2232b);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2230u);
        }
        C2204e c2204e = this.f2232b;
        if (c2204e != null && c2204e.f5770b0) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2231v);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z9, int i10, Rect rect) {
        super.onFocusChanged(z9, i10, rect);
        if (this.f2246p) {
            this.f2245o.onFocusChanged(z9, i10, rect);
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        C2204e c2204e = this.f2232b;
        accessibilityNodeInfo.setCheckable(c2204e != null && c2204e.f5770b0);
        accessibilityNodeInfo.setClickable(isClickable());
        getParent();
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i10) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), PointerIconCompat.TYPE_HAND) : super.onResolvePointerIcon(motionEvent, i10);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        if (this.f2242l != i10) {
            this.f2242l = i10;
            m1795g();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z9;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else if (this.f2238h) {
                    if (!zContains) {
                        setCloseIconPressed(false);
                    }
                    z9 = true;
                }
                z9 = false;
            } else {
                if (this.f2238h) {
                    playSoundEffect(0);
                    View.OnClickListener onClickListener = this.f2235e;
                    if (onClickListener != null) {
                        onClickListener.onClick(this);
                    }
                    if (this.f2246p) {
                        this.f2245o.sendEventForVirtualView(1, 1);
                    }
                    z9 = true;
                }
                setCloseIconPressed(false);
            }
            z9 = false;
            setCloseIconPressed(false);
        } else if (zContains) {
            setCloseIconPressed(true);
            z9 = true;
        } else {
            z9 = false;
        }
        return z9 || super.onTouchEvent(motionEvent);
    }

    public void setAccessibilityClassName(@Nullable CharSequence charSequence) {
        this.f2244n = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f2234d) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f2234d) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i10) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z9) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3512H(z9);
        }
    }

    public void setCheckableResource(@BoolRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3512H(c2204e.f5784p0.getResources().getBoolean(i10));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z9) {
        C2204e c2204e = this.f2232b;
        if (c2204e == null) {
            this.f2237g = z9;
        } else if (c2204e.f5770b0) {
            super.setChecked(z9);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3513I(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z9) {
        setCheckedIconVisible(z9);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i10) {
        setCheckedIconVisible(i10);
    }

    public void setCheckedIconResource(@DrawableRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3513I(AppCompatResources.getDrawable(c2204e.f5784p0, i10));
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3514J(colorStateList);
        }
    }

    public void setCheckedIconTintResource(@ColorRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3514J(AppCompatResources.getColorStateList(c2204e.f5784p0, i10));
        }
    }

    public void setCheckedIconVisible(@BoolRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3515K(c2204e.f5784p0.getResources().getBoolean(i10));
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        C2204e c2204e = this.f2232b;
        if (c2204e == null || c2204e.f5745J == colorStateList) {
            return;
        }
        c2204e.f5745J = colorStateList;
        c2204e.onStateChange(c2204e.getState());
    }

    public void setChipBackgroundColorResource(@ColorRes int i10) {
        ColorStateList colorStateList;
        C2204e c2204e = this.f2232b;
        if (c2204e == null || c2204e.f5745J == (colorStateList = AppCompatResources.getColorStateList(c2204e.f5784p0, i10))) {
            return;
        }
        c2204e.f5745J = colorStateList;
        c2204e.onStateChange(c2204e.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3516L(f8);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3516L(c2204e.f5784p0.getResources().getDimension(i10));
        }
    }

    public void setChipDrawable(@NonNull C2204e c2204e) {
        C2204e c2204e2 = this.f2232b;
        if (c2204e2 != c2204e) {
            if (c2204e2 != null) {
                c2204e2.f5750L0 = new WeakReference(null);
            }
            this.f2232b = c2204e;
            c2204e.f5754N0 = false;
            c2204e.f5750L0 = new WeakReference(this);
            m1791c(this.f2243m);
        }
    }

    public void setChipEndPadding(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e == null || c2204e.f5783o0 == f8) {
            return;
        }
        c2204e.f5783o0 = f8;
        c2204e.invalidateSelf();
        c2204e.m3510F();
    }

    public void setChipEndPaddingResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            float dimension = c2204e.f5784p0.getResources().getDimension(i10);
            if (c2204e.f5783o0 != dimension) {
                c2204e.f5783o0 = dimension;
                c2204e.invalidateSelf();
                c2204e.m3510F();
            }
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3517M(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z9) {
        setChipIconVisible(z9);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i10) {
        setChipIconVisible(i10);
    }

    public void setChipIconResource(@DrawableRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3517M(AppCompatResources.getDrawable(c2204e.f5784p0, i10));
        }
    }

    public void setChipIconSize(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3518N(f8);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3518N(c2204e.f5784p0.getResources().getDimension(i10));
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3519O(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3519O(AppCompatResources.getColorStateList(c2204e.f5784p0, i10));
        }
    }

    public void setChipIconVisible(@BoolRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3520P(c2204e.f5784p0.getResources().getBoolean(i10));
        }
    }

    public void setChipMinHeight(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e == null || c2204e.f5747K == f8) {
            return;
        }
        c2204e.f5747K = f8;
        c2204e.invalidateSelf();
        c2204e.m3510F();
    }

    public void setChipMinHeightResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            float dimension = c2204e.f5784p0.getResources().getDimension(i10);
            if (c2204e.f5747K != dimension) {
                c2204e.f5747K = dimension;
                c2204e.invalidateSelf();
                c2204e.m3510F();
            }
        }
    }

    public void setChipStartPadding(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e == null || c2204e.f5776h0 == f8) {
            return;
        }
        c2204e.f5776h0 = f8;
        c2204e.invalidateSelf();
        c2204e.m3510F();
    }

    public void setChipStartPaddingResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            float dimension = c2204e.f5784p0.getResources().getDimension(i10);
            if (c2204e.f5776h0 != dimension) {
                c2204e.f5776h0 = dimension;
                c2204e.invalidateSelf();
                c2204e.m3510F();
            }
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3521Q(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3521Q(AppCompatResources.getColorStateList(c2204e.f5784p0, i10));
        }
    }

    public void setChipStrokeWidth(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3522R(f8);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3522R(c2204e.f5784p0.getResources().getDimension(i10));
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i10) {
        setText(getResources().getString(i10));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3523S(drawable);
        }
        m1793e();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        C2204e c2204e = this.f2232b;
        if (c2204e == null || c2204e.f5769a0 == charSequence) {
            return;
        }
        c2204e.f5769a0 = BidiFormatter.getInstance().unicodeWrap(charSequence);
        c2204e.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z9) {
        setCloseIconVisible(z9);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i10) {
        setCloseIconVisible(i10);
    }

    public void setCloseIconEndPadding(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3524T(f8);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3524T(c2204e.f5784p0.getResources().getDimension(i10));
        }
    }

    public void setCloseIconResource(@DrawableRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3523S(AppCompatResources.getDrawable(c2204e.f5784p0, i10));
        }
        m1793e();
    }

    public void setCloseIconSize(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3525U(f8);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3525U(c2204e.f5784p0.getResources().getDimension(i10));
        }
    }

    public void setCloseIconStartPadding(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3526V(f8);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3526V(c2204e.f5784p0.getResources().getDimension(i10));
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3528X(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3528X(AppCompatResources.getColorStateList(c2204e.f5784p0, i10));
        }
    }

    public void setCloseIconVisible(@BoolRes int i10) {
        setCloseIconVisible(getResources().getBoolean(i10));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            C0674b.m840g("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            C0674b.m840g("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            C0674b.m840g("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            C0674b.m840g("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            C0674b.m840g("Please set start drawable using R.attr#chipIcon.");
        } else if (i12 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i10, i11, i12, i13);
        } else {
            C0674b.m840g("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            C0674b.m840g("Please set start drawable using R.attr#chipIcon.");
        } else if (i12 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i10, i11, i12, i13);
        } else {
            C0674b.m840g("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m5947p(f8);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f2232b == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            C0674b.m840g("Text within a chip are not allowed to scroll.");
            return;
        }
        super.setEllipsize(truncateAt);
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.f5752M0 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z9) {
        this.f2241k = z9;
        m1791c(this.f2243m);
    }

    @Override // android.widget.TextView
    public void setGravity(int i10) {
        if (i10 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i10);
        }
    }

    public void setHideMotionSpec(@Nullable C0888e c0888e) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.f5775g0 = c0888e;
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.f5775g0 = C0888e.m1020b(i10, c2204e.f5784p0);
        }
    }

    public void setIconEndPadding(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3530Z(f8);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3530Z(c2204e.f5784p0.getResources().getDimension(i10));
        }
    }

    public void setIconStartPadding(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3531a0(f8);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3531a0(c2204e.f5784p0.getResources().getDimension(i10));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
        if (this.f2232b == null) {
            return;
        }
        super.setLayoutDirection(i10);
    }

    @Override // android.widget.TextView
    public void setLines(int i10) {
        if (i10 <= 1) {
            super.setLines(i10);
        } else {
            C0674b.m840g("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i10) {
        if (i10 <= 1) {
            super.setMaxLines(i10);
        } else {
            C0674b.m840g("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@Px int i10) {
        super.setMaxWidth(i10);
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.f5756O0 = i10;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i10) {
        if (i10 <= 1) {
            super.setMinLines(i10);
        } else {
            C0674b.m840g("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f2236f = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f2235e = onClickListener;
        m1793e();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3532b0(colorStateList);
        }
        this.f2232b.getClass();
        m1794f();
    }

    public void setRippleColorResource(@ColorRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3532b0(AppCompatResources.getColorStateList(c2204e.f5784p0, i10));
            this.f2232b.getClass();
            m1794f();
        }
    }

    @Override // p258z3.InterfaceC3740z
    public void setShapeAppearanceModel(@NonNull C3729o c3729o) {
        this.f2232b.setShapeAppearanceModel(c3729o);
    }

    public void setShowMotionSpec(@Nullable C0888e c0888e) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.f5774f0 = c0888e;
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.f5774f0 = C0888e.m1020b(i10, c2204e.f5784p0);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z9) {
        if (z9) {
            super.setSingleLine(z9);
        } else {
            C0674b.m840g("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        C2204e c2204e = this.f2232b;
        if (c2204e == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(c2204e.f5754N0 ? null : charSequence, bufferType);
        C2204e c2204e2 = this.f2232b;
        if (c2204e2 == null || TextUtils.equals(c2204e2.f5757P, charSequence)) {
            return;
        }
        c2204e2.f5757P = charSequence;
        c2204e2.f5790v0.f9366e = true;
        c2204e2.invalidateSelf();
        c2204e2.m3510F();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            Context context2 = c2204e.f5784p0;
            c2204e.f5790v0.m5132b(new C3521f(context2, i10), context2);
        }
        m1796h();
    }

    public void setTextAppearanceResource(@StyleRes int i10) {
        setTextAppearance(getContext(), i10);
    }

    public void setTextEndPadding(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e == null || c2204e.f5780l0 == f8) {
            return;
        }
        c2204e.f5780l0 = f8;
        c2204e.invalidateSelf();
        c2204e.m3510F();
    }

    public void setTextEndPaddingResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            float dimension = c2204e.f5784p0.getResources().getDimension(i10);
            if (c2204e.f5780l0 != dimension) {
                c2204e.f5780l0 = dimension;
                c2204e.invalidateSelf();
                c2204e.m3510F();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i10, float f8) {
        super.setTextSize(i10, f8);
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            float fApplyDimension = TypedValue.applyDimension(i10, f8, getResources().getDisplayMetrics());
            C3196j c3196j = c2204e.f5790v0;
            C3521f c3521f = c3196j.f9368g;
            if (c3521f != null) {
                c3521f.f10452l = fApplyDimension;
                c3196j.f9362a.setTextSize(fApplyDimension);
                c2204e.mo2262a();
            }
        }
        m1796h();
    }

    public void setTextStartPadding(float f8) {
        C2204e c2204e = this.f2232b;
        if (c2204e == null || c2204e.f5779k0 == f8) {
            return;
        }
        c2204e.f5779k0 = f8;
        c2204e.invalidateSelf();
        c2204e.m3510F();
    }

    public void setTextStartPaddingResource(@DimenRes int i10) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            float dimension = c2204e.f5784p0.getResources().getDimension(i10);
            if (c2204e.f5779k0 != dimension) {
                c2204e.f5779k0 = dimension;
                c2204e.invalidateSelf();
                c2204e.m3510F();
            }
        }
    }

    public void setCloseIconVisible(boolean z9) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3529Y(z9);
        }
        m1793e();
    }

    public void setCheckedIconVisible(boolean z9) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3515K(z9);
        }
    }

    public void setChipIconVisible(boolean z9) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.m3520P(z9);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            C0674b.m840g("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            C0674b.m840g("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            C0674b.m840g("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            C0674b.m840g("Please set right drawable using R.attr#closeIcon.");
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setInternalOnCheckedChangeListener(@Nullable InterfaceC3192f interfaceC3192f) {
    }

    public void setTextAppearance(@Nullable C3521f c3521f) {
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            c2204e.f5790v0.m5132b(c3521f, c2204e.f5784p0);
        }
        m1796h();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i10) {
        super.setTextAppearance(i10);
        C2204e c2204e = this.f2232b;
        if (c2204e != null) {
            Context context = c2204e.f5784p0;
            c2204e.f5790v0.m5132b(new C3521f(context, i10), context);
        }
        m1796h();
    }
}

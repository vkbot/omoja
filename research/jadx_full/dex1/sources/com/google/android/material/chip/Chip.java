package com.google.android.material.chip;

import android.R$attr;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils$TruncateAt;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.TextView$BufferType;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.navigation.b;
import b1.u;
import e0.s0;
import java.lang.ref.WeakReference;
import l3.a;
import l3.c;
import l3.d;
import l3.e;
import s3.j;
import s3.l;
import w3.f;
import z3.o;
import z3.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Chip extends AppCompatCheckBox implements d, z, Checkable {
    public static final Rect t = new Rect();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int[] f1215u = {R$attr.state_selected};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f1216v = {R$attr.state_checkable};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e f1217b;
    public InsetDrawable c;
    public RippleDrawable d;
    public View$OnClickListener e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CompoundButton$OnCheckedChangeListener f1218f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1219g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1220h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1221i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1222j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1223k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1224l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1225m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public CharSequence f1226n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final c f1227o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1228p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Rect f1229q;
    public final RectF r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final a f1230s;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Chip(Context context, AttributeSet attributeSet) {
        int resourceId;
        super(g4.a.a(context, attributeSet, 2130903270, 2132018342), attributeSet, 2130903270);
        this.f1229q = new Rect();
        this.r = new RectF();
        this.f1230s = new a(0, this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                b.g("Please set left drawable using R.attr#chipIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                b.g("Please set start drawable using R.attr#chipIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                b.g("Please set end drawable using R.attr#closeIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                b.g("Please set end drawable using R.attr#closeIcon.");
                throw null;
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                b.g("Chip does not support multi-line text");
                throw null;
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        e eVar = new e(context2, attributeSet);
        Context context3 = eVar.f3275p0;
        int[] iArr = a3.a.f9f;
        TypedArray typedArrayD = l.d(context3, attributeSet, iArr, 2130903270, 2132018342, new int[0]);
        eVar.P0 = typedArrayD.hasValue(37);
        Context context4 = eVar.f3275p0;
        ColorStateList colorStateListA = w3.c.a(context4, typedArrayD, 24);
        if (eVar.I != colorStateListA) {
            eVar.I = colorStateListA;
            eVar.onStateChange(eVar.getState());
        }
        ColorStateList colorStateListA2 = w3.c.a(context4, typedArrayD, 11);
        if (eVar.J != colorStateListA2) {
            eVar.J = colorStateListA2;
            eVar.onStateChange(eVar.getState());
        }
        float dimension = typedArrayD.getDimension(19, 0.0f);
        if (eVar.K != dimension) {
            eVar.K = dimension;
            eVar.invalidateSelf();
            eVar.F();
        }
        if (typedArrayD.hasValue(12)) {
            eVar.L(typedArrayD.getDimension(12, 0.0f));
        }
        eVar.Q(w3.c.a(context4, typedArrayD, 22));
        eVar.R(typedArrayD.getDimension(23, 0.0f));
        eVar.b0(w3.c.a(context4, typedArrayD, 36));
        String text = typedArrayD.getText(5);
        text = text == null ? "" : text;
        boolean zEquals = TextUtils.equals(eVar.P, text);
        j jVar = eVar.f3281v0;
        if (!zEquals) {
            eVar.P = text;
            jVar.e = true;
            eVar.invalidateSelf();
            eVar.F();
        }
        f fVar = (!typedArrayD.hasValue(0) || (resourceId = typedArrayD.getResourceId(0, 0)) == 0) ? null : new f(context4, resourceId);
        fVar.f5905l = typedArrayD.getDimension(1, fVar.f5905l);
        jVar.b(fVar, context4);
        int i9 = typedArrayD.getInt(3, 0);
        if (i9 == 1) {
            eVar.M0 = TextUtils$TruncateAt.START;
        } else if (i9 == 2) {
            eVar.M0 = TextUtils$TruncateAt.MIDDLE;
        } else if (i9 == 3) {
            eVar.M0 = TextUtils$TruncateAt.END;
        }
        eVar.P(typedArrayD.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            eVar.P(typedArrayD.getBoolean(15, false));
        }
        eVar.M(w3.c.c(context4, typedArrayD, 14));
        if (typedArrayD.hasValue(17)) {
            eVar.O(w3.c.a(context4, typedArrayD, 17));
        }
        eVar.N(typedArrayD.getDimension(16, -1.0f));
        eVar.Y(typedArrayD.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            eVar.Y(typedArrayD.getBoolean(26, false));
        }
        eVar.S(w3.c.c(context4, typedArrayD, 25));
        eVar.X(w3.c.a(context4, typedArrayD, 30));
        eVar.U(typedArrayD.getDimension(28, 0.0f));
        eVar.H(typedArrayD.getBoolean(6, false));
        eVar.K(typedArrayD.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            eVar.K(typedArrayD.getBoolean(8, false));
        }
        eVar.I(w3.c.c(context4, typedArrayD, 7));
        if (typedArrayD.hasValue(9)) {
            eVar.J(w3.c.a(context4, typedArrayD, 9));
        }
        eVar.f3265f0 = b3.e.a(context4, typedArrayD, 39);
        eVar.f3266g0 = b3.e.a(context4, typedArrayD, 33);
        float dimension2 = typedArrayD.getDimension(21, 0.0f);
        if (eVar.f3267h0 != dimension2) {
            eVar.f3267h0 = dimension2;
            eVar.invalidateSelf();
            eVar.F();
        }
        eVar.a0(typedArrayD.getDimension(35, 0.0f));
        eVar.Z(typedArrayD.getDimension(34, 0.0f));
        float dimension3 = typedArrayD.getDimension(41, 0.0f);
        if (eVar.f3270k0 != dimension3) {
            eVar.f3270k0 = dimension3;
            eVar.invalidateSelf();
            eVar.F();
        }
        float dimension4 = typedArrayD.getDimension(40, 0.0f);
        if (eVar.f3271l0 != dimension4) {
            eVar.f3271l0 = dimension4;
            eVar.invalidateSelf();
            eVar.F();
        }
        eVar.V(typedArrayD.getDimension(29, 0.0f));
        eVar.T(typedArrayD.getDimension(27, 0.0f));
        float dimension5 = typedArrayD.getDimension(13, 0.0f);
        if (eVar.f3274o0 != dimension5) {
            eVar.f3274o0 = dimension5;
            eVar.invalidateSelf();
            eVar.F();
        }
        eVar.O0 = typedArrayD.getDimensionPixelSize(4, Integer.MAX_VALUE);
        typedArrayD.recycle();
        l.a(context2, attributeSet, 2130903270, 2132018342);
        l.b(context2, attributeSet, iArr, 2130903270, 2132018342, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, 2130903270, 2132018342);
        this.f1223k = typedArrayObtainStyledAttributes.getBoolean(32, false);
        TypedValue typedValueA = w3.b.a(2130904036, context2);
        this.f1225m = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(20, (int) ((typedValueA == null || typedValueA.type != 5) ? context2.getResources().getDimension(2131100589) : typedValueA.getDimension(context2.getResources().getDisplayMetrics()))));
        typedArrayObtainStyledAttributes.recycle();
        setChipDrawable(eVar);
        eVar.p(getElevation());
        l.a(context2, attributeSet, 2130903270, 2132018342);
        l.b(context2, attributeSet, iArr, 2130903270, 2132018342, new int[0]);
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, 2130903270, 2132018342);
        boolean zHasValue = typedArrayObtainStyledAttributes2.hasValue(37);
        typedArrayObtainStyledAttributes2.recycle();
        this.f1227o = new c(this, this);
        e();
        if (!zHasValue) {
            setOutlineProvider(new l3.b(this));
        }
        setChecked(this.f1219g);
        setText(eVar.P);
        setEllipsize(eVar.M0);
        h();
        if (!this.f1217b.N0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        g();
        if (this.f1223k) {
            setMinHeight(this.f1225m);
        }
        this.f1224l = getLayoutDirection();
        super.setOnCheckedChangeListener(new s0(5, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ RectF a(Chip chip) {
        return chip.getCloseIconTouchBounds();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Rect b(Chip chip) {
        return chip.getCloseIconTouchBoundsInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private RectF getCloseIconTouchBounds() {
        RectF rectF = this.r;
        rectF.setEmpty();
        if (d() && this.e != null) {
            e eVar = this.f1217b;
            Rect bounds = eVar.getBounds();
            rectF.setEmpty();
            if (eVar.e0()) {
                float f8 = eVar.f3274o0 + eVar.f3273n0 + eVar.Z + eVar.f3272m0 + eVar.f3271l0;
                if (DrawableCompat.getLayoutDirection(eVar) == 0) {
                    float f9 = bounds.right;
                    rectF.right = f9;
                    rectF.left = f9 - f8;
                } else {
                    float f10 = bounds.left;
                    rectF.left = f10;
                    rectF.right = f10 + f8;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i9 = (int) closeIconTouchBounds.left;
        int i10 = (int) closeIconTouchBounds.top;
        int i11 = (int) closeIconTouchBounds.right;
        int i12 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.f1229q;
        rect.set(i9, i10, i11, i12);
        return rect;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private f getTextAppearance() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3281v0.f5293g;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setCloseIconHovered(boolean z8) {
        if (this.f1221i != z8) {
            this.f1221i = z8;
            refreshDrawableState();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setCloseIconPressed(boolean z8) {
        if (this.f1220h != z8) {
            this.f1220h = z8;
            refreshDrawableState();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(int i9) {
        this.f1225m = i9;
        if (!this.f1223k) {
            InsetDrawable insetDrawable = this.c;
            if (insetDrawable == null) {
                f();
                return;
            } else {
                if (insetDrawable != null) {
                    this.c = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int iMax = Math.max(0, i9 - ((int) this.f1217b.K));
        int iMax2 = Math.max(0, i9 - this.f1217b.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            InsetDrawable insetDrawable2 = this.c;
            if (insetDrawable2 == null) {
                f();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.c = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int i10 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i11 = iMax > 0 ? iMax / 2 : 0;
        if (this.c != null) {
            Rect rect = new Rect();
            this.c.getPadding(rect);
            if (rect.top == i11 && rect.bottom == i11 && rect.left == i10 && rect.right == i10) {
                f();
                return;
            }
        }
        if (getMinHeight() != i9) {
            setMinHeight(i9);
        }
        if (getMinWidth() != i9) {
            setMinWidth(i9);
        }
        this.c = new InsetDrawable((Drawable) this.f1217b, i10, i11, i10, i11);
        f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d() {
        e eVar = this.f1217b;
        if (eVar == null) {
            return false;
        }
        Drawable drawable = eVar.W;
        return (drawable != null ? DrawableCompat.unwrap(drawable) : null) != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.f1228p) {
            return this.f1227o.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f1228p) {
            return super.dispatchKeyEvent(keyEvent);
        }
        c cVar = this.f1227o;
        if (!cVar.dispatchKeyEvent(keyEvent) || cVar.getKeyboardFocusedVirtualViewId() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v1, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r2v10, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r2v11, resolved type: int */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i9;
        super.drawableStateChanged();
        e eVar = this.f1217b;
        boolean zW = false;
        int i10 = 0;
        zW = false;
        if (eVar != null && e.E(eVar.W)) {
            e eVar2 = this.f1217b;
            ?? IsEnabled = isEnabled();
            if (this.f1222j) {
                i9 = IsEnabled;
                i9 = IsEnabled + 1;
            }
            i9 = IsEnabled;
            int i11 = i9;
            if (this.f1221i) {
                i11 = i9 + 1;
            }
            int i12 = i11;
            if (this.f1220h) {
                i12 = i11 + 1;
            }
            int i13 = i12;
            if (isChecked()) {
                i13 = i12 + 1;
            }
            int[] iArr = new int[i13];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i10 = 1;
            }
            if (this.f1222j) {
                iArr[i10] = 16842908;
                i10++;
            }
            if (this.f1221i) {
                iArr[i10] = 16843623;
                i10++;
            }
            if (this.f1220h) {
                iArr[i10] = 16842919;
                i10++;
            }
            if (isChecked()) {
                iArr[i10] = 16842913;
            }
            zW = eVar2.W(iArr);
        }
        if (zW) {
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        e eVar;
        if (!d() || (eVar = this.f1217b) == null || !eVar.V || this.e == null) {
            ViewCompat.setAccessibilityDelegate(this, null);
            this.f1228p = false;
        } else {
            ViewCompat.setAccessibilityDelegate(this, this.f1227o);
            this.f1228p = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f() {
        this.d = new RippleDrawable(x3.a.b(this.f1217b.O), getBackgroundDrawable(), null);
        this.f1217b.getClass();
        setBackground(this.d);
        g();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        e eVar;
        if (TextUtils.isEmpty(getText()) || (eVar = this.f1217b) == null) {
            return;
        }
        int iB = (int) (eVar.B() + eVar.f3274o0 + eVar.f3271l0);
        e eVar2 = this.f1217b;
        int iA = (int) (eVar2.A() + eVar2.f3267h0 + eVar2.f3270k0);
        if (this.c != null) {
            Rect rect = new Rect();
            this.c.getPadding(rect);
            iA += rect.left;
            iB += rect.right;
        }
        setPaddingRelative(iA, getPaddingTop(), iB, getPaddingBottom());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f1226n)) {
            return this.f1226n;
        }
        e eVar = this.f1217b;
        if (eVar == null || !eVar.f3261b0) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        getParent();
        return "android.widget.Button";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.c;
        return insetDrawable == null ? this.f1217b : insetDrawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getCheckedIcon() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3263d0;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getCheckedIconTint() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3264e0;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getChipBackgroundColor() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.J;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getChipCornerRadius() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return Math.max(0.0f, eVar.C());
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Drawable getChipDrawable() {
        return this.f1217b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getChipEndPadding() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3274o0;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getChipIcon() {
        Drawable drawable;
        e eVar = this.f1217b;
        if (eVar == null || (drawable = eVar.R) == null) {
            return null;
        }
        return DrawableCompat.unwrap(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getChipIconSize() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.T;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getChipIconTint() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.S;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getChipMinHeight() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.K;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getChipStartPadding() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3267h0;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getChipStrokeColor() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.M;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getChipStrokeWidth() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.N;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getCloseIcon() {
        Drawable drawable;
        e eVar = this.f1217b;
        if (eVar == null || (drawable = eVar.W) == null) {
            return null;
        }
        return DrawableCompat.unwrap(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getCloseIconContentDescription() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3260a0;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getCloseIconEndPadding() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3273n0;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getCloseIconSize() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.Z;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getCloseIconStartPadding() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3272m0;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getCloseIconTint() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.Y;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    @Nullable
    public TextUtils$TruncateAt getEllipsize() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.M0;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.f1228p) {
            c cVar = this.f1227o;
            if (cVar.getKeyboardFocusedVirtualViewId() == 1 || cVar.getAccessibilityFocusedVirtualViewId() == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public b3.e getHideMotionSpec() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3266g0;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getIconEndPadding() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3269j0;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getIconStartPadding() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3268i0;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getRippleColor() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.O;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public o getShapeAppearanceModel() {
        return this.f1217b.c.f6213a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public b3.e getShowMotionSpec() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3265f0;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTextEndPadding() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3271l0;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTextStartPadding() {
        e eVar = this.f1217b;
        if (eVar != null) {
            return eVar.f3270k0;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h() {
        TextPaint paint = getPaint();
        e eVar = this.f1217b;
        if (eVar != null) {
            paint.drawableState = eVar.getState();
        }
        f textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.d(getContext(), paint, this.f1230s);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        u.w(this, this.f1217b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i9) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i9 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1215u);
        }
        e eVar = this.f1217b;
        if (eVar != null && eVar.f3261b0) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1216v);
        }
        return iArrOnCreateDrawableState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z8, int i9, Rect rect) {
        super.onFocusChanged(z8, i9, rect);
        if (this.f1228p) {
            this.f1227o.onFocusChanged(z8, i9, rect);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        e eVar = this.f1217b;
        accessibilityNodeInfo.setCheckable(eVar != null && eVar.f3261b0);
        accessibilityNodeInfo.setClickable(isClickable());
        getParent();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i9) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), PointerIconCompat.TYPE_HAND) : super.onResolvePointerIcon(motionEvent, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i9) {
        super.onRtlPropertiesChanged(i9);
        if (this.f1224l != i9) {
            this.f1224l = i9;
            g();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z8;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else if (this.f1220h) {
                    if (!zContains) {
                        setCloseIconPressed(false);
                    }
                    z8 = true;
                }
                z8 = false;
            } else {
                if (this.f1220h) {
                    playSoundEffect(0);
                    View$OnClickListener view$OnClickListener = this.e;
                    if (view$OnClickListener != null) {
                        view$OnClickListener.onClick(this);
                    }
                    if (this.f1228p) {
                        this.f1227o.sendEventForVirtualView(1, 1);
                    }
                    z8 = true;
                }
                setCloseIconPressed(false);
            }
            z8 = false;
            setCloseIconPressed(false);
        } else if (zContains) {
            setCloseIconPressed(true);
            z8 = true;
        } else {
            z8 = false;
        }
        return z8 || super.onTouchEvent(motionEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAccessibilityClassName(@Nullable CharSequence charSequence) {
        this.f1226n = charSequence;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.d) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundColor(int i9) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.d) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i9) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckable(boolean z8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.H(z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckableResource(@BoolRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.H(eVar.f3275p0.getResources().getBoolean(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z8) {
        e eVar = this.f1217b;
        if (eVar == null) {
            this.f1219g = z8;
        } else if (eVar.f3261b0) {
            super.setChecked(z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIcon(@Nullable Drawable drawable) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.I(drawable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setCheckedIconEnabled(boolean z8) {
        setCheckedIconVisible(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i9) {
        setCheckedIconVisible(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIconResource(@DrawableRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.I(AppCompatResources.getDrawable(eVar.f3275p0, i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.J(colorStateList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIconTintResource(@ColorRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.J(AppCompatResources.getColorStateList(eVar.f3275p0, i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckedIconVisible(@BoolRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.K(eVar.f3275p0.getResources().getBoolean(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        e eVar = this.f1217b;
        if (eVar == null || eVar.J == colorStateList) {
            return;
        }
        eVar.J = colorStateList;
        eVar.onStateChange(eVar.getState());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipBackgroundColorResource(@ColorRes int i9) {
        ColorStateList colorStateList;
        e eVar = this.f1217b;
        if (eVar == null || eVar.J == (colorStateList = AppCompatResources.getColorStateList(eVar.f3275p0, i9))) {
            return;
        }
        eVar.J = colorStateList;
        eVar.onStateChange(eVar.getState());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setChipCornerRadius(float f8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.L(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.L(eVar.f3275p0.getResources().getDimension(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipDrawable(@NonNull e eVar) {
        e eVar2 = this.f1217b;
        if (eVar2 != eVar) {
            if (eVar2 != null) {
                eVar2.L0 = new WeakReference(null);
            }
            this.f1217b = eVar;
            eVar.N0 = false;
            eVar.L0 = new WeakReference(this);
            c(this.f1225m);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipEndPadding(float f8) {
        e eVar = this.f1217b;
        if (eVar == null || eVar.f3274o0 == f8) {
            return;
        }
        eVar.f3274o0 = f8;
        eVar.invalidateSelf();
        eVar.F();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipEndPaddingResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            float dimension = eVar.f3275p0.getResources().getDimension(i9);
            if (eVar.f3274o0 != dimension) {
                eVar.f3274o0 = dimension;
                eVar.invalidateSelf();
                eVar.F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipIcon(@Nullable Drawable drawable) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.M(drawable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setChipIconEnabled(boolean z8) {
        setChipIconVisible(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i9) {
        setChipIconVisible(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipIconResource(@DrawableRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.M(AppCompatResources.getDrawable(eVar.f3275p0, i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipIconSize(float f8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.N(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipIconSizeResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.N(eVar.f3275p0.getResources().getDimension(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.O(colorStateList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipIconTintResource(@ColorRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.O(AppCompatResources.getColorStateList(eVar.f3275p0, i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipIconVisible(@BoolRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.P(eVar.f3275p0.getResources().getBoolean(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipMinHeight(float f8) {
        e eVar = this.f1217b;
        if (eVar == null || eVar.K == f8) {
            return;
        }
        eVar.K = f8;
        eVar.invalidateSelf();
        eVar.F();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipMinHeightResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            float dimension = eVar.f3275p0.getResources().getDimension(i9);
            if (eVar.K != dimension) {
                eVar.K = dimension;
                eVar.invalidateSelf();
                eVar.F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipStartPadding(float f8) {
        e eVar = this.f1217b;
        if (eVar == null || eVar.f3267h0 == f8) {
            return;
        }
        eVar.f3267h0 = f8;
        eVar.invalidateSelf();
        eVar.F();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipStartPaddingResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            float dimension = eVar.f3275p0.getResources().getDimension(i9);
            if (eVar.f3267h0 != dimension) {
                eVar.f3267h0 = dimension;
                eVar.invalidateSelf();
                eVar.F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.Q(colorStateList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipStrokeColorResource(@ColorRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.Q(AppCompatResources.getColorStateList(eVar.f3275p0, i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipStrokeWidth(float f8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.R(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChipStrokeWidthResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.R(eVar.f3275p0.getResources().getDimension(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setChipTextResource(@StringRes int i9) {
        setText(getResources().getString(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIcon(@Nullable Drawable drawable) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.S(drawable);
        }
        e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        e eVar = this.f1217b;
        if (eVar == null || eVar.f3260a0 == charSequence) {
            return;
        }
        eVar.f3260a0 = BidiFormatter.getInstance().unicodeWrap(charSequence);
        eVar.invalidateSelf();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setCloseIconEnabled(boolean z8) {
        setCloseIconVisible(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i9) {
        setCloseIconVisible(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIconEndPadding(float f8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.T(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIconEndPaddingResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.T(eVar.f3275p0.getResources().getDimension(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIconResource(@DrawableRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.S(AppCompatResources.getDrawable(eVar.f3275p0, i9));
        }
        e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIconSize(float f8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.U(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIconSizeResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.U(eVar.f3275p0.getResources().getDimension(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIconStartPadding(float f8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.V(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIconStartPaddingResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.V(eVar.f3275p0.getResources().getDimension(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.X(colorStateList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIconTintResource(@ColorRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.X(AppCompatResources.getColorStateList(eVar.f3275p0, i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCloseIconVisible(@BoolRes int i9) {
        setCloseIconVisible(getResources().getBoolean(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            b.g("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            b.g("Please set end drawable using R.attr#closeIcon.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            b.g("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            b.g("Please set end drawable using R.attr#closeIcon.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i9, int i10, int i11, int i12) {
        if (i9 != 0) {
            b.g("Please set start drawable using R.attr#chipIcon.");
        } else if (i11 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i9, i10, i11, i12);
        } else {
            b.g("Please set end drawable using R.attr#closeIcon.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i9, int i10, int i11, int i12) {
        if (i9 != 0) {
            b.g("Please set start drawable using R.attr#chipIcon.");
        } else if (i11 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i9, i10, i11, i12);
        } else {
            b.g("Please set end drawable using R.attr#closeIcon.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.p(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public void setEllipsize(TextUtils$TruncateAt textUtils$TruncateAt) {
        if (this.f1217b == null) {
            return;
        }
        if (textUtils$TruncateAt == TextUtils$TruncateAt.MARQUEE) {
            b.g("Text within a chip are not allowed to scroll.");
            return;
        }
        super.setEllipsize(textUtils$TruncateAt);
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.M0 = textUtils$TruncateAt;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEnsureMinTouchTargetSize(boolean z8) {
        this.f1223k = z8;
        c(this.f1225m);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public void setGravity(int i9) {
        if (i9 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHideMotionSpec(@Nullable b3.e eVar) {
        e eVar2 = this.f1217b;
        if (eVar2 != null) {
            eVar2.f3266g0 = eVar;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHideMotionSpecResource(@AnimatorRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.f3266g0 = b3.e.b(i9, eVar.f3275p0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconEndPadding(float f8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.Z(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconEndPaddingResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.Z(eVar.f3275p0.getResources().getDimension(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconStartPadding(float f8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.a0(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconStartPaddingResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.a0(eVar.f3275p0.getResources().getDimension(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setLayoutDirection(int i9) {
        if (this.f1217b == null) {
            return;
        }
        super.setLayoutDirection(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public void setLines(int i9) {
        if (i9 <= 1) {
            super.setLines(i9);
        } else {
            b.g("Chip does not support multi-line text");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public void setMaxLines(int i9) {
        if (i9 <= 1) {
            super.setMaxLines(i9);
        } else {
            b.g("Chip does not support multi-line text");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public void setMaxWidth(@Px int i9) {
        super.setMaxWidth(i9);
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.O0 = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public void setMinLines(int i9) {
        if (i9 <= 1) {
            super.setMinLines(i9);
        } else {
            b.g("Chip does not support multi-line text");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton$OnCheckedChangeListener compoundButton$OnCheckedChangeListener) {
        this.f1218f = compoundButton$OnCheckedChangeListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnCloseIconClickListener(View$OnClickListener view$OnClickListener) {
        this.e = view$OnClickListener;
        e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.b0(colorStateList);
        }
        this.f1217b.getClass();
        f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRippleColorResource(@ColorRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.b0(AppCompatResources.getColorStateList(eVar.f3275p0, i9));
            this.f1217b.getClass();
            f();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.z
    public void setShapeAppearanceModel(@NonNull o oVar) {
        this.f1217b.setShapeAppearanceModel(oVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowMotionSpec(@Nullable b3.e eVar) {
        e eVar2 = this.f1217b;
        if (eVar2 != null) {
            eVar2.f3265f0 = eVar;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowMotionSpecResource(@AnimatorRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.f3265f0 = b3.e.b(i9, eVar.f3275p0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public void setSingleLine(boolean z8) {
        if (z8) {
            super.setSingleLine(z8);
        } else {
            b.g("Chip does not support multi-line text");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView$BufferType textView$BufferType) {
        e eVar = this.f1217b;
        if (eVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(eVar.N0 ? null : charSequence, textView$BufferType);
        e eVar2 = this.f1217b;
        if (eVar2 == null || TextUtils.equals(eVar2.P, charSequence)) {
            return;
        }
        eVar2.P = charSequence;
        eVar2.f3281v0.e = true;
        eVar2.invalidateSelf();
        eVar2.F();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i9) {
        super.setTextAppearance(context, i9);
        e eVar = this.f1217b;
        if (eVar != null) {
            Context context2 = eVar.f3275p0;
            eVar.f3281v0.b(new f(context2, i9), context2);
        }
        h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextAppearanceResource(@StyleRes int i9) {
        setTextAppearance(getContext(), i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextEndPadding(float f8) {
        e eVar = this.f1217b;
        if (eVar == null || eVar.f3271l0 == f8) {
            return;
        }
        eVar.f3271l0 = f8;
        eVar.invalidateSelf();
        eVar.F();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextEndPaddingResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            float dimension = eVar.f3275p0.getResources().getDimension(i9);
            if (eVar.f3271l0 != dimension) {
                eVar.f3271l0 = dimension;
                eVar.invalidateSelf();
                eVar.F();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public final void setTextSize(int i9, float f8) {
        super.setTextSize(i9, f8);
        e eVar = this.f1217b;
        if (eVar != null) {
            float fApplyDimension = TypedValue.applyDimension(i9, f8, getResources().getDisplayMetrics());
            j jVar = eVar.f3281v0;
            f fVar = jVar.f5293g;
            if (fVar != null) {
                fVar.f5905l = fApplyDimension;
                jVar.f5290a.setTextSize(fApplyDimension);
                eVar.a();
            }
        }
        h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextStartPadding(float f8) {
        e eVar = this.f1217b;
        if (eVar == null || eVar.f3270k0 == f8) {
            return;
        }
        eVar.f3270k0 = f8;
        eVar.invalidateSelf();
        eVar.F();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextStartPaddingResource(@DimenRes int i9) {
        e eVar = this.f1217b;
        if (eVar != null) {
            float dimension = eVar.f3275p0.getResources().getDimension(i9);
            if (eVar.f3270k0 != dimension) {
                eVar.f3270k0 = dimension;
                eVar.invalidateSelf();
                eVar.F();
            }
        }
    }

    public void setCloseIconVisible(boolean z8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.Y(z8);
        }
        e();
    }

    public void setCheckedIconVisible(boolean z8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.K(z8);
        }
    }

    public void setChipIconVisible(boolean z8) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.P(z8);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            b.g("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            b.g("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            b.g("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            b.g("Please set right drawable using R.attr#closeIcon.");
        }
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setInternalOnCheckedChangeListener(@Nullable s3.f fVar) {
    }

    public void setTextAppearance(@Nullable f fVar) {
        e eVar = this.f1217b;
        if (eVar != null) {
            eVar.f3281v0.b(fVar, eVar.f3275p0);
        }
        h();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i9) {
        super.setTextAppearance(i9);
        e eVar = this.f1217b;
        if (eVar != null) {
            Context context = eVar.f3275p0;
            eVar.f3281v0.b(new f(context, i9), context);
        }
        h();
    }
}

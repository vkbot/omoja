package com.google.android.material.button;

import android.R$attr;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.Layout$Alignment;
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
import android.widget.LinearLayout$LayoutParams;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.fragment.app.h;
import b1.u;
import com.bumptech.glide.g;
import f5.j;
import h3.a;
import h3.b;
import h3.e;
import h3.f;
import j1.i;
import java.util.Iterator;
import java.util.LinkedHashSet;
import s3.l;
import s3.q;
import w3.c;
import z3.b0;
import z3.c0;
import z3.d0;
import z3.k;
import z3.n;
import z3.o;
import z3.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MaterialButton extends AppCompatButton implements Checkable, z {
    public static final int[] D = {R$attr.state_checkable};
    public static final int[] E = {R$attr.state_checked};
    public static final a F = new a("widthIncrease");
    public float A;
    public float B;
    public SpringAnimation C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f1185b;
    public final LinkedHashSet c;
    public b d;
    public PorterDuff$Mode e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ColorStateList f1186f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Drawable f1187g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f1188h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1189i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1190j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1191k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1192l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1193m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1194n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1195o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1196p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f1197q;
    public int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1198s;
    public LinearLayout$LayoutParams t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1199u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1200v;
    public boolean w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1201x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public d0 f1202y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f1203z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(g4.a.b(context, attributeSet, new int[]{2130903964}, 2130903928, 2132018328), attributeSet, 2130903928);
        this.c = new LinkedHashSet();
        this.f1193m = false;
        this.f1194n = false;
        this.f1196p = -1;
        this.f1197q = -1.0f;
        this.r = -1;
        this.f1198s = -1;
        this.f1201x = -1;
        Context context2 = getContext();
        TypedArray typedArrayD = l.d(context2, attributeSet, a3.a.f17n, 2130903928, 2132018328, new int[0]);
        this.f1192l = typedArrayD.getDimensionPixelSize(13, 0);
        int i9 = typedArrayD.getInt(16, -1);
        PorterDuff$Mode porterDuff$Mode = PorterDuff$Mode.SRC_IN;
        this.e = q.b(i9, porterDuff$Mode);
        this.f1186f = c.a(getContext(), typedArrayD, 15);
        this.f1187g = c.c(getContext(), typedArrayD, 11);
        this.f1195o = typedArrayD.getInteger(12, 1);
        this.f1189i = typedArrayD.getDimensionPixelSize(14, 0);
        b0 b0VarB = b0.b(context2, typedArrayD, 19);
        o oVarC = b0VarB != null ? b0VarB.c() : o.c(context2, attributeSet, 2130903928, 2132018328).a();
        boolean z8 = typedArrayD.getBoolean(17, false);
        f fVar = new f(this, oVarC);
        this.f1185b = fVar;
        fVar.f2449f = typedArrayD.getDimensionPixelOffset(2, 0);
        fVar.f2450g = typedArrayD.getDimensionPixelOffset(3, 0);
        fVar.f2451h = typedArrayD.getDimensionPixelOffset(4, 0);
        fVar.f2452i = typedArrayD.getDimensionPixelOffset(5, 0);
        if (typedArrayD.hasValue(9)) {
            int dimensionPixelSize = typedArrayD.getDimensionPixelSize(9, -1);
            fVar.f2453j = dimensionPixelSize;
            float f8 = dimensionPixelSize;
            n nVarG = fVar.f2448b.g();
            nVarG.e = new z3.a(f8);
            nVarG.f6250f = new z3.a(f8);
            nVarG.f6251g = new z3.a(f8);
            nVarG.f6252h = new z3.a(f8);
            fVar.f2448b = nVarG.a();
            fVar.c = null;
            fVar.d();
            fVar.f2461s = true;
        }
        fVar.f2454k = typedArrayD.getDimensionPixelSize(22, 0);
        fVar.f2455l = q.b(typedArrayD.getInt(8, -1), porterDuff$Mode);
        fVar.f2456m = c.a(getContext(), typedArrayD, 7);
        fVar.f2457n = c.a(getContext(), typedArrayD, 21);
        fVar.f2458o = c.a(getContext(), typedArrayD, 18);
        fVar.t = typedArrayD.getBoolean(6, false);
        fVar.w = typedArrayD.getDimensionPixelSize(10, 0);
        fVar.f2462u = typedArrayD.getBoolean(23, true);
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (typedArrayD.hasValue(0)) {
            fVar.r = true;
            setSupportBackgroundTintList(fVar.f2456m);
            setSupportBackgroundTintMode(fVar.f2455l);
        } else {
            fVar.c();
        }
        setPaddingRelative(paddingStart + fVar.f2449f, paddingTop + fVar.f2451h, paddingEnd + fVar.f2450g, paddingBottom + fVar.f2452i);
        setCheckedInternal(typedArrayD.getBoolean(1, false));
        if (b0VarB != null) {
            fVar.d = d();
            if (fVar.c != null) {
                fVar.d();
            }
            fVar.c = b0VarB;
            fVar.d();
        }
        setOpticalCenterEnabled(z8);
        typedArrayD.recycle();
        setCompoundDrawablePadding(this.f1192l);
        h(this.f1187g != null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(MaterialButton materialButton) {
        materialButton.f1200v = materialButton.getOpticalCenterShift();
        materialButton.j();
        materialButton.invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float b(MaterialButton materialButton) {
        return materialButton.getDisplayedWidthIncrease();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(MaterialButton materialButton, float f8) {
        materialButton.setDisplayedWidthIncrease(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Layout$Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment == 1) {
            return getGravityTextAlignment();
        }
        if (textAlignment == 6 || textAlignment == 3) {
            return Layout$Alignment.ALIGN_OPPOSITE;
        }
        return textAlignment != 4 ? Layout$Alignment.ALIGN_NORMAL : Layout$Alignment.ALIGN_CENTER;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float getDisplayedWidthIncrease() {
        return this.A;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Layout$Alignment getGravityTextAlignment() {
        int gravity = getGravity() & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (gravity != 1) {
            return (gravity == 5 || gravity == 8388613) ? Layout$Alignment.ALIGN_OPPOSITE : Layout$Alignment.ALIGN_NORMAL;
        }
        return Layout$Alignment.ALIGN_CENTER;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getOpticalCenterShift() {
        k kVarA;
        if (this.f1199u && this.w && (kVarA = this.f1185b.a(false)) != null) {
            return (int) (kVarA.i() * 0.11f);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = 0.0f;
        for (int i9 = 0; i9 < lineCount; i9++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i9));
        }
        return (int) Math.ceil(fMax);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setCheckedInternal(boolean z8) {
        f fVar = this.f1185b;
        if (fVar == null || !fVar.t || this.f1193m == z8) {
            return;
        }
        this.f1193m = z8;
        refreshDrawableState();
        if (getParent() instanceof MaterialButtonToggleGroup) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
            boolean z9 = this.f1193m;
            if (!materialButtonToggleGroup.f1205m) {
                materialButtonToggleGroup.f(getId(), z9);
            }
        }
        if (this.f1194n) {
            return;
        }
        this.f1194n = true;
        Iterator it = this.c.iterator();
        if (it.hasNext()) {
            throw g.b(it);
        }
        this.f1194n = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setDisplayedWidthIncrease(float f8) {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        if (this.A != f8) {
            this.A = f8;
            j();
            invalidate();
            if (getParent() instanceof e) {
                e eVar = (e) getParent();
                int i9 = (int) this.A;
                int iIndexOfChild = eVar.indexOfChild(this);
                if (iIndexOfChild < 0) {
                    return;
                }
                int i10 = iIndexOfChild - 1;
                while (true) {
                    materialButton = null;
                    if (i10 < 0) {
                        materialButton2 = null;
                        break;
                    } else {
                        if (eVar.c(i10)) {
                            materialButton2 = (MaterialButton) eVar.getChildAt(i10);
                            break;
                        }
                        i10--;
                    }
                }
                int childCount = eVar.getChildCount();
                while (true) {
                    iIndexOfChild++;
                    if (iIndexOfChild >= childCount) {
                        break;
                    } else if (eVar.c(iIndexOfChild)) {
                        materialButton = (MaterialButton) eVar.getChildAt(iIndexOfChild);
                        break;
                    }
                }
                if (materialButton2 == null && materialButton == null) {
                    return;
                }
                if (materialButton2 == null) {
                    materialButton.setDisplayedWidthDecrease(i9);
                }
                if (materialButton == null) {
                    materialButton2.setDisplayedWidthDecrease(i9);
                }
                if (materialButton2 == null || materialButton == null) {
                    return;
                }
                materialButton2.setDisplayedWidthDecrease(i9 / 2);
                materialButton.setDisplayedWidthDecrease((i9 + 1) / 2);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final SpringForce d() {
        Context context = getContext();
        TypedValue typedValueA = w3.b.a(2130904090, context);
        int[] iArr = a3.a.f24x;
        TypedArray typedArrayObtainStyledAttributes = typedValueA == null ? context.obtainStyledAttributes(null, iArr, 0, 2132017494) : context.obtainStyledAttributes(typedValueA.resourceId, iArr);
        SpringForce springForce = new SpringForce();
        try {
            float f8 = typedArrayObtainStyledAttributes.getFloat(1, Float.MIN_VALUE);
            if (f8 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have stiffness value.");
            }
            float f9 = typedArrayObtainStyledAttributes.getFloat(0, Float.MIN_VALUE);
            if (f9 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have a damping value.");
            }
            springForce.setStiffness(f8);
            springForce.setDampingRatio(f9);
            typedArrayObtainStyledAttributes.recycle();
            return springForce;
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean e() {
        f fVar = this.f1185b;
        return (fVar == null || fVar.r) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:39:0x0081  */
    /* JADX WARN: Code duplicated, block: B:46:? A[RETURN, SYNTHETIC] */
    public final void f(boolean z8) {
        int i9;
        if (this.f1202y == null) {
            return;
        }
        if (this.C == null) {
            SpringAnimation springAnimation = new SpringAnimation(this, F);
            this.C = springAnimation;
            springAnimation.setSpring(d());
        }
        if (this.w) {
            int i10 = this.f1203z;
            d0 d0Var = this.f1202y;
            int[] drawableState = getDrawableState();
            int[][] iArr = d0Var.c;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                i9 = -1;
                if (i12 >= d0Var.f6209a) {
                    i12 = -1;
                    break;
                } else if (StateSet.stateSetMatches(iArr[i12], drawableState)) {
                    break;
                } else {
                    i12++;
                }
            }
            if (i12 < 0) {
                int[] iArr2 = StateSet.WILD_CARD;
                int[][] iArr3 = d0Var.c;
                for (int i13 = 0; i13 < d0Var.f6209a; i13++) {
                    if (StateSet.stateSetMatches(iArr3[i13], iArr2)) {
                        i9 = i13;
                        break;
                    }
                }
                i12 = i9;
            }
            c0 c0Var = (c0) (i12 < 0 ? d0Var.f6210b : d0Var.d[i12]).c;
            int width = getWidth();
            float f8 = c0Var.f6208b;
            int i14 = c0Var.f6207a;
            if (i14 != 1) {
                if (i14 == 2) {
                }
                this.C.animateToFinalPosition(Math.min(i10, i11));
                if (z8) {
                    this.C.skipToEnd();
                }
            }
            f8 *= width;
            i11 = (int) f8;
            this.C.animateToFinalPosition(Math.min(i10, i11));
            if (z8) {
                this.C.skipToEnd();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        int i9 = this.f1195o;
        if (i9 == 1 || i9 == 2) {
            setCompoundDrawablesRelative(this.f1187g, null, null, null);
            return;
        }
        if (i9 == 3 || i9 == 4) {
            setCompoundDrawablesRelative(null, null, this.f1187g, null);
        } else if (i9 == 16 || i9 == 32) {
            setCompoundDrawablesRelative(null, this.f1187g, null, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String getA11yClassName() {
        if (!TextUtils.isEmpty(this.f1188h)) {
            return this.f1188h;
        }
        f fVar = this.f1185b;
        return ((fVar == null || !fVar.t) ? Button.class : CompoundButton.class).getName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getAllowedWidthDecrease() {
        return this.f1201x;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    @Nullable
    public PorterDuff$Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getCornerRadius() {
        if (e()) {
            return this.f1185b.f2453j;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public SpringForce getCornerSpringForce() {
        return this.f1185b.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Drawable getIcon() {
        return this.f1187g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getIconGravity() {
        return this.f1195o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getIconPadding() {
        return this.f1192l;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getIconSize() {
        return this.f1189i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ColorStateList getIconTint() {
        return this.f1186f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PorterDuff$Mode getIconTintMode() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Dimension
    public int getInsetBottom() {
        return this.f1185b.f2452i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Dimension
    public int getInsetTop() {
        return this.f1185b.f2451h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getRippleColor() {
        if (e()) {
            return this.f1185b.f2458o;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public o getShapeAppearanceModel() {
        if (e()) {
            return this.f1185b.f2448b;
        }
        i.l("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public b0 getStateListShapeAppearanceModel() {
        if (e()) {
            return this.f1185b.c;
        }
        i.l("Attempted to get StateListShapeAppearanceModel from a MaterialButton which has an overwritten background.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ColorStateList getStrokeColor() {
        if (e()) {
            return this.f1185b.f2457n;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getStrokeWidth() {
        if (e()) {
            return this.f1185b.f2454k;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        return e() ? this.f1185b.f2456m : super.getSupportBackgroundTintList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public PorterDuff$Mode getSupportBackgroundTintMode() {
        return e() ? this.f1185b.f2455l : super.getSupportBackgroundTintMode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(boolean z8) {
        Drawable drawable = this.f1187g;
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.f1187g = drawableMutate;
            drawableMutate.setTintList(this.f1186f);
            PorterDuff$Mode porterDuff$Mode = this.e;
            if (porterDuff$Mode != null) {
                this.f1187g.setTintMode(porterDuff$Mode);
            }
            int intrinsicWidth = this.f1189i;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f1187g.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f1189i;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f1187g.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f1187g;
            int i9 = this.f1190j;
            int i10 = this.f1191k;
            drawable2.setBounds(i9, i10, intrinsicWidth + i9, intrinsicHeight + i10);
            this.f1187g.setVisible(true, z8);
        }
        if (z8) {
            g();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i11 = this.f1195o;
        if (((i11 == 1 || i11 == 2) && drawable3 != this.f1187g) || (((i11 == 3 || i11 == 4) && drawable5 != this.f1187g) || ((i11 == 16 || i11 == 32) && drawable4 != this.f1187g))) {
            g();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(int i9, int i10) {
        if (this.f1187g == null || getLayout() == null) {
            return;
        }
        int i11 = this.f1195o;
        if (i11 != 1 && i11 != 2 && i11 != 3 && i11 != 4) {
            if (i11 == 16 || i11 == 32) {
                this.f1190j = 0;
                if (i11 == 16) {
                    this.f1191k = 0;
                    h(false);
                    return;
                }
                int intrinsicHeight = this.f1189i;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f1187g.getIntrinsicHeight();
                }
                int iMax = Math.max(0, (((((i10 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f1192l) - getPaddingBottom()) / 2);
                if (this.f1191k != iMax) {
                    this.f1191k = iMax;
                    h(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f1191k = 0;
        Layout$Alignment actualTextAlignment = getActualTextAlignment();
        int i12 = this.f1195o;
        if (i12 == 1 || i12 == 3 || ((i12 == 2 && actualTextAlignment == Layout$Alignment.ALIGN_NORMAL) || (i12 == 4 && actualTextAlignment == Layout$Alignment.ALIGN_OPPOSITE))) {
            this.f1190j = 0;
            h(false);
            return;
        }
        int intrinsicWidth = this.f1189i;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f1187g.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i9 - getTextLayoutWidth()) - getPaddingEnd()) - intrinsicWidth) - this.f1192l) - getPaddingStart();
        if (actualTextAlignment == Layout$Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if ((getLayoutDirection() == 1) != (this.f1195o == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.f1190j != textLayoutWidth) {
            this.f1190j = textLayoutWidth;
            h(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f1193m;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        int i9 = (int) (this.A - this.B);
        int i10 = (i9 / 2) + this.f1200v;
        getLayoutParams().width = (int) (this.f1197q + i9);
        setPaddingRelative(this.r + i10, getPaddingTop(), (this.f1198s + i9) - i10, getPaddingBottom());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (e()) {
            u.w(this, this.f1185b.a(false));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i9) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i9 + 2);
        f fVar = this.f1185b;
        if (fVar != null && fVar.t) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, D);
        }
        if (this.f1193m) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, E);
        }
        return iArrOnCreateDrawableState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.f1193m);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        f fVar = this.f1185b;
        accessibilityNodeInfo.setCheckable(fVar != null && fVar.t);
        accessibilityNodeInfo.setChecked(this.f1193m);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        int i13;
        super.onLayout(z8, i9, i10, i11, i12);
        i(getMeasuredWidth(), getMeasuredHeight());
        int i14 = getResources().getConfiguration().orientation;
        if (this.f1196p != i14) {
            this.f1196p = i14;
            this.f1197q = -1.0f;
        }
        if (this.f1197q == -1.0f) {
            this.f1197q = getMeasuredWidth();
            if (this.t == null && (getParent() instanceof e) && ((e) getParent()).getButtonSizeChange() != null) {
                this.t = (LinearLayout$LayoutParams) getLayoutParams();
                LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(this.t);
                linearLayout$LayoutParams.width = (int) this.f1197q;
                setLayoutParams(linearLayout$LayoutParams);
            }
        }
        boolean z9 = false;
        if (this.f1201x == -1) {
            if (this.f1187g == null) {
                i13 = 0;
            } else {
                int iconPadding = getIconPadding();
                int intrinsicWidth = this.f1189i;
                if (intrinsicWidth == 0) {
                    intrinsicWidth = this.f1187g.getIntrinsicWidth();
                }
                i13 = iconPadding + intrinsicWidth;
            }
            this.f1201x = (getMeasuredWidth() - getTextLayoutWidth()) - i13;
        }
        if (this.r == -1) {
            this.r = getPaddingStart();
        }
        if (this.f1198s == -1) {
            this.f1198s = getPaddingEnd();
        }
        if ((getParent() instanceof e) && ((e) getParent()).getOrientation() == 0) {
            z9 = true;
        }
        this.w = z9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof h3.c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h3.c cVar = (h3.c) parcelable;
        super.onRestoreInstanceState(cVar.getSuperState());
        setChecked(cVar.f2438b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        h3.c cVar = new h3.c(super.onSaveInstanceState());
        cVar.f2438b = this.f1193m;
        return cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        super.onTextChanged(charSequence, i9, i10, i11);
        i(getMeasuredWidth(), getMeasuredHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final boolean performClick() {
        if (isEnabled() && this.f1185b.f2462u) {
            toggle();
        }
        return super.performClick();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f1187g != null) {
            if (this.f1187g.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setA11yClassName(@Nullable String str) {
        this.f1188h = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i9) {
        if (!e()) {
            super.setBackgroundColor(i9);
            return;
        }
        f fVar = this.f1185b;
        if (fVar.a(false) != null) {
            fVar.a(false).setTint(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (!e()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
        f fVar = this.f1185b;
        fVar.r = true;
        MaterialButton materialButton = fVar.f2447a;
        materialButton.setSupportBackgroundTintList(fVar.f2456m);
        materialButton.setSupportBackgroundTintMode(fVar.f2455l);
        super.setBackgroundDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i9) {
        setBackgroundDrawable(i9 != 0 ? AppCompatResources.getDrawable(getContext(), i9) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        setSupportBackgroundTintMode(porterDuff$Mode);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCheckable(boolean z8) {
        if (e()) {
            this.f1185b.t = z8;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Checkable
    public void setChecked(boolean z8) {
        setCheckedInternal(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCornerRadius(@Px int i9) {
        if (e()) {
            f fVar = this.f1185b;
            if (fVar.f2461s && fVar.f2453j == i9) {
                return;
            }
            fVar.f2453j = i9;
            fVar.f2461s = true;
            float f8 = i9;
            n nVarG = fVar.f2448b.g();
            nVarG.e = new z3.a(f8);
            nVarG.f6250f = new z3.a(f8);
            nVarG.f6251g = new z3.a(f8);
            nVarG.f6252h = new z3.a(f8);
            fVar.f2448b = nVarG.a();
            fVar.c = null;
            fVar.d();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCornerRadiusResource(@DimenRes int i9) {
        if (e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setCornerSpringForce(@NonNull SpringForce springForce) {
        f fVar = this.f1185b;
        fVar.d = springForce;
        if (fVar.c != null) {
            fVar.d();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDisplayedWidthDecrease(int i9) {
        this.B = Math.min(i9, this.f1201x);
        j();
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setElevation(float f8) {
        super.setElevation(f8);
        if (e()) {
            this.f1185b.a(false).p(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIcon(@Nullable Drawable drawable) {
        if (this.f1187g != drawable) {
            this.f1187g = drawable;
            h(true);
            i(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconGravity(int i9) {
        if (this.f1195o != i9) {
            this.f1195o = i9;
            i(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconPadding(@Px int i9) {
        if (this.f1192l != i9) {
            this.f1192l = i9;
            setCompoundDrawablePadding(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconResource(@DrawableRes int i9) {
        setIcon(i9 != 0 ? AppCompatResources.getDrawable(getContext(), i9) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconSize(@Px int i9) {
        if (i9 < 0) {
            i.k("iconSize cannot be less than 0");
        } else if (this.f1189i != i9) {
            this.f1189i = i9;
            h(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f1186f != colorStateList) {
            this.f1186f = colorStateList;
            h(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconTintMode(PorterDuff$Mode porterDuff$Mode) {
        if (this.e != porterDuff$Mode) {
            this.e = porterDuff$Mode;
            h(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconTintResource(@ColorRes int i9) {
        setIconTint(AppCompatResources.getColorStateList(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInsetBottom(@Dimension int i9) {
        f fVar = this.f1185b;
        fVar.b(fVar.f2451h, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInsetTop(@Dimension int i9) {
        f fVar = this.f1185b;
        fVar.b(i9, fVar.f2452i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnPressedChangeListenerInternal(@Nullable b bVar) {
        this.d = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOpticalCenterEnabled(boolean z8) {
        if (this.f1199u != z8) {
            this.f1199u = z8;
            f fVar = this.f1185b;
            if (z8) {
                h hVar = new h(12, this);
                fVar.e = hVar;
                k kVarA = fVar.a(false);
                if (kVarA != null) {
                    kVarA.F = hVar;
                }
            } else {
                fVar.e = null;
                k kVarA2 = fVar.a(false);
                if (kVarA2 != null) {
                    kVarA2.F = null;
                }
            }
            post(new j(3, this));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setPressed(boolean z8) {
        b bVar = this.d;
        if (bVar != null) {
            ((MaterialButtonToggleGroup) ((r5.c) bVar).c).invalidate();
        }
        super.setPressed(z8);
        f(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (e()) {
            f fVar = this.f1185b;
            MaterialButton materialButton = fVar.f2447a;
            if (fVar.f2458o != colorStateList) {
                fVar.f2458o = colorStateList;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(x3.a.b(colorStateList));
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRippleColorResource(@ColorRes int i9) {
        if (e()) {
            setRippleColor(AppCompatResources.getColorStateList(getContext(), i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.z
    public void setShapeAppearanceModel(@NonNull o oVar) {
        if (!e()) {
            i.l("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
            return;
        }
        f fVar = this.f1185b;
        fVar.f2448b = oVar;
        fVar.c = null;
        fVar.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShouldDrawSurfaceColorStroke(boolean z8) {
        if (e()) {
            f fVar = this.f1185b;
            fVar.f2460q = z8;
            fVar.e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSizeChange(@NonNull d0 d0Var) {
        if (this.f1202y != d0Var) {
            this.f1202y = d0Var;
            f(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setStateListShapeAppearanceModel(@NonNull b0 b0Var) {
        if (!e()) {
            i.l("Attempted to set StateListShapeAppearanceModel on a MaterialButton which has an overwritten background.");
            return;
        }
        f fVar = this.f1185b;
        if (fVar.d == null && b0Var.d()) {
            fVar.d = d();
            if (fVar.c != null) {
                fVar.d();
            }
        }
        fVar.c = b0Var;
        fVar.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (e()) {
            f fVar = this.f1185b;
            if (fVar.f2457n != colorStateList) {
                fVar.f2457n = colorStateList;
                fVar.e();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStrokeColorResource(@ColorRes int i9) {
        if (e()) {
            setStrokeColor(AppCompatResources.getColorStateList(getContext(), i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStrokeWidth(@Px int i9) {
        if (e()) {
            f fVar = this.f1185b;
            if (fVar.f2454k != i9) {
                fVar.f2454k = i9;
                fVar.e();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStrokeWidthResource(@DimenRes int i9) {
        if (e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (!e()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        f fVar = this.f1185b;
        if (fVar.f2456m != colorStateList) {
            fVar.f2456m = colorStateList;
            if (fVar.a(false) != null) {
                fVar.a(false).setTintList(fVar.f2456m);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        if (!e()) {
            super.setSupportBackgroundTintMode(porterDuff$Mode);
            return;
        }
        f fVar = this.f1185b;
        if (fVar.f2455l != porterDuff$Mode) {
            fVar.f2455l = porterDuff$Mode;
            if (fVar.a(false) == null || fVar.f2455l == null) {
                return;
            }
            fVar.a(false).setTintMode(fVar.f2455l);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setTextAlignment(int i9) {
        super.setTextAlignment(i9);
        i(getMeasuredWidth(), getMeasuredHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setToggleCheckedStateOnClick(boolean z8) {
        this.f1185b.f2462u = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView
    public void setWidth(@Px int i9) {
        this.f1197q = -1.0f;
        super.setWidth(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWidthChangeMax(@Px int i9) {
        if (this.f1203z != i9) {
            this.f1203z = i9;
            f(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f1193m);
    }
}

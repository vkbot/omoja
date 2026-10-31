package com.google.android.material.textfield;

import android.R$attr;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build$VERSION;
import android.os.Parcelable;
import android.text.Editable;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewStructure;
import android.view.ViewTreeObserver$OnGlobalLayoutListener;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.R$style;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import b1.u;
import c5.h;
import com.bumptech.glide.d;
import com.google.android.material.internal.CheckableImageButton;
import e0.g;
import e4.a0;
import e4.b0;
import e4.c0;
import e4.p;
import e4.s;
import e4.t;
import e4.w;
import e4.y;
import e4.z;
import g4.a;
import j1.i;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.ULong;
import s3.c;
import s3.l;
import w3.b;
import z3.f;
import z3.k;
import z3.m;
import z3.n;
import z3.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver$OnGlobalLayoutListener {
    public static final int[][] E0 = {new int[]{R$attr.state_pressed}, new int[0]};
    public ColorStateList A;
    public ValueAnimator A0;
    public ColorStateList B;
    public boolean B0;
    public ColorStateList C;
    public boolean C0;
    public ColorStateList D;
    public boolean D0;
    public boolean E;
    public CharSequence F;
    public boolean G;
    public k H;
    public k I;
    public StateListDrawable J;
    public boolean K;
    public k L;
    public k M;
    public o N;
    public boolean O;
    public final int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Rect f1380a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f1381b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final Rect f1382b0;
    public final y c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final RectF f1383c0;
    public final p d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Typeface f1384d0;
    public final int e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public ColorDrawable f1385e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EditText f1386f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f1387f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public CharSequence f1388g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final LinkedHashSet f1389g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1390h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public ColorDrawable f1391h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1392i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f1393i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1394j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public Drawable f1395j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1396k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ColorStateList f1397k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final t f1398l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public ColorStateList f1399l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1400m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f1401m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1402n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f1403n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1404o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f1405o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public b0 f1406p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public ColorStateList f1407p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public AppCompatTextView f1408q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f1409q0;
    public int r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f1410r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1411s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f1412s0;
    public CharSequence t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f1413t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1414u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f1415u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public AppCompatTextView f1416v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f1417v0;
    public ColorStateList w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public boolean f1418w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1419x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final c f1420x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Fade f1421y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public boolean f1422y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Fade f1423z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public boolean f1424z0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(a.a(context, attributeSet, 2130904527, 2132018106), attributeSet, 2130904527);
        this.f1390h = -1;
        this.f1392i = -1;
        this.f1394j = -1;
        this.f1396k = -1;
        this.f1398l = new t(this);
        this.f1406p = new g(7);
        this.f1380a0 = new Rect();
        this.f1382b0 = new Rect();
        this.f1383c0 = new RectF();
        this.f1389g0 = new LinkedHashSet();
        c cVar = new c(this);
        this.f1420x0 = cVar;
        this.D0 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f1381b = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = b3.a.f305a;
        cVar.R = linearInterpolator;
        cVar.j(false);
        cVar.Q = linearInterpolator;
        cVar.j(false);
        if (cVar.f5253g != 8388659) {
            cVar.f5253g = 8388659;
            cVar.j(false);
        }
        l.a(context2, attributeSet, 2130904527, 2132018106);
        int[] iArr = a3.a.L;
        l.b(context2, attributeSet, iArr, 2130904527, 2132018106, 22, 20, 40, 45, 50);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context2, attributeSet, iArr, 2130904527, 2132018106);
        y yVar = new y(this, tintTypedArrayObtainStyledAttributes);
        this.c = yVar;
        this.E = tintTypedArrayObtainStyledAttributes.getBoolean(48, true);
        setHint(tintTypedArrayObtainStyledAttributes.getText(4));
        this.f1424z0 = tintTypedArrayObtainStyledAttributes.getBoolean(47, true);
        this.f1422y0 = tintTypedArrayObtainStyledAttributes.getBoolean(42, true);
        if (tintTypedArrayObtainStyledAttributes.hasValue(6)) {
            setMinEms(tintTypedArrayObtainStyledAttributes.getInt(6, -1));
        } else if (tintTypedArrayObtainStyledAttributes.hasValue(3)) {
            setMinWidth(tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(3, -1));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(5)) {
            setMaxEms(tintTypedArrayObtainStyledAttributes.getInt(5, -1));
        } else if (tintTypedArrayObtainStyledAttributes.hasValue(2)) {
            setMaxWidth(tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        this.N = o.c(context2, attributeSet, 2130904527, 2132018106).a();
        this.P = context2.getResources().getDimensionPixelOffset(2131100649);
        this.R = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(9, 0);
        this.e = getResources().getDimensionPixelSize(2131100290);
        this.T = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(2131100650));
        this.U = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(2131100651));
        this.S = this.T;
        float dimension = tintTypedArrayObtainStyledAttributes.getDimension(13, -1.0f);
        float dimension2 = tintTypedArrayObtainStyledAttributes.getDimension(12, -1.0f);
        float dimension3 = tintTypedArrayObtainStyledAttributes.getDimension(10, -1.0f);
        float dimension4 = tintTypedArrayObtainStyledAttributes.getDimension(11, -1.0f);
        n nVarG = this.N.g();
        if (dimension >= 0.0f) {
            nVarG.e = new z3.a(dimension);
        }
        if (dimension2 >= 0.0f) {
            nVarG.f6250f = new z3.a(dimension2);
        }
        if (dimension3 >= 0.0f) {
            nVarG.f6251g = new z3.a(dimension3);
        }
        if (dimension4 >= 0.0f) {
            nVarG.f6252h = new z3.a(dimension4);
        }
        this.N = nVarG.a();
        ColorStateList colorStateListB = w3.c.b(context2, tintTypedArrayObtainStyledAttributes, 7);
        if (colorStateListB != null) {
            int defaultColor = colorStateListB.getDefaultColor();
            this.f1409q0 = defaultColor;
            this.W = defaultColor;
            if (colorStateListB.isStateful()) {
                this.f1410r0 = colorStateListB.getColorForState(new int[]{-16842910}, -1);
                this.f1412s0 = colorStateListB.getColorForState(new int[]{R$attr.state_focused, R$attr.state_enabled}, -1);
                this.f1413t0 = colorStateListB.getColorForState(new int[]{R$attr.state_hovered, R$attr.state_enabled}, -1);
            } else {
                this.f1412s0 = this.f1409q0;
                ColorStateList colorStateList = AppCompatResources.getColorStateList(context2, 2131035034);
                this.f1410r0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
                this.f1413t0 = colorStateList.getColorForState(new int[]{R$attr.state_hovered}, -1);
            }
        } else {
            this.W = 0;
            this.f1409q0 = 0;
            this.f1410r0 = 0;
            this.f1412s0 = 0;
            this.f1413t0 = 0;
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(1)) {
            ColorStateList colorStateList2 = tintTypedArrayObtainStyledAttributes.getColorStateList(1);
            this.f1399l0 = colorStateList2;
            this.f1397k0 = colorStateList2;
        }
        ColorStateList colorStateListB2 = w3.c.b(context2, tintTypedArrayObtainStyledAttributes, 14);
        this.f1405o0 = tintTypedArrayObtainStyledAttributes.getColor(14, 0);
        this.f1401m0 = ContextCompat.getColor(context2, 2131035061);
        this.f1415u0 = ContextCompat.getColor(context2, 2131035062);
        this.f1403n0 = ContextCompat.getColor(context2, 2131035065);
        if (colorStateListB2 != null) {
            setBoxStrokeColorStateList(colorStateListB2);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(15)) {
            setBoxStrokeErrorColor(w3.c.b(context2, tintTypedArrayObtainStyledAttributes, 15));
        }
        if (tintTypedArrayObtainStyledAttributes.getResourceId(50, -1) != -1) {
            setHintTextAppearance(tintTypedArrayObtainStyledAttributes.getResourceId(50, 0));
        }
        this.C = tintTypedArrayObtainStyledAttributes.getColorStateList(24);
        this.D = tintTypedArrayObtainStyledAttributes.getColorStateList(25);
        int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(40, 0);
        CharSequence text = tintTypedArrayObtainStyledAttributes.getText(35);
        int i9 = tintTypedArrayObtainStyledAttributes.getInt(34, 1);
        boolean z8 = tintTypedArrayObtainStyledAttributes.getBoolean(36, false);
        int resourceId2 = tintTypedArrayObtainStyledAttributes.getResourceId(45, 0);
        boolean z9 = tintTypedArrayObtainStyledAttributes.getBoolean(44, false);
        CharSequence text2 = tintTypedArrayObtainStyledAttributes.getText(43);
        int resourceId3 = tintTypedArrayObtainStyledAttributes.getResourceId(58, 0);
        CharSequence text3 = tintTypedArrayObtainStyledAttributes.getText(57);
        boolean z10 = tintTypedArrayObtainStyledAttributes.getBoolean(18, false);
        setCounterMaxLength(tintTypedArrayObtainStyledAttributes.getInt(19, -1));
        this.f1411s = tintTypedArrayObtainStyledAttributes.getResourceId(22, 0);
        this.r = tintTypedArrayObtainStyledAttributes.getResourceId(20, 0);
        setBoxBackgroundMode(tintTypedArrayObtainStyledAttributes.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i9);
        setCounterOverflowTextAppearance(this.r);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.f1411s);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (tintTypedArrayObtainStyledAttributes.hasValue(41)) {
            setErrorTextColor(tintTypedArrayObtainStyledAttributes.getColorStateList(41));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(46)) {
            setHelperTextColor(tintTypedArrayObtainStyledAttributes.getColorStateList(46));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(51)) {
            setHintTextColor(tintTypedArrayObtainStyledAttributes.getColorStateList(51));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(23)) {
            setCounterTextColor(tintTypedArrayObtainStyledAttributes.getColorStateList(23));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(21)) {
            setCounterOverflowTextColor(tintTypedArrayObtainStyledAttributes.getColorStateList(21));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(59)) {
            setPlaceholderTextColor(tintTypedArrayObtainStyledAttributes.getColorStateList(59));
        }
        p pVar = new p(this, tintTypedArrayObtainStyledAttributes);
        this.d = pVar;
        boolean z11 = tintTypedArrayObtainStyledAttributes.getBoolean(0, true);
        setHintMaxLines(tintTypedArrayObtainStyledAttributes.getInt(49, 1));
        tintTypedArrayObtainStyledAttributes.recycle();
        setImportantForAccessibility(2);
        if (Build$VERSION.SDK_INT >= 26) {
            h.x(this);
        }
        frameLayout.addView(yVar);
        frameLayout.addView(pVar);
        addView(frameLayout);
        setEnabled(z11);
        setHelperTextEnabled(z9);
        setErrorEnabled(z8);
        setCounterEnabled(z10);
        setHelperText(text2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f1386f;
        if (!(editText instanceof AutoCompleteTextView) || editText.getInputType() != 0) {
            return this.H;
        }
        int iA = m3.a.a(androidx.appcompat.R$attr.colorControlHighlight, this.f1386f);
        int i9 = this.Q;
        int[][] iArr = E0;
        if (i9 != 2) {
            if (i9 != 1) {
                return null;
            }
            k kVar = this.H;
            int i10 = this.W;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{m3.a.c(0.1f, iA, i10), i10}), kVar, kVar);
        }
        Context context = getContext();
        k kVar2 = this.H;
        TypedValue typedValueC = b.c(context, "TextInputLayout", 2130903359);
        int i11 = typedValueC.resourceId;
        int color = i11 != 0 ? ContextCompat.getColor(context, i11) : typedValueC.data;
        k kVar3 = new k(kVar2.c.f6213a);
        int iC = m3.a.c(0.1f, iA, color);
        kVar3.q(new ColorStateList(iArr, new int[]{iC, 0}));
        kVar3.setTint(color);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iC, color});
        k kVar4 = new k(kVar2.c.f6213a);
        kVar4.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, kVar3, kVar4), kVar2});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.J == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.J = stateListDrawable;
            stateListDrawable.addState(new int[]{R$attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.J.addState(new int[0], h(false));
        }
        return this.J;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.I == null) {
            this.I = h(true);
        }
        return this.I;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void m(ViewGroup viewGroup, boolean z8) {
        int childCount = viewGroup.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = viewGroup.getChildAt(i9);
            childAt.setEnabled(z8);
            if (childAt instanceof ViewGroup) {
                m((ViewGroup) childAt, z8);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setEditText(EditText editText) {
        if (this.f1386f != null) {
            i.k("We already have an EditText, can only have one");
            return;
        }
        if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f1386f = editText;
        int i9 = this.f1390h;
        if (i9 != -1) {
            setMinEms(i9);
        } else {
            setMinWidth(this.f1394j);
        }
        int i10 = this.f1392i;
        if (i10 != -1) {
            setMaxEms(i10);
        } else {
            setMaxWidth(this.f1396k);
        }
        this.K = false;
        k();
        setTextInputAccessibilityDelegate(new a0(this));
        Typeface typeface = this.f1386f.getTypeface();
        c cVar = this.f1420x0;
        cVar.n(typeface);
        float textSize = this.f1386f.getTextSize();
        if (cVar.f5255h != textSize) {
            cVar.f5255h = textSize;
            cVar.j(false);
        }
        float letterSpacing = this.f1386f.getLetterSpacing();
        if (cVar.X != letterSpacing) {
            cVar.X = letterSpacing;
            cVar.j(false);
        }
        int gravity = this.f1386f.getGravity();
        int i11 = (gravity & (-113)) | 48;
        if (cVar.f5253g != i11) {
            cVar.f5253g = i11;
            cVar.j(false);
        }
        if (cVar.f5251f != gravity) {
            cVar.f5251f = gravity;
            cVar.j(false);
        }
        this.f1417v0 = editText.getMinimumHeight();
        this.f1386f.addTextChangedListener(new z(this, editText));
        if (this.f1397k0 == null) {
            this.f1397k0 = this.f1386f.getHintTextColors();
        }
        if (this.E) {
            if (TextUtils.isEmpty(this.F)) {
                CharSequence hint = this.f1386f.getHint();
                this.f1388g = hint;
                setHint(hint);
                this.f1386f.setHint((CharSequence) null);
            }
            this.G = true;
        }
        if (Build$VERSION.SDK_INT >= 29) {
            r();
        }
        if (this.f1408q != null) {
            p(this.f1386f.getText());
        }
        t();
        this.f1398l.b();
        this.c.bringToFront();
        p pVar = this.d;
        pVar.bringToFront();
        Iterator it = this.f1389g0.iterator();
        while (it.hasNext()) {
            ((e4.n) it.next()).a(this);
        }
        pVar.m();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        w(false, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.F)) {
            return;
        }
        this.F = charSequence;
        c cVar = this.f1420x0;
        if (charSequence == null || !TextUtils.equals(cVar.B, charSequence)) {
            cVar.B = charSequence;
            cVar.C = null;
            cVar.j(false);
        }
        if (this.f1418w0) {
            return;
        }
        l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setPlaceholderTextEnabled(boolean z8) {
        if (this.f1414u == z8) {
            return;
        }
        AppCompatTextView appCompatTextView = this.f1416v;
        if (!z8) {
            if (appCompatTextView != null) {
                appCompatTextView.setVisibility(8);
            }
            this.f1416v = null;
        } else if (appCompatTextView != null) {
            this.f1381b.addView(appCompatTextView);
            this.f1416v.setVisibility(0);
        }
        this.f1414u = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        if (this.f1386f == null || this.Q != 1) {
            return;
        }
        if (getHintMaxLines() != 1) {
            EditText editText = this.f1386f;
            editText.setPaddingRelative(editText.getPaddingStart(), (int) (this.f1420x0.f() + this.e), this.f1386f.getPaddingEnd(), getResources().getDimensionPixelSize(2131100450));
        } else if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
            EditText editText2 = this.f1386f;
            editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(2131100453), this.f1386f.getPaddingEnd(), getResources().getDimensionPixelSize(2131100452));
        } else if (w3.c.d(getContext())) {
            EditText editText3 = this.f1386f;
            editText3.setPaddingRelative(editText3.getPaddingStart(), getResources().getDimensionPixelSize(2131100451), this.f1386f.getPaddingEnd(), getResources().getDimensionPixelSize(2131100450));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public final void addView(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i9, viewGroup$LayoutParams);
            return;
        }
        FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(viewGroup$LayoutParams);
        frameLayout$LayoutParams.gravity = (frameLayout$LayoutParams.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f1381b;
        frameLayout.addView(view, frameLayout$LayoutParams);
        frameLayout.setLayoutParams(viewGroup$LayoutParams);
        v();
        setEditText((EditText) view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(float f8) {
        c cVar = this.f1420x0;
        if (cVar.f5246b == f8) {
            return;
        }
        if (this.A0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.A0 = valueAnimator;
            valueAnimator.setInterpolator(d.r(getContext(), 2130904068, b3.a.f306b));
            this.A0.setDuration(d.q(getContext(), 2130904058, 167));
            this.A0.addUpdateListener(new d4.b(1, this));
        }
        this.A0.setFloatValues(cVar.f5246b, f8);
        this.A0.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        int i9;
        int i10;
        k kVar = this.H;
        if (kVar == null) {
            return;
        }
        o oVar = kVar.c.f6213a;
        o oVar2 = this.N;
        if (oVar != oVar2) {
            kVar.setShapeAppearanceModel(oVar2);
        }
        if (this.Q == 2 && (i9 = this.S) > -1 && (i10 = this.V) != 0) {
            k kVar2 = this.H;
            kVar2.c.f6220k = i9;
            kVar2.invalidateSelf();
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(i10);
            z3.h hVar = kVar2.c;
            if (hVar.e != colorStateListValueOf) {
                hVar.e = colorStateListValueOf;
                kVar2.onStateChange(kVar2.getState());
            }
        }
        int iCompositeColors = this.W;
        if (this.Q == 1) {
            iCompositeColors = ColorUtils.compositeColors(this.W, m3.a.b(getContext(), 2130903359, 0));
        }
        this.W = iCompositeColors;
        this.H.q(ColorStateList.valueOf(iCompositeColors));
        k kVar3 = this.L;
        if (kVar3 != null && this.M != null) {
            if (this.S > -1 && this.V != 0) {
                kVar3.q(this.f1386f.isFocused() ? ColorStateList.valueOf(this.f1401m0) : ColorStateList.valueOf(this.V));
                this.M.q(ColorStateList.valueOf(this.V));
            }
            invalidate();
        }
        u();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Rect d(Rect rect) {
        if (this.f1386f == null) {
            throw new IllegalStateException();
        }
        boolean z8 = getLayoutDirection() == 1;
        int i9 = rect.bottom;
        Rect rect2 = this.f1382b0;
        rect2.bottom = i9;
        int i10 = this.Q;
        if (i10 == 1) {
            rect2.left = i(rect.left, z8);
            rect2.top = rect.top + this.R;
            rect2.right = j(rect.right, z8);
            return rect2;
        }
        int i11 = rect.left;
        if (i10 != 2) {
            rect2.left = i(i11, z8);
            rect2.top = getPaddingTop();
            rect2.right = j(rect.right, z8);
            return rect2;
        }
        rect2.left = this.f1386f.getPaddingLeft() + i11;
        rect2.top = rect.top - e();
        rect2.right = rect.right - this.f1386f.getPaddingRight();
        return rect2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i9) {
        EditText editText = this.f1386f;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i9);
            return;
        }
        if (this.f1388g != null) {
            boolean z8 = this.G;
            this.G = false;
            CharSequence hint = editText.getHint();
            this.f1386f.setHint(this.f1388g);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i9);
                return;
            } finally {
                this.f1386f.setHint(hint);
                this.G = z8;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i9);
        onProvideAutofillVirtualStructure(viewStructure, i9);
        FrameLayout frameLayout = this.f1381b;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i10 = 0; i10 < frameLayout.getChildCount(); i10++) {
            View childAt = frameLayout.getChildAt(i10);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i10);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i9);
            if (childAt == this.f1386f) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.C0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.C0 = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void draw(Canvas canvas) {
        k kVar;
        Canvas canvas2 = canvas;
        super.draw(canvas);
        boolean z8 = this.E;
        c cVar = this.f1420x0;
        if (z8) {
            TextPaint textPaint = cVar.O;
            RectF rectF = cVar.e;
            int iSave = canvas2.save();
            if (cVar.C != null && rectF.width() > 0.0f && rectF.height() > 0.0f) {
                textPaint.setTextSize(cVar.G);
                float f8 = cVar.f5268q;
                float f9 = cVar.r;
                float f10 = cVar.F;
                if (f10 != 1.0f) {
                    canvas2.scale(f10, f10, f8, f9);
                }
                if ((cVar.f5250e0 > 1 || cVar.f5252f0 > 1) && !cVar.D && cVar.o()) {
                    float lineStart = cVar.f5268q - cVar.Z.getLineStart(0);
                    int alpha = textPaint.getAlpha();
                    canvas2.translate(lineStart, f9);
                    float f11 = alpha;
                    textPaint.setAlpha((int) (cVar.f5248c0 * f11));
                    int i9 = Build$VERSION.SDK_INT;
                    if (i9 >= 31) {
                        float f12 = cVar.H;
                        float f13 = cVar.I;
                        float f14 = cVar.J;
                        int i10 = cVar.K;
                        textPaint.setShadowLayer(f12, f13, f14, ColorUtils.setAlphaComponent(i10, (textPaint.getAlpha() * Color.alpha(i10)) / 255));
                    }
                    cVar.Z.draw(canvas2);
                    textPaint.setAlpha((int) (cVar.f5247b0 * f11));
                    if (i9 >= 31) {
                        float f15 = cVar.H;
                        float f16 = cVar.I;
                        float f17 = cVar.J;
                        int i11 = cVar.K;
                        textPaint.setShadowLayer(f15, f16, f17, ColorUtils.setAlphaComponent(i11, (Color.alpha(i11) * textPaint.getAlpha()) / 255));
                    }
                    int lineBaseline = cVar.Z.getLineBaseline(0);
                    CharSequence charSequence = cVar.f5249d0;
                    float f18 = lineBaseline;
                    canvas2.drawText(charSequence, 0, charSequence.length(), 0.0f, f18, textPaint);
                    if (i9 >= 31) {
                        textPaint.setShadowLayer(cVar.H, cVar.I, cVar.J, cVar.K);
                    }
                    String strTrim = cVar.f5249d0.toString().trim();
                    if (strTrim.endsWith("…")) {
                        strTrim = strTrim.substring(0, strTrim.length() - 1);
                    }
                    String str = strTrim;
                    textPaint.setAlpha(alpha);
                    canvas2 = canvas;
                    canvas2.drawText(str, 0, Math.min(cVar.Z.getLineEnd(0), str.length()), 0.0f, f18, (Paint) textPaint);
                } else {
                    canvas2.translate(f8, f9);
                    cVar.Z.draw(canvas2);
                }
                canvas2.restoreToCount(iSave);
            }
        }
        if (this.M == null || (kVar = this.L) == null) {
            return;
        }
        kVar.draw(canvas2);
        if (this.f1386f.isFocused()) {
            Rect bounds = this.M.getBounds();
            Rect bounds2 = this.L.getBounds();
            float f19 = cVar.f5246b;
            int iCenterX = bounds2.centerX();
            bounds.left = b3.a.c(f19, iCenterX, bounds2.left);
            bounds.right = b3.a.c(f19, iCenterX, bounds2.right);
            this.M.draw(canvas2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z8;
        ColorStateList colorStateList;
        if (this.B0) {
            return;
        }
        this.B0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        c cVar = this.f1420x0;
        if (cVar != null) {
            cVar.M = drawableState;
            ColorStateList colorStateList2 = cVar.f5261k;
            if ((colorStateList2 == null || !colorStateList2.isStateful()) && ((colorStateList = cVar.f5259j) == null || !colorStateList.isStateful())) {
                z8 = false;
            } else {
                cVar.j(false);
                z8 = true;
            }
        } else {
            z8 = false;
        }
        if (this.f1386f != null) {
            w(isLaidOut() && isEnabled(), false);
        }
        t();
        z();
        if (z8) {
            invalidate();
        }
        this.B0 = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int e() {
        if (this.E) {
            int i9 = this.Q;
            c cVar = this.f1420x0;
            if (i9 == 0) {
                return (int) cVar.f();
            }
            if (i9 == 2) {
                if (getHintMaxLines() == 1) {
                    return (int) (cVar.f() / 2.0f);
                }
                float f8 = cVar.f();
                TextPaint textPaint = cVar.P;
                textPaint.setTextSize(cVar.f5257i);
                textPaint.setTypeface(cVar.f5269s);
                textPaint.setLetterSpacing(cVar.W);
                return Math.max(0, (int) (f8 - ((-textPaint.ascent()) / 2.0f)));
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Fade f() {
        Fade fade = new Fade();
        fade.setDuration(d.q(getContext(), 2130904060, 87));
        fade.setInterpolator(d.r(getContext(), 2130904070, b3.a.f305a));
        return fade;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean g() {
        return this.E && !TextUtils.isEmpty(this.F) && (this.H instanceof e4.g);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f1386f;
        if (editText == null) {
            return super.getBaseline();
        }
        return e() + getPaddingTop() + editText.getBaseline();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public k getBoxBackground() {
        int i9 = this.Q;
        if (i9 == 1 || i9 == 2) {
            return this.H;
        }
        throw new IllegalStateException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBoxBackgroundColor() {
        return this.W;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBoxBackgroundMode() {
        return this.Q;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBoxCollapsedPaddingTop() {
        return this.R;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getBoxCornerRadiusBottomEnd() {
        int layoutDirection = getLayoutDirection();
        o oVar = this.N;
        RectF rectF = this.f1383c0;
        return layoutDirection == 1 ? oVar.f6262h.a(rectF) : oVar.f6261g.a(rectF);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getBoxCornerRadiusBottomStart() {
        int layoutDirection = getLayoutDirection();
        o oVar = this.N;
        RectF rectF = this.f1383c0;
        return layoutDirection == 1 ? oVar.f6261g.a(rectF) : oVar.f6262h.a(rectF);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getBoxCornerRadiusTopEnd() {
        int layoutDirection = getLayoutDirection();
        o oVar = this.N;
        RectF rectF = this.f1383c0;
        return layoutDirection == 1 ? oVar.e.a(rectF) : oVar.f6260f.a(rectF);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getBoxCornerRadiusTopStart() {
        int layoutDirection = getLayoutDirection();
        o oVar = this.N;
        RectF rectF = this.f1383c0;
        return layoutDirection == 1 ? oVar.f6260f.a(rectF) : oVar.e.a(rectF);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBoxStrokeColor() {
        return this.f1405o0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.f1407p0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBoxStrokeWidth() {
        return this.T;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBoxStrokeWidthFocused() {
        return this.U;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCounterMaxLength() {
        return this.f1402n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getCounterOverflowDescription() {
        AppCompatTextView appCompatTextView;
        if (this.f1400m && this.f1404o && (appCompatTextView = this.f1408q) != null) {
            return appCompatTextView.getContentDescription();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.B;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.A;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
    public ColorStateList getCursorColor() {
        return this.C;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
    public ColorStateList getCursorErrorColor() {
        return this.D;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.f1397k0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public EditText getEditText() {
        return this.f1386f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.d.f2077h.getContentDescription();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getEndIconDrawable() {
        return this.d.f2077h.getDrawable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEndIconMinSize() {
        return this.d.f2083n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEndIconMode() {
        return this.d.f2079j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ImageView$ScaleType getEndIconScaleType() {
        return this.d.f2084o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public CheckableImageButton getEndIconView() {
        return this.d.f2077h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getError() {
        t tVar = this.f1398l;
        if (tVar.f2108q) {
            return tVar.f2107p;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getErrorAccessibilityLiveRegion() {
        return this.f1398l.t;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.f1398l.f2109s;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public int getErrorCurrentTextColors() {
        AppCompatTextView appCompatTextView = this.f1398l.r;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.d.d.getDrawable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getHelperText() {
        t tVar = this.f1398l;
        if (tVar.f2112x) {
            return tVar.w;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.f1398l.f2113y;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getHint() {
        if (this.E) {
            return this.F;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public final float getHintCollapsedTextHeight() {
        return this.f1420x0.f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public final int getHintCurrentCollapsedTextColor() {
        c cVar = this.f1420x0;
        return cVar.g(cVar.f5261k);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHintMaxLines() {
        return this.f1420x0.f5250e0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getHintTextColor() {
        return this.f1399l0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public b0 getLengthCounter() {
        return this.f1406p;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxEms() {
        return this.f1392i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getMaxWidth() {
        return this.f1396k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMinEms() {
        return this.f1390h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getMinWidth() {
        return this.f1394j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.d.f2077h.getContentDescription();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.d.f2077h.getDrawable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.f1414u) {
            return this.t;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.f1419x;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.w;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getPrefixText() {
        return this.c.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.c.c.getTextColors();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public TextView getPrefixTextView() {
        return this.c.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public o getShapeAppearanceModel() {
        return this.N;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.c.e.getContentDescription();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Drawable getStartIconDrawable() {
        return this.c.e.getDrawable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStartIconMinSize() {
        return this.c.f2127h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ImageView$ScaleType getStartIconScaleType() {
        return this.c.f2128i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getSuffixText() {
        return this.d.f2086q;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.d.r.getTextColors();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public TextView getSuffixTextView() {
        return this.d.r;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Typeface getTypeface() {
        return this.f1384d0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final k h(boolean z8) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(2131100623);
        float f8 = z8 ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f1386f;
        float popupElevation = editText instanceof w ? ((w) editText).getPopupElevation() : getResources().getDimensionPixelOffset(2131100108);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(2131100560);
        m mVar = new m();
        m mVar2 = new m();
        m mVar3 = new m();
        m mVar4 = new m();
        f fVar = new f(0);
        f fVar2 = new f(0);
        f fVar3 = new f(0);
        f fVar4 = new f(0);
        z3.a aVar = new z3.a(f8);
        z3.a aVar2 = new z3.a(f8);
        z3.a aVar3 = new z3.a(dimensionPixelOffset);
        z3.a aVar4 = new z3.a(dimensionPixelOffset);
        o oVar = new o();
        oVar.f6258a = mVar;
        oVar.f6259b = mVar2;
        oVar.c = mVar3;
        oVar.d = mVar4;
        oVar.e = aVar;
        oVar.f6260f = aVar2;
        oVar.f6261g = aVar4;
        oVar.f6262h = aVar3;
        oVar.f6263i = fVar;
        oVar.f6264j = fVar2;
        oVar.f6265k = fVar3;
        oVar.f6266l = fVar4;
        EditText editText2 = this.f1386f;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof w ? ((w) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            Paint paint = k.G;
            TypedValue typedValueC = b.c(context, k.class.getSimpleName(), 2130903359);
            int i9 = typedValueC.resourceId;
            dropDownBackgroundTintList = ColorStateList.valueOf(i9 != 0 ? ContextCompat.getColor(context, i9) : typedValueC.data);
        }
        k kVar = new k();
        kVar.m(context);
        kVar.q(dropDownBackgroundTintList);
        kVar.p(popupElevation);
        kVar.setShapeAppearanceModel(oVar);
        z3.h hVar = kVar.c;
        if (hVar.f6217h == null) {
            hVar.f6217h = new Rect();
        }
        kVar.c.f6217h.set(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        kVar.invalidateSelf();
        return kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int i(int i9, boolean z8) {
        int compoundPaddingLeft;
        if (z8 || getPrefixText() == null) {
            compoundPaddingLeft = (!z8 || getSuffixText() == null) ? this.f1386f.getCompoundPaddingLeft() : this.d.c();
        } else {
            compoundPaddingLeft = this.c.a();
        }
        return compoundPaddingLeft + i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int j(int i9, boolean z8) {
        int compoundPaddingRight;
        if (z8 || getSuffixText() == null) {
            compoundPaddingRight = (!z8 || getPrefixText() == null) ? this.f1386f.getCompoundPaddingRight() : this.c.a();
        } else {
            compoundPaddingRight = this.d.c();
        }
        return i9 - compoundPaddingRight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k() {
        int i9 = this.Q;
        if (i9 == 0) {
            this.H = null;
            this.L = null;
            this.M = null;
        } else if (i9 == 1) {
            this.H = new k(this.N);
            this.L = new k();
            this.M = new k();
        } else {
            if (i9 != 2) {
                i.k(ai.onnxruntime.a.o(new StringBuilder(), " is illegal; only @BoxBackgroundMode constants are supported.", this.Q));
                return;
            }
            if (!this.E || (this.H instanceof e4.g)) {
                this.H = new k(this.N);
            } else {
                o oVar = this.N;
                int i10 = e4.g.J;
                if (oVar == null) {
                    oVar = new o();
                }
                e4.f fVar = new e4.f(oVar, new RectF());
                e4.g gVar = new e4.g(fVar);
                gVar.I = fVar;
                this.H = gVar;
            }
            this.L = null;
            this.M = null;
        }
        u();
        z();
        if (this.Q == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.R = getResources().getDimensionPixelSize(2131100455);
            } else if (w3.c.d(getContext())) {
                this.R = getResources().getDimensionPixelSize(2131100454);
            }
        }
        a();
        if (this.Q != 0) {
            v();
        }
        EditText editText = this.f1386f;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i11 = this.Q;
                if (i11 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i11 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:44:0x008d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cb  */
    public final void l() {
        float f8;
        float f9;
        float f10;
        RectF rectF;
        float f11;
        float lineWidth;
        int i9;
        float f12;
        int i10;
        if (g()) {
            int width = this.f1386f.getWidth();
            int gravity = this.f1386f.getGravity();
            c cVar = this.f1420x0;
            boolean zC = cVar.c(cVar.B);
            cVar.D = zC;
            Rect rect = cVar.d;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & GravityCompat.END) == 8388613 || (gravity & 5) == 5) {
                    if (zC) {
                        i10 = rect.left;
                        f10 = i10;
                    } else {
                        f8 = rect.right;
                        f9 = cVar.f5245a0;
                    }
                } else if (zC) {
                    f8 = rect.right;
                    f9 = cVar.f5245a0;
                } else {
                    i10 = rect.left;
                    f10 = i10;
                }
                float fMax = Math.max(f10, rect.left);
                rectF = this.f1383c0;
                rectF.left = fMax;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f11 = (width / 2.0f) + (cVar.f5245a0 / 2.0f);
                } else if ((gravity & GravityCompat.END) == 8388613 || (gravity & 5) == 5) {
                    if (cVar.D) {
                        f12 = cVar.f5245a0;
                        f11 = f12 + fMax;
                    } else {
                        i9 = rect.right;
                        f11 = i9;
                    }
                } else if (cVar.D) {
                    i9 = rect.right;
                    f11 = i9;
                } else {
                    f12 = cVar.f5245a0;
                    f11 = f12 + fMax;
                }
                rectF.right = Math.min(f11, rect.right);
                rectF.bottom = cVar.f() + rect.top;
                if (cVar.Z != null && !cVar.o()) {
                    StaticLayout staticLayout = cVar.Z;
                    lineWidth = (cVar.f5257i / cVar.f5255h) * staticLayout.getLineWidth(staticLayout.getLineCount() - 1);
                    if (cVar.D) {
                        rectF.left = rectF.right - lineWidth;
                    } else {
                        rectF.right = rectF.left + lineWidth;
                    }
                }
                if (rectF.width() > 0.0f || rectF.height() <= 0.0f) {
                }
                float f13 = rectF.left;
                float f14 = this.P;
                rectF.left = f13 - f14;
                rectF.right += f14;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.S);
                rectF.top = 0.0f;
                e4.g gVar = (e4.g) this.H;
                gVar.getClass();
                gVar.y(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f8 = width / 2.0f;
            f9 = cVar.f5245a0 / 2.0f;
            f10 = f8 - f9;
            float fMax2 = Math.max(f10, rect.left);
            rectF = this.f1383c0;
            rectF.left = fMax2;
            rectF.top = rect.top;
            if (gravity != 17) {
                f11 = (width / 2.0f) + (cVar.f5245a0 / 2.0f);
            } else {
                f11 = (width / 2.0f) + (cVar.f5245a0 / 2.0f);
            }
            rectF.right = Math.min(f11, rect.right);
            rectF.bottom = cVar.f() + rect.top;
            if (cVar.Z != null) {
                StaticLayout staticLayout2 = cVar.Z;
                lineWidth = (cVar.f5257i / cVar.f5255h) * staticLayout2.getLineWidth(staticLayout2.getLineCount() - 1);
                if (cVar.D) {
                    rectF.left = rectF.right - lineWidth;
                } else {
                    rectF.right = rectF.left + lineWidth;
                }
            }
            if (rectF.width() > 0.0f) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(AppCompatTextView appCompatTextView, int i9) {
        try {
            TextViewCompat.setTextAppearance(appCompatTextView, i9);
            if (appCompatTextView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        TextViewCompat.setTextAppearance(appCompatTextView, R$style.TextAppearance_AppCompat_Caption);
        appCompatTextView.setTextColor(ContextCompat.getColor(getContext(), 2131034197));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean o() {
        t tVar = this.f1398l;
        return (tVar.f2106o != 1 || tVar.r == null || TextUtils.isEmpty(tVar.f2107p)) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1420x0.i(configuration);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int iMax;
        p pVar = this.d;
        pVar.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z8 = false;
        this.D0 = false;
        if (this.f1386f != null && this.f1386f.getMeasuredHeight() < (iMax = Math.max(pVar.getMeasuredHeight(), this.c.getMeasuredHeight()))) {
            this.f1386f.setMinimumHeight(iMax);
            z8 = true;
        }
        boolean zS = s();
        if (z8 || zS) {
            this.f1386f.post(new a4.g(27, this));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        float fDescent;
        int i13;
        int compoundPaddingTop;
        super.onLayout(z8, i9, i10, i11, i12);
        EditText editText = this.f1386f;
        if (editText != null) {
            Rect rect = this.f1380a0;
            s3.d.a(this, editText, rect);
            k kVar = this.L;
            if (kVar != null) {
                int i14 = rect.bottom;
                kVar.setBounds(rect.left, i14 - this.T, rect.right, i14);
            }
            k kVar2 = this.M;
            if (kVar2 != null) {
                int i15 = rect.bottom;
                kVar2.setBounds(rect.left, i15 - this.U, rect.right, i15);
            }
            if (this.E) {
                float textSize = this.f1386f.getTextSize();
                c cVar = this.f1420x0;
                float f8 = cVar.f5255h;
                TextPaint textPaint = cVar.P;
                if (f8 != textSize) {
                    cVar.f5255h = textSize;
                    cVar.j(false);
                }
                int gravity = this.f1386f.getGravity();
                int i16 = (gravity & (-113)) | 48;
                if (cVar.f5253g != i16) {
                    cVar.f5253g = i16;
                    cVar.j(false);
                }
                if (cVar.f5251f != gravity) {
                    cVar.f5251f = gravity;
                    cVar.j(false);
                }
                Rect rectD = d(rect);
                int i17 = rectD.left;
                int i18 = rectD.top;
                int i19 = rectD.right;
                int i20 = rectD.bottom;
                Rect rect2 = cVar.d;
                if (rect2.left != i17 || rect2.top != i18 || rect2.right != i19 || rect2.bottom != i20) {
                    rect2.set(i17, i18, i19, i20);
                    cVar.N = true;
                }
                if (this.f1386f == null) {
                    throw new IllegalStateException();
                }
                if (getHintMaxLines() == 1) {
                    textPaint.setTextSize(cVar.f5255h);
                    textPaint.setTypeface(cVar.f5271v);
                    textPaint.setLetterSpacing(cVar.X);
                    fDescent = -textPaint.ascent();
                } else {
                    textPaint.setTextSize(cVar.f5255h);
                    textPaint.setTypeface(cVar.f5271v);
                    textPaint.setLetterSpacing(cVar.X);
                    fDescent = cVar.f5263l * (textPaint.descent() + (-textPaint.ascent()));
                }
                int compoundPaddingLeft = this.f1386f.getCompoundPaddingLeft() + rect.left;
                Rect rect3 = this.f1382b0;
                rect3.left = compoundPaddingLeft;
                if (this.Q != 1 || this.f1386f.getMinLines() > 1) {
                    if (this.Q != 0 || getHintMaxLines() == 1) {
                        i13 = 0;
                    } else {
                        textPaint.setTextSize(cVar.f5255h);
                        textPaint.setTypeface(cVar.f5271v);
                        textPaint.setLetterSpacing(cVar.X);
                        i13 = (int) ((-textPaint.ascent()) / 2.0f);
                    }
                    compoundPaddingTop = (this.f1386f.getCompoundPaddingTop() + rect.top) - i13;
                } else {
                    compoundPaddingTop = (int) (rect.centerY() - (fDescent / 2.0f));
                }
                rect3.top = compoundPaddingTop;
                rect3.right = rect.right - this.f1386f.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.Q != 1 || this.f1386f.getMinLines() > 1) ? rect.bottom - this.f1386f.getCompoundPaddingBottom() : (int) (rect3.top + fDescent);
                rect3.bottom = compoundPaddingBottom;
                int i21 = rect3.left;
                int i22 = rect3.top;
                int i23 = rect3.right;
                Rect rect4 = cVar.c;
                if (rect4.left != i21 || rect4.top != i22 || rect4.right != i23 || rect4.bottom != compoundPaddingBottom || true != cVar.f5262k0) {
                    rect4.set(i21, i22, i23, compoundPaddingBottom);
                    cVar.N = true;
                    cVar.f5262k0 = true;
                }
                cVar.j(false);
                if (!g() || this.f1418w0) {
                    return;
                }
                l();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i9, int i10) {
        float f8;
        EditText editText;
        super.onMeasure(i9, i10);
        boolean z8 = this.D0;
        p pVar = this.d;
        if (!z8) {
            pVar.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.D0 = true;
        }
        if (this.f1416v != null && (editText = this.f1386f) != null) {
            this.f1416v.setGravity(editText.getGravity());
            this.f1416v.setPadding(this.f1386f.getCompoundPaddingLeft(), this.f1386f.getCompoundPaddingTop(), this.f1386f.getCompoundPaddingRight(), this.f1386f.getCompoundPaddingBottom());
        }
        pVar.m();
        if (getHintMaxLines() == 1) {
            return;
        }
        int measuredWidth = (this.f1386f.getMeasuredWidth() - this.f1386f.getCompoundPaddingLeft()) - this.f1386f.getCompoundPaddingRight();
        c cVar = this.f1420x0;
        TextPaint textPaint = cVar.P;
        textPaint.setTextSize(cVar.f5257i);
        textPaint.setTypeface(cVar.f5269s);
        textPaint.setLetterSpacing(cVar.W);
        float f9 = measuredWidth;
        cVar.f5258i0 = cVar.e(cVar.f5252f0, textPaint, cVar.B, (cVar.f5257i / cVar.f5255h) * f9, cVar.D).getHeight();
        textPaint.setTextSize(cVar.f5255h);
        textPaint.setTypeface(cVar.f5271v);
        textPaint.setLetterSpacing(cVar.X);
        cVar.f5260j0 = cVar.e(cVar.f5250e0, textPaint, cVar.B, f9, cVar.D).getHeight();
        EditText editText2 = this.f1386f;
        Rect rect = this.f1380a0;
        s3.d.a(this, editText2, rect);
        Rect rectD = d(rect);
        int i11 = rectD.left;
        int i12 = rectD.top;
        int i13 = rectD.right;
        int i14 = rectD.bottom;
        Rect rect2 = cVar.d;
        if (rect2.left != i11 || rect2.top != i12 || rect2.right != i13 || rect2.bottom != i14) {
            rect2.set(i11, i12, i13, i14);
            cVar.N = true;
        }
        v();
        a();
        if (this.f1386f == null) {
            return;
        }
        int i15 = cVar.f5260j0;
        if (i15 != -1) {
            f8 = i15;
        } else {
            TextPaint textPaint2 = cVar.P;
            textPaint2.setTextSize(cVar.f5255h);
            textPaint2.setTypeface(cVar.f5271v);
            textPaint2.setLetterSpacing(cVar.X);
            f8 = -textPaint2.ascent();
        }
        float f10 = 0.0f;
        if (this.t != null) {
            TextPaint textPaint3 = new TextPaint(129);
            textPaint3.set(this.f1416v.getPaint());
            textPaint3.setTextSize(this.f1416v.getTextSize());
            textPaint3.setTypeface(this.f1416v.getTypeface());
            textPaint3.setLetterSpacing(this.f1416v.getLetterSpacing());
            s3.h hVar = new s3.h(this.t, textPaint3, measuredWidth);
            hVar.f5287k = getLayoutDirection() == 1;
            hVar.f5286j = true;
            float lineSpacingExtra = this.f1416v.getLineSpacingExtra();
            float lineSpacingMultiplier = this.f1416v.getLineSpacingMultiplier();
            hVar.f5283g = lineSpacingExtra;
            hVar.f5284h = lineSpacingMultiplier;
            hVar.f5289m = new androidx.fragment.app.h(8, this);
            f10 = (this.Q == 1 ? cVar.f() + this.R + this.e : 0.0f) + hVar.a().getHeight();
        }
        float fMax = Math.max(f8, f10);
        if (this.f1386f.getMeasuredHeight() < fMax) {
            this.f1386f.setMinimumHeight(Math.round(fMax));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof c0)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c0 c0Var = (c0) parcelable;
        super.onRestoreInstanceState(c0Var.getSuperState());
        setError(c0Var.f2044b);
        if (c0Var.c) {
            post(new com.bumptech.glide.m(3, this));
        }
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i9) {
        super.onRtlPropertiesChanged(i9);
        boolean z8 = i9 == 1;
        if (z8 != this.O) {
            z3.d dVar = this.N.e;
            RectF rectF = this.f1383c0;
            float fA = dVar.a(rectF);
            float fA2 = this.N.f6260f.a(rectF);
            float fA3 = this.N.f6262h.a(rectF);
            float fA4 = this.N.f6261g.a(rectF);
            o oVar = this.N;
            a.a aVar = oVar.f6258a;
            a.a aVar2 = oVar.f6259b;
            a.a aVar3 = oVar.d;
            a.a aVar4 = oVar.c;
            f fVar = new f(0);
            f fVar2 = new f(0);
            f fVar3 = new f(0);
            f fVar4 = new f(0);
            z3.a aVar5 = new z3.a(fA2);
            z3.a aVar6 = new z3.a(fA);
            z3.a aVar7 = new z3.a(fA4);
            z3.a aVar8 = new z3.a(fA3);
            o oVar2 = new o();
            oVar2.f6258a = aVar2;
            oVar2.f6259b = aVar;
            oVar2.c = aVar3;
            oVar2.d = aVar4;
            oVar2.e = aVar5;
            oVar2.f6260f = aVar6;
            oVar2.f6261g = aVar8;
            oVar2.f6262h = aVar7;
            oVar2.f6263i = fVar;
            oVar2.f6264j = fVar2;
            oVar2.f6265k = fVar3;
            oVar2.f6266l = fVar4;
            this.O = z8;
            setShapeAppearanceModel(oVar2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        c0 c0Var = new c0(super.onSaveInstanceState());
        if (o()) {
            c0Var.f2044b = getError();
        }
        p pVar = this.d;
        c0Var.c = pVar.f2079j != 0 && pVar.f2077h.f1312b;
        return c0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void p(Editable editable) {
        ((g) this.f1406p).getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z8 = this.f1404o;
        int i9 = this.f1402n;
        if (i9 == -1) {
            this.f1408q.setText(String.valueOf(length));
            this.f1408q.setContentDescription(null);
            this.f1404o = false;
        } else {
            this.f1404o = length > i9;
            Context context = getContext();
            this.f1408q.setContentDescription(context.getString(this.f1404o ? 2131951903 : 2131951902, Integer.valueOf(length), Integer.valueOf(this.f1402n)));
            if (z8 != this.f1404o) {
                q();
            }
            this.f1408q.setText(BidiFormatter.getInstance().unicodeWrap(getContext().getString(2131951904, Integer.valueOf(length), Integer.valueOf(this.f1402n))));
        }
        if (this.f1386f == null || z8 == this.f1404o) {
            return;
        }
        w(false, false);
        z();
        t();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void q() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.f1408q;
        if (appCompatTextView != null) {
            n(appCompatTextView, this.f1404o ? this.r : this.f1411s);
            if (!this.f1404o && (colorStateList2 = this.A) != null) {
                this.f1408q.setTextColor(colorStateList2);
            }
            if (!this.f1404o || (colorStateList = this.B) == null) {
                return;
            }
            this.f1408q.setTextColor(colorStateList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    public final void r() {
        ColorStateList colorStateList;
        ColorStateList colorStateListValueOf = this.C;
        if (colorStateListValueOf == null) {
            Context context = getContext();
            TypedValue typedValueA = b.a(androidx.appcompat.R$attr.colorControlActivated, context);
            if (typedValueA != null) {
                int i9 = typedValueA.resourceId;
                if (i9 != 0) {
                    colorStateListValueOf = ContextCompat.getColorStateList(context, i9);
                } else {
                    int i10 = typedValueA.data;
                    if (i10 != 0) {
                        colorStateListValueOf = ColorStateList.valueOf(i10);
                    } else {
                        colorStateListValueOf = null;
                    }
                }
            } else {
                colorStateListValueOf = null;
            }
        }
        EditText editText = this.f1386f;
        if (editText == null || androidx.transition.d.e(editText) == null) {
            return;
        }
        Drawable drawableMutate = DrawableCompat.wrap(androidx.transition.d.e(this.f1386f)).mutate();
        if ((o() || (this.f1408q != null && this.f1404o)) && (colorStateList = this.D) != null) {
            colorStateListValueOf = colorStateList;
        }
        drawableMutate.setTintList(colorStateListValueOf);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:21:0x005f  */
    /* JADX WARN: Code duplicated, block: B:23:0x0063  */
    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    public final boolean s() {
        boolean z8;
        if (this.f1386f == null) {
            return false;
        }
        CheckableImageButton checkableImageButton = null;
        boolean z9 = true;
        if (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) {
            y yVar = this.c;
            if (yVar.getMeasuredWidth() > 0) {
                int measuredWidth = yVar.getMeasuredWidth() - this.f1386f.getPaddingLeft();
                if (this.f1385e0 == null || this.f1387f0 != measuredWidth) {
                    ColorDrawable colorDrawable = new ColorDrawable();
                    this.f1385e0 = colorDrawable;
                    this.f1387f0 = measuredWidth;
                    colorDrawable.setBounds(0, 0, measuredWidth, 1);
                }
                Drawable[] compoundDrawablesRelative = this.f1386f.getCompoundDrawablesRelative();
                Drawable drawable = compoundDrawablesRelative[0];
                ColorDrawable colorDrawable2 = this.f1385e0;
                if (drawable != colorDrawable2) {
                    this.f1386f.setCompoundDrawablesRelative(colorDrawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                    z8 = true;
                } else {
                    z8 = false;
                }
            } else if (this.f1385e0 != null) {
                Drawable[] compoundDrawablesRelative2 = this.f1386f.getCompoundDrawablesRelative();
                this.f1386f.setCompoundDrawablesRelative(null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.f1385e0 = null;
                z8 = true;
            } else {
                z8 = false;
            }
        } else if (this.f1385e0 != null) {
            Drawable[] compoundDrawablesRelative3 = this.f1386f.getCompoundDrawablesRelative();
            this.f1386f.setCompoundDrawablesRelative(null, compoundDrawablesRelative3[1], compoundDrawablesRelative3[2], compoundDrawablesRelative3[3]);
            this.f1385e0 = null;
            z8 = true;
        } else {
            z8 = false;
        }
        p pVar = this.d;
        if ((pVar.e() || ((pVar.f2079j != 0 && pVar.d()) || pVar.f2086q != null)) && pVar.getMeasuredWidth() > 0) {
            int measuredWidth2 = pVar.r.getMeasuredWidth() - this.f1386f.getPaddingRight();
            if (pVar.e()) {
                checkableImageButton = pVar.d;
            } else if (pVar.f2079j != 0 && pVar.d()) {
                checkableImageButton = pVar.f2077h;
            }
            if (checkableImageButton != null) {
                measuredWidth2 = ((ViewGroup$MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth() + measuredWidth2;
            }
            Drawable[] compoundDrawablesRelative4 = this.f1386f.getCompoundDrawablesRelative();
            ColorDrawable colorDrawable3 = this.f1391h0;
            if (colorDrawable3 != null && this.f1393i0 != measuredWidth2) {
                this.f1393i0 = measuredWidth2;
                colorDrawable3.setBounds(0, 0, measuredWidth2, 1);
                this.f1386f.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.f1391h0, compoundDrawablesRelative4[3]);
                return true;
            }
            if (colorDrawable3 == null) {
                ColorDrawable colorDrawable4 = new ColorDrawable();
                this.f1391h0 = colorDrawable4;
                this.f1393i0 = measuredWidth2;
                colorDrawable4.setBounds(0, 0, measuredWidth2, 1);
            }
            Drawable drawable2 = compoundDrawablesRelative4[2];
            ColorDrawable colorDrawable5 = this.f1391h0;
            if (drawable2 != colorDrawable5) {
                this.f1395j0 = drawable2;
                this.f1386f.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], colorDrawable5, compoundDrawablesRelative4[3]);
                return true;
            }
        } else if (this.f1391h0 != null) {
            Drawable[] compoundDrawablesRelative5 = this.f1386f.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative5[2] == this.f1391h0) {
                this.f1386f.setCompoundDrawablesRelative(compoundDrawablesRelative5[0], compoundDrawablesRelative5[1], this.f1395j0, compoundDrawablesRelative5[3]);
            } else {
                z9 = z8;
            }
            this.f1391h0 = null;
            return z9;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxBackgroundColor(@ColorInt int i9) {
        if (this.W != i9) {
            this.W = i9;
            this.f1409q0 = i9;
            this.f1412s0 = i9;
            this.f1413t0 = i9;
            c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxBackgroundColorResource(@ColorRes int i9) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f1409q0 = defaultColor;
        this.W = defaultColor;
        this.f1410r0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f1412s0 = colorStateList.getColorForState(new int[]{R$attr.state_focused, R$attr.state_enabled}, -1);
        this.f1413t0 = colorStateList.getColorForState(new int[]{R$attr.state_hovered, R$attr.state_enabled}, -1);
        c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxBackgroundMode(int i9) {
        if (i9 == this.Q) {
            return;
        }
        this.Q = i9;
        if (this.f1386f != null) {
            k();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxCollapsedPaddingTop(int i9) {
        this.R = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxCornerFamily(int i9) {
        n nVarG = this.N.g();
        z3.d dVar = this.N.e;
        nVarG.f6248a = u.e(i9);
        nVarG.e = dVar;
        z3.d dVar2 = this.N.f6260f;
        nVarG.f6249b = u.e(i9);
        nVarG.f6250f = dVar2;
        z3.d dVar3 = this.N.f6262h;
        nVarG.d = u.e(i9);
        nVarG.f6252h = dVar3;
        z3.d dVar4 = this.N.f6261g;
        nVarG.c = u.e(i9);
        nVarG.f6251g = dVar4;
        this.N = nVarG.a();
        c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxStrokeColor(@ColorInt int i9) {
        if (this.f1405o0 != i9) {
            this.f1405o0 = i9;
            z();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f1401m0 = colorStateList.getDefaultColor();
            this.f1415u0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f1403n0 = colorStateList.getColorForState(new int[]{R$attr.state_hovered, R$attr.state_enabled}, -1);
            this.f1405o0 = colorStateList.getColorForState(new int[]{R$attr.state_focused, R$attr.state_enabled}, -1);
        } else if (this.f1405o0 != colorStateList.getDefaultColor()) {
            this.f1405o0 = colorStateList.getDefaultColor();
        }
        z();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.f1407p0 != colorStateList) {
            this.f1407p0 = colorStateList;
            z();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxStrokeWidth(int i9) {
        this.T = i9;
        z();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxStrokeWidthFocused(int i9) {
        this.U = i9;
        z();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxStrokeWidthFocusedResource(@DimenRes int i9) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBoxStrokeWidthResource(@DimenRes int i9) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCounterEnabled(boolean z8) {
        if (this.f1400m != z8) {
            t tVar = this.f1398l;
            if (z8) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f1408q = appCompatTextView;
                appCompatTextView.setId(2131297644);
                Typeface typeface = this.f1384d0;
                if (typeface != null) {
                    this.f1408q.setTypeface(typeface);
                }
                this.f1408q.setMaxLines(1);
                tVar.a(this.f1408q, 2);
                ((ViewGroup$MarginLayoutParams) this.f1408q.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(2131100652));
                q();
                if (this.f1408q != null) {
                    EditText editText = this.f1386f;
                    p(editText != null ? editText.getText() : null);
                }
            } else {
                tVar.g(this.f1408q, 2);
                this.f1408q = null;
            }
            this.f1400m = z8;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCounterMaxLength(int i9) {
        if (this.f1402n != i9) {
            if (i9 > 0) {
                this.f1402n = i9;
            } else {
                this.f1402n = -1;
            }
            if (!this.f1400m || this.f1408q == null) {
                return;
            }
            EditText editText = this.f1386f;
            p(editText == null ? null : editText.getText());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCounterOverflowTextAppearance(int i9) {
        if (this.r != i9) {
            this.r = i9;
            q();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            q();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCounterTextAppearance(int i9) {
        if (this.f1411s != i9) {
            this.f1411s = i9;
            q();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            q();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
    public void setCursorColor(@Nullable ColorStateList colorStateList) {
        if (this.C != colorStateList) {
            this.C = colorStateList;
            r();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
    public void setCursorErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            if (o() || (this.f1408q != null && this.f1404o)) {
                r();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.f1397k0 = colorStateList;
        this.f1399l0 = colorStateList;
        if (this.f1386f != null) {
            w(false, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setEnabled(boolean z8) {
        m(this, z8);
        super.setEnabled(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconActivated(boolean z8) {
        this.d.f2077h.setActivated(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconCheckable(boolean z8) {
        this.d.f2077h.setCheckable(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconContentDescription(@StringRes int i9) {
        p pVar = this.d;
        CharSequence text = i9 != 0 ? pVar.getResources().getText(i9) : null;
        CheckableImageButton checkableImageButton = pVar.f2077h;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconDrawable(@DrawableRes int i9) {
        p pVar = this.d;
        Drawable drawable = i9 != 0 ? AppCompatResources.getDrawable(pVar.getContext(), i9) : null;
        TextInputLayout textInputLayout = pVar.f2074b;
        CheckableImageButton checkableImageButton = pVar.f2077h;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            y5.k.b(textInputLayout, checkableImageButton, pVar.f2081l, pVar.f2082m);
            y5.k.o(textInputLayout, checkableImageButton, pVar.f2081l);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconMinSize(@IntRange(from = ULong.MIN_VALUE) int i9) {
        p pVar = this.d;
        if (i9 < 0) {
            pVar.getClass();
            i.k("endIconSize cannot be less than 0");
        } else if (i9 != pVar.f2083n) {
            pVar.f2083n = i9;
            CheckableImageButton checkableImageButton = pVar.f2077h;
            checkableImageButton.setMinimumWidth(i9);
            checkableImageButton.setMinimumHeight(i9);
            CheckableImageButton checkableImageButton2 = pVar.d;
            checkableImageButton2.setMinimumWidth(i9);
            checkableImageButton2.setMinimumHeight(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconMode(int i9) {
        this.d.g(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconOnClickListener(@Nullable View$OnClickListener view$OnClickListener) {
        p pVar = this.d;
        CheckableImageButton checkableImageButton = pVar.f2077h;
        View$OnLongClickListener view$OnLongClickListener = pVar.f2085p;
        checkableImageButton.setOnClickListener(view$OnClickListener);
        y5.k.s(checkableImageButton, view$OnLongClickListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconOnLongClickListener(@Nullable View$OnLongClickListener view$OnLongClickListener) {
        p pVar = this.d;
        pVar.f2085p = view$OnLongClickListener;
        CheckableImageButton checkableImageButton = pVar.f2077h;
        checkableImageButton.setOnLongClickListener(view$OnLongClickListener);
        y5.k.s(checkableImageButton, view$OnLongClickListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconScaleType(@NonNull ImageView$ScaleType imageView$ScaleType) {
        p pVar = this.d;
        pVar.f2084o = imageView$ScaleType;
        pVar.f2077h.setScaleType(imageView$ScaleType);
        pVar.d.setScaleType(imageView$ScaleType);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        p pVar = this.d;
        if (pVar.f2081l != colorStateList) {
            pVar.f2081l = colorStateList;
            y5.k.b(pVar.f2074b, pVar.f2077h, colorStateList, pVar.f2082m);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        p pVar = this.d;
        if (pVar.f2082m != porterDuff$Mode) {
            pVar.f2082m = porterDuff$Mode;
            y5.k.b(pVar.f2074b, pVar.f2077h, pVar.f2081l, porterDuff$Mode);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndIconVisible(boolean z8) {
        this.d.h(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setError(@Nullable CharSequence charSequence) {
        t tVar = this.f1398l;
        if (!tVar.f2108q) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            tVar.f();
            return;
        }
        tVar.c();
        tVar.f2107p = charSequence;
        tVar.r.setText(charSequence);
        int i9 = tVar.f2105n;
        if (i9 != 1) {
            tVar.f2106o = 1;
        }
        tVar.i(i9, tVar.f2106o, tVar.h(tVar.r, charSequence));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorAccessibilityLiveRegion(int i9) {
        t tVar = this.f1398l;
        tVar.t = i9;
        AppCompatTextView appCompatTextView = tVar.r;
        if (appCompatTextView != null) {
            appCompatTextView.setAccessibilityLiveRegion(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        t tVar = this.f1398l;
        tVar.f2109s = charSequence;
        AppCompatTextView appCompatTextView = tVar.r;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorEnabled(boolean z8) {
        t tVar = this.f1398l;
        TextInputLayout textInputLayout = tVar.f2099h;
        if (tVar.f2108q == z8) {
            return;
        }
        tVar.c();
        if (z8) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(tVar.f2098g);
            tVar.r = appCompatTextView;
            appCompatTextView.setId(2131297645);
            tVar.r.setTextAlignment(5);
            Typeface typeface = tVar.B;
            if (typeface != null) {
                tVar.r.setTypeface(typeface);
            }
            int i9 = tVar.f2110u;
            tVar.f2110u = i9;
            AppCompatTextView appCompatTextView2 = tVar.r;
            if (appCompatTextView2 != null) {
                tVar.f2099h.n(appCompatTextView2, i9);
            }
            ColorStateList colorStateList = tVar.f2111v;
            tVar.f2111v = colorStateList;
            AppCompatTextView appCompatTextView3 = tVar.r;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = tVar.f2109s;
            tVar.f2109s = charSequence;
            AppCompatTextView appCompatTextView4 = tVar.r;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            int i10 = tVar.t;
            tVar.t = i10;
            AppCompatTextView appCompatTextView5 = tVar.r;
            if (appCompatTextView5 != null) {
                appCompatTextView5.setAccessibilityLiveRegion(i10);
            }
            tVar.r.setVisibility(4);
            tVar.a(tVar.r, 0);
        } else {
            tVar.f();
            tVar.g(tVar.r, 0);
            tVar.r = null;
            textInputLayout.t();
            textInputLayout.z();
        }
        tVar.f2108q = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorIconDrawable(@DrawableRes int i9) {
        p pVar = this.d;
        pVar.i(i9 != 0 ? AppCompatResources.getDrawable(pVar.getContext(), i9) : null);
        y5.k.o(pVar.f2074b, pVar.d, pVar.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorIconOnClickListener(@Nullable View$OnClickListener view$OnClickListener) {
        p pVar = this.d;
        CheckableImageButton checkableImageButton = pVar.d;
        View$OnLongClickListener view$OnLongClickListener = pVar.f2076g;
        checkableImageButton.setOnClickListener(view$OnClickListener);
        y5.k.s(checkableImageButton, view$OnLongClickListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorIconOnLongClickListener(@Nullable View$OnLongClickListener view$OnLongClickListener) {
        p pVar = this.d;
        pVar.f2076g = view$OnLongClickListener;
        CheckableImageButton checkableImageButton = pVar.d;
        checkableImageButton.setOnLongClickListener(view$OnLongClickListener);
        y5.k.s(checkableImageButton, view$OnLongClickListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        p pVar = this.d;
        if (pVar.e != colorStateList) {
            pVar.e = colorStateList;
            y5.k.b(pVar.f2074b, pVar.d, colorStateList, pVar.f2075f);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorIconTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        p pVar = this.d;
        if (pVar.f2075f != porterDuff$Mode) {
            pVar.f2075f = porterDuff$Mode;
            y5.k.b(pVar.f2074b, pVar.d, pVar.e, porterDuff$Mode);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorTextAppearance(@StyleRes int i9) {
        t tVar = this.f1398l;
        tVar.f2110u = i9;
        AppCompatTextView appCompatTextView = tVar.r;
        if (appCompatTextView != null) {
            tVar.f2099h.n(appCompatTextView, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        t tVar = this.f1398l;
        tVar.f2111v = colorStateList;
        AppCompatTextView appCompatTextView = tVar.r;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setExpandedHintEnabled(boolean z8) {
        if (this.f1422y0 != z8) {
            this.f1422y0 = z8;
            w(false, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHelperText(@Nullable CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        t tVar = this.f1398l;
        if (zIsEmpty) {
            if (tVar.f2112x) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!tVar.f2112x) {
            setHelperTextEnabled(true);
        }
        tVar.c();
        tVar.w = charSequence;
        tVar.f2113y.setText(charSequence);
        int i9 = tVar.f2105n;
        if (i9 != 2) {
            tVar.f2106o = 2;
        }
        tVar.i(i9, tVar.f2106o, tVar.h(tVar.f2113y, charSequence));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        t tVar = this.f1398l;
        tVar.A = colorStateList;
        AppCompatTextView appCompatTextView = tVar.f2113y;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHelperTextEnabled(boolean z8) {
        t tVar = this.f1398l;
        TextInputLayout textInputLayout = tVar.f2099h;
        if (tVar.f2112x == z8) {
            return;
        }
        tVar.c();
        if (z8) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(tVar.f2098g);
            tVar.f2113y = appCompatTextView;
            appCompatTextView.setId(2131297646);
            tVar.f2113y.setTextAlignment(5);
            Typeface typeface = tVar.B;
            if (typeface != null) {
                tVar.f2113y.setTypeface(typeface);
            }
            tVar.f2113y.setVisibility(4);
            tVar.f2113y.setAccessibilityLiveRegion(1);
            int i9 = tVar.f2114z;
            tVar.f2114z = i9;
            AppCompatTextView appCompatTextView2 = tVar.f2113y;
            if (appCompatTextView2 != null) {
                TextViewCompat.setTextAppearance(appCompatTextView2, i9);
            }
            ColorStateList colorStateList = tVar.A;
            tVar.A = colorStateList;
            AppCompatTextView appCompatTextView3 = tVar.f2113y;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            tVar.a(tVar.f2113y, 1);
            tVar.f2113y.setAccessibilityDelegate(new s(tVar));
        } else {
            tVar.c();
            int i10 = tVar.f2105n;
            if (i10 == 2) {
                tVar.f2106o = 0;
            }
            tVar.i(i10, tVar.f2106o, tVar.h(tVar.f2113y, ""));
            tVar.g(tVar.f2113y, 1);
            tVar.f2113y = null;
            textInputLayout.t();
            textInputLayout.z();
        }
        tVar.f2112x = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHelperTextTextAppearance(@StyleRes int i9) {
        t tVar = this.f1398l;
        tVar.f2114z = i9;
        AppCompatTextView appCompatTextView = tVar.f2113y;
        if (appCompatTextView != null) {
            TextViewCompat.setTextAppearance(appCompatTextView, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHint(@StringRes int i9) {
        setHint(i9 != 0 ? getResources().getText(i9) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHintAnimationEnabled(boolean z8) {
        this.f1424z0 = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHintEnabled(boolean z8) {
        if (z8 != this.E) {
            this.E = z8;
            if (z8) {
                CharSequence hint = this.f1386f.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.F)) {
                        setHint(hint);
                    }
                    this.f1386f.setHint((CharSequence) null);
                }
                this.G = true;
            } else {
                this.G = false;
                if (!TextUtils.isEmpty(this.F) && TextUtils.isEmpty(this.f1386f.getHint())) {
                    this.f1386f.setHint(this.F);
                }
                setHintInternal(null);
            }
            if (this.f1386f != null) {
                v();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHintMaxLines(int i9) {
        c cVar = this.f1420x0;
        if (i9 != cVar.f5252f0) {
            cVar.f5252f0 = i9;
            cVar.j(false);
        }
        if (i9 != cVar.f5250e0) {
            cVar.f5250e0 = i9;
            cVar.j(false);
        }
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHintTextAppearance(@StyleRes int i9) {
        c cVar = this.f1420x0;
        TextInputLayout textInputLayout = cVar.f5244a;
        w3.f fVar = new w3.f(textInputLayout.getContext(), i9);
        ColorStateList colorStateList = fVar.f5904k;
        if (colorStateList != null) {
            cVar.f5261k = colorStateList;
        }
        float f8 = fVar.f5905l;
        if (f8 != 0.0f) {
            cVar.f5257i = f8;
        }
        ColorStateList colorStateList2 = fVar.f5897a;
        if (colorStateList2 != null) {
            cVar.V = colorStateList2;
        }
        cVar.T = fVar.f5899f;
        cVar.U = fVar.f5900g;
        cVar.S = fVar.f5901h;
        cVar.W = fVar.f5903j;
        w3.a aVar = cVar.f5274z;
        if (aVar != null) {
            aVar.c = true;
        }
        n.p pVar = new n.p(10, cVar);
        fVar.a();
        cVar.f5274z = new w3.a(pVar, fVar.f5909p);
        fVar.b(textInputLayout.getContext(), cVar.f5274z);
        cVar.j(false);
        this.f1399l0 = cVar.f5261k;
        if (this.f1386f != null) {
            w(false, false);
            v();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f1399l0 != colorStateList) {
            if (this.f1397k0 == null) {
                c cVar = this.f1420x0;
                if (cVar.f5261k != colorStateList) {
                    cVar.f5261k = colorStateList;
                    cVar.j(false);
                }
            }
            this.f1399l0 = colorStateList;
            if (this.f1386f != null) {
                w(false, false);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLengthCounter(@NonNull b0 b0Var) {
        this.f1406p = b0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxEms(int i9) {
        this.f1392i = i9;
        EditText editText = this.f1386f;
        if (editText == null || i9 == -1) {
            return;
        }
        editText.setMaxEms(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxWidth(@Px int i9) {
        this.f1396k = i9;
        EditText editText = this.f1386f;
        if (editText == null || i9 == -1) {
            return;
        }
        editText.setMaxWidth(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxWidthResource(@DimenRes int i9) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMinEms(int i9) {
        this.f1390h = i9;
        EditText editText = this.f1386f;
        if (editText == null || i9 == -1) {
            return;
        }
        editText.setMinEms(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMinWidth(@Px int i9) {
        this.f1394j = i9;
        EditText editText = this.f1386f;
        if (editText == null || i9 == -1) {
            return;
        }
        editText.setMinWidth(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMinWidthResource(@DimenRes int i9) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i9) {
        p pVar = this.d;
        pVar.f2077h.setContentDescription(i9 != 0 ? pVar.getResources().getText(i9) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i9) {
        p pVar = this.d;
        pVar.f2077h.setImageDrawable(i9 != 0 ? AppCompatResources.getDrawable(pVar.getContext(), i9) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z8) {
        p pVar = this.d;
        if (z8 && pVar.f2079j != 1) {
            pVar.g(1);
        } else if (z8) {
            pVar.getClass();
        } else {
            pVar.g(0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        p pVar = this.d;
        pVar.f2081l = colorStateList;
        y5.k.b(pVar.f2074b, pVar.f2077h, colorStateList, pVar.f2082m);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        p pVar = this.d;
        pVar.f2082m = porterDuff$Mode;
        y5.k.b(pVar.f2074b, pVar.f2077h, pVar.f2081l, porterDuff$Mode);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.f1416v == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f1416v = appCompatTextView;
            appCompatTextView.setId(2131297647);
            this.f1416v.setImportantForAccessibility(1);
            this.f1416v.setAccessibilityLiveRegion(1);
            Fade fadeF = f();
            this.f1421y = fadeF;
            fadeF.setStartDelay(67L);
            this.f1423z = f();
            setPlaceholderTextAppearance(this.f1419x);
            setPlaceholderTextColor(this.w);
            ViewCompat.setAccessibilityDelegate(this.f1416v, new com.google.android.material.datepicker.g(3));
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f1414u) {
                setPlaceholderTextEnabled(true);
            }
            this.t = charSequence;
        }
        EditText editText = this.f1386f;
        x(editText == null ? null : editText.getText());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPlaceholderTextAppearance(@StyleRes int i9) {
        this.f1419x = i9;
        AppCompatTextView appCompatTextView = this.f1416v;
        if (appCompatTextView != null) {
            TextViewCompat.setTextAppearance(appCompatTextView, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.w != colorStateList) {
            this.w = colorStateList;
            AppCompatTextView appCompatTextView = this.f1416v;
            if (appCompatTextView == null || colorStateList == null) {
                return;
            }
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPrefixText(@Nullable CharSequence charSequence) {
        y yVar = this.c;
        yVar.getClass();
        yVar.d = TextUtils.isEmpty(charSequence) ? null : charSequence;
        yVar.c.setText(charSequence);
        yVar.e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPrefixTextAppearance(@StyleRes int i9) {
        TextViewCompat.setTextAppearance(this.c.c, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.c.c.setTextColor(colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShapeAppearanceModel(@NonNull o oVar) {
        k kVar = this.H;
        if (kVar == null || kVar.c.f6213a == oVar) {
            return;
        }
        this.N = oVar;
        c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartIconCheckable(boolean z8) {
        this.c.e.setCheckable(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartIconContentDescription(@StringRes int i9) {
        setStartIconContentDescription(i9 != 0 ? getResources().getText(i9) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartIconDrawable(@DrawableRes int i9) {
        setStartIconDrawable(i9 != 0 ? AppCompatResources.getDrawable(getContext(), i9) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartIconMinSize(@IntRange(from = ULong.MIN_VALUE) int i9) {
        y yVar = this.c;
        if (i9 < 0) {
            yVar.getClass();
            i.k("startIconSize cannot be less than 0");
        } else if (i9 != yVar.f2127h) {
            yVar.f2127h = i9;
            CheckableImageButton checkableImageButton = yVar.e;
            checkableImageButton.setMinimumWidth(i9);
            checkableImageButton.setMinimumHeight(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartIconOnClickListener(@Nullable View$OnClickListener view$OnClickListener) {
        y yVar = this.c;
        CheckableImageButton checkableImageButton = yVar.e;
        View$OnLongClickListener view$OnLongClickListener = yVar.f2129j;
        checkableImageButton.setOnClickListener(view$OnClickListener);
        y5.k.s(checkableImageButton, view$OnLongClickListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartIconOnLongClickListener(@Nullable View$OnLongClickListener view$OnLongClickListener) {
        y yVar = this.c;
        yVar.f2129j = view$OnLongClickListener;
        CheckableImageButton checkableImageButton = yVar.e;
        checkableImageButton.setOnLongClickListener(view$OnLongClickListener);
        y5.k.s(checkableImageButton, view$OnLongClickListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartIconScaleType(@NonNull ImageView$ScaleType imageView$ScaleType) {
        y yVar = this.c;
        yVar.f2128i = imageView$ScaleType;
        yVar.e.setScaleType(imageView$ScaleType);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        y yVar = this.c;
        if (yVar.f2125f != colorStateList) {
            yVar.f2125f = colorStateList;
            y5.k.b(yVar.f2124b, yVar.e, colorStateList, yVar.f2126g);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartIconTintMode(@Nullable PorterDuff$Mode porterDuff$Mode) {
        y yVar = this.c;
        if (yVar.f2126g != porterDuff$Mode) {
            yVar.f2126g = porterDuff$Mode;
            y5.k.b(yVar.f2124b, yVar.e, yVar.f2125f, porterDuff$Mode);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartIconVisible(boolean z8) {
        this.c.c(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSuffixText(@Nullable CharSequence charSequence) {
        p pVar = this.d;
        pVar.getClass();
        pVar.f2086q = TextUtils.isEmpty(charSequence) ? null : charSequence;
        pVar.r.setText(charSequence);
        pVar.n();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSuffixTextAppearance(@StyleRes int i9) {
        TextViewCompat.setTextAppearance(this.d.r, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.d.r.setTextColor(colorStateList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextInputAccessibilityDelegate(@Nullable a0 a0Var) {
        EditText editText = this.f1386f;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, a0Var);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.f1384d0) {
            this.f1384d0 = typeface;
            this.f1420x0.n(typeface);
            t tVar = this.f1398l;
            if (typeface != tVar.B) {
                tVar.B = typeface;
                AppCompatTextView appCompatTextView = tVar.r;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = tVar.f2113y;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.f1408q;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.f1386f;
        if (editText == null || this.Q != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        if (o()) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(getErrorCurrentTextColors(), PorterDuff$Mode.SRC_IN));
        } else if (this.f1404o && (appCompatTextView = this.f1408q) != null) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(appCompatTextView.getCurrentTextColor(), PorterDuff$Mode.SRC_IN));
        } else {
            DrawableCompat.clearColorFilter(background);
            this.f1386f.refreshDrawableState();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u() {
        EditText editText = this.f1386f;
        if (editText == null || this.H == null) {
            return;
        }
        if ((this.K || editText.getBackground() == null) && this.Q != 0) {
            this.f1386f.setBackground(getEditTextBoxBackground());
            this.K = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        if (this.Q != 1) {
            FrameLayout frameLayout = this.f1381b;
            LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams) frameLayout.getLayoutParams();
            int iE = e();
            if (iE != linearLayout$LayoutParams.topMargin) {
                linearLayout$LayoutParams.topMargin = iE;
                frameLayout.requestLayout();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void w(boolean z8, boolean z9) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f1386f;
        boolean z10 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f1386f;
        boolean z11 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.f1397k0;
        c cVar = this.f1420x0;
        if (colorStateList2 != null) {
            cVar.k(colorStateList2);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.f1397k0;
            int colorForState = this.f1415u0;
            if (colorStateList3 != null) {
                colorForState = colorStateList3.getColorForState(new int[]{-16842910}, colorForState);
            }
            cVar.k(ColorStateList.valueOf(colorForState));
        } else if (o()) {
            AppCompatTextView appCompatTextView2 = this.f1398l.r;
            cVar.k(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.f1404o && (appCompatTextView = this.f1408q) != null) {
            cVar.k(appCompatTextView.getTextColors());
        } else if (z11 && (colorStateList = this.f1399l0) != null && cVar.f5261k != colorStateList) {
            cVar.f5261k = colorStateList;
            cVar.j(false);
        }
        p pVar = this.d;
        y yVar = this.c;
        if (z10 || !this.f1422y0 || (isEnabled() && z11)) {
            if (z9 || this.f1418w0) {
                ValueAnimator valueAnimator = this.A0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.A0.cancel();
                }
                if (z8 && this.f1424z0) {
                    b(1.0f);
                } else {
                    cVar.m(1.0f);
                }
                this.f1418w0 = false;
                if (g()) {
                    l();
                }
                EditText editText3 = this.f1386f;
                x(editText3 != null ? editText3.getText() : null);
                yVar.f2130k = false;
                yVar.e();
                pVar.f2087s = false;
                pVar.n();
                return;
            }
            return;
        }
        if (z9 || !this.f1418w0) {
            ValueAnimator valueAnimator2 = this.A0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.A0.cancel();
            }
            if (z8 && this.f1424z0) {
                b(0.0f);
            } else {
                cVar.m(0.0f);
            }
            if (g() && !((e4.g) this.H).I.r.isEmpty() && g()) {
                ((e4.g) this.H).y(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f1418w0 = true;
            AppCompatTextView appCompatTextView3 = this.f1416v;
            if (appCompatTextView3 != null && this.f1414u) {
                appCompatTextView3.setText((CharSequence) null);
                TransitionManager.beginDelayedTransition(this.f1381b, this.f1423z);
                this.f1416v.setVisibility(4);
            }
            yVar.f2130k = true;
            yVar.e();
            pVar.f2087s = true;
            pVar.n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void x(Editable editable) {
        ((g) this.f1406p).getClass();
        int length = editable != null ? editable.length() : 0;
        FrameLayout frameLayout = this.f1381b;
        if (length != 0 || this.f1418w0) {
            AppCompatTextView appCompatTextView = this.f1416v;
            if (appCompatTextView == null || !this.f1414u) {
                return;
            }
            appCompatTextView.setText((CharSequence) null);
            TransitionManager.beginDelayedTransition(frameLayout, this.f1423z);
            this.f1416v.setVisibility(4);
            return;
        }
        if (this.f1416v == null || !this.f1414u || TextUtils.isEmpty(this.t)) {
            return;
        }
        this.f1416v.setText(this.t);
        TransitionManager.beginDelayedTransition(frameLayout, this.f1421y);
        this.f1416v.setVisibility(0);
        this.f1416v.bringToFront();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(boolean z8, boolean z9) {
        int defaultColor = this.f1407p0.getDefaultColor();
        int colorForState = this.f1407p0.getColorForState(new int[]{R$attr.state_hovered, R$attr.state_enabled}, defaultColor);
        int colorForState2 = this.f1407p0.getColorForState(new int[]{R$attr.state_activated, R$attr.state_enabled}, defaultColor);
        if (z8) {
            this.V = colorForState2;
        } else if (z9) {
            this.V = colorForState;
        } else {
            this.V = defaultColor;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void z() {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.H == null || this.Q == 0) {
            return;
        }
        boolean z8 = false;
        boolean z9 = isFocused() || ((editText2 = this.f1386f) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f1386f) != null && editText.isHovered())) {
            z8 = true;
        }
        if (!isEnabled()) {
            this.V = this.f1415u0;
        } else if (o()) {
            if (this.f1407p0 != null) {
                y(z9, z8);
            } else {
                this.V = getErrorCurrentTextColors();
            }
        } else if (!this.f1404o || (appCompatTextView = this.f1408q) == null) {
            if (z9) {
                this.V = this.f1405o0;
            } else if (z8) {
                this.V = this.f1403n0;
            } else {
                this.V = this.f1401m0;
            }
        } else if (this.f1407p0 != null) {
            y(z9, z8);
        } else {
            this.V = appCompatTextView.getCurrentTextColor();
        }
        if (Build$VERSION.SDK_INT >= 29) {
            r();
        }
        p pVar = this.d;
        TextInputLayout textInputLayout = pVar.f2074b;
        CheckableImageButton checkableImageButton = pVar.f2077h;
        TextInputLayout textInputLayout2 = pVar.f2074b;
        pVar.l();
        y5.k.o(textInputLayout2, pVar.d, pVar.e);
        y5.k.o(textInputLayout2, checkableImageButton, pVar.f2081l);
        if (pVar.b() instanceof e4.l) {
            if (!textInputLayout.o() || checkableImageButton.getDrawable() == null) {
                y5.k.b(textInputLayout, checkableImageButton, pVar.f2081l, pVar.f2082m);
            } else {
                Drawable drawableMutate = DrawableCompat.wrap(checkableImageButton.getDrawable()).mutate();
                drawableMutate.setTint(textInputLayout.getErrorCurrentTextColors());
                checkableImageButton.setImageDrawable(drawableMutate);
            }
        }
        y yVar = this.c;
        y5.k.o(yVar.f2124b, yVar.e, yVar.f2125f);
        if (this.Q == 2) {
            int i9 = this.S;
            if (z9 && isEnabled()) {
                this.S = this.U;
            } else {
                this.S = this.T;
            }
            if (this.S != i9 && g() && !this.f1418w0) {
                if (g()) {
                    ((e4.g) this.H).y(0.0f, 0.0f, 0.0f, 0.0f);
                }
                l();
            }
        }
        if (this.Q == 1) {
            if (!isEnabled()) {
                this.W = this.f1410r0;
            } else if (z8 && !z9) {
                this.W = this.f1413t0;
            } else if (z9) {
                this.W = this.f1412s0;
            } else {
                this.W = this.f1409q0;
            }
        }
        c();
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.E) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.c.e;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.c.b(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.d.f2077h.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.d.f2077h.setImageDrawable(drawable);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.d.f2077h;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.d.i(drawable);
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        p pVar = this.d;
        TextInputLayout textInputLayout = pVar.f2074b;
        CheckableImageButton checkableImageButton = pVar.f2077h;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            y5.k.b(textInputLayout, checkableImageButton, pVar.f2081l, pVar.f2082m);
            y5.k.o(textInputLayout, checkableImageButton, pVar.f2081l);
        }
    }
}

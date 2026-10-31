package com.google.android.material.textfield;

import ai.onnxruntime.AbstractC0074a;
import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
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
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
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
import androidx.appcompat.C0148R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.fragment.app.C0566h;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.RunnableC1054m;
import com.google.android.material.datepicker.C1096g;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.ULong;
import p000a.AbstractC0000a;
import p004a3.AbstractC0007a;
import p005a4.RunnableC0014g;
import p016b1.AbstractC0880u;
import p018b3.AbstractC0884a;
import p041d4.C1268b;
import p047e0.C1357g;
import p051e4.C1466a0;
import p051e4.C1470c0;
import p051e4.C1473f;
import p051e4.C1474g;
import p051e4.C1479l;
import p051e4.C1481n;
import p051e4.C1483p;
import p051e4.C1486s;
import p051e4.C1487t;
import p051e4.C1490w;
import p051e4.C1492y;
import p051e4.C1493z;
import p051e4.InterfaceC1468b0;
import p071g4.AbstractC1618a;
import p099j1.C1929i;
import p134m3.AbstractC2381a;
import p141n.C2455p;
import p192s3.AbstractC3190d;
import p192s3.AbstractC3198l;
import p192s3.C3189c;
import p192s3.C3194h;
import p228w3.AbstractC3517b;
import p228w3.AbstractC3518c;
import p228w3.C3516a;
import p228w3.C3521f;
import p250y5.AbstractC3656k;
import p258z3.C3711a;
import p258z3.C3720f;
import p258z3.C3722h;
import p258z3.C3725k;
import p258z3.C3727m;
import p258z3.C3728n;
import p258z3.C3729o;
import p258z3.InterfaceC3717d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: E0 */
    public static final int[][] f2485E0 = {new int[]{R.attr.state_pressed}, new int[0]};

    /* JADX INFO: renamed from: A */
    public ColorStateList f2486A;

    /* JADX INFO: renamed from: A0 */
    public ValueAnimator f2487A0;

    /* JADX INFO: renamed from: B */
    public ColorStateList f2488B;

    /* JADX INFO: renamed from: B0 */
    public boolean f2489B0;

    /* JADX INFO: renamed from: C */
    public ColorStateList f2490C;

    /* JADX INFO: renamed from: C0 */
    public boolean f2491C0;

    /* JADX INFO: renamed from: D */
    public ColorStateList f2492D;

    /* JADX INFO: renamed from: D0 */
    public boolean f2493D0;

    /* JADX INFO: renamed from: E */
    public boolean f2494E;

    /* JADX INFO: renamed from: F */
    public CharSequence f2495F;

    /* JADX INFO: renamed from: G */
    public boolean f2496G;

    /* JADX INFO: renamed from: H */
    public C3725k f2497H;

    /* JADX INFO: renamed from: I */
    public C3725k f2498I;

    /* JADX INFO: renamed from: J */
    public StateListDrawable f2499J;

    /* JADX INFO: renamed from: K */
    public boolean f2500K;

    /* JADX INFO: renamed from: L */
    public C3725k f2501L;

    /* JADX INFO: renamed from: M */
    public C3725k f2502M;

    /* JADX INFO: renamed from: N */
    public C3729o f2503N;

    /* JADX INFO: renamed from: O */
    public boolean f2504O;

    /* JADX INFO: renamed from: P */
    public final int f2505P;

    /* JADX INFO: renamed from: Q */
    public int f2506Q;

    /* JADX INFO: renamed from: R */
    public int f2507R;

    /* JADX INFO: renamed from: S */
    public int f2508S;

    /* JADX INFO: renamed from: T */
    public int f2509T;

    /* JADX INFO: renamed from: U */
    public int f2510U;

    /* JADX INFO: renamed from: V */
    public int f2511V;

    /* JADX INFO: renamed from: W */
    public int f2512W;

    /* JADX INFO: renamed from: a0 */
    public final Rect f2513a0;

    /* JADX INFO: renamed from: b */
    public final FrameLayout f2514b;

    /* JADX INFO: renamed from: b0 */
    public final Rect f2515b0;

    /* JADX INFO: renamed from: c */
    public final C1492y f2516c;

    /* JADX INFO: renamed from: c0 */
    public final RectF f2517c0;

    /* JADX INFO: renamed from: d */
    public final C1483p f2518d;

    /* JADX INFO: renamed from: d0 */
    public Typeface f2519d0;

    /* JADX INFO: renamed from: e */
    public final int f2520e;

    /* JADX INFO: renamed from: e0 */
    public ColorDrawable f2521e0;

    /* JADX INFO: renamed from: f */
    public EditText f2522f;

    /* JADX INFO: renamed from: f0 */
    public int f2523f0;

    /* JADX INFO: renamed from: g */
    public CharSequence f2524g;

    /* JADX INFO: renamed from: g0 */
    public final LinkedHashSet f2525g0;

    /* JADX INFO: renamed from: h */
    public int f2526h;

    /* JADX INFO: renamed from: h0 */
    public ColorDrawable f2527h0;

    /* JADX INFO: renamed from: i */
    public int f2528i;

    /* JADX INFO: renamed from: i0 */
    public int f2529i0;

    /* JADX INFO: renamed from: j */
    public int f2530j;

    /* JADX INFO: renamed from: j0 */
    public Drawable f2531j0;

    /* JADX INFO: renamed from: k */
    public int f2532k;

    /* JADX INFO: renamed from: k0 */
    public ColorStateList f2533k0;

    /* JADX INFO: renamed from: l */
    public final C1487t f2534l;

    /* JADX INFO: renamed from: l0 */
    public ColorStateList f2535l0;

    /* JADX INFO: renamed from: m */
    public boolean f2536m;

    /* JADX INFO: renamed from: m0 */
    public int f2537m0;

    /* JADX INFO: renamed from: n */
    public int f2538n;

    /* JADX INFO: renamed from: n0 */
    public int f2539n0;

    /* JADX INFO: renamed from: o */
    public boolean f2540o;

    /* JADX INFO: renamed from: o0 */
    public int f2541o0;

    /* JADX INFO: renamed from: p */
    public InterfaceC1468b0 f2542p;

    /* JADX INFO: renamed from: p0 */
    public ColorStateList f2543p0;

    /* JADX INFO: renamed from: q */
    public AppCompatTextView f2544q;

    /* JADX INFO: renamed from: q0 */
    public int f2545q0;

    /* JADX INFO: renamed from: r */
    public int f2546r;

    /* JADX INFO: renamed from: r0 */
    public int f2547r0;

    /* JADX INFO: renamed from: s */
    public int f2548s;

    /* JADX INFO: renamed from: s0 */
    public int f2549s0;

    /* JADX INFO: renamed from: t */
    public CharSequence f2550t;

    /* JADX INFO: renamed from: t0 */
    public int f2551t0;

    /* JADX INFO: renamed from: u */
    public boolean f2552u;

    /* JADX INFO: renamed from: u0 */
    public int f2553u0;

    /* JADX INFO: renamed from: v */
    public AppCompatTextView f2554v;

    /* JADX INFO: renamed from: v0 */
    public int f2555v0;

    /* JADX INFO: renamed from: w */
    public ColorStateList f2556w;

    /* JADX INFO: renamed from: w0 */
    public boolean f2557w0;

    /* JADX INFO: renamed from: x */
    public int f2558x;

    /* JADX INFO: renamed from: x0 */
    public final C3189c f2559x0;

    /* JADX INFO: renamed from: y */
    public Fade f2560y;

    /* JADX INFO: renamed from: y0 */
    public boolean f2561y0;

    /* JADX INFO: renamed from: z */
    public Fade f2562z;

    /* JADX INFO: renamed from: z0 */
    public boolean f2563z0;

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(AbstractC1618a.m2696a(context, attributeSet, com.example.navistart.R.attr.textInputStyle, com.example.navistart.R.style.Widget_Design_TextInputLayout), attributeSet, com.example.navistart.R.attr.textInputStyle);
        this.f2526h = -1;
        this.f2528i = -1;
        this.f2530j = -1;
        this.f2532k = -1;
        this.f2534l = new C1487t(this);
        this.f2542p = new C1357g(7);
        this.f2513a0 = new Rect();
        this.f2515b0 = new Rect();
        this.f2517c0 = new RectF();
        this.f2525g0 = new LinkedHashSet();
        C3189c c3189c = new C3189c(this);
        this.f2559x0 = c3189c;
        this.f2493D0 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f2514b = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = AbstractC0884a.f661a;
        c3189c.f9295R = linearInterpolator;
        c3189c.m5122j(false);
        c3189c.f9294Q = linearInterpolator;
        c3189c.m5122j(false);
        if (c3189c.f9316g != 8388659) {
            c3189c.f9316g = 8388659;
            c3189c.m5122j(false);
        }
        AbstractC3198l.m5133a(context2, attributeSet, com.example.navistart.R.attr.textInputStyle, com.example.navistart.R.style.Widget_Design_TextInputLayout);
        int[] iArr = AbstractC0007a.f20L;
        AbstractC3198l.m5134b(context2, attributeSet, iArr, com.example.navistart.R.attr.textInputStyle, com.example.navistart.R.style.Widget_Design_TextInputLayout, 22, 20, 40, 45, 50);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context2, attributeSet, iArr, com.example.navistart.R.attr.textInputStyle, com.example.navistart.R.style.Widget_Design_TextInputLayout);
        C1492y c1492y = new C1492y(this, tintTypedArrayObtainStyledAttributes);
        this.f2516c = c1492y;
        this.f2494E = tintTypedArrayObtainStyledAttributes.getBoolean(48, true);
        setHint(tintTypedArrayObtainStyledAttributes.getText(4));
        this.f2563z0 = tintTypedArrayObtainStyledAttributes.getBoolean(47, true);
        this.f2561y0 = tintTypedArrayObtainStyledAttributes.getBoolean(42, true);
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
        this.f2503N = C3729o.m5959c(context2, attributeSet, com.example.navistart.R.attr.textInputStyle, com.example.navistart.R.style.Widget_Design_TextInputLayout).m5956a();
        this.f2505P = context2.getResources().getDimensionPixelOffset(com.example.navistart.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.f2507R = tintTypedArrayObtainStyledAttributes.getDimensionPixelOffset(9, 0);
        this.f2520e = getResources().getDimensionPixelSize(com.example.navistart.R.dimen.m3_multiline_hint_filled_text_extra_space);
        this.f2509T = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(com.example.navistart.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.f2510U = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(com.example.navistart.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.f2508S = this.f2509T;
        float dimension = tintTypedArrayObtainStyledAttributes.getDimension(13, -1.0f);
        float dimension2 = tintTypedArrayObtainStyledAttributes.getDimension(12, -1.0f);
        float dimension3 = tintTypedArrayObtainStyledAttributes.getDimension(10, -1.0f);
        float dimension4 = tintTypedArrayObtainStyledAttributes.getDimension(11, -1.0f);
        C3728n c3728nM5963g = this.f2503N.m5963g();
        if (dimension >= 0.0f) {
            c3728nM5963g.f11077e = new C3711a(dimension);
        }
        if (dimension2 >= 0.0f) {
            c3728nM5963g.f11078f = new C3711a(dimension2);
        }
        if (dimension3 >= 0.0f) {
            c3728nM5963g.f11079g = new C3711a(dimension3);
        }
        if (dimension4 >= 0.0f) {
            c3728nM5963g.f11080h = new C3711a(dimension4);
        }
        this.f2503N = c3728nM5963g.m5956a();
        ColorStateList colorStateListM5588b = AbstractC3518c.m5588b(context2, tintTypedArrayObtainStyledAttributes, 7);
        if (colorStateListM5588b != null) {
            int defaultColor = colorStateListM5588b.getDefaultColor();
            this.f2545q0 = defaultColor;
            this.f2512W = defaultColor;
            if (colorStateListM5588b.isStateful()) {
                this.f2547r0 = colorStateListM5588b.getColorForState(new int[]{-16842910}, -1);
                this.f2549s0 = colorStateListM5588b.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.f2551t0 = colorStateListM5588b.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.f2549s0 = this.f2545q0;
                ColorStateList colorStateList = AppCompatResources.getColorStateList(context2, com.example.navistart.R.color.mtrl_filled_background_color);
                this.f2547r0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
                this.f2551t0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.f2512W = 0;
            this.f2545q0 = 0;
            this.f2547r0 = 0;
            this.f2549s0 = 0;
            this.f2551t0 = 0;
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(1)) {
            ColorStateList colorStateList2 = tintTypedArrayObtainStyledAttributes.getColorStateList(1);
            this.f2535l0 = colorStateList2;
            this.f2533k0 = colorStateList2;
        }
        ColorStateList colorStateListM5588b2 = AbstractC3518c.m5588b(context2, tintTypedArrayObtainStyledAttributes, 14);
        this.f2541o0 = tintTypedArrayObtainStyledAttributes.getColor(14, 0);
        this.f2537m0 = ContextCompat.getColor(context2, com.example.navistart.R.color.mtrl_textinput_default_box_stroke_color);
        this.f2553u0 = ContextCompat.getColor(context2, com.example.navistart.R.color.mtrl_textinput_disabled_color);
        this.f2539n0 = ContextCompat.getColor(context2, com.example.navistart.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListM5588b2 != null) {
            setBoxStrokeColorStateList(colorStateListM5588b2);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(15)) {
            setBoxStrokeErrorColor(AbstractC3518c.m5588b(context2, tintTypedArrayObtainStyledAttributes, 15));
        }
        if (tintTypedArrayObtainStyledAttributes.getResourceId(50, -1) != -1) {
            setHintTextAppearance(tintTypedArrayObtainStyledAttributes.getResourceId(50, 0));
        }
        this.f2490C = tintTypedArrayObtainStyledAttributes.getColorStateList(24);
        this.f2492D = tintTypedArrayObtainStyledAttributes.getColorStateList(25);
        int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(40, 0);
        CharSequence text = tintTypedArrayObtainStyledAttributes.getText(35);
        int i10 = tintTypedArrayObtainStyledAttributes.getInt(34, 1);
        boolean z9 = tintTypedArrayObtainStyledAttributes.getBoolean(36, false);
        int resourceId2 = tintTypedArrayObtainStyledAttributes.getResourceId(45, 0);
        boolean z10 = tintTypedArrayObtainStyledAttributes.getBoolean(44, false);
        CharSequence text2 = tintTypedArrayObtainStyledAttributes.getText(43);
        int resourceId3 = tintTypedArrayObtainStyledAttributes.getResourceId(58, 0);
        CharSequence text3 = tintTypedArrayObtainStyledAttributes.getText(57);
        boolean z11 = tintTypedArrayObtainStyledAttributes.getBoolean(18, false);
        setCounterMaxLength(tintTypedArrayObtainStyledAttributes.getInt(19, -1));
        this.f2548s = tintTypedArrayObtainStyledAttributes.getResourceId(22, 0);
        this.f2546r = tintTypedArrayObtainStyledAttributes.getResourceId(20, 0);
        setBoxBackgroundMode(tintTypedArrayObtainStyledAttributes.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i10);
        setCounterOverflowTextAppearance(this.f2546r);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.f2548s);
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
        C1483p c1483p = new C1483p(this, tintTypedArrayObtainStyledAttributes);
        this.f2518d = c1483p;
        boolean z12 = tintTypedArrayObtainStyledAttributes.getBoolean(0, true);
        setHintMaxLines(tintTypedArrayObtainStyledAttributes.getInt(49, 1));
        tintTypedArrayObtainStyledAttributes.recycle();
        setImportantForAccessibility(2);
        if (Build.VERSION.SDK_INT >= 26) {
            setImportantForAutofill(1);
        }
        frameLayout.addView(c1492y);
        frameLayout.addView(c1483p);
        addView(frameLayout);
        setEnabled(z12);
        setHelperTextEnabled(z10);
        setErrorEnabled(z9);
        setCounterEnabled(z11);
        setHelperText(text2);
    }

    @Nullable
    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f2522f;
        if (!(editText instanceof AutoCompleteTextView) || editText.getInputType() != 0) {
            return this.f2497H;
        }
        int iM3746a = AbstractC2381a.m3746a(C0148R.attr.colorControlHighlight, this.f2522f);
        int i10 = this.f2506Q;
        int[][] iArr = f2485E0;
        if (i10 != 2) {
            if (i10 != 1) {
                return null;
            }
            C3725k c3725k = this.f2497H;
            int i11 = this.f2512W;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{AbstractC2381a.m3748c(0.1f, iM3746a, i11), i11}), c3725k, c3725k);
        }
        Context context = getContext();
        C3725k c3725k2 = this.f2497H;
        TypedValue typedValueM5586c = AbstractC3517b.m5586c(context, "TextInputLayout", com.example.navistart.R.attr.colorSurface);
        int i12 = typedValueM5586c.resourceId;
        int color = i12 != 0 ? ContextCompat.getColor(context, i12) : typedValueM5586c.data;
        C3725k c3725k3 = new C3725k(c3725k2.f11048c.f11021a);
        int iM3748c = AbstractC2381a.m3748c(0.1f, iM3746a, color);
        c3725k3.m5948q(new ColorStateList(iArr, new int[]{iM3748c, 0}));
        c3725k3.setTint(color);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iM3748c, color});
        C3725k c3725k4 = new C3725k(c3725k2.f11048c.f11021a);
        c3725k4.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, c3725k3, c3725k4), c3725k2});
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.f2499J == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.f2499J = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.f2499J.addState(new int[0], m1854h(false));
        }
        return this.f2499J;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.f2498I == null) {
            this.f2498I = m1854h(true);
        }
        return this.f2498I;
    }

    /* JADX INFO: renamed from: m */
    public static void m1846m(ViewGroup viewGroup, boolean z9) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            childAt.setEnabled(z9);
            if (childAt instanceof ViewGroup) {
                m1846m((ViewGroup) childAt, z9);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.f2522f != null) {
            C1929i.m3029k("We already have an EditText, can only have one");
            return;
        }
        if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f2522f = editText;
        int i10 = this.f2526h;
        if (i10 != -1) {
            setMinEms(i10);
        } else {
            setMinWidth(this.f2530j);
        }
        int i11 = this.f2528i;
        if (i11 != -1) {
            setMaxEms(i11);
        } else {
            setMaxWidth(this.f2532k);
        }
        this.f2500K = false;
        m1857k();
        setTextInputAccessibilityDelegate(new C1466a0(this));
        Typeface typeface = this.f2522f.getTypeface();
        C3189c c3189c = this.f2559x0;
        c3189c.m5126n(typeface);
        float textSize = this.f2522f.getTextSize();
        if (c3189c.f9318h != textSize) {
            c3189c.f9318h = textSize;
            c3189c.m5122j(false);
        }
        float letterSpacing = this.f2522f.getLetterSpacing();
        if (c3189c.f9301X != letterSpacing) {
            c3189c.f9301X = letterSpacing;
            c3189c.m5122j(false);
        }
        int gravity = this.f2522f.getGravity();
        int i12 = (gravity & (-113)) | 48;
        if (c3189c.f9316g != i12) {
            c3189c.f9316g = i12;
            c3189c.m5122j(false);
        }
        if (c3189c.f9314f != gravity) {
            c3189c.f9314f = gravity;
            c3189c.m5122j(false);
        }
        this.f2555v0 = editText.getMinimumHeight();
        this.f2522f.addTextChangedListener(new C1493z(this, editText));
        if (this.f2533k0 == null) {
            this.f2533k0 = this.f2522f.getHintTextColors();
        }
        if (this.f2494E) {
            if (TextUtils.isEmpty(this.f2495F)) {
                CharSequence hint = this.f2522f.getHint();
                this.f2524g = hint;
                setHint(hint);
                this.f2522f.setHint((CharSequence) null);
            }
            this.f2496G = true;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            m1863r();
        }
        if (this.f2544q != null) {
            m1861p(this.f2522f.getText());
        }
        m1865t();
        this.f2534l.m2561b();
        this.f2516c.bringToFront();
        C1483p c1483p = this.f2518d;
        c1483p.bringToFront();
        Iterator it = this.f2525g0.iterator();
        while (it.hasNext()) {
            ((C1481n) it.next()).m2541a(this);
        }
        c1483p.m2555m();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        m1868w(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f2495F)) {
            return;
        }
        this.f2495F = charSequence;
        C3189c c3189c = this.f2559x0;
        if (charSequence == null || !TextUtils.equals(c3189c.f9279B, charSequence)) {
            c3189c.f9279B = charSequence;
            c3189c.f9280C = null;
            c3189c.m5122j(false);
        }
        if (this.f2557w0) {
            return;
        }
        m1858l();
    }

    private void setPlaceholderTextEnabled(boolean z9) {
        if (this.f2552u == z9) {
            return;
        }
        AppCompatTextView appCompatTextView = this.f2554v;
        if (!z9) {
            if (appCompatTextView != null) {
                appCompatTextView.setVisibility(8);
            }
            this.f2554v = null;
        } else if (appCompatTextView != null) {
            this.f2514b.addView(appCompatTextView);
            this.f2554v.setVisibility(0);
        }
        this.f2552u = z9;
    }

    /* JADX INFO: renamed from: a */
    public final void m1847a() {
        if (this.f2522f == null || this.f2506Q != 1) {
            return;
        }
        if (getHintMaxLines() != 1) {
            EditText editText = this.f2522f;
            editText.setPaddingRelative(editText.getPaddingStart(), (int) (this.f2559x0.m5119f() + this.f2520e), this.f2522f.getPaddingEnd(), getResources().getDimensionPixelSize(com.example.navistart.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        } else if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
            EditText editText2 = this.f2522f;
            editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(com.example.navistart.R.dimen.material_filled_edittext_font_2_0_padding_top), this.f2522f.getPaddingEnd(), getResources().getDimensionPixelSize(com.example.navistart.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (AbstractC3518c.m5590d(getContext())) {
            EditText editText3 = this.f2522f;
            editText3.setPaddingRelative(editText3.getPaddingStart(), getResources().getDimensionPixelSize(com.example.navistart.R.dimen.material_filled_edittext_font_1_3_padding_top), this.f2522f.getPaddingEnd(), getResources().getDimensionPixelSize(com.example.navistart.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i10, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f2514b;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        m1867v();
        setEditText((EditText) view);
    }

    /* JADX INFO: renamed from: b */
    public final void m1848b(float f8) {
        C3189c c3189c = this.f2559x0;
        if (c3189c.f9306b == f8) {
            return;
        }
        int i10 = 1;
        if (this.f2487A0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f2487A0 = valueAnimator;
            valueAnimator.setInterpolator(AbstractC1031d.m1288r(getContext(), com.example.navistart.R.attr.motionEasingEmphasizedInterpolator, AbstractC0884a.f662b));
            this.f2487A0.setDuration(AbstractC1031d.m1287q(getContext(), com.example.navistart.R.attr.motionDurationMedium4, 167));
            this.f2487A0.addUpdateListener(new C1268b(i10, this));
        }
        this.f2487A0.setFloatValues(c3189c.f9306b, f8);
        this.f2487A0.start();
    }

    /* JADX INFO: renamed from: c */
    public final void m1849c() {
        int i10;
        int i11;
        C3725k c3725k = this.f2497H;
        if (c3725k == null) {
            return;
        }
        C3729o c3729o = c3725k.f11048c.f11021a;
        C3729o c3729o2 = this.f2503N;
        if (c3729o != c3729o2) {
            c3725k.setShapeAppearanceModel(c3729o2);
        }
        if (this.f2506Q == 2 && (i10 = this.f2508S) > -1 && (i11 = this.f2511V) != 0) {
            C3725k c3725k2 = this.f2497H;
            c3725k2.f11048c.f11031k = i10;
            c3725k2.invalidateSelf();
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(i11);
            C3722h c3722h = c3725k2.f11048c;
            if (c3722h.f11025e != colorStateListValueOf) {
                c3722h.f11025e = colorStateListValueOf;
                c3725k2.onStateChange(c3725k2.getState());
            }
        }
        int iCompositeColors = this.f2512W;
        if (this.f2506Q == 1) {
            iCompositeColors = ColorUtils.compositeColors(this.f2512W, AbstractC2381a.m3747b(getContext(), com.example.navistart.R.attr.colorSurface, 0));
        }
        this.f2512W = iCompositeColors;
        this.f2497H.m5948q(ColorStateList.valueOf(iCompositeColors));
        C3725k c3725k3 = this.f2501L;
        if (c3725k3 != null && this.f2502M != null) {
            if (this.f2508S > -1 && this.f2511V != 0) {
                c3725k3.m5948q(this.f2522f.isFocused() ? ColorStateList.valueOf(this.f2537m0) : ColorStateList.valueOf(this.f2511V));
                this.f2502M.m5948q(ColorStateList.valueOf(this.f2511V));
            }
            invalidate();
        }
        m1866u();
    }

    /* JADX INFO: renamed from: d */
    public final Rect m1850d(Rect rect) {
        if (this.f2522f == null) {
            throw new IllegalStateException();
        }
        boolean z9 = getLayoutDirection() == 1;
        int i10 = rect.bottom;
        Rect rect2 = this.f2515b0;
        rect2.bottom = i10;
        int i11 = this.f2506Q;
        if (i11 == 1) {
            rect2.left = m1855i(rect.left, z9);
            rect2.top = rect.top + this.f2507R;
            rect2.right = m1856j(rect.right, z9);
            return rect2;
        }
        int i12 = rect.left;
        if (i11 != 2) {
            rect2.left = m1855i(i12, z9);
            rect2.top = getPaddingTop();
            rect2.right = m1856j(rect.right, z9);
            return rect2;
        }
        rect2.left = this.f2522f.getPaddingLeft() + i12;
        rect2.top = rect.top - m1851e();
        rect2.right = rect.right - this.f2522f.getPaddingRight();
        return rect2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i10) {
        EditText editText = this.f2522f;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i10);
            return;
        }
        if (this.f2524g != null) {
            boolean z9 = this.f2496G;
            this.f2496G = false;
            CharSequence hint = editText.getHint();
            this.f2522f.setHint(this.f2524g);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i10);
                return;
            } finally {
                this.f2522f.setHint(hint);
                this.f2496G = z9;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i10);
        onProvideAutofillVirtualStructure(viewStructure, i10);
        FrameLayout frameLayout = this.f2514b;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i11 = 0; i11 < frameLayout.getChildCount(); i11++) {
            View childAt = frameLayout.getChildAt(i11);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i11);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i10);
            if (childAt == this.f2522f) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.f2491C0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f2491C0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        C3725k c3725k;
        Canvas canvas2 = canvas;
        super.draw(canvas);
        boolean z9 = this.f2494E;
        C3189c c3189c = this.f2559x0;
        if (z9) {
            TextPaint textPaint = c3189c.f9292O;
            RectF rectF = c3189c.f9312e;
            int iSave = canvas2.save();
            if (c3189c.f9280C != null && rectF.width() > 0.0f && rectF.height() > 0.0f) {
                textPaint.setTextSize(c3189c.f9284G);
                float f8 = c3189c.f9331q;
                float f10 = c3189c.f9332r;
                float f11 = c3189c.f9283F;
                if (f11 != 1.0f) {
                    canvas2.scale(f11, f11, f8, f10);
                }
                if ((c3189c.f9313e0 > 1 || c3189c.f9315f0 > 1) && !c3189c.f9281D && c3189c.m5127o()) {
                    float lineStart = c3189c.f9331q - c3189c.f9303Z.getLineStart(0);
                    int alpha = textPaint.getAlpha();
                    canvas2.translate(lineStart, f10);
                    float f12 = alpha;
                    textPaint.setAlpha((int) (c3189c.f9309c0 * f12));
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 >= 31) {
                        float f13 = c3189c.f9285H;
                        float f14 = c3189c.f9286I;
                        float f15 = c3189c.f9287J;
                        int i11 = c3189c.f9288K;
                        textPaint.setShadowLayer(f13, f14, f15, ColorUtils.setAlphaComponent(i11, (textPaint.getAlpha() * Color.alpha(i11)) / 255));
                    }
                    c3189c.f9303Z.draw(canvas2);
                    textPaint.setAlpha((int) (c3189c.f9307b0 * f12));
                    if (i10 >= 31) {
                        float f16 = c3189c.f9285H;
                        float f17 = c3189c.f9286I;
                        float f18 = c3189c.f9287J;
                        int i12 = c3189c.f9288K;
                        textPaint.setShadowLayer(f16, f17, f18, ColorUtils.setAlphaComponent(i12, (Color.alpha(i12) * textPaint.getAlpha()) / 255));
                    }
                    int lineBaseline = c3189c.f9303Z.getLineBaseline(0);
                    CharSequence charSequence = c3189c.f9311d0;
                    float f19 = lineBaseline;
                    canvas2.drawText(charSequence, 0, charSequence.length(), 0.0f, f19, textPaint);
                    if (i10 >= 31) {
                        textPaint.setShadowLayer(c3189c.f9285H, c3189c.f9286I, c3189c.f9287J, c3189c.f9288K);
                    }
                    String strTrim = c3189c.f9311d0.toString().trim();
                    if (strTrim.endsWith("…")) {
                        strTrim = strTrim.substring(0, strTrim.length() - 1);
                    }
                    String str = strTrim;
                    textPaint.setAlpha(alpha);
                    canvas2 = canvas;
                    canvas2.drawText(str, 0, Math.min(c3189c.f9303Z.getLineEnd(0), str.length()), 0.0f, f19, (Paint) textPaint);
                } else {
                    canvas2.translate(f8, f10);
                    c3189c.f9303Z.draw(canvas2);
                }
                canvas2.restoreToCount(iSave);
            }
        }
        if (this.f2502M == null || (c3725k = this.f2501L) == null) {
            return;
        }
        c3725k.draw(canvas2);
        if (this.f2522f.isFocused()) {
            Rect bounds = this.f2502M.getBounds();
            Rect bounds2 = this.f2501L.getBounds();
            float f20 = c3189c.f9306b;
            int iCenterX = bounds2.centerX();
            bounds.left = AbstractC0884a.m1017c(f20, iCenterX, bounds2.left);
            bounds.right = AbstractC0884a.m1017c(f20, iCenterX, bounds2.right);
            this.f2502M.draw(canvas2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z9;
        ColorStateList colorStateList;
        if (this.f2489B0) {
            return;
        }
        this.f2489B0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        C3189c c3189c = this.f2559x0;
        if (c3189c != null) {
            c3189c.f9290M = drawableState;
            ColorStateList colorStateList2 = c3189c.f9324k;
            if ((colorStateList2 == null || !colorStateList2.isStateful()) && ((colorStateList = c3189c.f9322j) == null || !colorStateList.isStateful())) {
                z9 = false;
            } else {
                c3189c.m5122j(false);
                z9 = true;
            }
        } else {
            z9 = false;
        }
        if (this.f2522f != null) {
            m1868w(isLaidOut() && isEnabled(), false);
        }
        m1865t();
        m1871z();
        if (z9) {
            invalidate();
        }
        this.f2489B0 = false;
    }

    /* JADX INFO: renamed from: e */
    public final int m1851e() {
        if (this.f2494E) {
            int i10 = this.f2506Q;
            C3189c c3189c = this.f2559x0;
            if (i10 == 0) {
                return (int) c3189c.m5119f();
            }
            if (i10 == 2) {
                if (getHintMaxLines() == 1) {
                    return (int) (c3189c.m5119f() / 2.0f);
                }
                float fM5119f = c3189c.m5119f();
                TextPaint textPaint = c3189c.f9293P;
                textPaint.setTextSize(c3189c.f9320i);
                textPaint.setTypeface(c3189c.f9333s);
                textPaint.setLetterSpacing(c3189c.f9300W);
                return Math.max(0, (int) (fM5119f - ((-textPaint.ascent()) / 2.0f)));
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: f */
    public final Fade m1852f() {
        Fade fade = new Fade();
        fade.setDuration(AbstractC1031d.m1287q(getContext(), com.example.navistart.R.attr.motionDurationShort2, 87));
        fade.setInterpolator(AbstractC1031d.m1288r(getContext(), com.example.navistart.R.attr.motionEasingLinearInterpolator, AbstractC0884a.f661a));
        return fade;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m1853g() {
        return this.f2494E && !TextUtils.isEmpty(this.f2495F) && (this.f2497H instanceof C1474g);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f2522f;
        if (editText == null) {
            return super.getBaseline();
        }
        return m1851e() + getPaddingTop() + editText.getBaseline();
    }

    @NonNull
    public C3725k getBoxBackground() {
        int i10 = this.f2506Q;
        if (i10 == 1 || i10 == 2) {
            return this.f2497H;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f2512W;
    }

    public int getBoxBackgroundMode() {
        return this.f2506Q;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.f2507R;
    }

    public float getBoxCornerRadiusBottomEnd() {
        int layoutDirection = getLayoutDirection();
        C3729o c3729o = this.f2503N;
        RectF rectF = this.f2517c0;
        return layoutDirection == 1 ? c3729o.f11093h.mo5920a(rectF) : c3729o.f11092g.mo5920a(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        int layoutDirection = getLayoutDirection();
        C3729o c3729o = this.f2503N;
        RectF rectF = this.f2517c0;
        return layoutDirection == 1 ? c3729o.f11092g.mo5920a(rectF) : c3729o.f11093h.mo5920a(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        int layoutDirection = getLayoutDirection();
        C3729o c3729o = this.f2503N;
        RectF rectF = this.f2517c0;
        return layoutDirection == 1 ? c3729o.f11090e.mo5920a(rectF) : c3729o.f11091f.mo5920a(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        int layoutDirection = getLayoutDirection();
        C3729o c3729o = this.f2503N;
        RectF rectF = this.f2517c0;
        return layoutDirection == 1 ? c3729o.f11091f.mo5920a(rectF) : c3729o.f11090e.mo5920a(rectF);
    }

    public int getBoxStrokeColor() {
        return this.f2541o0;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.f2543p0;
    }

    public int getBoxStrokeWidth() {
        return this.f2509T;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f2510U;
    }

    public int getCounterMaxLength() {
        return this.f2538n;
    }

    @Nullable
    public CharSequence getCounterOverflowDescription() {
        AppCompatTextView appCompatTextView;
        if (this.f2536m && this.f2540o && (appCompatTextView = this.f2544q) != null) {
            return appCompatTextView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.f2488B;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.f2486A;
    }

    @Nullable
    @RequiresApi(29)
    public ColorStateList getCursorColor() {
        return this.f2490C;
    }

    @Nullable
    @RequiresApi(29)
    public ColorStateList getCursorErrorColor() {
        return this.f2492D;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.f2533k0;
    }

    @Nullable
    public EditText getEditText() {
        return this.f2522f;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.f2518d.f3607h.getContentDescription();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.f2518d.f3607h.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.f2518d.f3613n;
    }

    public int getEndIconMode() {
        return this.f2518d.f3609j;
    }

    @NonNull
    public ImageView.ScaleType getEndIconScaleType() {
        return this.f2518d.f3614o;
    }

    @NonNull
    public CheckableImageButton getEndIconView() {
        return this.f2518d.f3607h;
    }

    @Nullable
    public CharSequence getError() {
        C1487t c1487t = this.f2534l;
        if (c1487t.f3651q) {
            return c1487t.f3650p;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f2534l.f3654t;
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.f2534l.f3653s;
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        AppCompatTextView appCompatTextView = this.f2534l.f3652r;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.f2518d.f3603d.getDrawable();
    }

    @Nullable
    public CharSequence getHelperText() {
        C1487t c1487t = this.f2534l;
        if (c1487t.f3658x) {
            return c1487t.f3657w;
        }
        return null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.f2534l.f3659y;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    @Nullable
    public CharSequence getHint() {
        if (this.f2494E) {
            return this.f2495F;
        }
        return null;
    }

    @VisibleForTesting
    public final float getHintCollapsedTextHeight() {
        return this.f2559x0.m5119f();
    }

    @VisibleForTesting
    public final int getHintCurrentCollapsedTextColor() {
        C3189c c3189c = this.f2559x0;
        return c3189c.m5120g(c3189c.f9324k);
    }

    public int getHintMaxLines() {
        return this.f2559x0.f9313e0;
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.f2535l0;
    }

    @NonNull
    public InterfaceC1468b0 getLengthCounter() {
        return this.f2542p;
    }

    public int getMaxEms() {
        return this.f2528i;
    }

    @Px
    public int getMaxWidth() {
        return this.f2532k;
    }

    public int getMinEms() {
        return this.f2526h;
    }

    @Px
    public int getMinWidth() {
        return this.f2530j;
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f2518d.f3607h.getContentDescription();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f2518d.f3607h.getDrawable();
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.f2552u) {
            return this.f2550t;
        }
        return null;
    }

    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.f2558x;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.f2556w;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.f2516c.f3678d;
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.f2516c.f3677c.getTextColors();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.f2516c.f3677c;
    }

    @NonNull
    public C3729o getShapeAppearanceModel() {
        return this.f2503N;
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.f2516c.f3679e.getContentDescription();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.f2516c.f3679e.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.f2516c.f3682h;
    }

    @NonNull
    public ImageView.ScaleType getStartIconScaleType() {
        return this.f2516c.f3683i;
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.f2518d.f3616q;
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.f2518d.f3617r.getTextColors();
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.f2518d.f3617r;
    }

    @Nullable
    public Typeface getTypeface() {
        return this.f2519d0;
    }

    /* JADX INFO: renamed from: h */
    public final C3725k m1854h(boolean z9) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(com.example.navistart.R.dimen.mtrl_shape_corner_size_small_component);
        float f8 = z9 ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f2522f;
        float popupElevation = editText instanceof C1490w ? ((C1490w) editText).getPopupElevation() : getResources().getDimensionPixelOffset(com.example.navistart.R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(com.example.navistart.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        C3727m c3727m = new C3727m();
        C3727m c3727m2 = new C3727m();
        C3727m c3727m3 = new C3727m();
        C3727m c3727m4 = new C3727m();
        int i10 = 0;
        C3720f c3720f = new C3720f(i10);
        C3720f c3720f2 = new C3720f(i10);
        C3720f c3720f3 = new C3720f(i10);
        C3720f c3720f4 = new C3720f(i10);
        C3711a c3711a = new C3711a(f8);
        C3711a c3711a2 = new C3711a(f8);
        C3711a c3711a3 = new C3711a(dimensionPixelOffset);
        C3711a c3711a4 = new C3711a(dimensionPixelOffset);
        C3729o c3729o = new C3729o();
        c3729o.f11086a = c3727m;
        c3729o.f11087b = c3727m2;
        c3729o.f11088c = c3727m3;
        c3729o.f11089d = c3727m4;
        c3729o.f11090e = c3711a;
        c3729o.f11091f = c3711a2;
        c3729o.f11092g = c3711a4;
        c3729o.f11093h = c3711a3;
        c3729o.f11094i = c3720f;
        c3729o.f11095j = c3720f2;
        c3729o.f11096k = c3720f3;
        c3729o.f11097l = c3720f4;
        EditText editText2 = this.f2522f;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof C1490w ? ((C1490w) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            Paint paint = C3725k.f11039G;
            TypedValue typedValueM5586c = AbstractC3517b.m5586c(context, C3725k.class.getSimpleName(), com.example.navistart.R.attr.colorSurface);
            int i11 = typedValueM5586c.resourceId;
            dropDownBackgroundTintList = ColorStateList.valueOf(i11 != 0 ? ContextCompat.getColor(context, i11) : typedValueM5586c.data);
        }
        C3725k c3725k = new C3725k();
        c3725k.m5944m(context);
        c3725k.m5948q(dropDownBackgroundTintList);
        c3725k.m5947p(popupElevation);
        c3725k.setShapeAppearanceModel(c3729o);
        C3722h c3722h = c3725k.f11048c;
        if (c3722h.f11028h == null) {
            c3722h.f11028h = new Rect();
        }
        c3725k.f11048c.f11028h.set(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        c3725k.invalidateSelf();
        return c3725k;
    }

    /* JADX INFO: renamed from: i */
    public final int m1855i(int i10, boolean z9) {
        int compoundPaddingLeft;
        if (z9 || getPrefixText() == null) {
            compoundPaddingLeft = (!z9 || getSuffixText() == null) ? this.f2522f.getCompoundPaddingLeft() : this.f2518d.m2545c();
        } else {
            compoundPaddingLeft = this.f2516c.m2573a();
        }
        return compoundPaddingLeft + i10;
    }

    /* JADX INFO: renamed from: j */
    public final int m1856j(int i10, boolean z9) {
        int compoundPaddingRight;
        if (z9 || getSuffixText() == null) {
            compoundPaddingRight = (!z9 || getPrefixText() == null) ? this.f2522f.getCompoundPaddingRight() : this.f2516c.m2573a();
        } else {
            compoundPaddingRight = this.f2518d.m2545c();
        }
        return i10 - compoundPaddingRight;
    }

    /* JADX INFO: renamed from: k */
    public final void m1857k() {
        int i10 = this.f2506Q;
        if (i10 == 0) {
            this.f2497H = null;
            this.f2501L = null;
            this.f2502M = null;
        } else if (i10 == 1) {
            this.f2497H = new C3725k(this.f2503N);
            this.f2501L = new C3725k();
            this.f2502M = new C3725k();
        } else {
            if (i10 != 2) {
                C1929i.m3029k(AbstractC0074a.m164o(new StringBuilder(), " is illegal; only @BoxBackgroundMode constants are supported.", this.f2506Q));
                return;
            }
            if (!this.f2494E || (this.f2497H instanceof C1474g)) {
                this.f2497H = new C3725k(this.f2503N);
            } else {
                C3729o c3729o = this.f2503N;
                int i11 = C1474g.f3573J;
                if (c3729o == null) {
                    c3729o = new C3729o();
                }
                C1473f c1473f = new C1473f(c3729o, new RectF());
                C1474g c1474g = new C1474g(c1473f);
                c1474g.f3574I = c1473f;
                this.f2497H = c1474g;
            }
            this.f2501L = null;
            this.f2502M = null;
        }
        m1866u();
        m1871z();
        if (this.f2506Q == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.f2507R = getResources().getDimensionPixelSize(com.example.navistart.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (AbstractC3518c.m5590d(getContext())) {
                this.f2507R = getResources().getDimensionPixelSize(com.example.navistart.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        m1847a();
        if (this.f2506Q != 0) {
            m1867v();
        }
        EditText editText = this.f2522f;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i12 = this.f2506Q;
                if (i12 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i12 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x008d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cb  */
    /* JADX INFO: renamed from: l */
    public final void m1858l() {
        float f8;
        float f10;
        float f11;
        RectF rectF;
        float f12;
        float lineWidth;
        int i10;
        float f13;
        int i11;
        if (m1853g()) {
            int width = this.f2522f.getWidth();
            int gravity = this.f2522f.getGravity();
            C3189c c3189c = this.f2559x0;
            boolean zM5116c = c3189c.m5116c(c3189c.f9279B);
            c3189c.f9281D = zM5116c;
            Rect rect = c3189c.f9310d;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & GravityCompat.END) == 8388613 || (gravity & 5) == 5) {
                    if (zM5116c) {
                        i11 = rect.left;
                        f11 = i11;
                    } else {
                        f8 = rect.right;
                        f10 = c3189c.f9305a0;
                    }
                } else if (zM5116c) {
                    f8 = rect.right;
                    f10 = c3189c.f9305a0;
                } else {
                    i11 = rect.left;
                    f11 = i11;
                }
                float fMax = Math.max(f11, rect.left);
                rectF = this.f2517c0;
                rectF.left = fMax;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f12 = (width / 2.0f) + (c3189c.f9305a0 / 2.0f);
                } else if ((gravity & GravityCompat.END) == 8388613 || (gravity & 5) == 5) {
                    if (c3189c.f9281D) {
                        f13 = c3189c.f9305a0;
                        f12 = f13 + fMax;
                    } else {
                        i10 = rect.right;
                        f12 = i10;
                    }
                } else if (c3189c.f9281D) {
                    i10 = rect.right;
                    f12 = i10;
                } else {
                    f13 = c3189c.f9305a0;
                    f12 = f13 + fMax;
                }
                rectF.right = Math.min(f12, rect.right);
                rectF.bottom = c3189c.m5119f() + rect.top;
                if (c3189c.f9303Z != null && !c3189c.m5127o()) {
                    StaticLayout staticLayout = c3189c.f9303Z;
                    lineWidth = (c3189c.f9320i / c3189c.f9318h) * staticLayout.getLineWidth(staticLayout.getLineCount() - 1);
                    if (c3189c.f9281D) {
                        rectF.left = rectF.right - lineWidth;
                    } else {
                        rectF.right = rectF.left + lineWidth;
                    }
                }
                if (rectF.width() > 0.0f || rectF.height() <= 0.0f) {
                }
                float f14 = rectF.left;
                float f15 = this.f2505P;
                rectF.left = f14 - f15;
                rectF.right += f15;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.f2508S);
                rectF.top = 0.0f;
                C1474g c1474g = (C1474g) this.f2497H;
                c1474g.getClass();
                c1474g.m2533y(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f8 = width / 2.0f;
            f10 = c3189c.f9305a0 / 2.0f;
            f11 = f8 - f10;
            float fMax2 = Math.max(f11, rect.left);
            rectF = this.f2517c0;
            rectF.left = fMax2;
            rectF.top = rect.top;
            if (gravity != 17) {
                f12 = (width / 2.0f) + (c3189c.f9305a0 / 2.0f);
            } else {
                f12 = (width / 2.0f) + (c3189c.f9305a0 / 2.0f);
            }
            rectF.right = Math.min(f12, rect.right);
            rectF.bottom = c3189c.m5119f() + rect.top;
            if (c3189c.f9303Z != null) {
                StaticLayout staticLayout2 = c3189c.f9303Z;
                lineWidth = (c3189c.f9320i / c3189c.f9318h) * staticLayout2.getLineWidth(staticLayout2.getLineCount() - 1);
                if (c3189c.f9281D) {
                    rectF.left = rectF.right - lineWidth;
                } else {
                    rectF.right = rectF.left + lineWidth;
                }
            }
            if (rectF.width() > 0.0f) {
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public final void m1859n(AppCompatTextView appCompatTextView, int i10) {
        try {
            TextViewCompat.setTextAppearance(appCompatTextView, i10);
            if (appCompatTextView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        TextViewCompat.setTextAppearance(appCompatTextView, C0148R.style.TextAppearance_AppCompat_Caption);
        appCompatTextView.setTextColor(ContextCompat.getColor(getContext(), com.example.navistart.R.color.design_error));
    }

    /* JADX INFO: renamed from: o */
    public final boolean m1860o() {
        C1487t c1487t = this.f2534l;
        return (c1487t.f3649o != 1 || c1487t.f3652r == null || TextUtils.isEmpty(c1487t.f3650p)) ? false : true;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f2559x0.m5121i(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int iMax;
        C1483p c1483p = this.f2518d;
        c1483p.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z9 = false;
        this.f2493D0 = false;
        if (this.f2522f != null && this.f2522f.getMeasuredHeight() < (iMax = Math.max(c1483p.getMeasuredHeight(), this.f2516c.getMeasuredHeight()))) {
            this.f2522f.setMinimumHeight(iMax);
            z9 = true;
        }
        boolean zM1864s = m1864s();
        if (z9 || zM1864s) {
            this.f2522f.post(new RunnableC0014g(27, this));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        float fDescent;
        int i14;
        int compoundPaddingTop;
        super.onLayout(z9, i10, i11, i12, i13);
        EditText editText = this.f2522f;
        if (editText != null) {
            Rect rect = this.f2513a0;
            AbstractC3190d.m5128a(this, editText, rect);
            C3725k c3725k = this.f2501L;
            if (c3725k != null) {
                int i15 = rect.bottom;
                c3725k.setBounds(rect.left, i15 - this.f2509T, rect.right, i15);
            }
            C3725k c3725k2 = this.f2502M;
            if (c3725k2 != null) {
                int i16 = rect.bottom;
                c3725k2.setBounds(rect.left, i16 - this.f2510U, rect.right, i16);
            }
            if (this.f2494E) {
                float textSize = this.f2522f.getTextSize();
                C3189c c3189c = this.f2559x0;
                float f8 = c3189c.f9318h;
                TextPaint textPaint = c3189c.f9293P;
                if (f8 != textSize) {
                    c3189c.f9318h = textSize;
                    c3189c.m5122j(false);
                }
                int gravity = this.f2522f.getGravity();
                int i17 = (gravity & (-113)) | 48;
                if (c3189c.f9316g != i17) {
                    c3189c.f9316g = i17;
                    c3189c.m5122j(false);
                }
                if (c3189c.f9314f != gravity) {
                    c3189c.f9314f = gravity;
                    c3189c.m5122j(false);
                }
                Rect rectM1850d = m1850d(rect);
                int i18 = rectM1850d.left;
                int i19 = rectM1850d.top;
                int i20 = rectM1850d.right;
                int i21 = rectM1850d.bottom;
                Rect rect2 = c3189c.f9310d;
                if (rect2.left != i18 || rect2.top != i19 || rect2.right != i20 || rect2.bottom != i21) {
                    rect2.set(i18, i19, i20, i21);
                    c3189c.f9291N = true;
                }
                if (this.f2522f == null) {
                    throw new IllegalStateException();
                }
                if (getHintMaxLines() == 1) {
                    textPaint.setTextSize(c3189c.f9318h);
                    textPaint.setTypeface(c3189c.f9336v);
                    textPaint.setLetterSpacing(c3189c.f9301X);
                    fDescent = -textPaint.ascent();
                } else {
                    textPaint.setTextSize(c3189c.f9318h);
                    textPaint.setTypeface(c3189c.f9336v);
                    textPaint.setLetterSpacing(c3189c.f9301X);
                    fDescent = c3189c.f9326l * (textPaint.descent() + (-textPaint.ascent()));
                }
                int compoundPaddingLeft = this.f2522f.getCompoundPaddingLeft() + rect.left;
                Rect rect3 = this.f2515b0;
                rect3.left = compoundPaddingLeft;
                if (this.f2506Q != 1 || this.f2522f.getMinLines() > 1) {
                    if (this.f2506Q != 0 || getHintMaxLines() == 1) {
                        i14 = 0;
                    } else {
                        textPaint.setTextSize(c3189c.f9318h);
                        textPaint.setTypeface(c3189c.f9336v);
                        textPaint.setLetterSpacing(c3189c.f9301X);
                        i14 = (int) ((-textPaint.ascent()) / 2.0f);
                    }
                    compoundPaddingTop = (this.f2522f.getCompoundPaddingTop() + rect.top) - i14;
                } else {
                    compoundPaddingTop = (int) (rect.centerY() - (fDescent / 2.0f));
                }
                rect3.top = compoundPaddingTop;
                rect3.right = rect.right - this.f2522f.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.f2506Q != 1 || this.f2522f.getMinLines() > 1) ? rect.bottom - this.f2522f.getCompoundPaddingBottom() : (int) (rect3.top + fDescent);
                rect3.bottom = compoundPaddingBottom;
                int i22 = rect3.left;
                int i23 = rect3.top;
                int i24 = rect3.right;
                Rect rect4 = c3189c.f9308c;
                if (rect4.left != i22 || rect4.top != i23 || rect4.right != i24 || rect4.bottom != compoundPaddingBottom || true != c3189c.f9325k0) {
                    rect4.set(i22, i23, i24, compoundPaddingBottom);
                    c3189c.f9291N = true;
                    c3189c.f9325k0 = true;
                }
                c3189c.m5122j(false);
                if (!m1853g() || this.f2557w0) {
                    return;
                }
                m1858l();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        float f8;
        EditText editText;
        super.onMeasure(i10, i11);
        boolean z9 = this.f2493D0;
        C1483p c1483p = this.f2518d;
        if (!z9) {
            c1483p.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.f2493D0 = true;
        }
        if (this.f2554v != null && (editText = this.f2522f) != null) {
            this.f2554v.setGravity(editText.getGravity());
            this.f2554v.setPadding(this.f2522f.getCompoundPaddingLeft(), this.f2522f.getCompoundPaddingTop(), this.f2522f.getCompoundPaddingRight(), this.f2522f.getCompoundPaddingBottom());
        }
        c1483p.m2555m();
        if (getHintMaxLines() == 1) {
            return;
        }
        int measuredWidth = (this.f2522f.getMeasuredWidth() - this.f2522f.getCompoundPaddingLeft()) - this.f2522f.getCompoundPaddingRight();
        C3189c c3189c = this.f2559x0;
        TextPaint textPaint = c3189c.f9293P;
        textPaint.setTextSize(c3189c.f9320i);
        textPaint.setTypeface(c3189c.f9333s);
        textPaint.setLetterSpacing(c3189c.f9300W);
        float f10 = measuredWidth;
        c3189c.f9321i0 = c3189c.m5118e(c3189c.f9315f0, textPaint, c3189c.f9279B, (c3189c.f9320i / c3189c.f9318h) * f10, c3189c.f9281D).getHeight();
        textPaint.setTextSize(c3189c.f9318h);
        textPaint.setTypeface(c3189c.f9336v);
        textPaint.setLetterSpacing(c3189c.f9301X);
        c3189c.f9323j0 = c3189c.m5118e(c3189c.f9313e0, textPaint, c3189c.f9279B, f10, c3189c.f9281D).getHeight();
        EditText editText2 = this.f2522f;
        Rect rect = this.f2513a0;
        AbstractC3190d.m5128a(this, editText2, rect);
        Rect rectM1850d = m1850d(rect);
        int i12 = rectM1850d.left;
        int i13 = rectM1850d.top;
        int i14 = rectM1850d.right;
        int i15 = rectM1850d.bottom;
        Rect rect2 = c3189c.f9310d;
        if (rect2.left != i12 || rect2.top != i13 || rect2.right != i14 || rect2.bottom != i15) {
            rect2.set(i12, i13, i14, i15);
            c3189c.f9291N = true;
        }
        m1867v();
        m1847a();
        if (this.f2522f == null) {
            return;
        }
        int i16 = c3189c.f9323j0;
        if (i16 != -1) {
            f8 = i16;
        } else {
            TextPaint textPaint2 = c3189c.f9293P;
            textPaint2.setTextSize(c3189c.f9318h);
            textPaint2.setTypeface(c3189c.f9336v);
            textPaint2.setLetterSpacing(c3189c.f9301X);
            f8 = -textPaint2.ascent();
        }
        float fM5119f = 0.0f;
        if (this.f2550t != null) {
            TextPaint textPaint3 = new TextPaint(129);
            textPaint3.set(this.f2554v.getPaint());
            textPaint3.setTextSize(this.f2554v.getTextSize());
            textPaint3.setTypeface(this.f2554v.getTypeface());
            textPaint3.setLetterSpacing(this.f2554v.getLetterSpacing());
            C3194h c3194h = new C3194h(this.f2550t, textPaint3, measuredWidth);
            c3194h.f9359k = getLayoutDirection() == 1;
            c3194h.f9358j = true;
            float lineSpacingExtra = this.f2554v.getLineSpacingExtra();
            float lineSpacingMultiplier = this.f2554v.getLineSpacingMultiplier();
            c3194h.f9355g = lineSpacingExtra;
            c3194h.f9356h = lineSpacingMultiplier;
            c3194h.f9361m = new C0566h(8, this);
            fM5119f = (this.f2506Q == 1 ? c3189c.m5119f() + this.f2507R + this.f2520e : 0.0f) + c3194h.m5130a().getHeight();
        }
        float fMax = Math.max(f8, fM5119f);
        if (this.f2522f.getMeasuredHeight() < fMax) {
            this.f2522f.setMinimumHeight(Math.round(fMax));
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1470c0)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1470c0 c1470c0 = (C1470c0) parcelable;
        super.onRestoreInstanceState(c1470c0.getSuperState());
        setError(c1470c0.f3560b);
        if (c1470c0.f3561c) {
            post(new RunnableC1054m(3, this));
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        boolean z9 = i10 == 1;
        if (z9 != this.f2504O) {
            InterfaceC3717d interfaceC3717d = this.f2503N.f11090e;
            RectF rectF = this.f2517c0;
            float fMo5920a = interfaceC3717d.mo5920a(rectF);
            float fMo5920a2 = this.f2503N.f11091f.mo5920a(rectF);
            float fMo5920a3 = this.f2503N.f11093h.mo5920a(rectF);
            float fMo5920a4 = this.f2503N.f11092g.mo5920a(rectF);
            C3729o c3729o = this.f2503N;
            AbstractC0000a abstractC0000a = c3729o.f11086a;
            AbstractC0000a abstractC0000a2 = c3729o.f11087b;
            AbstractC0000a abstractC0000a3 = c3729o.f11089d;
            AbstractC0000a abstractC0000a4 = c3729o.f11088c;
            C3720f c3720f = new C3720f(0);
            C3720f c3720f2 = new C3720f(0);
            C3720f c3720f3 = new C3720f(0);
            C3720f c3720f4 = new C3720f(0);
            C3711a c3711a = new C3711a(fMo5920a2);
            C3711a c3711a2 = new C3711a(fMo5920a);
            C3711a c3711a3 = new C3711a(fMo5920a4);
            C3711a c3711a4 = new C3711a(fMo5920a3);
            C3729o c3729o2 = new C3729o();
            c3729o2.f11086a = abstractC0000a2;
            c3729o2.f11087b = abstractC0000a;
            c3729o2.f11088c = abstractC0000a3;
            c3729o2.f11089d = abstractC0000a4;
            c3729o2.f11090e = c3711a;
            c3729o2.f11091f = c3711a2;
            c3729o2.f11092g = c3711a4;
            c3729o2.f11093h = c3711a3;
            c3729o2.f11094i = c3720f;
            c3729o2.f11095j = c3720f2;
            c3729o2.f11096k = c3720f3;
            c3729o2.f11097l = c3720f4;
            this.f2504O = z9;
            setShapeAppearanceModel(c3729o2);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C1470c0 c1470c0 = new C1470c0(super.onSaveInstanceState());
        if (m1860o()) {
            c1470c0.f3560b = getError();
        }
        C1483p c1483p = this.f2518d;
        c1470c0.f3561c = c1483p.f3609j != 0 && c1483p.f3607h.f2371b;
        return c1470c0;
    }

    /* JADX INFO: renamed from: p */
    public final void m1861p(Editable editable) {
        ((C1357g) this.f2542p).getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z9 = this.f2540o;
        int i10 = this.f2538n;
        if (i10 == -1) {
            this.f2544q.setText(String.valueOf(length));
            this.f2544q.setContentDescription(null);
            this.f2540o = false;
        } else {
            this.f2540o = length > i10;
            Context context = getContext();
            this.f2544q.setContentDescription(context.getString(this.f2540o ? com.example.navistart.R.string.character_counter_overflowed_content_description : com.example.navistart.R.string.character_counter_content_description, Integer.valueOf(length), Integer.valueOf(this.f2538n)));
            if (z9 != this.f2540o) {
                m1862q();
            }
            this.f2544q.setText(BidiFormatter.getInstance().unicodeWrap(getContext().getString(com.example.navistart.R.string.character_counter_pattern, Integer.valueOf(length), Integer.valueOf(this.f2538n))));
        }
        if (this.f2522f == null || z9 == this.f2540o) {
            return;
        }
        m1868w(false, false);
        m1871z();
        m1865t();
    }

    /* JADX INFO: renamed from: q */
    public final void m1862q() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.f2544q;
        if (appCompatTextView != null) {
            m1859n(appCompatTextView, this.f2540o ? this.f2546r : this.f2548s);
            if (!this.f2540o && (colorStateList2 = this.f2486A) != null) {
                this.f2544q.setTextColor(colorStateList2);
            }
            if (!this.f2540o || (colorStateList = this.f2488B) == null) {
                return;
            }
            this.f2544q.setTextColor(colorStateList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    /* JADX INFO: renamed from: r */
    public final void m1863r() {
        ColorStateList colorStateList;
        ColorStateList colorStateListValueOf = this.f2490C;
        if (colorStateListValueOf == null) {
            Context context = getContext();
            TypedValue typedValueM5584a = AbstractC3517b.m5584a(C0148R.attr.colorControlActivated, context);
            if (typedValueM5584a != null) {
                int i10 = typedValueM5584a.resourceId;
                if (i10 != 0) {
                    colorStateListValueOf = ContextCompat.getColorStateList(context, i10);
                } else {
                    int i11 = typedValueM5584a.data;
                    if (i11 != 0) {
                        colorStateListValueOf = ColorStateList.valueOf(i11);
                    } else {
                        colorStateListValueOf = null;
                    }
                }
            } else {
                colorStateListValueOf = null;
            }
        }
        EditText editText = this.f2522f;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable drawableMutate = DrawableCompat.wrap(this.f2522f.getTextCursorDrawable()).mutate();
        if ((m1860o() || (this.f2544q != null && this.f2540o)) && (colorStateList = this.f2492D) != null) {
            colorStateListValueOf = colorStateList;
        }
        drawableMutate.setTintList(colorStateListValueOf);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005f  */
    /* JADX WARN: Code duplicated, block: B:23:0x0063  */
    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    /* JADX INFO: renamed from: s */
    public final boolean m1864s() {
        boolean z9;
        if (this.f2522f == null) {
            return false;
        }
        CheckableImageButton checkableImageButton = null;
        boolean z10 = true;
        if (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) {
            C1492y c1492y = this.f2516c;
            if (c1492y.getMeasuredWidth() > 0) {
                int measuredWidth = c1492y.getMeasuredWidth() - this.f2522f.getPaddingLeft();
                if (this.f2521e0 == null || this.f2523f0 != measuredWidth) {
                    ColorDrawable colorDrawable = new ColorDrawable();
                    this.f2521e0 = colorDrawable;
                    this.f2523f0 = measuredWidth;
                    colorDrawable.setBounds(0, 0, measuredWidth, 1);
                }
                Drawable[] compoundDrawablesRelative = this.f2522f.getCompoundDrawablesRelative();
                Drawable drawable = compoundDrawablesRelative[0];
                ColorDrawable colorDrawable2 = this.f2521e0;
                if (drawable != colorDrawable2) {
                    this.f2522f.setCompoundDrawablesRelative(colorDrawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                    z9 = true;
                } else {
                    z9 = false;
                }
            } else if (this.f2521e0 != null) {
                Drawable[] compoundDrawablesRelative2 = this.f2522f.getCompoundDrawablesRelative();
                this.f2522f.setCompoundDrawablesRelative(null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.f2521e0 = null;
                z9 = true;
            } else {
                z9 = false;
            }
        } else if (this.f2521e0 != null) {
            Drawable[] compoundDrawablesRelative3 = this.f2522f.getCompoundDrawablesRelative();
            this.f2522f.setCompoundDrawablesRelative(null, compoundDrawablesRelative3[1], compoundDrawablesRelative3[2], compoundDrawablesRelative3[3]);
            this.f2521e0 = null;
            z9 = true;
        } else {
            z9 = false;
        }
        C1483p c1483p = this.f2518d;
        if ((c1483p.m2547e() || ((c1483p.f3609j != 0 && c1483p.m2546d()) || c1483p.f3616q != null)) && c1483p.getMeasuredWidth() > 0) {
            int measuredWidth2 = c1483p.f3617r.getMeasuredWidth() - this.f2522f.getPaddingRight();
            if (c1483p.m2547e()) {
                checkableImageButton = c1483p.f3603d;
            } else if (c1483p.f3609j != 0 && c1483p.m2546d()) {
                checkableImageButton = c1483p.f3607h;
            }
            if (checkableImageButton != null) {
                measuredWidth2 = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth() + measuredWidth2;
            }
            Drawable[] compoundDrawablesRelative4 = this.f2522f.getCompoundDrawablesRelative();
            ColorDrawable colorDrawable3 = this.f2527h0;
            if (colorDrawable3 != null && this.f2529i0 != measuredWidth2) {
                this.f2529i0 = measuredWidth2;
                colorDrawable3.setBounds(0, 0, measuredWidth2, 1);
                this.f2522f.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.f2527h0, compoundDrawablesRelative4[3]);
                return true;
            }
            if (colorDrawable3 == null) {
                ColorDrawable colorDrawable4 = new ColorDrawable();
                this.f2527h0 = colorDrawable4;
                this.f2529i0 = measuredWidth2;
                colorDrawable4.setBounds(0, 0, measuredWidth2, 1);
            }
            Drawable drawable2 = compoundDrawablesRelative4[2];
            ColorDrawable colorDrawable5 = this.f2527h0;
            if (drawable2 != colorDrawable5) {
                this.f2531j0 = drawable2;
                this.f2522f.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], colorDrawable5, compoundDrawablesRelative4[3]);
                return true;
            }
        } else if (this.f2527h0 != null) {
            Drawable[] compoundDrawablesRelative5 = this.f2522f.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative5[2] == this.f2527h0) {
                this.f2522f.setCompoundDrawablesRelative(compoundDrawablesRelative5[0], compoundDrawablesRelative5[1], this.f2531j0, compoundDrawablesRelative5[3]);
            } else {
                z10 = z9;
            }
            this.f2527h0 = null;
            return z10;
        }
        return z9;
    }

    public void setBoxBackgroundColor(@ColorInt int i10) {
        if (this.f2512W != i10) {
            this.f2512W = i10;
            this.f2545q0 = i10;
            this.f2549s0 = i10;
            this.f2551t0 = i10;
            m1849c();
        }
    }

    public void setBoxBackgroundColorResource(@ColorRes int i10) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i10));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f2545q0 = defaultColor;
        this.f2512W = defaultColor;
        this.f2547r0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f2549s0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.f2551t0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        m1849c();
    }

    public void setBoxBackgroundMode(int i10) {
        if (i10 == this.f2506Q) {
            return;
        }
        this.f2506Q = i10;
        if (this.f2522f != null) {
            m1857k();
        }
    }

    public void setBoxCollapsedPaddingTop(int i10) {
        this.f2507R = i10;
    }

    public void setBoxCornerFamily(int i10) {
        C3728n c3728nM5963g = this.f2503N.m5963g();
        InterfaceC3717d interfaceC3717d = this.f2503N.f11090e;
        c3728nM5963g.f11073a = AbstractC0880u.m998e(i10);
        c3728nM5963g.f11077e = interfaceC3717d;
        InterfaceC3717d interfaceC3717d2 = this.f2503N.f11091f;
        c3728nM5963g.f11074b = AbstractC0880u.m998e(i10);
        c3728nM5963g.f11078f = interfaceC3717d2;
        InterfaceC3717d interfaceC3717d3 = this.f2503N.f11093h;
        c3728nM5963g.f11076d = AbstractC0880u.m998e(i10);
        c3728nM5963g.f11080h = interfaceC3717d3;
        InterfaceC3717d interfaceC3717d4 = this.f2503N.f11092g;
        c3728nM5963g.f11075c = AbstractC0880u.m998e(i10);
        c3728nM5963g.f11079g = interfaceC3717d4;
        this.f2503N = c3728nM5963g.m5956a();
        m1849c();
    }

    public void setBoxStrokeColor(@ColorInt int i10) {
        if (this.f2541o0 != i10) {
            this.f2541o0 = i10;
            m1871z();
        }
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f2537m0 = colorStateList.getDefaultColor();
            this.f2553u0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f2539n0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.f2541o0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.f2541o0 != colorStateList.getDefaultColor()) {
            this.f2541o0 = colorStateList.getDefaultColor();
        }
        m1871z();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.f2543p0 != colorStateList) {
            this.f2543p0 = colorStateList;
            m1871z();
        }
    }

    public void setBoxStrokeWidth(int i10) {
        this.f2509T = i10;
        m1871z();
    }

    public void setBoxStrokeWidthFocused(int i10) {
        this.f2510U = i10;
        m1871z();
    }

    public void setBoxStrokeWidthFocusedResource(@DimenRes int i10) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i10));
    }

    public void setBoxStrokeWidthResource(@DimenRes int i10) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public void setCounterEnabled(boolean z9) {
        if (this.f2536m != z9) {
            C1487t c1487t = this.f2534l;
            if (z9) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f2544q = appCompatTextView;
                appCompatTextView.setId(com.example.navistart.R.id.textinput_counter);
                Typeface typeface = this.f2519d0;
                if (typeface != null) {
                    this.f2544q.setTypeface(typeface);
                }
                this.f2544q.setMaxLines(1);
                c1487t.m2560a(this.f2544q, 2);
                ((ViewGroup.MarginLayoutParams) this.f2544q.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(com.example.navistart.R.dimen.mtrl_textinput_counter_margin_start));
                m1862q();
                if (this.f2544q != null) {
                    EditText editText = this.f2522f;
                    m1861p(editText != null ? editText.getText() : null);
                }
            } else {
                c1487t.m2566g(this.f2544q, 2);
                this.f2544q = null;
            }
            this.f2536m = z9;
        }
    }

    public void setCounterMaxLength(int i10) {
        if (this.f2538n != i10) {
            if (i10 > 0) {
                this.f2538n = i10;
            } else {
                this.f2538n = -1;
            }
            if (!this.f2536m || this.f2544q == null) {
                return;
            }
            EditText editText = this.f2522f;
            m1861p(editText == null ? null : editText.getText());
        }
    }

    public void setCounterOverflowTextAppearance(int i10) {
        if (this.f2546r != i10) {
            this.f2546r = i10;
            m1862q();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f2488B != colorStateList) {
            this.f2488B = colorStateList;
            m1862q();
        }
    }

    public void setCounterTextAppearance(int i10) {
        if (this.f2548s != i10) {
            this.f2548s = i10;
            m1862q();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f2486A != colorStateList) {
            this.f2486A = colorStateList;
            m1862q();
        }
    }

    @RequiresApi(29)
    public void setCursorColor(@Nullable ColorStateList colorStateList) {
        if (this.f2490C != colorStateList) {
            this.f2490C = colorStateList;
            m1863r();
        }
    }

    @RequiresApi(29)
    public void setCursorErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.f2492D != colorStateList) {
            this.f2492D = colorStateList;
            if (m1860o() || (this.f2544q != null && this.f2540o)) {
                m1863r();
            }
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.f2533k0 = colorStateList;
        this.f2535l0 = colorStateList;
        if (this.f2522f != null) {
            m1868w(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z9) {
        m1846m(this, z9);
        super.setEnabled(z9);
    }

    public void setEndIconActivated(boolean z9) {
        this.f2518d.f3607h.setActivated(z9);
    }

    public void setEndIconCheckable(boolean z9) {
        this.f2518d.f3607h.setCheckable(z9);
    }

    public void setEndIconContentDescription(@StringRes int i10) {
        C1483p c1483p = this.f2518d;
        CharSequence text = i10 != 0 ? c1483p.getResources().getText(i10) : null;
        CheckableImageButton checkableImageButton = c1483p.f3607h;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    public void setEndIconDrawable(@DrawableRes int i10) {
        C1483p c1483p = this.f2518d;
        Drawable drawable = i10 != 0 ? AppCompatResources.getDrawable(c1483p.getContext(), i10) : null;
        TextInputLayout textInputLayout = c1483p.f3601b;
        CheckableImageButton checkableImageButton = c1483p.f3607h;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            AbstractC3656k.m5856b(textInputLayout, checkableImageButton, c1483p.f3611l, c1483p.f3612m);
            AbstractC3656k.m5869o(textInputLayout, checkableImageButton, c1483p.f3611l);
        }
    }

    public void setEndIconMinSize(@IntRange(from = ULong.MIN_VALUE) int i10) {
        C1483p c1483p = this.f2518d;
        if (i10 < 0) {
            c1483p.getClass();
            C1929i.m3029k("endIconSize cannot be less than 0");
        } else if (i10 != c1483p.f3613n) {
            c1483p.f3613n = i10;
            CheckableImageButton checkableImageButton = c1483p.f3607h;
            checkableImageButton.setMinimumWidth(i10);
            checkableImageButton.setMinimumHeight(i10);
            CheckableImageButton checkableImageButton2 = c1483p.f3603d;
            checkableImageButton2.setMinimumWidth(i10);
            checkableImageButton2.setMinimumHeight(i10);
        }
    }

    public void setEndIconMode(int i10) {
        this.f2518d.m2549g(i10);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        C1483p c1483p = this.f2518d;
        CheckableImageButton checkableImageButton = c1483p.f3607h;
        View.OnLongClickListener onLongClickListener = c1483p.f3615p;
        checkableImageButton.setOnClickListener(onClickListener);
        AbstractC3656k.m5873s(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        C1483p c1483p = this.f2518d;
        c1483p.f3615p = onLongClickListener;
        CheckableImageButton checkableImageButton = c1483p.f3607h;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        AbstractC3656k.m5873s(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        C1483p c1483p = this.f2518d;
        c1483p.f3614o = scaleType;
        c1483p.f3607h.setScaleType(scaleType);
        c1483p.f3603d.setScaleType(scaleType);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        C1483p c1483p = this.f2518d;
        if (c1483p.f3611l != colorStateList) {
            c1483p.f3611l = colorStateList;
            AbstractC3656k.m5856b(c1483p.f3601b, c1483p.f3607h, colorStateList, c1483p.f3612m);
        }
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        C1483p c1483p = this.f2518d;
        if (c1483p.f3612m != mode) {
            c1483p.f3612m = mode;
            AbstractC3656k.m5856b(c1483p.f3601b, c1483p.f3607h, c1483p.f3611l, mode);
        }
    }

    public void setEndIconVisible(boolean z9) {
        this.f2518d.m2550h(z9);
    }

    public void setError(@Nullable CharSequence charSequence) {
        C1487t c1487t = this.f2534l;
        if (!c1487t.f3651q) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            c1487t.m2565f();
            return;
        }
        c1487t.m2562c();
        c1487t.f3650p = charSequence;
        c1487t.f3652r.setText(charSequence);
        int i10 = c1487t.f3648n;
        if (i10 != 1) {
            c1487t.f3649o = 1;
        }
        c1487t.m2568i(i10, c1487t.f3649o, c1487t.m2567h(c1487t.f3652r, charSequence));
    }

    public void setErrorAccessibilityLiveRegion(int i10) {
        C1487t c1487t = this.f2534l;
        c1487t.f3654t = i10;
        AppCompatTextView appCompatTextView = c1487t.f3652r;
        if (appCompatTextView != null) {
            appCompatTextView.setAccessibilityLiveRegion(i10);
        }
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        C1487t c1487t = this.f2534l;
        c1487t.f3653s = charSequence;
        AppCompatTextView appCompatTextView = c1487t.f3652r;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z9) {
        C1487t c1487t = this.f2534l;
        TextInputLayout textInputLayout = c1487t.f3642h;
        if (c1487t.f3651q == z9) {
            return;
        }
        c1487t.m2562c();
        if (z9) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(c1487t.f3641g);
            c1487t.f3652r = appCompatTextView;
            appCompatTextView.setId(com.example.navistart.R.id.textinput_error);
            c1487t.f3652r.setTextAlignment(5);
            Typeface typeface = c1487t.f3634B;
            if (typeface != null) {
                c1487t.f3652r.setTypeface(typeface);
            }
            int i10 = c1487t.f3655u;
            c1487t.f3655u = i10;
            AppCompatTextView appCompatTextView2 = c1487t.f3652r;
            if (appCompatTextView2 != null) {
                c1487t.f3642h.m1859n(appCompatTextView2, i10);
            }
            ColorStateList colorStateList = c1487t.f3656v;
            c1487t.f3656v = colorStateList;
            AppCompatTextView appCompatTextView3 = c1487t.f3652r;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = c1487t.f3653s;
            c1487t.f3653s = charSequence;
            AppCompatTextView appCompatTextView4 = c1487t.f3652r;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            int i11 = c1487t.f3654t;
            c1487t.f3654t = i11;
            AppCompatTextView appCompatTextView5 = c1487t.f3652r;
            if (appCompatTextView5 != null) {
                appCompatTextView5.setAccessibilityLiveRegion(i11);
            }
            c1487t.f3652r.setVisibility(4);
            c1487t.m2560a(c1487t.f3652r, 0);
        } else {
            c1487t.m2565f();
            c1487t.m2566g(c1487t.f3652r, 0);
            c1487t.f3652r = null;
            textInputLayout.m1865t();
            textInputLayout.m1871z();
        }
        c1487t.f3651q = z9;
    }

    public void setErrorIconDrawable(@DrawableRes int i10) {
        C1483p c1483p = this.f2518d;
        c1483p.m2551i(i10 != 0 ? AppCompatResources.getDrawable(c1483p.getContext(), i10) : null);
        AbstractC3656k.m5869o(c1483p.f3601b, c1483p.f3603d, c1483p.f3604e);
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        C1483p c1483p = this.f2518d;
        CheckableImageButton checkableImageButton = c1483p.f3603d;
        View.OnLongClickListener onLongClickListener = c1483p.f3606g;
        checkableImageButton.setOnClickListener(onClickListener);
        AbstractC3656k.m5873s(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        C1483p c1483p = this.f2518d;
        c1483p.f3606g = onLongClickListener;
        CheckableImageButton checkableImageButton = c1483p.f3603d;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        AbstractC3656k.m5873s(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        C1483p c1483p = this.f2518d;
        if (c1483p.f3604e != colorStateList) {
            c1483p.f3604e = colorStateList;
            AbstractC3656k.m5856b(c1483p.f3601b, c1483p.f3603d, colorStateList, c1483p.f3605f);
        }
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        C1483p c1483p = this.f2518d;
        if (c1483p.f3605f != mode) {
            c1483p.f3605f = mode;
            AbstractC3656k.m5856b(c1483p.f3601b, c1483p.f3603d, c1483p.f3604e, mode);
        }
    }

    public void setErrorTextAppearance(@StyleRes int i10) {
        C1487t c1487t = this.f2534l;
        c1487t.f3655u = i10;
        AppCompatTextView appCompatTextView = c1487t.f3652r;
        if (appCompatTextView != null) {
            c1487t.f3642h.m1859n(appCompatTextView, i10);
        }
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        C1487t c1487t = this.f2534l;
        c1487t.f3656v = colorStateList;
        AppCompatTextView appCompatTextView = c1487t.f3652r;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z9) {
        if (this.f2561y0 != z9) {
            this.f2561y0 = z9;
            m1868w(false, false);
        }
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        C1487t c1487t = this.f2534l;
        if (zIsEmpty) {
            if (c1487t.f3658x) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!c1487t.f3658x) {
            setHelperTextEnabled(true);
        }
        c1487t.m2562c();
        c1487t.f3657w = charSequence;
        c1487t.f3659y.setText(charSequence);
        int i10 = c1487t.f3648n;
        if (i10 != 2) {
            c1487t.f3649o = 2;
        }
        c1487t.m2568i(i10, c1487t.f3649o, c1487t.m2567h(c1487t.f3659y, charSequence));
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        C1487t c1487t = this.f2534l;
        c1487t.f3633A = colorStateList;
        AppCompatTextView appCompatTextView = c1487t.f3659y;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z9) {
        C1487t c1487t = this.f2534l;
        TextInputLayout textInputLayout = c1487t.f3642h;
        if (c1487t.f3658x == z9) {
            return;
        }
        c1487t.m2562c();
        if (z9) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(c1487t.f3641g);
            c1487t.f3659y = appCompatTextView;
            appCompatTextView.setId(com.example.navistart.R.id.textinput_helper_text);
            c1487t.f3659y.setTextAlignment(5);
            Typeface typeface = c1487t.f3634B;
            if (typeface != null) {
                c1487t.f3659y.setTypeface(typeface);
            }
            c1487t.f3659y.setVisibility(4);
            c1487t.f3659y.setAccessibilityLiveRegion(1);
            int i10 = c1487t.f3660z;
            c1487t.f3660z = i10;
            AppCompatTextView appCompatTextView2 = c1487t.f3659y;
            if (appCompatTextView2 != null) {
                TextViewCompat.setTextAppearance(appCompatTextView2, i10);
            }
            ColorStateList colorStateList = c1487t.f3633A;
            c1487t.f3633A = colorStateList;
            AppCompatTextView appCompatTextView3 = c1487t.f3659y;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            c1487t.m2560a(c1487t.f3659y, 1);
            c1487t.f3659y.setAccessibilityDelegate(new C1486s(c1487t));
        } else {
            c1487t.m2562c();
            int i11 = c1487t.f3648n;
            if (i11 == 2) {
                c1487t.f3649o = 0;
            }
            c1487t.m2568i(i11, c1487t.f3649o, c1487t.m2567h(c1487t.f3659y, ""));
            c1487t.m2566g(c1487t.f3659y, 1);
            c1487t.f3659y = null;
            textInputLayout.m1865t();
            textInputLayout.m1871z();
        }
        c1487t.f3658x = z9;
    }

    public void setHelperTextTextAppearance(@StyleRes int i10) {
        C1487t c1487t = this.f2534l;
        c1487t.f3660z = i10;
        AppCompatTextView appCompatTextView = c1487t.f3659y;
        if (appCompatTextView != null) {
            TextViewCompat.setTextAppearance(appCompatTextView, i10);
        }
    }

    public void setHint(@StringRes int i10) {
        setHint(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setHintAnimationEnabled(boolean z9) {
        this.f2563z0 = z9;
    }

    public void setHintEnabled(boolean z9) {
        if (z9 != this.f2494E) {
            this.f2494E = z9;
            if (z9) {
                CharSequence hint = this.f2522f.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f2495F)) {
                        setHint(hint);
                    }
                    this.f2522f.setHint((CharSequence) null);
                }
                this.f2496G = true;
            } else {
                this.f2496G = false;
                if (!TextUtils.isEmpty(this.f2495F) && TextUtils.isEmpty(this.f2522f.getHint())) {
                    this.f2522f.setHint(this.f2495F);
                }
                setHintInternal(null);
            }
            if (this.f2522f != null) {
                m1867v();
            }
        }
    }

    public void setHintMaxLines(int i10) {
        C3189c c3189c = this.f2559x0;
        if (i10 != c3189c.f9315f0) {
            c3189c.f9315f0 = i10;
            c3189c.m5122j(false);
        }
        if (i10 != c3189c.f9313e0) {
            c3189c.f9313e0 = i10;
            c3189c.m5122j(false);
        }
        requestLayout();
    }

    public void setHintTextAppearance(@StyleRes int i10) {
        C3189c c3189c = this.f2559x0;
        TextInputLayout textInputLayout = c3189c.f9304a;
        C3521f c3521f = new C3521f(textInputLayout.getContext(), i10);
        ColorStateList colorStateList = c3521f.f10451k;
        if (colorStateList != null) {
            c3189c.f9324k = colorStateList;
        }
        float f8 = c3521f.f10452l;
        if (f8 != 0.0f) {
            c3189c.f9320i = f8;
        }
        ColorStateList colorStateList2 = c3521f.f10441a;
        if (colorStateList2 != null) {
            c3189c.f9299V = colorStateList2;
        }
        c3189c.f9297T = c3521f.f10446f;
        c3189c.f9298U = c3521f.f10447g;
        c3189c.f9296S = c3521f.f10448h;
        c3189c.f9300W = c3521f.f10450j;
        C3516a c3516a = c3189c.f9340z;
        if (c3516a != null) {
            c3516a.f10434c = true;
        }
        C2455p c2455p = new C2455p(10, c3189c);
        c3521f.m5591a();
        c3189c.f9340z = new C3516a(c2455p, c3521f.f10456p);
        c3521f.m5592b(textInputLayout.getContext(), c3189c.f9340z);
        c3189c.m5122j(false);
        this.f2535l0 = c3189c.f9324k;
        if (this.f2522f != null) {
            m1868w(false, false);
            m1867v();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f2535l0 != colorStateList) {
            if (this.f2533k0 == null) {
                C3189c c3189c = this.f2559x0;
                if (c3189c.f9324k != colorStateList) {
                    c3189c.f9324k = colorStateList;
                    c3189c.m5122j(false);
                }
            }
            this.f2535l0 = colorStateList;
            if (this.f2522f != null) {
                m1868w(false, false);
            }
        }
    }

    public void setLengthCounter(@NonNull InterfaceC1468b0 interfaceC1468b0) {
        this.f2542p = interfaceC1468b0;
    }

    public void setMaxEms(int i10) {
        this.f2528i = i10;
        EditText editText = this.f2522f;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxEms(i10);
    }

    public void setMaxWidth(@Px int i10) {
        this.f2532k = i10;
        EditText editText = this.f2522f;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxWidth(i10);
    }

    public void setMaxWidthResource(@DimenRes int i10) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    public void setMinEms(int i10) {
        this.f2526h = i10;
        EditText editText = this.f2522f;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinEms(i10);
    }

    public void setMinWidth(@Px int i10) {
        this.f2530j = i10;
        EditText editText = this.f2522f;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinWidth(i10);
    }

    public void setMinWidthResource(@DimenRes int i10) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i10) {
        C1483p c1483p = this.f2518d;
        c1483p.f3607h.setContentDescription(i10 != 0 ? c1483p.getResources().getText(i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i10) {
        C1483p c1483p = this.f2518d;
        c1483p.f3607h.setImageDrawable(i10 != 0 ? AppCompatResources.getDrawable(c1483p.getContext(), i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z9) {
        C1483p c1483p = this.f2518d;
        if (z9 && c1483p.f3609j != 1) {
            c1483p.m2549g(1);
        } else if (z9) {
            c1483p.getClass();
        } else {
            c1483p.m2549g(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        C1483p c1483p = this.f2518d;
        c1483p.f3611l = colorStateList;
        AbstractC3656k.m5856b(c1483p.f3601b, c1483p.f3607h, colorStateList, c1483p.f3612m);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        C1483p c1483p = this.f2518d;
        c1483p.f3612m = mode;
        AbstractC3656k.m5856b(c1483p.f3601b, c1483p.f3607h, c1483p.f3611l, mode);
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.f2554v == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f2554v = appCompatTextView;
            appCompatTextView.setId(com.example.navistart.R.id.textinput_placeholder);
            this.f2554v.setImportantForAccessibility(1);
            this.f2554v.setAccessibilityLiveRegion(1);
            Fade fadeM1852f = m1852f();
            this.f2560y = fadeM1852f;
            fadeM1852f.setStartDelay(67L);
            this.f2562z = m1852f();
            setPlaceholderTextAppearance(this.f2558x);
            setPlaceholderTextColor(this.f2556w);
            ViewCompat.setAccessibilityDelegate(this.f2554v, new C1096g(3));
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f2552u) {
                setPlaceholderTextEnabled(true);
            }
            this.f2550t = charSequence;
        }
        EditText editText = this.f2522f;
        m1869x(editText == null ? null : editText.getText());
    }

    public void setPlaceholderTextAppearance(@StyleRes int i10) {
        this.f2558x = i10;
        AppCompatTextView appCompatTextView = this.f2554v;
        if (appCompatTextView != null) {
            TextViewCompat.setTextAppearance(appCompatTextView, i10);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f2556w != colorStateList) {
            this.f2556w = colorStateList;
            AppCompatTextView appCompatTextView = this.f2554v;
            if (appCompatTextView == null || colorStateList == null) {
                return;
            }
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        C1492y c1492y = this.f2516c;
        c1492y.getClass();
        c1492y.f3678d = TextUtils.isEmpty(charSequence) ? null : charSequence;
        c1492y.f3677c.setText(charSequence);
        c1492y.m2577e();
    }

    public void setPrefixTextAppearance(@StyleRes int i10) {
        TextViewCompat.setTextAppearance(this.f2516c.f3677c, i10);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.f2516c.f3677c.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(@NonNull C3729o c3729o) {
        C3725k c3725k = this.f2497H;
        if (c3725k == null || c3725k.f11048c.f11021a == c3729o) {
            return;
        }
        this.f2503N = c3729o;
        m1849c();
    }

    public void setStartIconCheckable(boolean z9) {
        this.f2516c.f3679e.setCheckable(z9);
    }

    public void setStartIconContentDescription(@StringRes int i10) {
        setStartIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setStartIconDrawable(@DrawableRes int i10) {
        setStartIconDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    public void setStartIconMinSize(@IntRange(from = ULong.MIN_VALUE) int i10) {
        C1492y c1492y = this.f2516c;
        if (i10 < 0) {
            c1492y.getClass();
            C1929i.m3029k("startIconSize cannot be less than 0");
        } else if (i10 != c1492y.f3682h) {
            c1492y.f3682h = i10;
            CheckableImageButton checkableImageButton = c1492y.f3679e;
            checkableImageButton.setMinimumWidth(i10);
            checkableImageButton.setMinimumHeight(i10);
        }
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        C1492y c1492y = this.f2516c;
        CheckableImageButton checkableImageButton = c1492y.f3679e;
        View.OnLongClickListener onLongClickListener = c1492y.f3684j;
        checkableImageButton.setOnClickListener(onClickListener);
        AbstractC3656k.m5873s(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        C1492y c1492y = this.f2516c;
        c1492y.f3684j = onLongClickListener;
        CheckableImageButton checkableImageButton = c1492y.f3679e;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        AbstractC3656k.m5873s(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        C1492y c1492y = this.f2516c;
        c1492y.f3683i = scaleType;
        c1492y.f3679e.setScaleType(scaleType);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        C1492y c1492y = this.f2516c;
        if (c1492y.f3680f != colorStateList) {
            c1492y.f3680f = colorStateList;
            AbstractC3656k.m5856b(c1492y.f3676b, c1492y.f3679e, colorStateList, c1492y.f3681g);
        }
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        C1492y c1492y = this.f2516c;
        if (c1492y.f3681g != mode) {
            c1492y.f3681g = mode;
            AbstractC3656k.m5856b(c1492y.f3676b, c1492y.f3679e, c1492y.f3680f, mode);
        }
    }

    public void setStartIconVisible(boolean z9) {
        this.f2516c.m2575c(z9);
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        C1483p c1483p = this.f2518d;
        c1483p.getClass();
        c1483p.f3616q = TextUtils.isEmpty(charSequence) ? null : charSequence;
        c1483p.f3617r.setText(charSequence);
        c1483p.m2556n();
    }

    public void setSuffixTextAppearance(@StyleRes int i10) {
        TextViewCompat.setTextAppearance(this.f2518d.f3617r, i10);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.f2518d.f3617r.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable C1466a0 c1466a0) {
        EditText editText = this.f2522f;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, c1466a0);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.f2519d0) {
            this.f2519d0 = typeface;
            this.f2559x0.m5126n(typeface);
            C1487t c1487t = this.f2534l;
            if (typeface != c1487t.f3634B) {
                c1487t.f3634B = typeface;
                AppCompatTextView appCompatTextView = c1487t.f3652r;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = c1487t.f3659y;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.f2544q;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m1865t() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.f2522f;
        if (editText == null || this.f2506Q != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        if (m1860o()) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.f2540o && (appCompatTextView = this.f2544q) != null) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            DrawableCompat.clearColorFilter(background);
            this.f2522f.refreshDrawableState();
        }
    }

    /* JADX INFO: renamed from: u */
    public final void m1866u() {
        EditText editText = this.f2522f;
        if (editText == null || this.f2497H == null) {
            return;
        }
        if ((this.f2500K || editText.getBackground() == null) && this.f2506Q != 0) {
            this.f2522f.setBackground(getEditTextBoxBackground());
            this.f2500K = true;
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m1867v() {
        if (this.f2506Q != 1) {
            FrameLayout frameLayout = this.f2514b;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int iM1851e = m1851e();
            if (iM1851e != layoutParams.topMargin) {
                layoutParams.topMargin = iM1851e;
                frameLayout.requestLayout();
            }
        }
    }

    /* JADX INFO: renamed from: w */
    public final void m1868w(boolean z9, boolean z10) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f2522f;
        boolean z11 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f2522f;
        boolean z12 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.f2533k0;
        C3189c c3189c = this.f2559x0;
        if (colorStateList2 != null) {
            c3189c.m5123k(colorStateList2);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.f2533k0;
            int colorForState = this.f2553u0;
            if (colorStateList3 != null) {
                colorForState = colorStateList3.getColorForState(new int[]{-16842910}, colorForState);
            }
            c3189c.m5123k(ColorStateList.valueOf(colorForState));
        } else if (m1860o()) {
            AppCompatTextView appCompatTextView2 = this.f2534l.f3652r;
            c3189c.m5123k(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.f2540o && (appCompatTextView = this.f2544q) != null) {
            c3189c.m5123k(appCompatTextView.getTextColors());
        } else if (z12 && (colorStateList = this.f2535l0) != null && c3189c.f9324k != colorStateList) {
            c3189c.f9324k = colorStateList;
            c3189c.m5122j(false);
        }
        C1483p c1483p = this.f2518d;
        C1492y c1492y = this.f2516c;
        if (z11 || !this.f2561y0 || (isEnabled() && z12)) {
            if (z10 || this.f2557w0) {
                ValueAnimator valueAnimator = this.f2487A0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f2487A0.cancel();
                }
                if (z9 && this.f2563z0) {
                    m1848b(1.0f);
                } else {
                    c3189c.m5125m(1.0f);
                }
                this.f2557w0 = false;
                if (m1853g()) {
                    m1858l();
                }
                EditText editText3 = this.f2522f;
                m1869x(editText3 != null ? editText3.getText() : null);
                c1492y.f3685k = false;
                c1492y.m2577e();
                c1483p.f3618s = false;
                c1483p.m2556n();
                return;
            }
            return;
        }
        if (z10 || !this.f2557w0) {
            ValueAnimator valueAnimator2 = this.f2487A0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f2487A0.cancel();
            }
            if (z9 && this.f2563z0) {
                m1848b(0.0f);
            } else {
                c3189c.m5125m(0.0f);
            }
            if (m1853g() && !((C1474g) this.f2497H).f3574I.f3572r.isEmpty() && m1853g()) {
                ((C1474g) this.f2497H).m2533y(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f2557w0 = true;
            AppCompatTextView appCompatTextView3 = this.f2554v;
            if (appCompatTextView3 != null && this.f2552u) {
                appCompatTextView3.setText((CharSequence) null);
                TransitionManager.beginDelayedTransition(this.f2514b, this.f2562z);
                this.f2554v.setVisibility(4);
            }
            c1492y.f3685k = true;
            c1492y.m2577e();
            c1483p.f3618s = true;
            c1483p.m2556n();
        }
    }

    /* JADX INFO: renamed from: x */
    public final void m1869x(Editable editable) {
        ((C1357g) this.f2542p).getClass();
        int length = editable != null ? editable.length() : 0;
        FrameLayout frameLayout = this.f2514b;
        if (length != 0 || this.f2557w0) {
            AppCompatTextView appCompatTextView = this.f2554v;
            if (appCompatTextView == null || !this.f2552u) {
                return;
            }
            appCompatTextView.setText((CharSequence) null);
            TransitionManager.beginDelayedTransition(frameLayout, this.f2562z);
            this.f2554v.setVisibility(4);
            return;
        }
        if (this.f2554v == null || !this.f2552u || TextUtils.isEmpty(this.f2550t)) {
            return;
        }
        this.f2554v.setText(this.f2550t);
        TransitionManager.beginDelayedTransition(frameLayout, this.f2560y);
        this.f2554v.setVisibility(0);
        this.f2554v.bringToFront();
    }

    /* JADX INFO: renamed from: y */
    public final void m1870y(boolean z9, boolean z10) {
        int defaultColor = this.f2543p0.getDefaultColor();
        int colorForState = this.f2543p0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f2543p0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z9) {
            this.f2511V = colorForState2;
        } else if (z10) {
            this.f2511V = colorForState;
        } else {
            this.f2511V = defaultColor;
        }
    }

    /* JADX INFO: renamed from: z */
    public final void m1871z() {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.f2497H == null || this.f2506Q == 0) {
            return;
        }
        boolean z9 = false;
        boolean z10 = isFocused() || ((editText2 = this.f2522f) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f2522f) != null && editText.isHovered())) {
            z9 = true;
        }
        if (!isEnabled()) {
            this.f2511V = this.f2553u0;
        } else if (m1860o()) {
            if (this.f2543p0 != null) {
                m1870y(z10, z9);
            } else {
                this.f2511V = getErrorCurrentTextColors();
            }
        } else if (!this.f2540o || (appCompatTextView = this.f2544q) == null) {
            if (z10) {
                this.f2511V = this.f2541o0;
            } else if (z9) {
                this.f2511V = this.f2539n0;
            } else {
                this.f2511V = this.f2537m0;
            }
        } else if (this.f2543p0 != null) {
            m1870y(z10, z9);
        } else {
            this.f2511V = appCompatTextView.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            m1863r();
        }
        C1483p c1483p = this.f2518d;
        TextInputLayout textInputLayout = c1483p.f3601b;
        CheckableImageButton checkableImageButton = c1483p.f3607h;
        TextInputLayout textInputLayout2 = c1483p.f3601b;
        c1483p.m2554l();
        AbstractC3656k.m5869o(textInputLayout2, c1483p.f3603d, c1483p.f3604e);
        AbstractC3656k.m5869o(textInputLayout2, checkableImageButton, c1483p.f3611l);
        if (c1483p.m2544b() instanceof C1479l) {
            if (!textInputLayout.m1860o() || checkableImageButton.getDrawable() == null) {
                AbstractC3656k.m5856b(textInputLayout, checkableImageButton, c1483p.f3611l, c1483p.f3612m);
            } else {
                Drawable drawableMutate = DrawableCompat.wrap(checkableImageButton.getDrawable()).mutate();
                drawableMutate.setTint(textInputLayout.getErrorCurrentTextColors());
                checkableImageButton.setImageDrawable(drawableMutate);
            }
        }
        C1492y c1492y = this.f2516c;
        AbstractC3656k.m5869o(c1492y.f3676b, c1492y.f3679e, c1492y.f3680f);
        if (this.f2506Q == 2) {
            int i10 = this.f2508S;
            if (z10 && isEnabled()) {
                this.f2508S = this.f2510U;
            } else {
                this.f2508S = this.f2509T;
            }
            if (this.f2508S != i10 && m1853g() && !this.f2557w0) {
                if (m1853g()) {
                    ((C1474g) this.f2497H).m2533y(0.0f, 0.0f, 0.0f, 0.0f);
                }
                m1858l();
            }
        }
        if (this.f2506Q == 1) {
            if (!isEnabled()) {
                this.f2512W = this.f2547r0;
            } else if (z9 && !z10) {
                this.f2512W = this.f2551t0;
            } else if (z10) {
                this.f2512W = this.f2549s0;
            } else {
                this.f2512W = this.f2545q0;
            }
        }
        m1849c();
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.f2494E) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f2516c.f3679e;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.f2516c.m2574b(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.f2518d.f3607h.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.f2518d.f3607h.setImageDrawable(drawable);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f2518d.f3607h;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.f2518d.m2551i(drawable);
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        C1483p c1483p = this.f2518d;
        TextInputLayout textInputLayout = c1483p.f3601b;
        CheckableImageButton checkableImageButton = c1483p.f3607h;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            AbstractC3656k.m5856b(textInputLayout, checkableImageButton, c1483p.f3611l, c1483p.f3612m);
            AbstractC3656k.m5869o(textInputLayout, checkableImageButton, c1483p.f3611l);
        }
    }
}

package e4;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff$Mode;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View$OnClickListener;
import android.view.View$OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityManager$TouchExplorationStateChangeListener;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.GravityCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextInputLayout f2074b;
    public final FrameLayout c;
    public final CheckableImageButton d;
    public ColorStateList e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public PorterDuff$Mode f2075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View$OnLongClickListener f2076g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CheckableImageButton f2077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final o f2078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2079j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashSet f2080k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f2081l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public PorterDuff$Mode f2082m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2083n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ImageView$ScaleType f2084o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public View$OnLongClickListener f2085p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f2086q;
    public final AppCompatTextView r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2087s;
    public EditText t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AccessibilityManager f2088u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public AccessibilityManager$TouchExplorationStateChangeListener f2089v;
    public final m w;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f2079j = 0;
        this.f2080k = new LinkedHashSet();
        this.w = new m(this);
        n nVar = new n(this);
        this.f2088u = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f2074b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout$LayoutParams(-2, -1, GravityCompat.END));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.c = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout$LayoutParams(-2, -1));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButtonA = a(this, layoutInflaterFrom, 2131297639);
        this.d = checkableImageButtonA;
        CheckableImageButton checkableImageButtonA2 = a(frameLayout, layoutInflaterFrom, 2131297638);
        this.f2077h = checkableImageButtonA2;
        o oVar = new o();
        oVar.c = new SparseArray();
        oVar.d = this;
        oVar.f2072a = tintTypedArray.getResourceId(28, 0);
        oVar.f2073b = tintTypedArray.getResourceId(53, 0);
        this.f2078i = oVar;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.r = appCompatTextView;
        if (tintTypedArray.hasValue(38)) {
            this.e = w3.c.b(getContext(), tintTypedArray, 38);
        }
        if (tintTypedArray.hasValue(39)) {
            this.f2075f = s3.q.b(tintTypedArray.getInt(39, -1), null);
        }
        if (tintTypedArray.hasValue(37)) {
            i(tintTypedArray.getDrawable(37));
        }
        checkableImageButtonA.setContentDescription(getResources().getText(2131951937));
        checkableImageButtonA.setImportantForAccessibility(2);
        checkableImageButtonA.setClickable(false);
        checkableImageButtonA.setPressable(false);
        checkableImageButtonA.setCheckable(false);
        checkableImageButtonA.setFocusable(false);
        if (!tintTypedArray.hasValue(54)) {
            if (tintTypedArray.hasValue(32)) {
                this.f2081l = w3.c.b(getContext(), tintTypedArray, 32);
            }
            if (tintTypedArray.hasValue(33)) {
                this.f2082m = s3.q.b(tintTypedArray.getInt(33, -1), null);
            }
        }
        if (tintTypedArray.hasValue(30)) {
            g(tintTypedArray.getInt(30, 0));
            if (tintTypedArray.hasValue(27) && checkableImageButtonA2.getContentDescription() != (text = tintTypedArray.getText(27))) {
                checkableImageButtonA2.setContentDescription(text);
            }
            checkableImageButtonA2.setCheckable(tintTypedArray.getBoolean(26, true));
        } else if (tintTypedArray.hasValue(54)) {
            if (tintTypedArray.hasValue(55)) {
                this.f2081l = w3.c.b(getContext(), tintTypedArray, 55);
            }
            if (tintTypedArray.hasValue(56)) {
                this.f2082m = s3.q.b(tintTypedArray.getInt(56, -1), null);
            }
            g(tintTypedArray.getBoolean(54, false) ? 1 : 0);
            CharSequence text2 = tintTypedArray.getText(52);
            if (checkableImageButtonA2.getContentDescription() != text2) {
                checkableImageButtonA2.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = tintTypedArray.getDimensionPixelSize(29, getResources().getDimensionPixelSize(2131100589));
        if (dimensionPixelSize < 0) {
            j1.i.k("endIconSize cannot be less than 0");
            throw null;
        }
        if (dimensionPixelSize != this.f2083n) {
            this.f2083n = dimensionPixelSize;
            checkableImageButtonA2.setMinimumWidth(dimensionPixelSize);
            checkableImageButtonA2.setMinimumHeight(dimensionPixelSize);
            checkableImageButtonA.setMinimumWidth(dimensionPixelSize);
            checkableImageButtonA.setMinimumHeight(dimensionPixelSize);
        }
        if (tintTypedArray.hasValue(31)) {
            ImageView$ScaleType imageView$ScaleTypeD = y5.k.d(tintTypedArray.getInt(31, -1));
            this.f2084o = imageView$ScaleTypeD;
            checkableImageButtonA2.setScaleType(imageView$ScaleTypeD);
            checkableImageButtonA.setScaleType(imageView$ScaleTypeD);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(2131297649);
        appCompatTextView.setLayoutParams(new LinearLayout$LayoutParams(-2, -2, 80.0f));
        appCompatTextView.setAccessibilityLiveRegion(1);
        TextViewCompat.setTextAppearance(appCompatTextView, tintTypedArray.getResourceId(73, 0));
        if (tintTypedArray.hasValue(74)) {
            appCompatTextView.setTextColor(tintTypedArray.getColorStateList(74));
        }
        CharSequence text3 = tintTypedArray.getText(72);
        this.f2086q = TextUtils.isEmpty(text3) ? null : text3;
        appCompatTextView.setText(text3);
        n();
        frameLayout.addView(checkableImageButtonA2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(checkableImageButtonA);
        textInputLayout.f1389g0.add(nVar);
        if (textInputLayout.f1386f != null) {
            nVar.a(textInputLayout);
        }
        addOnAttachStateChangeListener(new e3.b(2, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CheckableImageButton a(ViewGroup viewGroup, LayoutInflater layoutInflater, int i9) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(2131492933, viewGroup, false);
        checkableImageButton.setId(i9);
        if (w3.c.d(getContext())) {
            ((ViewGroup$MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        return checkableImageButton;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final q b() {
        q eVar;
        int i9 = this.f2079j;
        o oVar = this.f2078i;
        SparseArray sparseArray = (SparseArray) oVar.c;
        q qVar = (q) sparseArray.get(i9);
        if (qVar != null) {
            return qVar;
        }
        p pVar = (p) oVar.d;
        if (i9 == -1) {
            eVar = new e(pVar, 0);
        } else if (i9 == 0) {
            eVar = new e(pVar, 1);
        } else if (i9 == 1) {
            eVar = new x(pVar, oVar.f2073b);
        } else if (i9 == 2) {
            eVar = new d(pVar);
        } else {
            if (i9 != 3) {
                j1.i.k(ai.onnxruntime.a.e(i9, "Invalid end icon mode: "));
                return null;
            }
            eVar = new l(pVar);
        }
        sparseArray.append(i9, eVar);
        return eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c() {
        int marginStart;
        if (d() || e()) {
            CheckableImageButton checkableImageButton = this.f2077h;
            marginStart = ((ViewGroup$MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth();
        } else {
            marginStart = 0;
        }
        return this.r.getPaddingEnd() + getPaddingEnd() + marginStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d() {
        return this.c.getVisibility() == 0 && this.f2077h.getVisibility() == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean e() {
        return this.d.getVisibility() == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(boolean z8) {
        boolean z9;
        boolean zIsActivated;
        boolean z10;
        q qVarB = b();
        boolean zJ = qVarB.j();
        CheckableImageButton checkableImageButton = this.f2077h;
        boolean z11 = true;
        if (!zJ || (z10 = checkableImageButton.f1312b) == qVarB.k()) {
            z9 = false;
        } else {
            checkableImageButton.setChecked(!z10);
            z9 = true;
        }
        if (!(qVarB instanceof l) || (zIsActivated = checkableImageButton.isActivated()) == ((l) qVarB).f2064l) {
            z11 = z9;
        } else {
            checkableImageButton.setActivated(!zIsActivated);
        }
        if (z8 || z11) {
            y5.k.o(this.f2074b, checkableImageButton, this.f2081l);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(int i9) {
        if (this.f2079j == i9) {
            return;
        }
        q qVarB = b();
        AccessibilityManager$TouchExplorationStateChangeListener accessibilityManager$TouchExplorationStateChangeListener = this.f2089v;
        AccessibilityManager accessibilityManager = this.f2088u;
        if (accessibilityManager$TouchExplorationStateChangeListener != null && accessibilityManager != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(accessibilityManager$TouchExplorationStateChangeListener);
        }
        this.f2089v = null;
        qVarB.r();
        this.f2079j = i9;
        Iterator it = this.f2080k.iterator();
        if (it.hasNext()) {
            throw com.bumptech.glide.g.b(it);
        }
        h(i9 != 0);
        q qVarB2 = b();
        int iD = this.f2078i.f2072a;
        if (iD == 0) {
            iD = qVarB2.d();
        }
        Drawable drawable = iD != 0 ? AppCompatResources.getDrawable(getContext(), iD) : null;
        CheckableImageButton checkableImageButton = this.f2077h;
        checkableImageButton.setImageDrawable(drawable);
        TextInputLayout textInputLayout = this.f2074b;
        if (drawable != null) {
            y5.k.b(textInputLayout, checkableImageButton, this.f2081l, this.f2082m);
            y5.k.o(textInputLayout, checkableImageButton, this.f2081l);
        }
        int iC = qVarB2.c();
        CharSequence text = iC != 0 ? getResources().getText(iC) : null;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
        checkableImageButton.setCheckable(qVarB2.j());
        if (!qVarB2.i(textInputLayout.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i9);
        }
        qVarB2.q();
        AccessibilityManager$TouchExplorationStateChangeListener accessibilityManager$TouchExplorationStateChangeListenerH = qVarB2.h();
        this.f2089v = accessibilityManager$TouchExplorationStateChangeListenerH;
        if (accessibilityManager$TouchExplorationStateChangeListenerH != null && accessibilityManager != null && isAttachedToWindow()) {
            accessibilityManager.addTouchExplorationStateChangeListener(this.f2089v);
        }
        View$OnClickListener view$OnClickListenerF = qVarB2.f();
        View$OnLongClickListener view$OnLongClickListener = this.f2085p;
        checkableImageButton.setOnClickListener(view$OnClickListenerF);
        y5.k.s(checkableImageButton, view$OnLongClickListener);
        EditText editText = this.t;
        if (editText != null) {
            qVarB2.l(editText);
            j(qVarB2);
        }
        y5.k.b(textInputLayout, checkableImageButton, this.f2081l, this.f2082m);
        f(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(boolean z8) {
        if (d() != z8) {
            this.f2077h.setVisibility(z8 ? 0 : 8);
            k();
            m();
            this.f2074b.s();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.d;
        checkableImageButton.setImageDrawable(drawable);
        l();
        y5.k.b(this.f2074b, checkableImageButton, this.e, this.f2075f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j(q qVar) {
        if (this.t == null) {
            return;
        }
        if (qVar.e() != null) {
            this.t.setOnFocusChangeListener(qVar.e());
        }
        if (qVar.g() != null) {
            this.f2077h.setOnFocusChangeListener(qVar.g());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k() {
        this.c.setVisibility((this.f2077h.getVisibility() != 0 || e()) ? 8 : 0);
        setVisibility((d() || e() || ((this.f2086q == null || this.f2087s) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l() {
        CheckableImageButton checkableImageButton = this.d;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.f2074b;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.f1398l.f2108q && textInputLayout.o()) ? 0 : 8);
        k();
        m();
        if (this.f2079j != 0) {
            return;
        }
        textInputLayout.s();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m() {
        TextInputLayout textInputLayout = this.f2074b;
        if (textInputLayout.f1386f == null) {
            return;
        }
        this.r.setPaddingRelative(getContext().getResources().getDimensionPixelSize(2131100459), textInputLayout.f1386f.getPaddingTop(), (d() || e()) ? 0 : textInputLayout.f1386f.getPaddingEnd(), textInputLayout.f1386f.getPaddingBottom());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n() {
        AppCompatTextView appCompatTextView = this.r;
        int visibility = appCompatTextView.getVisibility();
        int i9 = (this.f2086q == null || this.f2087s) ? 8 : 0;
        if (visibility != i9) {
            b().o(i9 == 0);
        }
        k();
        appCompatTextView.setVisibility(i9);
        this.f2074b.s();
    }
}

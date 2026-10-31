package p051e4;

import ai.onnxruntime.AbstractC0074a;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.GravityCompat;
import androidx.core.widget.TextViewCompat;
import com.bumptech.glide.AbstractC1034g;
import com.example.navistart.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p050e3.ViewOnAttachStateChangeListenerC1459b;
import p099j1.C1929i;
import p192s3.AbstractC3203q;
import p228w3.AbstractC3518c;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e4.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1483p extends LinearLayout {

    /* JADX INFO: renamed from: b */
    public final TextInputLayout f3601b;

    /* JADX INFO: renamed from: c */
    public final FrameLayout f3602c;

    /* JADX INFO: renamed from: d */
    public final CheckableImageButton f3603d;

    /* JADX INFO: renamed from: e */
    public ColorStateList f3604e;

    /* JADX INFO: renamed from: f */
    public PorterDuff.Mode f3605f;

    /* JADX INFO: renamed from: g */
    public View.OnLongClickListener f3606g;

    /* JADX INFO: renamed from: h */
    public final CheckableImageButton f3607h;

    /* JADX INFO: renamed from: i */
    public final C1482o f3608i;

    /* JADX INFO: renamed from: j */
    public int f3609j;

    /* JADX INFO: renamed from: k */
    public final LinkedHashSet f3610k;

    /* JADX INFO: renamed from: l */
    public ColorStateList f3611l;

    /* JADX INFO: renamed from: m */
    public PorterDuff.Mode f3612m;

    /* JADX INFO: renamed from: n */
    public int f3613n;

    /* JADX INFO: renamed from: o */
    public ImageView.ScaleType f3614o;

    /* JADX INFO: renamed from: p */
    public View.OnLongClickListener f3615p;

    /* JADX INFO: renamed from: q */
    public CharSequence f3616q;

    /* JADX INFO: renamed from: r */
    public final AppCompatTextView f3617r;

    /* JADX INFO: renamed from: s */
    public boolean f3618s;

    /* JADX INFO: renamed from: t */
    public EditText f3619t;

    /* JADX INFO: renamed from: u */
    public final AccessibilityManager f3620u;

    /* JADX INFO: renamed from: v */
    public AccessibilityManager.TouchExplorationStateChangeListener f3621v;

    /* JADX INFO: renamed from: w */
    public final C1480m f3622w;

    public C1483p(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f3609j = 0;
        this.f3610k = new LinkedHashSet();
        this.f3622w = new C1480m(this);
        C1481n c1481n = new C1481n(this);
        this.f3620u = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f3601b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.END));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f3602c = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButtonM2543a = m2543a(this, layoutInflaterFrom, R.id.text_input_error_icon);
        this.f3603d = checkableImageButtonM2543a;
        CheckableImageButton checkableImageButtonM2543a2 = m2543a(frameLayout, layoutInflaterFrom, R.id.text_input_end_icon);
        this.f3607h = checkableImageButtonM2543a2;
        C1482o c1482o = new C1482o();
        c1482o.f3599c = new SparseArray();
        c1482o.f3600d = this;
        c1482o.f3597a = tintTypedArray.getResourceId(28, 0);
        c1482o.f3598b = tintTypedArray.getResourceId(53, 0);
        this.f3608i = c1482o;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f3617r = appCompatTextView;
        if (tintTypedArray.hasValue(38)) {
            this.f3604e = AbstractC3518c.m5588b(getContext(), tintTypedArray, 38);
        }
        if (tintTypedArray.hasValue(39)) {
            this.f3605f = AbstractC3203q.m5139b(tintTypedArray.getInt(39, -1), null);
        }
        if (tintTypedArray.hasValue(37)) {
            m2551i(tintTypedArray.getDrawable(37));
        }
        checkableImageButtonM2543a.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        checkableImageButtonM2543a.setImportantForAccessibility(2);
        checkableImageButtonM2543a.setClickable(false);
        checkableImageButtonM2543a.setPressable(false);
        checkableImageButtonM2543a.setCheckable(false);
        checkableImageButtonM2543a.setFocusable(false);
        if (!tintTypedArray.hasValue(54)) {
            if (tintTypedArray.hasValue(32)) {
                this.f3611l = AbstractC3518c.m5588b(getContext(), tintTypedArray, 32);
            }
            if (tintTypedArray.hasValue(33)) {
                this.f3612m = AbstractC3203q.m5139b(tintTypedArray.getInt(33, -1), null);
            }
        }
        if (tintTypedArray.hasValue(30)) {
            m2549g(tintTypedArray.getInt(30, 0));
            if (tintTypedArray.hasValue(27) && checkableImageButtonM2543a2.getContentDescription() != (text = tintTypedArray.getText(27))) {
                checkableImageButtonM2543a2.setContentDescription(text);
            }
            checkableImageButtonM2543a2.setCheckable(tintTypedArray.getBoolean(26, true));
        } else if (tintTypedArray.hasValue(54)) {
            if (tintTypedArray.hasValue(55)) {
                this.f3611l = AbstractC3518c.m5588b(getContext(), tintTypedArray, 55);
            }
            if (tintTypedArray.hasValue(56)) {
                this.f3612m = AbstractC3203q.m5139b(tintTypedArray.getInt(56, -1), null);
            }
            m2549g(tintTypedArray.getBoolean(54, false) ? 1 : 0);
            CharSequence text2 = tintTypedArray.getText(52);
            if (checkableImageButtonM2543a2.getContentDescription() != text2) {
                checkableImageButtonM2543a2.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = tintTypedArray.getDimensionPixelSize(29, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            C1929i.m3029k("endIconSize cannot be less than 0");
            throw null;
        }
        if (dimensionPixelSize != this.f3613n) {
            this.f3613n = dimensionPixelSize;
            checkableImageButtonM2543a2.setMinimumWidth(dimensionPixelSize);
            checkableImageButtonM2543a2.setMinimumHeight(dimensionPixelSize);
            checkableImageButtonM2543a.setMinimumWidth(dimensionPixelSize);
            checkableImageButtonM2543a.setMinimumHeight(dimensionPixelSize);
        }
        if (tintTypedArray.hasValue(31)) {
            ImageView.ScaleType scaleTypeM5858d = AbstractC3656k.m5858d(tintTypedArray.getInt(31, -1));
            this.f3614o = scaleTypeM5858d;
            checkableImageButtonM2543a2.setScaleType(scaleTypeM5858d);
            checkableImageButtonM2543a.setScaleType(scaleTypeM5858d);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        appCompatTextView.setAccessibilityLiveRegion(1);
        TextViewCompat.setTextAppearance(appCompatTextView, tintTypedArray.getResourceId(73, 0));
        if (tintTypedArray.hasValue(74)) {
            appCompatTextView.setTextColor(tintTypedArray.getColorStateList(74));
        }
        CharSequence text3 = tintTypedArray.getText(72);
        this.f3616q = TextUtils.isEmpty(text3) ? null : text3;
        appCompatTextView.setText(text3);
        m2556n();
        frameLayout.addView(checkableImageButtonM2543a2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(checkableImageButtonM2543a);
        textInputLayout.f2525g0.add(c1481n);
        if (textInputLayout.f2522f != null) {
            c1481n.m2541a(textInputLayout);
        }
        addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC1459b(2, this));
    }

    /* JADX INFO: renamed from: a */
    public final CheckableImageButton m2543a(ViewGroup viewGroup, LayoutInflater layoutInflater, int i10) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i10);
        if (AbstractC3518c.m5590d(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        return checkableImageButton;
    }

    /* JADX INFO: renamed from: b */
    public final AbstractC1484q m2544b() {
        AbstractC1484q c1472e;
        int i10 = this.f3609j;
        C1482o c1482o = this.f3608i;
        SparseArray sparseArray = (SparseArray) c1482o.f3599c;
        AbstractC1484q abstractC1484q = (AbstractC1484q) sparseArray.get(i10);
        if (abstractC1484q != null) {
            return abstractC1484q;
        }
        C1483p c1483p = (C1483p) c1482o.f3600d;
        if (i10 == -1) {
            c1472e = new C1472e(c1483p, 0);
        } else if (i10 == 0) {
            c1472e = new C1472e(c1483p, 1);
        } else if (i10 == 1) {
            c1472e = new C1491x(c1483p, c1482o.f3598b);
        } else if (i10 == 2) {
            c1472e = new C1471d(c1483p);
        } else {
            if (i10 != 3) {
                C1929i.m3029k(AbstractC0074a.m154e(i10, "Invalid end icon mode: "));
                return null;
            }
            c1472e = new C1479l(c1483p);
        }
        sparseArray.append(i10, c1472e);
        return c1472e;
    }

    /* JADX INFO: renamed from: c */
    public final int m2545c() {
        int marginStart;
        if (m2546d() || m2547e()) {
            CheckableImageButton checkableImageButton = this.f3607h;
            marginStart = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth();
        } else {
            marginStart = 0;
        }
        return this.f3617r.getPaddingEnd() + getPaddingEnd() + marginStart;
    }

    /* JADX INFO: renamed from: d */
    public final boolean m2546d() {
        return this.f3602c.getVisibility() == 0 && this.f3607h.getVisibility() == 0;
    }

    /* JADX INFO: renamed from: e */
    public final boolean m2547e() {
        return this.f3603d.getVisibility() == 0;
    }

    /* JADX INFO: renamed from: f */
    public final void m2548f(boolean z9) {
        boolean z10;
        boolean zIsActivated;
        boolean z11;
        AbstractC1484q abstractC1484qM2544b = m2544b();
        boolean zMo2558j = abstractC1484qM2544b.mo2558j();
        CheckableImageButton checkableImageButton = this.f3607h;
        boolean z12 = true;
        if (!zMo2558j || (z11 = checkableImageButton.f2371b) == abstractC1484qM2544b.mo2536k()) {
            z10 = false;
        } else {
            checkableImageButton.setChecked(!z11);
            z10 = true;
        }
        if (!(abstractC1484qM2544b instanceof C1479l) || (zIsActivated = checkableImageButton.isActivated()) == ((C1479l) abstractC1484qM2544b).f3588l) {
            z12 = z10;
        } else {
            checkableImageButton.setActivated(!zIsActivated);
        }
        if (z9 || z12) {
            AbstractC3656k.m5869o(this.f3601b, checkableImageButton, this.f3611l);
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m2549g(int i10) {
        if (this.f3609j == i10) {
            return;
        }
        AbstractC1484q abstractC1484qM2544b = m2544b();
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.f3621v;
        AccessibilityManager accessibilityManager = this.f3620u;
        if (touchExplorationStateChangeListener != null && accessibilityManager != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
        }
        this.f3621v = null;
        abstractC1484qM2544b.mo2529r();
        this.f3609j = i10;
        Iterator it = this.f3610k.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
        m2550h(i10 != 0);
        AbstractC1484q abstractC1484qM2544b2 = m2544b();
        int iMo2522d = this.f3608i.f3597a;
        if (iMo2522d == 0) {
            iMo2522d = abstractC1484qM2544b2.mo2522d();
        }
        Drawable drawable = iMo2522d != 0 ? AppCompatResources.getDrawable(getContext(), iMo2522d) : null;
        CheckableImageButton checkableImageButton = this.f3607h;
        checkableImageButton.setImageDrawable(drawable);
        TextInputLayout textInputLayout = this.f3601b;
        if (drawable != null) {
            AbstractC3656k.m5856b(textInputLayout, checkableImageButton, this.f3611l, this.f3612m);
            AbstractC3656k.m5869o(textInputLayout, checkableImageButton, this.f3611l);
        }
        int iMo2521c = abstractC1484qM2544b2.mo2521c();
        CharSequence text = iMo2521c != 0 ? getResources().getText(iMo2521c) : null;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
        checkableImageButton.setCheckable(abstractC1484qM2544b2.mo2558j());
        if (!abstractC1484qM2544b2.mo2535i(textInputLayout.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i10);
        }
        abstractC1484qM2544b2.mo2528q();
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListenerMo2534h = abstractC1484qM2544b2.mo2534h();
        this.f3621v = touchExplorationStateChangeListenerMo2534h;
        if (touchExplorationStateChangeListenerMo2534h != null && accessibilityManager != null && isAttachedToWindow()) {
            accessibilityManager.addTouchExplorationStateChangeListener(this.f3621v);
        }
        View.OnClickListener onClickListenerMo2524f = abstractC1484qM2544b2.mo2524f();
        View.OnLongClickListener onLongClickListener = this.f3615p;
        checkableImageButton.setOnClickListener(onClickListenerMo2524f);
        AbstractC3656k.m5873s(checkableImageButton, onLongClickListener);
        EditText editText = this.f3619t;
        if (editText != null) {
            abstractC1484qM2544b2.mo2526l(editText);
            m2552j(abstractC1484qM2544b2);
        }
        AbstractC3656k.m5856b(textInputLayout, checkableImageButton, this.f3611l, this.f3612m);
        m2548f(true);
    }

    /* JADX INFO: renamed from: h */
    public final void m2550h(boolean z9) {
        if (m2546d() != z9) {
            this.f3607h.setVisibility(z9 ? 0 : 8);
            m2553k();
            m2555m();
            this.f3601b.m1864s();
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m2551i(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f3603d;
        checkableImageButton.setImageDrawable(drawable);
        m2554l();
        AbstractC3656k.m5856b(this.f3601b, checkableImageButton, this.f3604e, this.f3605f);
    }

    /* JADX INFO: renamed from: j */
    public final void m2552j(AbstractC1484q abstractC1484q) {
        if (this.f3619t == null) {
            return;
        }
        if (abstractC1484q.mo2523e() != null) {
            this.f3619t.setOnFocusChangeListener(abstractC1484q.mo2523e());
        }
        if (abstractC1484q.mo2525g() != null) {
            this.f3607h.setOnFocusChangeListener(abstractC1484q.mo2525g());
        }
    }

    /* JADX INFO: renamed from: k */
    public final void m2553k() {
        this.f3602c.setVisibility((this.f3607h.getVisibility() != 0 || m2547e()) ? 8 : 0);
        setVisibility((m2546d() || m2547e() || ((this.f3616q == null || this.f3618s) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    /* JADX INFO: renamed from: l */
    public final void m2554l() {
        CheckableImageButton checkableImageButton = this.f3603d;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.f3601b;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.f2534l.f3651q && textInputLayout.m1860o()) ? 0 : 8);
        m2553k();
        m2555m();
        if (this.f3609j != 0) {
            return;
        }
        textInputLayout.m1864s();
    }

    /* JADX INFO: renamed from: m */
    public final void m2555m() {
        TextInputLayout textInputLayout = this.f3601b;
        if (textInputLayout.f2522f == null) {
            return;
        }
        this.f3617r.setPaddingRelative(getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), textInputLayout.f2522f.getPaddingTop(), (m2546d() || m2547e()) ? 0 : textInputLayout.f2522f.getPaddingEnd(), textInputLayout.f2522f.getPaddingBottom());
    }

    /* JADX INFO: renamed from: n */
    public final void m2556n() {
        AppCompatTextView appCompatTextView = this.f3617r;
        int visibility = appCompatTextView.getVisibility();
        int i10 = (this.f3616q == null || this.f3618s) ? 8 : 0;
        if (visibility != i10) {
            m2544b().mo2527o(i10 == 0);
        }
        m2553k();
        appCompatTextView.setVisibility(i10);
        this.f3601b.m1864s();
    }
}

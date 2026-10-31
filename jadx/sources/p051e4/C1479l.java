package p051e4;

import ai.onnxruntime.C0075b;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.R;
import com.google.android.material.textfield.TextInputLayout;
import p005a4.RunnableC0014g;
import p018b3.AbstractC0884a;
import p050e3.C1460c;

/* JADX INFO: renamed from: e4.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1479l extends AbstractC1484q {

    /* JADX INFO: renamed from: e */
    public final int f3581e;

    /* JADX INFO: renamed from: f */
    public final int f3582f;

    /* JADX INFO: renamed from: g */
    public final TimeInterpolator f3583g;

    /* JADX INFO: renamed from: h */
    public AutoCompleteTextView f3584h;

    /* JADX INFO: renamed from: i */
    public final ViewOnClickListenerC0675c f3585i;

    /* JADX INFO: renamed from: j */
    public final ViewOnFocusChangeListenerC1465a f3586j;

    /* JADX INFO: renamed from: k */
    public final AccessibilityManagerTouchExplorationStateChangeListenerC1478k f3587k;

    /* JADX INFO: renamed from: l */
    public boolean f3588l;

    /* JADX INFO: renamed from: m */
    public boolean f3589m;

    /* JADX INFO: renamed from: n */
    public boolean f3590n;

    /* JADX INFO: renamed from: o */
    public long f3591o;

    /* JADX INFO: renamed from: p */
    public AccessibilityManager f3592p;

    /* JADX INFO: renamed from: q */
    public ValueAnimator f3593q;

    /* JADX INFO: renamed from: r */
    public ValueAnimator f3594r;

    /* JADX WARN: Type inference failed for: r0v2, types: [e4.k] */
    public C1479l(C1483p c1483p) {
        super(c1483p);
        this.f3585i = new ViewOnClickListenerC0675c(8, this);
        this.f3586j = new ViewOnFocusChangeListenerC1465a(this, 1);
        this.f3587k = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: e4.k
            @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z9) {
                C1479l c1479l = this.f3580a;
                AutoCompleteTextView autoCompleteTextView = c1479l.f3584h;
                if (autoCompleteTextView == null || autoCompleteTextView.getInputType() != 0) {
                    return;
                }
                c1479l.f3626d.setImportantForAccessibility(z9 ? 2 : 1);
            }
        };
        this.f3591o = Long.MAX_VALUE;
        this.f3582f = AbstractC1031d.m1287q(c1483p.getContext(), R.attr.motionDurationShort3, 67);
        this.f3581e = AbstractC1031d.m1287q(c1483p.getContext(), R.attr.motionDurationShort3, 50);
        this.f3583g = AbstractC1031d.m1288r(c1483p.getContext(), R.attr.motionEasingLinearInterpolator, AbstractC0884a.f661a);
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: a */
    public final void mo2520a() {
        if (this.f3592p.isTouchExplorationEnabled() && this.f3584h.getInputType() != 0 && !this.f3626d.hasFocus()) {
            this.f3584h.dismissDropDown();
        }
        this.f3584h.post(new RunnableC0014g(26, this));
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: c */
    public final int mo2521c() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: d */
    public final int mo2522d() {
        return R.drawable.mtrl_dropdown_arrow;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: e */
    public final View.OnFocusChangeListener mo2523e() {
        return this.f3586j;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: f */
    public final View.OnClickListener mo2524f() {
        return this.f3585i;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: h */
    public final AccessibilityManager.TouchExplorationStateChangeListener mo2534h() {
        return this.f3587k;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: i */
    public final boolean mo2535i(int i10) {
        return i10 != 0;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: k */
    public final boolean mo2536k() {
        return this.f3590n;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: l */
    public final void mo2526l(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            C0075b.m183h("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
            return;
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.f3584h = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new ViewOnTouchListenerC1476i(0, this));
        this.f3584h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: e4.j
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                C1479l c1479l = this.f3579a;
                c1479l.f3589m = true;
                c1479l.f3591o = SystemClock.uptimeMillis();
                c1479l.m2539s(false);
            }
        });
        this.f3584h.setThreshold(0);
        TextInputLayout textInputLayout = this.f3623a;
        textInputLayout.setErrorIconDrawable((Drawable) null);
        if (editText.getInputType() == 0 && this.f3592p.isTouchExplorationEnabled()) {
            this.f3626d.setImportantForAccessibility(2);
        }
        textInputLayout.setEndIconVisible(true);
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: m */
    public final void mo2537m(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.f3584h.getInputType() == 0) {
            accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
        }
        if (accessibilityNodeInfoCompat.isShowingHintText()) {
            accessibilityNodeInfoCompat.setHintText(null);
        }
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: n */
    public final void mo2538n(AccessibilityEvent accessibilityEvent) {
        if (this.f3592p.isEnabled() && this.f3584h.getInputType() == 0) {
            boolean z9 = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f3590n && !this.f3584h.isPopupShowing();
            if (accessibilityEvent.getEventType() == 1 || z9) {
                m2540t();
                this.f3589m = true;
                this.f3591o = SystemClock.uptimeMillis();
            }
        }
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: q */
    public final void mo2528q() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f3583g;
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.setDuration(this.f3582f);
        valueAnimatorOfFloat.addUpdateListener(new C1475h(0, this));
        this.f3594r = valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(this.f3581e);
        valueAnimatorOfFloat2.addUpdateListener(new C1475h(0, this));
        this.f3593q = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addListener(new C1460c(2, this));
        this.f3592p = (AccessibilityManager) this.f3625c.getSystemService("accessibility");
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: r */
    public final void mo2529r() {
        AutoCompleteTextView autoCompleteTextView = this.f3584h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.f3584h.setOnDismissListener(null);
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m2539s(boolean z9) {
        if (this.f3590n != z9) {
            this.f3590n = z9;
            this.f3594r.cancel();
            this.f3593q.start();
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m2540t() {
        if (this.f3584h == null) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() - this.f3591o;
        if (jUptimeMillis < 0 || jUptimeMillis > 300) {
            this.f3589m = false;
        }
        if (this.f3589m) {
            this.f3589m = false;
            return;
        }
        m2539s(!this.f3590n);
        boolean z9 = this.f3590n;
        AutoCompleteTextView autoCompleteTextView = this.f3584h;
        if (!z9) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            this.f3584h.showDropDown();
        }
    }
}

package e4;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.View$OnClickListener;
import android.view.View$OnFocusChangeListener;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityManager$TouchExplorationStateChangeListener;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l extends q {
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2058f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TimeInterpolator f2059g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AutoCompleteTextView f2060h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final androidx.navigation.c f2061i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a f2062j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final k f2063k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2064l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2065m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2066n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f2067o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AccessibilityManager f2068p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ValueAnimator f2069q;
    public ValueAnimator r;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(p pVar) {
        super(pVar);
        this.f2061i = new androidx.navigation.c(8, this);
        this.f2062j = new a(this, 1);
        this.f2063k = new k(this);
        this.f2067o = Long.MAX_VALUE;
        this.f2058f = com.bumptech.glide.d.q(pVar.getContext(), 2130904061, 67);
        this.e = com.bumptech.glide.d.q(pVar.getContext(), 2130904061, 50);
        this.f2059g = com.bumptech.glide.d.r(pVar.getContext(), 2130904070, b3.a.f305a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void a() {
        if (this.f2068p.isTouchExplorationEnabled() && this.f2060h.getInputType() != 0 && !this.d.hasFocus()) {
            this.f2060h.dismissDropDown();
        }
        this.f2060h.post(new a4.g(26, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final int c() {
        return 2131951985;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final int d() {
        return 2131165616;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final View$OnFocusChangeListener e() {
        return this.f2062j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final View$OnClickListener f() {
        return this.f2061i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final AccessibilityManager$TouchExplorationStateChangeListener h() {
        return this.f2063k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final boolean i(int i9) {
        return i9 != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final boolean k() {
        return this.f2066n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void l(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            ai.onnxruntime.b.h("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
            return;
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.f2060h = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new i(0, this));
        this.f2060h.setOnDismissListener(new j(this));
        this.f2060h.setThreshold(0);
        TextInputLayout textInputLayout = this.f2090a;
        textInputLayout.setErrorIconDrawable((Drawable) null);
        if (editText.getInputType() == 0 && this.f2068p.isTouchExplorationEnabled()) {
            this.d.setImportantForAccessibility(2);
        }
        textInputLayout.setEndIconVisible(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void m(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.f2060h.getInputType() == 0) {
            accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
        }
        if (accessibilityNodeInfoCompat.isShowingHintText()) {
            accessibilityNodeInfoCompat.setHintText(null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void n(AccessibilityEvent accessibilityEvent) {
        if (this.f2068p.isEnabled() && this.f2060h.getInputType() == 0) {
            boolean z8 = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f2066n && !this.f2060h.isPopupShowing();
            if (accessibilityEvent.getEventType() == 1 || z8) {
                t();
                this.f2065m = true;
                this.f2067o = SystemClock.uptimeMillis();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void q() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f2059g;
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.setDuration(this.f2058f);
        valueAnimatorOfFloat.addUpdateListener(new h(0, this));
        this.r = valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(this.e);
        valueAnimatorOfFloat2.addUpdateListener(new h(0, this));
        this.f2069q = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addListener(new e3.c(2, this));
        this.f2068p = (AccessibilityManager) this.c.getSystemService("accessibility");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void r() {
        AutoCompleteTextView autoCompleteTextView = this.f2060h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.f2060h.setOnDismissListener(null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s(boolean z8) {
        if (this.f2066n != z8) {
            this.f2066n = z8;
            this.r.cancel();
            this.f2069q.start();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t() {
        if (this.f2060h == null) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() - this.f2067o;
        if (jUptimeMillis < 0 || jUptimeMillis > 300) {
            this.f2065m = false;
        }
        if (this.f2065m) {
            this.f2065m = false;
            return;
        }
        s(!this.f2066n);
        boolean z8 = this.f2066n;
        AutoCompleteTextView autoCompleteTextView = this.f2060h;
        if (!z8) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            this.f2060h.showDropDown();
        }
    }
}

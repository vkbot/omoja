package p051e4;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: renamed from: e4.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1484q {

    /* JADX INFO: renamed from: a */
    public final TextInputLayout f3623a;

    /* JADX INFO: renamed from: b */
    public final C1483p f3624b;

    /* JADX INFO: renamed from: c */
    public final Context f3625c;

    /* JADX INFO: renamed from: d */
    public final CheckableImageButton f3626d;

    public AbstractC1484q(C1483p c1483p) {
        this.f3623a = c1483p.f3601b;
        this.f3624b = c1483p;
        this.f3625c = c1483p.getContext();
        this.f3626d = c1483p.f3607h;
    }

    /* JADX INFO: renamed from: c */
    public int mo2521c() {
        return 0;
    }

    /* JADX INFO: renamed from: d */
    public int mo2522d() {
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public View.OnFocusChangeListener mo2523e() {
        return null;
    }

    /* JADX INFO: renamed from: f */
    public View.OnClickListener mo2524f() {
        return null;
    }

    /* JADX INFO: renamed from: g */
    public View.OnFocusChangeListener mo2525g() {
        return null;
    }

    /* JADX INFO: renamed from: h */
    public AccessibilityManager.TouchExplorationStateChangeListener mo2534h() {
        return null;
    }

    /* JADX INFO: renamed from: i */
    public boolean mo2535i(int i10) {
        return true;
    }

    /* JADX INFO: renamed from: j */
    public boolean mo2558j() {
        return this instanceof C1479l;
    }

    /* JADX INFO: renamed from: k */
    public boolean mo2536k() {
        return false;
    }

    /* JADX INFO: renamed from: p */
    public final void m2559p() {
        this.f3624b.m2548f(false);
    }

    /* JADX INFO: renamed from: a */
    public void mo2520a() {
    }

    /* JADX INFO: renamed from: b */
    public void mo2557b() {
    }

    /* JADX INFO: renamed from: q */
    public void mo2528q() {
    }

    /* JADX INFO: renamed from: r */
    public void mo2529r() {
    }

    /* JADX INFO: renamed from: l */
    public void mo2526l(EditText editText) {
    }

    /* JADX INFO: renamed from: m */
    public void mo2537m(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    /* JADX INFO: renamed from: n */
    public void mo2538n(AccessibilityEvent accessibilityEvent) {
    }

    /* JADX INFO: renamed from: o */
    public void mo2527o(boolean z9) {
    }
}

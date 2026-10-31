package e4;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View$OnClickListener;
import android.view.View$OnFocusChangeListener;
import android.widget.EditText;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends q {
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2045f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TimeInterpolator f2046g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TimeInterpolator f2047h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public EditText f2048i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final androidx.navigation.c f2049j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a f2050k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public AnimatorSet f2051l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ValueAnimator f2052m;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(p pVar) {
        super(pVar);
        this.f2049j = new androidx.navigation.c(7, this);
        this.f2050k = new a(this, 0);
        this.e = com.bumptech.glide.d.q(pVar.getContext(), 2130904061, 100);
        this.f2045f = com.bumptech.glide.d.q(pVar.getContext(), 2130904061, 150);
        this.f2046g = com.bumptech.glide.d.r(pVar.getContext(), 2130904070, b3.a.f305a);
        this.f2047h = com.bumptech.glide.d.r(pVar.getContext(), 2130904068, b3.a.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void a() {
        if (this.f2091b.f2086q != null) {
            return;
        }
        s(t());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final int c() {
        return 2131951908;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final int d() {
        return 2131165619;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final View$OnFocusChangeListener e() {
        return this.f2050k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final View$OnClickListener f() {
        return this.f2049j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final View$OnFocusChangeListener g() {
        return this.f2050k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void l(EditText editText) {
        this.f2048i = editText;
        this.f2090a.setEndIconVisible(t());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void o(boolean z8) {
        if (this.f2091b.f2086q == null) {
            return;
        }
        s(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void q() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(this.f2047h);
        valueAnimatorOfFloat.setDuration(this.f2045f);
        valueAnimatorOfFloat.addUpdateListener(new b(this, 1));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f2046g;
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        int i9 = this.e;
        valueAnimatorOfFloat2.setDuration(i9);
        valueAnimatorOfFloat2.addUpdateListener(new b(this, 0));
        AnimatorSet animatorSet = new AnimatorSet();
        this.f2051l = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.f2051l.addListener(new c(this, 0));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat3.setDuration(i9);
        valueAnimatorOfFloat3.addUpdateListener(new b(this, 0));
        this.f2052m = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.addListener(new c(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e4.q
    public final void r() {
        EditText editText = this.f2048i;
        if (editText != null) {
            editText.post(new a4.g(25, this));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s(boolean z8) {
        boolean z9 = this.f2091b.d() == z8;
        if (z8 && !this.f2051l.isRunning()) {
            this.f2052m.cancel();
            this.f2051l.start();
            if (z9) {
                this.f2051l.end();
                return;
            }
            return;
        }
        if (z8) {
            return;
        }
        this.f2051l.cancel();
        this.f2052m.start();
        if (z9) {
            this.f2052m.end();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean t() {
        EditText editText = this.f2048i;
        if (editText != null) {
            return (editText.hasFocus() || this.d.hasFocus()) && this.f2048i.getText().length() > 0;
        }
        return false;
    }
}

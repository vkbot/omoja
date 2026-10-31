package p051e4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;

/* JADX INFO: renamed from: e4.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1485r extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3627a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ TextView f3628b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f3629c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ TextView f3630d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C1487t f3631e;

    public C1485r(C1487t c1487t, int i10, TextView textView, int i11, TextView textView2) {
        this.f3631e = c1487t;
        this.f3627a = i10;
        this.f3628b = textView;
        this.f3629c = i11;
        this.f3630d = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        AppCompatTextView appCompatTextView;
        int i10 = this.f3627a;
        C1487t c1487t = this.f3631e;
        c1487t.f3648n = i10;
        c1487t.f3646l = null;
        TextView textView = this.f3628b;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f3629c == 1 && (appCompatTextView = c1487t.f3652r) != null) {
                appCompatTextView.setText((CharSequence) null);
            }
        }
        TextView textView2 = this.f3630d;
        if (textView2 != null) {
            textView2.setTranslationY(0.0f);
            textView2.setAlpha(1.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        TextView textView = this.f3630d;
        if (textView != null) {
            textView.setVisibility(0);
            textView.setAlpha(0.0f);
        }
    }
}

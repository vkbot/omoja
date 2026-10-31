package p041d4;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textfield.TextInputLayout;
import p258z3.C3725k;

/* JADX INFO: renamed from: d4.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1268b implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3040a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f3041b;

    public /* synthetic */ C1268b(int i10, Object obj) {
        this.f3040a = i10;
        this.f3041b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f3040a) {
            case 0:
                ((TabLayout) this.f3041b).scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
                break;
            case 1:
                ((TextInputLayout) this.f3041b).f2559x0.m5125m(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                C3725k c3725k = ((BottomSheetBehavior) this.f3041b).f2163i;
                if (c3725k != null) {
                    c3725k.m5949r(fFloatValue);
                }
                break;
        }
    }
}

package p051e4;

import android.animation.ValueAnimator;
import com.example.navistart.mainview.DownloadButton;
import com.example.navistart.mainview.FireballView;
import p090i3.C1742c;
import p152o0.C2570d;

/* JADX INFO: renamed from: e4.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1475h implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3575a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f3576b;

    public /* synthetic */ C1475h(int i10, Object obj) {
        this.f3575a = i10;
        this.f3576b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i10 = this.f3575a;
        Object obj = this.f3576b;
        switch (i10) {
            case 0:
                ((C1479l) obj).f3626d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 1:
                C1742c c1742c = (C1742c) obj;
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                c1742c.f4541j.setAlpha((int) (255.0f * fFloatValue));
                c1742c.f4555x = fFloatValue;
                break;
            case 2:
                C2570d c2570d = (C2570d) obj;
                c2570d.f7128n = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                c2570d.invalidate();
                break;
            case 3:
                int i11 = DownloadButton.f1787f;
                ((DownloadButton) obj).f1790d.setLevel(((Integer) valueAnimator.getAnimatedValue()).intValue());
                break;
            default:
                FireballView fireballView = (FireballView) obj;
                int i12 = FireballView.f1792g;
                fireballView.f1797f = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                fireballView.invalidate();
                break;
        }
    }
}

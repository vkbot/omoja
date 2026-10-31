package e4;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import com.example.navistart.mainview.DownloadButton;
import com.example.navistart.mainview.FireballView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h implements ValueAnimator$AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2054b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(int i9, Object obj) {
        this.f2053a = i9;
        this.f2054b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i9 = this.f2053a;
        Object obj = this.f2054b;
        switch (i9) {
            case 0:
                ((l) obj).d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 1:
                i3.c cVar = (i3.c) obj;
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                cVar.f2644j.setAlpha((int) (255.0f * fFloatValue));
                cVar.f2655x = fFloatValue;
                break;
            case 2:
                o0.d dVar = (o0.d) obj;
                dVar.f4030n = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                dVar.invalidate();
                break;
            case 3:
                int i10 = DownloadButton.f947f;
                ((DownloadButton) obj).d.setLevel(((Integer) valueAnimator.getAnimatedValue()).intValue());
                break;
            default:
                FireballView fireballView = (FireballView) obj;
                int i11 = FireballView.f949g;
                fireballView.f951f = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                fireballView.invalidate();
                break;
        }
    }
}

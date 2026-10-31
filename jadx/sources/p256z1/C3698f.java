package p256z1;

import android.animation.ValueAnimator;
import android.graphics.Color;
import com.github.clans.fab.FloatingActionMenu;

/* JADX INFO: renamed from: z1.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3698f implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f10955a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10956b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f10957c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f10958d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ FloatingActionMenu f10959e;

    public /* synthetic */ C3698f(FloatingActionMenu floatingActionMenu, int i10, int i11, int i12, int i13) {
        this.f10955a = i13;
        this.f10959e = floatingActionMenu;
        this.f10956b = i10;
        this.f10957c = i11;
        this.f10958d = i12;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f10955a) {
            case 0:
                this.f10959e.setBackgroundColor(Color.argb(((Integer) valueAnimator.getAnimatedValue()).intValue(), this.f10956b, this.f10957c, this.f10958d));
                break;
            default:
                this.f10959e.setBackgroundColor(Color.argb(((Integer) valueAnimator.getAnimatedValue()).intValue(), this.f10956b, this.f10957c, this.f10958d));
                break;
        }
    }
}

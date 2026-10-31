package z1;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.graphics.Color;
import com.github.clans.fab.FloatingActionMenu;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements ValueAnimator$AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6170b;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;
    public final /* synthetic */ FloatingActionMenu e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(FloatingActionMenu floatingActionMenu, int i9, int i10, int i11, int i12) {
        this.f6169a = i12;
        this.e = floatingActionMenu;
        this.f6170b = i9;
        this.c = i10;
        this.d = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f6169a) {
            case 0:
                this.e.setBackgroundColor(Color.argb(((Integer) valueAnimator.getAnimatedValue()).intValue(), this.f6170b, this.c, this.d));
                break;
            default:
                this.e.setBackgroundColor(Color.argb(((Integer) valueAnimator.getAnimatedValue()).intValue(), this.f6170b, this.c, this.d));
                break;
        }
    }
}

package androidx.dynamicanimation.animation;

import android.animation.ValueAnimator$DurationScaleChangeListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements ValueAnimator$DurationScaleChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AnimationHandler$DurationScaleChangeListener33 f171a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(AnimationHandler$DurationScaleChangeListener33 animationHandler$DurationScaleChangeListener33) {
        this.f171a = animationHandler$DurationScaleChangeListener33;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.ValueAnimator$DurationScaleChangeListener
    public final void onChanged(float f8) {
        AnimationHandler$DurationScaleChangeListener33.a(this.f171a, f8);
    }
}

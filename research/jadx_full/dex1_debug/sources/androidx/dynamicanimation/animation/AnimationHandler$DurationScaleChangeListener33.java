package androidx.dynamicanimation.animation;

import android.animation.ValueAnimator$DurationScaleChangeListener;
import androidx.activity.i;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@VisibleForTesting
@RequiresApi(api = 33)
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class AnimationHandler$DurationScaleChangeListener33 implements AnimationHandler$DurationScaleChangeListener {
    ValueAnimator$DurationScaleChangeListener mListener;
    final /* synthetic */ AnimationHandler this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimationHandler$DurationScaleChangeListener33(AnimationHandler animationHandler) {
        this.this$0 = animationHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(AnimationHandler$DurationScaleChangeListener33 animationHandler$DurationScaleChangeListener33, float f8) {
        animationHandler$DurationScaleChangeListener33.lambda$register$0(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$register$0(float f8) {
        this.this$0.mDurationScale = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.AnimationHandler$DurationScaleChangeListener
    public boolean register() {
        if (this.mListener != null) {
            return true;
        }
        b bVar = new b(this);
        this.mListener = bVar;
        return i.l(bVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.AnimationHandler$DurationScaleChangeListener
    public boolean unregister() {
        boolean zK = i.k(this.mListener);
        this.mListener = null;
        return zK;
    }
}

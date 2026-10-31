package androidx.appcompat.graphics.drawable;

import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition extends AnimatedStateListDrawableCompat$Transition {
    private final AnimatedVectorDrawableCompat mAvd;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition(AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
        super(null);
        this.mAvd = animatedVectorDrawableCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void start() {
        this.mAvd.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void stop() {
        this.mAvd.stop();
    }
}

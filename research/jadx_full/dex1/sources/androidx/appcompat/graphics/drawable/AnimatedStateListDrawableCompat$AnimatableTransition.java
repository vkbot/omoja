package androidx.appcompat.graphics.drawable;

import android.graphics.drawable.Animatable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnimatedStateListDrawableCompat$AnimatableTransition extends AnimatedStateListDrawableCompat$Transition {
    private final Animatable mA;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimatedStateListDrawableCompat$AnimatableTransition(Animatable animatable) {
        super(null);
        this.mA = animatable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void start() {
        this.mA.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void stop() {
        this.mA.stop();
    }
}

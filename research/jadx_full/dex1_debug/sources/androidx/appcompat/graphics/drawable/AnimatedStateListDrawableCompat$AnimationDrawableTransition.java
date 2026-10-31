package androidx.appcompat.graphics.drawable;

import android.animation.ObjectAnimator;
import android.graphics.drawable.AnimationDrawable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnimatedStateListDrawableCompat$AnimationDrawableTransition extends AnimatedStateListDrawableCompat$Transition {
    private final ObjectAnimator mAnim;
    private final boolean mHasReversibleFlag;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimatedStateListDrawableCompat$AnimationDrawableTransition(AnimationDrawable animationDrawable, boolean z8, boolean z9) {
        super(null);
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        int i9 = z8 ? numberOfFrames - 1 : 0;
        int i10 = z8 ? 0 : numberOfFrames - 1;
        AnimatedStateListDrawableCompat$FrameInterpolator animatedStateListDrawableCompat$FrameInterpolator = new AnimatedStateListDrawableCompat$FrameInterpolator(animationDrawable, z8);
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i9, i10);
        objectAnimatorOfInt.setAutoCancel(true);
        objectAnimatorOfInt.setDuration(animatedStateListDrawableCompat$FrameInterpolator.getTotalDuration());
        objectAnimatorOfInt.setInterpolator(animatedStateListDrawableCompat$FrameInterpolator);
        this.mHasReversibleFlag = z9;
        this.mAnim = objectAnimatorOfInt;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public boolean canReverse() {
        return this.mHasReversibleFlag;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void reverse() {
        this.mAnim.reverse();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void start() {
        this.mAnim.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void stop() {
        this.mAnim.cancel();
    }
}

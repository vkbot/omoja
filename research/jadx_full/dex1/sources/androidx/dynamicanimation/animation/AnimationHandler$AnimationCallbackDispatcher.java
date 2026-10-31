package androidx.dynamicanimation.animation;

import android.os.SystemClock;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnimationHandler$AnimationCallbackDispatcher {
    final /* synthetic */ AnimationHandler this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AnimationHandler$AnimationCallbackDispatcher(AnimationHandler animationHandler) {
        this.this$0 = animationHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchAnimationFrame() {
        this.this$0.mCurrentFrameTime = SystemClock.uptimeMillis();
        AnimationHandler animationHandler = this.this$0;
        animationHandler.doAnimationFrame(animationHandler.mCurrentFrameTime);
        if (this.this$0.mAnimationCallbacks.size() > 0) {
            AnimationHandler.access$100(this.this$0).postFrameCallback(AnimationHandler.access$000(this.this$0));
        }
    }

    public /* synthetic */ AnimationHandler$AnimationCallbackDispatcher(AnimationHandler animationHandler, AnimationHandler$1 animationHandler$1) {
        this(animationHandler);
    }
}

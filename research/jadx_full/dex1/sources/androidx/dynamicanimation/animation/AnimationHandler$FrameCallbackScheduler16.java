package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.view.Choreographer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AnimationHandler$FrameCallbackScheduler16 implements FrameCallbackScheduler {
    private final Choreographer mChoreographer = Choreographer.getInstance();
    private final Looper mLooper = Looper.myLooper();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(Runnable runnable, long j9) {
        lambda$postFrameCallback$0(runnable, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$postFrameCallback$0(Runnable runnable, long j9) {
        runnable.run();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.FrameCallbackScheduler
    public boolean isCurrentThread() {
        return Thread.currentThread() == this.mLooper.getThread();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.FrameCallbackScheduler
    public void postFrameCallback(Runnable runnable) {
        this.mChoreographer.postFrameCallback(new c(runnable));
    }
}

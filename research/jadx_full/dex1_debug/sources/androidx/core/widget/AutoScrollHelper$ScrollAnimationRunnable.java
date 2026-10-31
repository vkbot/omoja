package androidx.core.widget;

import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AutoScrollHelper$ScrollAnimationRunnable implements Runnable {
    final /* synthetic */ AutoScrollHelper this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AutoScrollHelper$ScrollAnimationRunnable(AutoScrollHelper autoScrollHelper) {
        this.this$0 = autoScrollHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        AutoScrollHelper autoScrollHelper = this.this$0;
        if (autoScrollHelper.mAnimating) {
            if (autoScrollHelper.mNeedsReset) {
                autoScrollHelper.mNeedsReset = false;
                autoScrollHelper.mScroller.start();
            }
            AutoScrollHelper$ClampedScroller autoScrollHelper$ClampedScroller = this.this$0.mScroller;
            if (autoScrollHelper$ClampedScroller.isFinished() || !this.this$0.shouldAnimate()) {
                this.this$0.mAnimating = false;
                return;
            }
            AutoScrollHelper autoScrollHelper2 = this.this$0;
            if (autoScrollHelper2.mNeedsCancel) {
                autoScrollHelper2.mNeedsCancel = false;
                autoScrollHelper2.cancelTargetTouch();
            }
            autoScrollHelper$ClampedScroller.computeScrollDelta();
            this.this$0.scrollTargetBy(autoScrollHelper$ClampedScroller.getDeltaX(), autoScrollHelper$ClampedScroller.getDeltaY());
            ViewCompat.postOnAnimation(this.this$0.mTarget, this);
        }
    }
}

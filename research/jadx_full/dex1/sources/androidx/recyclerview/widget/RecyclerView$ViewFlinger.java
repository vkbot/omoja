package androidx.recyclerview.widget;

import android.os.Build$VERSION;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$ViewFlinger implements Runnable {
    private boolean mEatRunOnAnimationRequest;
    Interpolator mInterpolator;
    private int mLastFlingX;
    private int mLastFlingY;
    OverScroller mOverScroller;
    private boolean mReSchedulePostAnimationCallback;
    final /* synthetic */ RecyclerView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$ViewFlinger(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
        Interpolator interpolator = RecyclerView.sQuinticInterpolator;
        this.mInterpolator = interpolator;
        this.mEatRunOnAnimationRequest = false;
        this.mReSchedulePostAnimationCallback = false;
        this.mOverScroller = new OverScroller(recyclerView.getContext(), interpolator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int computeScrollDuration(int i9, int i10) {
        int iAbs = Math.abs(i9);
        int iAbs2 = Math.abs(i10);
        boolean z8 = iAbs > iAbs2;
        RecyclerView recyclerView = this.this$0;
        int width = z8 ? recyclerView.getWidth() : recyclerView.getHeight();
        if (!z8) {
            iAbs = iAbs2;
        }
        return Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), 2000);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void internalPostOnAnimation() {
        this.this$0.removeCallbacks(this);
        ViewCompat.postOnAnimation(this.this$0, this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fling(int i9, int i10) {
        this.this$0.setScrollState(2);
        this.mLastFlingY = 0;
        this.mLastFlingX = 0;
        Interpolator interpolator = this.mInterpolator;
        Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
        if (interpolator != interpolator2) {
            this.mInterpolator = interpolator2;
            this.mOverScroller = new OverScroller(this.this$0.getContext(), interpolator2);
        }
        this.mOverScroller.fling(0, 0, i9, i10, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        postOnAnimation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void postOnAnimation() {
        if (this.mEatRunOnAnimationRequest) {
            this.mReSchedulePostAnimationCallback = true;
        } else {
            internalPostOnAnimation();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        int i9;
        int i10;
        int i11;
        RecyclerView recyclerView = this.this$0;
        if (recyclerView.mLayout == null) {
            stop();
            return;
        }
        this.mReSchedulePostAnimationCallback = false;
        this.mEatRunOnAnimationRequest = true;
        recyclerView.consumePendingUpdateOperations();
        OverScroller overScroller = this.mOverScroller;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i12 = currX - this.mLastFlingX;
            int i13 = currY - this.mLastFlingY;
            this.mLastFlingX = currX;
            this.mLastFlingY = currY;
            int iConsumeFlingInHorizontalStretch = this.this$0.consumeFlingInHorizontalStretch(i12);
            int iConsumeFlingInVerticalStretch = this.this$0.consumeFlingInVerticalStretch(i13);
            RecyclerView recyclerView2 = this.this$0;
            int[] iArr = recyclerView2.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            if (recyclerView2.dispatchNestedPreScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr, null, 1)) {
                int[] iArr2 = this.this$0.mReusableIntPair;
                iConsumeFlingInHorizontalStretch -= iArr2[0];
                iConsumeFlingInVerticalStretch -= iArr2[1];
            }
            if (this.this$0.getOverScrollMode() != 2) {
                this.this$0.considerReleasingGlowsOnScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch);
            }
            RecyclerView recyclerView3 = this.this$0;
            if (recyclerView3.mAdapter != null) {
                int[] iArr3 = recyclerView3.mReusableIntPair;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView3.scrollStep(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr3);
                RecyclerView recyclerView4 = this.this$0;
                int[] iArr4 = recyclerView4.mReusableIntPair;
                int i14 = iArr4[0];
                int i15 = iArr4[1];
                iConsumeFlingInHorizontalStretch -= i14;
                iConsumeFlingInVerticalStretch -= i15;
                RecyclerView$SmoothScroller recyclerView$SmoothScroller = recyclerView4.mLayout.mSmoothScroller;
                if (recyclerView$SmoothScroller != null && !recyclerView$SmoothScroller.isPendingInitialRun() && recyclerView$SmoothScroller.isRunning()) {
                    int itemCount = this.this$0.mState.getItemCount();
                    if (itemCount == 0) {
                        recyclerView$SmoothScroller.stop();
                    } else if (recyclerView$SmoothScroller.getTargetPosition() >= itemCount) {
                        recyclerView$SmoothScroller.setTargetPosition(itemCount - 1);
                        recyclerView$SmoothScroller.onAnimation(i14, i15);
                    } else {
                        recyclerView$SmoothScroller.onAnimation(i14, i15);
                    }
                }
                i10 = i15;
                i9 = i14;
            } else {
                i9 = 0;
                i10 = 0;
            }
            int i16 = iConsumeFlingInHorizontalStretch;
            int i17 = iConsumeFlingInVerticalStretch;
            if (!this.this$0.mItemDecorations.isEmpty()) {
                this.this$0.invalidate();
            }
            RecyclerView recyclerView5 = this.this$0;
            int[] iArr5 = recyclerView5.mReusableIntPair;
            iArr5[0] = 0;
            iArr5[1] = 0;
            recyclerView5.dispatchNestedScroll(i9, i10, i16, i17, null, 1, iArr5);
            RecyclerView recyclerView6 = this.this$0;
            int[] iArr6 = recyclerView6.mReusableIntPair;
            int i18 = i16 - iArr6[0];
            int i19 = i17 - iArr6[1];
            if (i9 != 0 || i10 != 0) {
                recyclerView6.dispatchOnScrolled(i9, i10);
            }
            if (!RecyclerView.access$200(this.this$0)) {
                this.this$0.invalidate();
            }
            boolean z8 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i18 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i19 != 0));
            RecyclerView$SmoothScroller recyclerView$SmoothScroller2 = this.this$0.mLayout.mSmoothScroller;
            if ((recyclerView$SmoothScroller2 == null || !recyclerView$SmoothScroller2.isPendingInitialRun()) && z8) {
                if (this.this$0.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i18 < 0) {
                        i11 = -currVelocity;
                    } else {
                        i11 = i18 > 0 ? currVelocity : 0;
                    }
                    if (i19 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i19 <= 0) {
                        currVelocity = 0;
                    }
                    this.this$0.absorbGlows(i11, currVelocity);
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                    this.this$0.mPrefetchRegistry.clearPrefetchPositions();
                }
            } else {
                postOnAnimation();
                RecyclerView recyclerView7 = this.this$0;
                GapWorker gapWorker = recyclerView7.mGapWorker;
                if (gapWorker != null) {
                    gapWorker.postFromTraversal(recyclerView7, i9, i10);
                }
            }
            if (Build$VERSION.SDK_INT >= 35) {
                RecyclerView$Api35Impl.setFrameContentVelocity(this.this$0, Math.abs(overScroller.getCurrVelocity()));
            }
        }
        RecyclerView$SmoothScroller recyclerView$SmoothScroller3 = this.this$0.mLayout.mSmoothScroller;
        if (recyclerView$SmoothScroller3 != null && recyclerView$SmoothScroller3.isPendingInitialRun()) {
            recyclerView$SmoothScroller3.onAnimation(0, 0);
        }
        this.mEatRunOnAnimationRequest = false;
        if (this.mReSchedulePostAnimationCallback) {
            internalPostOnAnimation();
        } else {
            this.this$0.setScrollState(0);
            this.this$0.stopNestedScroll(1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void smoothScrollBy(int i9, int i10, int i11, @Nullable Interpolator interpolator) {
        if (i11 == Integer.MIN_VALUE) {
            i11 = computeScrollDuration(i9, i10);
        }
        int i12 = i11;
        if (interpolator == null) {
            interpolator = RecyclerView.sQuinticInterpolator;
        }
        if (this.mInterpolator != interpolator) {
            this.mInterpolator = interpolator;
            this.mOverScroller = new OverScroller(this.this$0.getContext(), interpolator);
        }
        this.mLastFlingY = 0;
        this.mLastFlingX = 0;
        this.this$0.setScrollState(2);
        this.mOverScroller.startScroll(0, 0, i9, i10, i12);
        postOnAnimation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void stop() {
        this.this$0.removeCallbacks(this);
        this.mOverScroller.abortAnimation();
    }
}

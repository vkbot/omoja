package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class RecyclerView$SmoothScroller {
    private RecyclerView$LayoutManager mLayoutManager;
    private boolean mPendingInitialRun;
    private RecyclerView mRecyclerView;
    private boolean mRunning;
    private boolean mStarted;
    private View mTargetView;
    private int mTargetPosition = -1;
    private final RecyclerView$SmoothScroller$Action mRecyclingAction = new RecyclerView$SmoothScroller$Action(0, 0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public PointF computeScrollVectorForPosition(int i9) {
        Object layoutManager = getLayoutManager();
        if (layoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) {
            return ((RecyclerView$SmoothScroller$ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(i9);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + RecyclerView$SmoothScroller$ScrollVectorProvider.class.getCanonicalName());
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findViewByPosition(int i9) {
        return this.mRecyclerView.mLayout.findViewByPosition(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getChildCount() {
        return this.mRecyclerView.mLayout.getChildCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getChildPosition(View view) {
        return this.mRecyclerView.getChildLayoutPosition(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$LayoutManager getLayoutManager() {
        return this.mLayoutManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTargetPosition() {
        return this.mTargetPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void instantScrollToPosition(int i9) {
        this.mRecyclerView.scrollToPosition(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isPendingInitialRun() {
        return this.mPendingInitialRun;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isRunning() {
        return this.mRunning;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void normalize(@NonNull PointF pointF) {
        float f8 = pointF.x;
        float f9 = pointF.y;
        float fSqrt = (float) Math.sqrt((f9 * f9) + (f8 * f8));
        pointF.x /= fSqrt;
        pointF.y /= fSqrt;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onAnimation(int i9, int i10) {
        PointF pointFComputeScrollVectorForPosition;
        RecyclerView recyclerView = this.mRecyclerView;
        if (this.mTargetPosition == -1 || recyclerView == null) {
            stop();
        }
        if (this.mPendingInitialRun && this.mTargetView == null && this.mLayoutManager != null && (pointFComputeScrollVectorForPosition = computeScrollVectorForPosition(this.mTargetPosition)) != null) {
            float f8 = pointFComputeScrollVectorForPosition.x;
            if (f8 != 0.0f || pointFComputeScrollVectorForPosition.y != 0.0f) {
                recyclerView.scrollStep((int) Math.signum(f8), (int) Math.signum(pointFComputeScrollVectorForPosition.y), null);
            }
        }
        this.mPendingInitialRun = false;
        View view = this.mTargetView;
        if (view != null) {
            if (getChildPosition(view) == this.mTargetPosition) {
                onTargetFound(this.mTargetView, recyclerView.mState, this.mRecyclingAction);
                this.mRecyclingAction.runIfNecessary(recyclerView);
                stop();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.mTargetView = null;
            }
        }
        if (this.mRunning) {
            onSeekTargetStep(i9, i10, recyclerView.mState, this.mRecyclingAction);
            boolean zHasJumpTarget = this.mRecyclingAction.hasJumpTarget();
            this.mRecyclingAction.runIfNecessary(recyclerView);
            if (zHasJumpTarget && this.mRunning) {
                this.mPendingInitialRun = true;
                recyclerView.mViewFlinger.postOnAnimation();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onChildAttachedToWindow(View view) {
        if (getChildPosition(view) == getTargetPosition()) {
            this.mTargetView = view;
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "smooth scroll target view has been attached");
            }
        }
    }

    public abstract void onSeekTargetStep(@Px int i9, @Px int i10, @NonNull RecyclerView$State recyclerView$State, @NonNull RecyclerView$SmoothScroller$Action recyclerView$SmoothScroller$Action);

    public abstract void onStart();

    public abstract void onStop();

    public abstract void onTargetFound(@NonNull View view, @NonNull RecyclerView$State recyclerView$State, @NonNull RecyclerView$SmoothScroller$Action recyclerView$SmoothScroller$Action);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTargetPosition(int i9) {
        this.mTargetPosition = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void start(RecyclerView recyclerView, RecyclerView$LayoutManager recyclerView$LayoutManager) {
        recyclerView.mViewFlinger.stop();
        if (this.mStarted) {
            Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = recyclerView$LayoutManager;
        int i9 = this.mTargetPosition;
        if (i9 == -1) {
            i.k("Invalid target position");
            return;
        }
        recyclerView.mState.mTargetPosition = i9;
        this.mRunning = true;
        this.mPendingInitialRun = true;
        this.mTargetView = findViewByPosition(getTargetPosition());
        onStart();
        this.mRecyclerView.mViewFlinger.postOnAnimation();
        this.mStarted = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void stop() {
        if (this.mRunning) {
            this.mRunning = false;
            onStop();
            this.mRecyclerView.mState.mTargetPosition = -1;
            this.mTargetView = null;
            this.mTargetPosition = -1;
            this.mPendingInitialRun = false;
            this.mLayoutManager.onSmoothScrollerStopped(this);
            this.mLayoutManager = null;
            this.mRecyclerView = null;
        }
    }
}

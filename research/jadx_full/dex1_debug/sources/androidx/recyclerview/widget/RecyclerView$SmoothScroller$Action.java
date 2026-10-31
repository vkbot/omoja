package androidx.recyclerview.widget;

import android.util.Log;
import android.view.animation.Interpolator;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$SmoothScroller$Action {
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    private boolean mChanged;
    private int mConsecutiveUpdates;
    private int mDuration;
    private int mDx;
    private int mDy;
    private Interpolator mInterpolator;
    private int mJumpToPosition;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$SmoothScroller$Action(@Px int i9, @Px int i10, int i11, @Nullable Interpolator interpolator) {
        this.mJumpToPosition = -1;
        this.mChanged = false;
        this.mConsecutiveUpdates = 0;
        this.mDx = i9;
        this.mDy = i10;
        this.mDuration = i11;
        this.mInterpolator = interpolator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void validate() {
        if (this.mInterpolator != null && this.mDuration < 1) {
            i.l("If you provide an interpolator, you must set a positive duration");
        } else {
            if (this.mDuration >= 1) {
                return;
            }
            i.l("Scroll duration must be a positive number");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDuration() {
        return this.mDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getDx() {
        return this.mDx;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getDy() {
        return this.mDy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasJumpTarget() {
        return this.mJumpToPosition >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void jumpTo(int i9) {
        this.mJumpToPosition = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void runIfNecessary(RecyclerView recyclerView) {
        int i9 = this.mJumpToPosition;
        if (i9 >= 0) {
            this.mJumpToPosition = -1;
            recyclerView.jumpToPositionForSmoothScroller(i9);
            this.mChanged = false;
        } else {
            if (!this.mChanged) {
                this.mConsecutiveUpdates = 0;
                return;
            }
            validate();
            recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy, this.mDuration, this.mInterpolator);
            int i10 = this.mConsecutiveUpdates + 1;
            this.mConsecutiveUpdates = i10;
            if (i10 > 10) {
                Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
            }
            this.mChanged = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDuration(int i9) {
        this.mChanged = true;
        this.mDuration = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDx(@Px int i9) {
        this.mChanged = true;
        this.mDx = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDy(@Px int i9) {
        this.mChanged = true;
        this.mDy = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInterpolator(@Nullable Interpolator interpolator) {
        this.mChanged = true;
        this.mInterpolator = interpolator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void update(@Px int i9, @Px int i10, int i11, @Nullable Interpolator interpolator) {
        this.mDx = i9;
        this.mDy = i10;
        this.mDuration = i11;
        this.mInterpolator = interpolator;
        this.mChanged = true;
    }

    public RecyclerView$SmoothScroller$Action(@Px int i9, @Px int i10, int i11) {
        this(i9, i10, i11, null);
    }

    public RecyclerView$SmoothScroller$Action(@Px int i9, @Px int i10) {
        this(i9, i10, Integer.MIN_VALUE, null);
    }
}

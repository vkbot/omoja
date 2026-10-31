package androidx.recyclerview.widget;

import android.util.SparseArray;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$State {
    static final int STEP_ANIMATIONS = 4;
    static final int STEP_LAYOUT = 2;
    static final int STEP_START = 1;
    private SparseArray<Object> mData;
    long mFocusedItemId;
    int mFocusedItemPosition;
    int mFocusedSubChildId;
    int mRemainingScrollHorizontal;
    int mRemainingScrollVertical;
    int mTargetPosition = -1;
    int mPreviousLayoutItemCount = 0;
    int mDeletedInvisibleItemCountSincePreviousLayout = 0;
    int mLayoutStep = 1;
    int mItemCount = 0;
    boolean mStructureChanged = false;
    boolean mInPreLayout = false;
    boolean mTrackOldChangeHolders = false;
    boolean mIsMeasuring = false;
    boolean mRunSimpleAnimations = false;
    boolean mRunPredictiveAnimations = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void assertLayoutStep(int i9) {
        if ((this.mLayoutStep & i9) != 0) {
            return;
        }
        b.t("Layout state should be one of ", Integer.toBinaryString(i9), " but it is ", Integer.toBinaryString(this.mLayoutStep));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean didStructureChange() {
        return this.mStructureChanged;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> T get(int i9) {
        SparseArray<Object> sparseArray = this.mData;
        if (sparseArray == null) {
            return null;
        }
        return (T) sparseArray.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getItemCount() {
        return this.mInPreLayout ? this.mPreviousLayoutItemCount - this.mDeletedInvisibleItemCountSincePreviousLayout : this.mItemCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRemainingScrollHorizontal() {
        return this.mRemainingScrollHorizontal;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRemainingScrollVertical() {
        return this.mRemainingScrollVertical;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTargetScrollPosition() {
        return this.mTargetPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasTargetScrollPosition() {
        return this.mTargetPosition != -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isMeasuring() {
        return this.mIsMeasuring;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isPreLayout() {
        return this.mInPreLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void prepareForNestedPrefetch(RecyclerView$Adapter recyclerView$Adapter) {
        this.mLayoutStep = 1;
        this.mItemCount = recyclerView$Adapter.getItemCount();
        this.mInPreLayout = false;
        this.mTrackOldChangeHolders = false;
        this.mIsMeasuring = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void put(int i9, Object obj) {
        if (this.mData == null) {
            this.mData = new SparseArray<>();
        }
        this.mData.put(i9, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void remove(int i9) {
        SparseArray<Object> sparseArray = this.mData;
        if (sparseArray == null) {
            return;
        }
        sparseArray.remove(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "State{mTargetPosition=" + this.mTargetPosition + ", mData=" + this.mData + ", mItemCount=" + this.mItemCount + ", mIsMeasuring=" + this.mIsMeasuring + ", mPreviousLayoutItemCount=" + this.mPreviousLayoutItemCount + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.mDeletedInvisibleItemCountSincePreviousLayout + ", mStructureChanged=" + this.mStructureChanged + ", mInPreLayout=" + this.mInPreLayout + ", mRunSimpleAnimations=" + this.mRunSimpleAnimations + ", mRunPredictiveAnimations=" + this.mRunPredictiveAnimations + '}';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean willRunPredictiveAnimations() {
        return this.mRunPredictiveAnimations;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean willRunSimpleAnimations() {
        return this.mRunSimpleAnimations;
    }
}

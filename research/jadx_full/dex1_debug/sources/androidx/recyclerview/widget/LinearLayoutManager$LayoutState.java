package androidx.recyclerview.widget;

import android.util.Log;
import android.view.View;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LinearLayoutManager$LayoutState {
    static final int INVALID_LAYOUT = Integer.MIN_VALUE;
    static final int ITEM_DIRECTION_HEAD = -1;
    static final int ITEM_DIRECTION_TAIL = 1;
    static final int LAYOUT_END = 1;
    static final int LAYOUT_START = -1;
    static final int SCROLLING_OFFSET_NaN = Integer.MIN_VALUE;
    static final String TAG = "LLM#LayoutState";
    int mAvailable;
    int mCurrentPosition;
    boolean mInfinite;
    int mItemDirection;
    int mLastScrollDelta;
    int mLayoutDirection;
    int mOffset;
    int mScrollingOffset;
    boolean mRecycle = true;
    int mExtraFillSpace = 0;
    int mNoRecycleSpace = 0;
    boolean mIsPreLayout = false;
    List<RecyclerView$ViewHolder> mScrapList = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private View nextViewFromScrapList() {
        int size = this.mScrapList.size();
        for (int i9 = 0; i9 < size; i9++) {
            View view = this.mScrapList.get(i9).itemView;
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
            if (!recyclerView$LayoutParams.isItemRemoved() && this.mCurrentPosition == recyclerView$LayoutParams.getViewLayoutPosition()) {
                assignPositionFromScrapList(view);
                return view;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void assignPositionFromScrapList(View view) {
        View viewNextViewInLimitedList = nextViewInLimitedList(view);
        if (viewNextViewInLimitedList == null) {
            this.mCurrentPosition = -1;
        } else {
            this.mCurrentPosition = ((RecyclerView$LayoutParams) viewNextViewInLimitedList.getLayoutParams()).getViewLayoutPosition();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasMore(RecyclerView$State recyclerView$State) {
        int i9 = this.mCurrentPosition;
        return i9 >= 0 && i9 < recyclerView$State.getItemCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void log() {
        Log.d(TAG, "avail:" + this.mAvailable + ", ind:" + this.mCurrentPosition + ", dir:" + this.mItemDirection + ", offset:" + this.mOffset + ", layoutDir:" + this.mLayoutDirection);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View next(RecyclerView$Recycler recyclerView$Recycler) {
        if (this.mScrapList != null) {
            return nextViewFromScrapList();
        }
        View viewForPosition = recyclerView$Recycler.getViewForPosition(this.mCurrentPosition);
        this.mCurrentPosition += this.mItemDirection;
        return viewForPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View nextViewInLimitedList(View view) {
        int viewLayoutPosition;
        int size = this.mScrapList.size();
        View view2 = null;
        int i9 = Integer.MAX_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            View view3 = this.mScrapList.get(i10).itemView;
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view3.getLayoutParams();
            if (view3 != view && !recyclerView$LayoutParams.isItemRemoved() && (viewLayoutPosition = (recyclerView$LayoutParams.getViewLayoutPosition() - this.mCurrentPosition) * this.mItemDirection) >= 0 && viewLayoutPosition < i9) {
                if (viewLayoutPosition == 0) {
                    return view3;
                }
                view2 = view3;
                i9 = viewLayoutPosition;
            }
        }
        return view2;
    }

    public void assignPositionFromScrapList() {
        assignPositionFromScrapList(null);
    }
}

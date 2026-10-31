package androidx.recyclerview.widget;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$7 implements AdapterHelper$Callback {
    final /* synthetic */ RecyclerView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$7(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchUpdate(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        int i9 = adapterHelper$UpdateOp.cmd;
        if (i9 == 1) {
            RecyclerView recyclerView = this.this$0;
            recyclerView.mLayout.onItemsAdded(recyclerView, adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            return;
        }
        if (i9 == 2) {
            RecyclerView recyclerView2 = this.this$0;
            recyclerView2.mLayout.onItemsRemoved(recyclerView2, adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
        } else if (i9 == 4) {
            RecyclerView recyclerView3 = this.this$0;
            recyclerView3.mLayout.onItemsUpdated(recyclerView3, adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
        } else {
            if (i9 != 8) {
                return;
            }
            RecyclerView recyclerView4 = this.this$0;
            recyclerView4.mLayout.onItemsMoved(recyclerView4, adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, 1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.AdapterHelper$Callback
    public RecyclerView$ViewHolder findViewHolder(int i9) {
        RecyclerView$ViewHolder recyclerView$ViewHolderFindViewHolderForPosition = this.this$0.findViewHolderForPosition(i9, true);
        if (recyclerView$ViewHolderFindViewHolderForPosition == null) {
            return null;
        }
        if (!this.this$0.mChildHelper.isHidden(recyclerView$ViewHolderFindViewHolderForPosition.itemView)) {
            return recyclerView$ViewHolderFindViewHolderForPosition;
        }
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "assuming view holder cannot be find because it is hidden");
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.AdapterHelper$Callback
    public void markViewHoldersUpdated(int i9, int i10, Object obj) {
        this.this$0.viewRangeUpdate(i9, i10, obj);
        this.this$0.mItemsChanged = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.AdapterHelper$Callback
    public void offsetPositionsForAdd(int i9, int i10) {
        this.this$0.offsetPositionRecordsForInsert(i9, i10);
        this.this$0.mItemsAddedOrRemoved = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.AdapterHelper$Callback
    public void offsetPositionsForMove(int i9, int i10) {
        this.this$0.offsetPositionRecordsForMove(i9, i10);
        this.this$0.mItemsAddedOrRemoved = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.AdapterHelper$Callback
    public void offsetPositionsForRemovingInvisible(int i9, int i10) {
        this.this$0.offsetPositionRecordsForRemove(i9, i10, true);
        RecyclerView recyclerView = this.this$0;
        recyclerView.mItemsAddedOrRemoved = true;
        recyclerView.mState.mDeletedInvisibleItemCountSincePreviousLayout += i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.AdapterHelper$Callback
    public void offsetPositionsForRemovingLaidOutOrNewView(int i9, int i10) {
        this.this$0.offsetPositionRecordsForRemove(i9, i10, false);
        this.this$0.mItemsAddedOrRemoved = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.AdapterHelper$Callback
    public void onDispatchFirstPass(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        dispatchUpdate(adapterHelper$UpdateOp);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.AdapterHelper$Callback
    public void onDispatchSecondPass(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        dispatchUpdate(adapterHelper$UpdateOp);
    }
}

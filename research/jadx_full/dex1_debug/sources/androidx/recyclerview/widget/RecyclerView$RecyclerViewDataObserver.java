package androidx.recyclerview.widget;

import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$RecyclerViewDataObserver extends RecyclerView$AdapterDataObserver {
    final /* synthetic */ RecyclerView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$RecyclerViewDataObserver(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onChanged() {
        this.this$0.assertNotInLayoutOrScroll(null);
        RecyclerView recyclerView = this.this$0;
        recyclerView.mState.mStructureChanged = true;
        recyclerView.processDataSetCompletelyChanged(true);
        if (this.this$0.mAdapterHelper.hasPendingUpdates()) {
            return;
        }
        this.this$0.requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeChanged(int i9, int i10, Object obj) {
        this.this$0.assertNotInLayoutOrScroll(null);
        if (this.this$0.mAdapterHelper.onItemRangeChanged(i9, i10, obj)) {
            triggerUpdateProcessor();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeInserted(int i9, int i10) {
        this.this$0.assertNotInLayoutOrScroll(null);
        if (this.this$0.mAdapterHelper.onItemRangeInserted(i9, i10)) {
            triggerUpdateProcessor();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeMoved(int i9, int i10, int i11) {
        this.this$0.assertNotInLayoutOrScroll(null);
        if (this.this$0.mAdapterHelper.onItemRangeMoved(i9, i10, i11)) {
            triggerUpdateProcessor();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeRemoved(int i9, int i10) {
        this.this$0.assertNotInLayoutOrScroll(null);
        if (this.this$0.mAdapterHelper.onItemRangeRemoved(i9, i10)) {
            triggerUpdateProcessor();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onStateRestorationPolicyChanged() {
        RecyclerView$Adapter recyclerView$Adapter;
        RecyclerView recyclerView = this.this$0;
        if (recyclerView.mPendingSavedState == null || (recyclerView$Adapter = recyclerView.mAdapter) == null || !recyclerView$Adapter.canRestoreState()) {
            return;
        }
        this.this$0.requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void triggerUpdateProcessor() {
        RecyclerView recyclerView = this.this$0;
        if (recyclerView.mHasFixedSize && recyclerView.mIsAttached) {
            ViewCompat.postOnAnimation(recyclerView, recyclerView.mUpdateChildViewsRunnable);
        } else {
            recyclerView.mAdapterUpdateDuringMeasure = true;
            recyclerView.requestLayout();
        }
    }
}

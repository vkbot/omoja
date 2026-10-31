package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class SortedListAdapterCallback<T2> extends SortedList$Callback<T2> {
    final RecyclerView$Adapter<?> mAdapter;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SortedListAdapterCallback(RecyclerView$Adapter<?> recyclerView$Adapter) {
        this.mAdapter = recyclerView$Adapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SortedList$Callback
    public void onChanged(int i9, int i10) {
        this.mAdapter.notifyItemRangeChanged(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i9, int i10) {
        this.mAdapter.notifyItemRangeInserted(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i9, int i10) {
        this.mAdapter.notifyItemMoved(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i9, int i10) {
        this.mAdapter.notifyItemRangeRemoved(i9, i10);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback, androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i9, int i10, Object obj) {
        this.mAdapter.notifyItemRangeChanged(i9, i10, obj);
    }
}

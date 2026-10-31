package androidx.recyclerview.widget;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SortedList$BatchedCallback<T2> extends SortedList$Callback<T2> {
    private final BatchingListUpdateCallback mBatchingListUpdateCallback;
    final SortedList$Callback<T2> mWrappedCallback;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SortedList$BatchedCallback(SortedList$Callback<T2> sortedList$Callback) {
        this.mWrappedCallback = sortedList$Callback;
        this.mBatchingListUpdateCallback = new BatchingListUpdateCallback(sortedList$Callback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SortedList$Callback
    public boolean areContentsTheSame(T2 t3, T2 t9) {
        return this.mWrappedCallback.areContentsTheSame(t3, t9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SortedList$Callback
    public boolean areItemsTheSame(T2 t3, T2 t9) {
        return this.mWrappedCallback.areItemsTheSame(t3, t9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SortedList$Callback, java.util.Comparator
    public int compare(T2 t3, T2 t9) {
        return this.mWrappedCallback.compare(t3, t9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchLastEvent() {
        this.mBatchingListUpdateCallback.dispatchLastEvent();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SortedList$Callback
    @Nullable
    public Object getChangePayload(T2 t3, T2 t9) {
        return this.mWrappedCallback.getChangePayload(t3, t9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SortedList$Callback
    public void onChanged(int i9, int i10) {
        this.mBatchingListUpdateCallback.onChanged(i9, i10, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i9, int i10) {
        this.mBatchingListUpdateCallback.onInserted(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i9, int i10) {
        this.mBatchingListUpdateCallback.onMoved(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i9, int i10) {
        this.mBatchingListUpdateCallback.onRemoved(i9, i10);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback, androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i9, int i10, Object obj) {
        this.mBatchingListUpdateCallback.onChanged(i9, i10, obj);
    }
}

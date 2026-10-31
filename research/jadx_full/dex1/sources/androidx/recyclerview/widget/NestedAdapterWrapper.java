package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class NestedAdapterWrapper {
    public final RecyclerView$Adapter<RecyclerView$ViewHolder> adapter;
    private RecyclerView$AdapterDataObserver mAdapterObserver = new NestedAdapterWrapper$1(this);
    int mCachedItemCount;
    final NestedAdapterWrapper$Callback mCallback;

    @NonNull
    private final StableIdStorage$StableIdLookup mStableIdLookup;

    @NonNull
    private final ViewTypeStorage$ViewTypeLookup mViewTypeLookup;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NestedAdapterWrapper(RecyclerView$Adapter<RecyclerView$ViewHolder> recyclerView$Adapter, NestedAdapterWrapper$Callback nestedAdapterWrapper$Callback, ViewTypeStorage viewTypeStorage, StableIdStorage$StableIdLookup stableIdStorage$StableIdLookup) {
        this.adapter = recyclerView$Adapter;
        this.mCallback = nestedAdapterWrapper$Callback;
        this.mViewTypeLookup = viewTypeStorage.createViewTypeWrapper(this);
        this.mStableIdLookup = stableIdStorage$StableIdLookup;
        this.mCachedItemCount = recyclerView$Adapter.getItemCount();
        recyclerView$Adapter.registerAdapterDataObserver(this.mAdapterObserver);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispose() {
        this.adapter.unregisterAdapterDataObserver(this.mAdapterObserver);
        this.mViewTypeLookup.dispose();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCachedItemCount() {
        return this.mCachedItemCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getItemId(int i9) {
        return this.mStableIdLookup.localToGlobal(this.adapter.getItemId(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getItemViewType(int i9) {
        return this.mViewTypeLookup.localToGlobal(this.adapter.getItemViewType(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        this.adapter.bindViewHolder(recyclerView$ViewHolder, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return this.adapter.onCreateViewHolder(viewGroup, this.mViewTypeLookup.globalToLocal(i9));
    }
}

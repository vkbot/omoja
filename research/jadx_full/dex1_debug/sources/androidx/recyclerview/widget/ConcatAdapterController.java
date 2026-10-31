package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import android.util.Log;
import android.util.Pair;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import j1.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ConcatAdapterController implements NestedAdapterWrapper$Callback {
    private final ConcatAdapter mConcatAdapter;

    @NonNull
    private final ConcatAdapter$Config$StableIdMode mStableIdMode;
    private final StableIdStorage mStableIdStorage;
    private final ViewTypeStorage mViewTypeStorage;
    private List<WeakReference<RecyclerView>> mAttachedRecyclerViews = new ArrayList();
    private final IdentityHashMap<RecyclerView$ViewHolder, NestedAdapterWrapper> mBinderLookup = new IdentityHashMap<>();
    private List<NestedAdapterWrapper> mWrappers = new ArrayList();
    private ConcatAdapterController$WrapperAndLocalPosition mReusableHolder = new ConcatAdapterController$WrapperAndLocalPosition();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConcatAdapterController(ConcatAdapter concatAdapter, ConcatAdapter$Config concatAdapter$Config) {
        this.mConcatAdapter = concatAdapter;
        if (concatAdapter$Config.isolateViewTypes) {
            this.mViewTypeStorage = new ViewTypeStorage$IsolatedViewTypeStorage();
        } else {
            this.mViewTypeStorage = new ViewTypeStorage$SharedIdRangeViewTypeStorage();
        }
        ConcatAdapter$Config$StableIdMode concatAdapter$Config$StableIdMode = concatAdapter$Config.stableIdMode;
        this.mStableIdMode = concatAdapter$Config$StableIdMode;
        if (concatAdapter$Config$StableIdMode == ConcatAdapter$Config$StableIdMode.NO_STABLE_IDS) {
            this.mStableIdStorage = new StableIdStorage$NoStableIdStorage();
            return;
        }
        if (concatAdapter$Config$StableIdMode == ConcatAdapter$Config$StableIdMode.ISOLATED_STABLE_IDS) {
            this.mStableIdStorage = new StableIdStorage$IsolatedStableIdStorage();
        } else if (concatAdapter$Config$StableIdMode == ConcatAdapter$Config$StableIdMode.SHARED_STABLE_IDS) {
            this.mStableIdStorage = new StableIdStorage$SharedPoolStableIdStorage();
        } else {
            i.k("unknown stable id mode");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void calculateAndUpdateStateRestorationPolicy() {
        RecyclerView$Adapter$StateRestorationPolicy recyclerView$Adapter$StateRestorationPolicyComputeStateRestorationPolicy = computeStateRestorationPolicy();
        if (recyclerView$Adapter$StateRestorationPolicyComputeStateRestorationPolicy != this.mConcatAdapter.getStateRestorationPolicy()) {
            this.mConcatAdapter.internalSetStateRestorationPolicy(recyclerView$Adapter$StateRestorationPolicyComputeStateRestorationPolicy);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RecyclerView$Adapter$StateRestorationPolicy computeStateRestorationPolicy() {
        for (NestedAdapterWrapper nestedAdapterWrapper : this.mWrappers) {
            RecyclerView$Adapter$StateRestorationPolicy stateRestorationPolicy = nestedAdapterWrapper.adapter.getStateRestorationPolicy();
            RecyclerView$Adapter$StateRestorationPolicy recyclerView$Adapter$StateRestorationPolicy = RecyclerView$Adapter$StateRestorationPolicy.PREVENT;
            if (stateRestorationPolicy == recyclerView$Adapter$StateRestorationPolicy || (stateRestorationPolicy == RecyclerView$Adapter$StateRestorationPolicy.PREVENT_WHEN_EMPTY && nestedAdapterWrapper.getCachedItemCount() == 0)) {
                return recyclerView$Adapter$StateRestorationPolicy;
            }
        }
        return RecyclerView$Adapter$StateRestorationPolicy.ALLOW;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int countItemsBefore(NestedAdapterWrapper nestedAdapterWrapper) {
        NestedAdapterWrapper next;
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        int cachedItemCount = 0;
        while (it.hasNext() && (next = it.next()) != nestedAdapterWrapper) {
            cachedItemCount += next.getCachedItemCount();
        }
        return cachedItemCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private ConcatAdapterController$WrapperAndLocalPosition findWrapperAndLocalPosition(int i9) {
        ConcatAdapterController$WrapperAndLocalPosition concatAdapterController$WrapperAndLocalPosition = this.mReusableHolder;
        if (concatAdapterController$WrapperAndLocalPosition.mInUse) {
            concatAdapterController$WrapperAndLocalPosition = new ConcatAdapterController$WrapperAndLocalPosition();
        } else {
            concatAdapterController$WrapperAndLocalPosition.mInUse = true;
        }
        int cachedItemCount = i9;
        for (NestedAdapterWrapper nestedAdapterWrapper : this.mWrappers) {
            if (nestedAdapterWrapper.getCachedItemCount() > cachedItemCount) {
                concatAdapterController$WrapperAndLocalPosition.mWrapper = nestedAdapterWrapper;
                concatAdapterController$WrapperAndLocalPosition.mLocalPosition = cachedItemCount;
                break;
            }
            cachedItemCount -= nestedAdapterWrapper.getCachedItemCount();
        }
        if (concatAdapterController$WrapperAndLocalPosition.mWrapper != null) {
            return concatAdapterController$WrapperAndLocalPosition;
        }
        i.k(a.e(i9, "Cannot find wrapper for "));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private NestedAdapterWrapper findWrapperFor(RecyclerView$Adapter<RecyclerView$ViewHolder> recyclerView$Adapter) {
        int iIndexOfWrapper = indexOfWrapper(recyclerView$Adapter);
        if (iIndexOfWrapper == -1) {
            return null;
        }
        return this.mWrappers.get(iIndexOfWrapper);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private NestedAdapterWrapper getWrapper(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(recyclerView$ViewHolder);
        if (nestedAdapterWrapper != null) {
            return nestedAdapterWrapper;
        }
        b.t("Cannot find wrapper for ", recyclerView$ViewHolder, ", seems like it is not bound by this adapter: ", this);
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int indexOfWrapper(RecyclerView$Adapter<RecyclerView$ViewHolder> recyclerView$Adapter) {
        int size = this.mWrappers.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (this.mWrappers.get(i9).adapter == recyclerView$Adapter) {
                return i9;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isAttachedTo(RecyclerView recyclerView) {
        Iterator<WeakReference<RecyclerView>> it = this.mAttachedRecyclerViews.iterator();
        while (it.hasNext()) {
            if (it.next().get() == recyclerView) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void releaseWrapperAndLocalPosition(ConcatAdapterController$WrapperAndLocalPosition concatAdapterController$WrapperAndLocalPosition) {
        concatAdapterController$WrapperAndLocalPosition.mInUse = false;
        concatAdapterController$WrapperAndLocalPosition.mWrapper = null;
        concatAdapterController$WrapperAndLocalPosition.mLocalPosition = -1;
        this.mReusableHolder = concatAdapterController$WrapperAndLocalPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean addAdapter(int i9, RecyclerView$Adapter<RecyclerView$ViewHolder> recyclerView$Adapter) {
        if (i9 < 0 || i9 > this.mWrappers.size()) {
            throw new IndexOutOfBoundsException("Index must be between 0 and " + this.mWrappers.size() + ". Given:" + i9);
        }
        if (hasStableIds()) {
            Preconditions.checkArgument(recyclerView$Adapter.hasStableIds(), "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS");
        } else if (recyclerView$Adapter.hasStableIds()) {
            Log.w("ConcatAdapter", "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids");
        }
        if (findWrapperFor(recyclerView$Adapter) != null) {
            return false;
        }
        NestedAdapterWrapper nestedAdapterWrapper = new NestedAdapterWrapper(recyclerView$Adapter, this, this.mViewTypeStorage, this.mStableIdStorage.createStableIdLookup());
        this.mWrappers.add(i9, nestedAdapterWrapper);
        Iterator<WeakReference<RecyclerView>> it = this.mAttachedRecyclerViews.iterator();
        while (it.hasNext()) {
            RecyclerView recyclerView = it.next().get();
            if (recyclerView != null) {
                recyclerView$Adapter.onAttachedToRecyclerView(recyclerView);
            }
        }
        if (nestedAdapterWrapper.getCachedItemCount() > 0) {
            this.mConcatAdapter.notifyItemRangeInserted(countItemsBefore(nestedAdapterWrapper), nestedAdapterWrapper.getCachedItemCount());
        }
        calculateAndUpdateStateRestorationPolicy();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canRestoreState() {
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (it.hasNext()) {
            if (!it.next().adapter.canRestoreState()) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$Adapter<? extends RecyclerView$ViewHolder> getBoundAdapter(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(recyclerView$ViewHolder);
        if (nestedAdapterWrapper == null) {
            return null;
        }
        return nestedAdapterWrapper.adapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<RecyclerView$Adapter<? extends RecyclerView$ViewHolder>> getCopyOfAdapters() {
        if (this.mWrappers.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(this.mWrappers.size());
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().adapter);
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getItemId(int i9) {
        ConcatAdapterController$WrapperAndLocalPosition concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition = findWrapperAndLocalPosition(i9);
        long itemId = concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition.mWrapper.getItemId(concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition.mLocalPosition);
        releaseWrapperAndLocalPosition(concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition);
        return itemId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getItemViewType(int i9) {
        ConcatAdapterController$WrapperAndLocalPosition concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition = findWrapperAndLocalPosition(i9);
        int itemViewType = concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition.mWrapper.getItemViewType(concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition.mLocalPosition);
        releaseWrapperAndLocalPosition(concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition);
        return itemViewType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLocalAdapterPosition(RecyclerView$Adapter<? extends RecyclerView$ViewHolder> recyclerView$Adapter, RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(recyclerView$ViewHolder);
        if (nestedAdapterWrapper == null) {
            return -1;
        }
        int iCountItemsBefore = i9 - countItemsBefore(nestedAdapterWrapper);
        int itemCount = nestedAdapterWrapper.adapter.getItemCount();
        if (iCountItemsBefore >= 0 && iCountItemsBefore < itemCount) {
            return nestedAdapterWrapper.adapter.findRelativeAdapterPositionIn(recyclerView$Adapter, recyclerView$ViewHolder, iCountItemsBefore);
        }
        StringBuilder sbV = a.v("Detected inconsistent adapter updates. The local position of the view holder maps to ", iCountItemsBefore, itemCount, " which is out of bounds for the adapter with size ", ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:");
        sbV.append(recyclerView$ViewHolder);
        sbV.append("adapter:");
        sbV.append(recyclerView$Adapter);
        throw new IllegalStateException(sbV.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTotalCount() {
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        int cachedItemCount = 0;
        while (it.hasNext()) {
            cachedItemCount += it.next().getCachedItemCount();
        }
        return cachedItemCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Pair<RecyclerView$Adapter<? extends RecyclerView$ViewHolder>, Integer> getWrappedAdapterAndPosition(int i9) {
        ConcatAdapterController$WrapperAndLocalPosition concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition = findWrapperAndLocalPosition(i9);
        Pair<RecyclerView$Adapter<? extends RecyclerView$ViewHolder>, Integer> pair = new Pair<>(concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition.mWrapper.adapter, Integer.valueOf(concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition.mLocalPosition));
        releaseWrapperAndLocalPosition(concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition);
        return pair;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasStableIds() {
        return this.mStableIdMode != ConcatAdapter$Config$StableIdMode.NO_STABLE_IDS;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        if (isAttachedTo(recyclerView)) {
            return;
        }
        this.mAttachedRecyclerViews.add(new WeakReference<>(recyclerView));
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (it.hasNext()) {
            it.next().adapter.onAttachedToRecyclerView(recyclerView);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        ConcatAdapterController$WrapperAndLocalPosition concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition = findWrapperAndLocalPosition(i9);
        this.mBinderLookup.put(recyclerView$ViewHolder, concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition.mWrapper);
        concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition.mWrapper.onBindViewHolder(recyclerView$ViewHolder, concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition.mLocalPosition);
        releaseWrapperAndLocalPosition(concatAdapterController$WrapperAndLocalPositionFindWrapperAndLocalPosition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.NestedAdapterWrapper$Callback
    public void onChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
        this.mConcatAdapter.notifyDataSetChanged();
        calculateAndUpdateStateRestorationPolicy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return this.mViewTypeStorage.getWrapperForGlobalType(i9).onCreateViewHolder(viewGroup, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        for (int size = this.mAttachedRecyclerViews.size() - 1; size >= 0; size--) {
            WeakReference<RecyclerView> weakReference = this.mAttachedRecyclerViews.get(size);
            if (weakReference.get() != null) {
                if (weakReference.get() == recyclerView) {
                    this.mAttachedRecyclerViews.remove(size);
                    break;
                }
            } else {
                this.mAttachedRecyclerViews.remove(size);
            }
        }
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (it.hasNext()) {
            it.next().adapter.onDetachedFromRecyclerView(recyclerView);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onFailedToRecycleView(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(recyclerView$ViewHolder);
        if (nestedAdapterWrapper == null) {
            b.t("Cannot find wrapper for ", recyclerView$ViewHolder, ", seems like it is not bound by this adapter: ", this);
            return false;
        }
        boolean zOnFailedToRecycleView = nestedAdapterWrapper.adapter.onFailedToRecycleView(recyclerView$ViewHolder);
        this.mBinderLookup.remove(recyclerView$ViewHolder);
        return zOnFailedToRecycleView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.NestedAdapterWrapper$Callback
    public void onItemRangeChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i9, int i10) {
        this.mConcatAdapter.notifyItemRangeChanged(i9 + countItemsBefore(nestedAdapterWrapper), i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.NestedAdapterWrapper$Callback
    public void onItemRangeInserted(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i9, int i10) {
        this.mConcatAdapter.notifyItemRangeInserted(i9 + countItemsBefore(nestedAdapterWrapper), i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.NestedAdapterWrapper$Callback
    public void onItemRangeMoved(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i9, int i10) {
        int iCountItemsBefore = countItemsBefore(nestedAdapterWrapper);
        this.mConcatAdapter.notifyItemMoved(i9 + iCountItemsBefore, i10 + iCountItemsBefore);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.NestedAdapterWrapper$Callback
    public void onItemRangeRemoved(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i9, int i10) {
        this.mConcatAdapter.notifyItemRangeRemoved(i9 + countItemsBefore(nestedAdapterWrapper), i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.NestedAdapterWrapper$Callback
    public void onStateRestorationPolicyChanged(NestedAdapterWrapper nestedAdapterWrapper) {
        calculateAndUpdateStateRestorationPolicy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onViewAttachedToWindow(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        getWrapper(recyclerView$ViewHolder).adapter.onViewAttachedToWindow(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onViewDetachedFromWindow(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        getWrapper(recyclerView$ViewHolder).adapter.onViewDetachedFromWindow(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onViewRecycled(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(recyclerView$ViewHolder);
        if (nestedAdapterWrapper == null) {
            b.t("Cannot find wrapper for ", recyclerView$ViewHolder, ", seems like it is not bound by this adapter: ", this);
        } else {
            nestedAdapterWrapper.adapter.onViewRecycled(recyclerView$ViewHolder);
            this.mBinderLookup.remove(recyclerView$ViewHolder);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean removeAdapter(RecyclerView$Adapter<RecyclerView$ViewHolder> recyclerView$Adapter) {
        int iIndexOfWrapper = indexOfWrapper(recyclerView$Adapter);
        if (iIndexOfWrapper == -1) {
            return false;
        }
        NestedAdapterWrapper nestedAdapterWrapper = this.mWrappers.get(iIndexOfWrapper);
        int iCountItemsBefore = countItemsBefore(nestedAdapterWrapper);
        this.mWrappers.remove(iIndexOfWrapper);
        this.mConcatAdapter.notifyItemRangeRemoved(iCountItemsBefore, nestedAdapterWrapper.getCachedItemCount());
        Iterator<WeakReference<RecyclerView>> it = this.mAttachedRecyclerViews.iterator();
        while (it.hasNext()) {
            RecyclerView recyclerView = it.next().get();
            if (recyclerView != null) {
                recyclerView$Adapter.onDetachedFromRecyclerView(recyclerView);
            }
        }
        nestedAdapterWrapper.dispose();
        calculateAndUpdateStateRestorationPolicy();
        return true;
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper$Callback
    public void onItemRangeChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i9, int i10, @Nullable Object obj) {
        this.mConcatAdapter.notifyItemRangeChanged(i9 + countItemsBefore(nestedAdapterWrapper), i10, obj);
    }

    public boolean addAdapter(RecyclerView$Adapter<RecyclerView$ViewHolder> recyclerView$Adapter) {
        return addAdapter(this.mWrappers.size(), recyclerView$Adapter);
    }
}

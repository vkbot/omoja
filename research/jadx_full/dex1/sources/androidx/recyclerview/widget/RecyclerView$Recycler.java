package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.poolingcontainer.PoolingContainer;
import j1.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class RecyclerView$Recycler {
    static final int DEFAULT_CACHE_SIZE = 2;
    final ArrayList<RecyclerView$ViewHolder> mAttachedScrap;
    final ArrayList<RecyclerView$ViewHolder> mCachedViews;
    ArrayList<RecyclerView$ViewHolder> mChangedScrap;
    RecyclerView$RecycledViewPool mRecyclerPool;
    private int mRequestedCacheMax;
    private final List<RecyclerView$ViewHolder> mUnmodifiableAttachedScrap;
    private RecyclerView$ViewCacheExtension mViewCacheExtension;
    int mViewCacheMax;
    final /* synthetic */ RecyclerView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$Recycler(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
        ArrayList<RecyclerView$ViewHolder> arrayList = new ArrayList<>();
        this.mAttachedScrap = arrayList;
        this.mChangedScrap = null;
        this.mCachedViews = new ArrayList<>();
        this.mUnmodifiableAttachedScrap = Collections.unmodifiableList(arrayList);
        this.mRequestedCacheMax = 2;
        this.mViewCacheMax = 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void attachAccessibilityDelegateOnBind(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (this.this$0.isAccessibilityEnabled()) {
            View view = recyclerView$ViewHolder.itemView;
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = this.this$0.mAccessibilityDelegate;
            if (recyclerViewAccessibilityDelegate == null) {
                return;
            }
            AccessibilityDelegateCompat itemDelegate = recyclerViewAccessibilityDelegate.getItemDelegate();
            if (itemDelegate instanceof RecyclerViewAccessibilityDelegate$ItemDelegate) {
                ((RecyclerViewAccessibilityDelegate$ItemDelegate) itemDelegate).saveOriginalDelegate(view);
            }
            ViewCompat.setAccessibilityDelegate(view, itemDelegate);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void invalidateDisplayListInt(ViewGroup viewGroup, boolean z8) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                invalidateDisplayListInt((ViewGroup) childAt, true);
            }
        }
        if (z8) {
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
            } else {
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void maybeSendPoolingContainerAttach() {
        if (this.mRecyclerPool != null) {
            RecyclerView recyclerView = this.this$0;
            if (recyclerView.mAdapter == null || !recyclerView.isAttachedToWindow()) {
                return;
            }
            this.mRecyclerPool.attachForPoolingContainer(this.this$0.mAdapter);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void poolingContainerDetach(RecyclerView$Adapter<?> recyclerView$Adapter, boolean z8) {
        RecyclerView$RecycledViewPool recyclerView$RecycledViewPool = this.mRecyclerPool;
        if (recyclerView$RecycledViewPool != null) {
            recyclerView$RecycledViewPool.detachForPoolingContainer(recyclerView$Adapter, z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean tryBindViewHolderByDeadline(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i9, int i10, long j9) {
        recyclerView$ViewHolder.mBindingAdapter = null;
        recyclerView$ViewHolder.mOwnerRecyclerView = this.this$0;
        int itemViewType = recyclerView$ViewHolder.getItemViewType();
        long nanoTime = this.this$0.getNanoTime();
        boolean z8 = false;
        if (j9 != Long.MAX_VALUE && !this.mRecyclerPool.willBindInTime(itemViewType, nanoTime, j9)) {
            return false;
        }
        if (recyclerView$ViewHolder.isTmpDetached()) {
            RecyclerView recyclerView = this.this$0;
            RecyclerView.access$300(recyclerView, recyclerView$ViewHolder.itemView, recyclerView.getChildCount(), recyclerView$ViewHolder.itemView.getLayoutParams());
            z8 = true;
        }
        this.this$0.mAdapter.bindViewHolder(recyclerView$ViewHolder, i9);
        if (z8) {
            RecyclerView.access$400(this.this$0, recyclerView$ViewHolder.itemView);
        }
        this.mRecyclerPool.factorInBindTime(recyclerView$ViewHolder.getItemViewType(), this.this$0.getNanoTime() - nanoTime);
        attachAccessibilityDelegateOnBind(recyclerView$ViewHolder);
        if (this.this$0.mState.isPreLayout()) {
            recyclerView$ViewHolder.mPreLayoutPosition = i10;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addViewHolderToRecycledViewPool(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z8) {
        RecyclerView.clearNestedRecyclerViewIfNotNested(recyclerView$ViewHolder);
        View view = recyclerView$ViewHolder.itemView;
        RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = this.this$0.mAccessibilityDelegate;
        if (recyclerViewAccessibilityDelegate != null) {
            AccessibilityDelegateCompat itemDelegate = recyclerViewAccessibilityDelegate.getItemDelegate();
            ViewCompat.setAccessibilityDelegate(view, itemDelegate instanceof RecyclerViewAccessibilityDelegate$ItemDelegate ? ((RecyclerViewAccessibilityDelegate$ItemDelegate) itemDelegate).getAndRemoveOriginalDelegateForItem(view) : null);
        }
        if (z8) {
            dispatchViewRecycled(recyclerView$ViewHolder);
        }
        recyclerView$ViewHolder.mBindingAdapter = null;
        recyclerView$ViewHolder.mOwnerRecyclerView = null;
        getRecycledViewPool().putRecycledView(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void bindViewToPosition(@NonNull View view, int i9) {
        RecyclerView$LayoutParams recyclerView$LayoutParams;
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        RecyclerView recyclerView = this.this$0;
        if (childViewHolderInt == null) {
            i.k(a.i(recyclerView, new StringBuilder("The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter")));
            return;
        }
        int iFindPositionOffset = recyclerView.mAdapterHelper.findPositionOffset(i9);
        if (iFindPositionOffset < 0 || iFindPositionOffset >= this.this$0.mAdapter.getItemCount()) {
            StringBuilder sbV = a.v("Inconsistency detected. Invalid item position ", i9, iFindPositionOffset, "(offset:", ").state:");
            sbV.append(this.this$0.mState.getItemCount());
            throw new IndexOutOfBoundsException(a.i(this.this$0, sbV));
        }
        tryBindViewHolderByDeadline(childViewHolderInt, iFindPositionOffset, i9, Long.MAX_VALUE);
        ViewGroup$LayoutParams layoutParams = childViewHolderInt.itemView.getLayoutParams();
        RecyclerView recyclerView2 = this.this$0;
        if (layoutParams == null) {
            recyclerView$LayoutParams = (RecyclerView$LayoutParams) recyclerView2.generateDefaultLayoutParams();
            childViewHolderInt.itemView.setLayoutParams(recyclerView$LayoutParams);
        } else if (recyclerView2.checkLayoutParams(layoutParams)) {
            recyclerView$LayoutParams = (RecyclerView$LayoutParams) layoutParams;
        } else {
            recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.this$0.generateLayoutParams(layoutParams);
            childViewHolderInt.itemView.setLayoutParams(recyclerView$LayoutParams);
        }
        recyclerView$LayoutParams.mInsetsDirty = true;
        recyclerView$LayoutParams.mViewHolder = childViewHolderInt;
        recyclerView$LayoutParams.mPendingInvalidate = childViewHolderInt.itemView.getParent() == null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        this.mAttachedScrap.clear();
        recycleAndClearCachedViews();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearOldPositions() {
        int size = this.mCachedViews.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mCachedViews.get(i9).clearOldPosition();
        }
        int size2 = this.mAttachedScrap.size();
        for (int i10 = 0; i10 < size2; i10++) {
            this.mAttachedScrap.get(i10).clearOldPosition();
        }
        ArrayList<RecyclerView$ViewHolder> arrayList = this.mChangedScrap;
        if (arrayList != null) {
            int size3 = arrayList.size();
            for (int i11 = 0; i11 < size3; i11++) {
                this.mChangedScrap.get(i11).clearOldPosition();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearScrap() {
        this.mAttachedScrap.clear();
        ArrayList<RecyclerView$ViewHolder> arrayList = this.mChangedScrap;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int convertPreLayoutPositionToPostLayout(int i9) {
        if (i9 >= 0 && i9 < this.this$0.mState.getItemCount()) {
            return !this.this$0.mState.isPreLayout() ? i9 : this.this$0.mAdapterHelper.findPositionOffset(i9);
        }
        StringBuilder sbQ = a.q(i9, "invalid position ", ". State item count is ");
        sbQ.append(this.this$0.mState.getItemCount());
        throw new IndexOutOfBoundsException(a.i(this.this$0, sbQ));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchViewRecycled(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        RecyclerView recyclerView;
        RecyclerView$RecyclerListener recyclerView$RecyclerListener = this.this$0.mRecyclerListener;
        if (recyclerView$RecyclerListener != null) {
            recyclerView$RecyclerListener.onViewRecycled(recyclerView$ViewHolder);
        }
        int size = this.this$0.mRecyclerListeners.size();
        int i9 = 0;
        while (true) {
            recyclerView = this.this$0;
            if (i9 >= size) {
                break;
            }
            recyclerView.mRecyclerListeners.get(i9).onViewRecycled(recyclerView$ViewHolder);
            i9++;
        }
        RecyclerView$Adapter recyclerView$Adapter = recyclerView.mAdapter;
        if (recyclerView$Adapter != null) {
            recyclerView$Adapter.onViewRecycled(recyclerView$ViewHolder);
        }
        RecyclerView recyclerView2 = this.this$0;
        if (recyclerView2.mState != null) {
            recyclerView2.mViewInfoStore.removeViewHolder(recyclerView$ViewHolder);
        }
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "dispatchViewRecycled: " + recyclerView$ViewHolder);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$ViewHolder getChangedScrapViewForPosition(int i9) {
        int size;
        int iFindPositionOffset;
        ArrayList<RecyclerView$ViewHolder> arrayList = this.mChangedScrap;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return null;
        }
        for (int i10 = 0; i10 < size; i10++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mChangedScrap.get(i10);
            if (!recyclerView$ViewHolder.wasReturnedFromScrap() && recyclerView$ViewHolder.getLayoutPosition() == i9) {
                recyclerView$ViewHolder.addFlags(32);
                return recyclerView$ViewHolder;
            }
        }
        if (!this.this$0.mAdapter.hasStableIds() || (iFindPositionOffset = this.this$0.mAdapterHelper.findPositionOffset(i9)) <= 0 || iFindPositionOffset >= this.this$0.mAdapter.getItemCount()) {
            return null;
        }
        long itemId = this.this$0.mAdapter.getItemId(iFindPositionOffset);
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder2 = this.mChangedScrap.get(i11);
            if (!recyclerView$ViewHolder2.wasReturnedFromScrap() && recyclerView$ViewHolder2.getItemId() == itemId) {
                recyclerView$ViewHolder2.addFlags(32);
                return recyclerView$ViewHolder2;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$RecycledViewPool getRecycledViewPool() {
        if (this.mRecyclerPool == null) {
            this.mRecyclerPool = new RecyclerView$RecycledViewPool();
            maybeSendPoolingContainerAttach();
        }
        return this.mRecyclerPool;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getScrapCount() {
        return this.mAttachedScrap.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<RecyclerView$ViewHolder> getScrapList() {
        return this.mUnmodifiableAttachedScrap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:20:0x0061 */
    public RecyclerView$ViewHolder getScrapOrCachedViewForId(long j9, int i9, boolean z8) {
        for (int size = this.mAttachedScrap.size() - 1; size >= 0; size--) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mAttachedScrap.get(size);
            if (recyclerView$ViewHolder.getItemId() == j9 && !recyclerView$ViewHolder.wasReturnedFromScrap()) {
                if (i9 == recyclerView$ViewHolder.getItemViewType()) {
                    recyclerView$ViewHolder.addFlags(32);
                    if (recyclerView$ViewHolder.isRemoved() && !this.this$0.mState.isPreLayout()) {
                        recyclerView$ViewHolder.setFlags(2, 14);
                    }
                    return recyclerView$ViewHolder;
                }
                if (!z8) {
                    this.mAttachedScrap.remove(size);
                    this.this$0.removeDetachedView(recyclerView$ViewHolder.itemView, false);
                    quickRecycleScrapView(recyclerView$ViewHolder.itemView);
                }
            }
        }
        int size2 = this.mCachedViews.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                return null;
            }
            RecyclerView$ViewHolder recyclerView$ViewHolder2 = this.mCachedViews.get(size2);
            if (recyclerView$ViewHolder2.getItemId() == j9 && !recyclerView$ViewHolder2.isAttachedToTransitionOverlay()) {
                if (i9 == recyclerView$ViewHolder2.getItemViewType()) {
                    if (!z8) {
                        this.mCachedViews.remove(size2);
                    }
                    return recyclerView$ViewHolder2;
                }
                if (!z8) {
                    recycleCachedViewAt(size2);
                    return null;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$ViewHolder getScrapOrHiddenOrCachedHolderForPosition(int i9, boolean z8) {
        View viewFindHiddenNonRemovedView;
        int size = this.mAttachedScrap.size();
        for (int i10 = 0; i10 < size; i10++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mAttachedScrap.get(i10);
            if (!recyclerView$ViewHolder.wasReturnedFromScrap() && recyclerView$ViewHolder.getLayoutPosition() == i9 && !recyclerView$ViewHolder.isInvalid() && (this.this$0.mState.mInPreLayout || !recyclerView$ViewHolder.isRemoved())) {
                recyclerView$ViewHolder.addFlags(32);
                return recyclerView$ViewHolder;
            }
        }
        if (!z8 && (viewFindHiddenNonRemovedView = this.this$0.mChildHelper.findHiddenNonRemovedView(i9)) != null) {
            RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(viewFindHiddenNonRemovedView);
            this.this$0.mChildHelper.unhide(viewFindHiddenNonRemovedView);
            int iIndexOfChild = this.this$0.mChildHelper.indexOfChild(viewFindHiddenNonRemovedView);
            if (iIndexOfChild != -1) {
                this.this$0.mChildHelper.detachViewFromParent(iIndexOfChild);
                scrapView(viewFindHiddenNonRemovedView);
                childViewHolderInt.addFlags(8224);
                return childViewHolderInt;
            }
            StringBuilder sb = new StringBuilder("layout index should not be -1 after unhiding a view:");
            sb.append(childViewHolderInt);
            i.l(a.i(this.this$0, sb));
            return null;
        }
        int size2 = this.mCachedViews.size();
        for (int i11 = 0; i11 < size2; i11++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder2 = this.mCachedViews.get(i11);
            if (!recyclerView$ViewHolder2.isInvalid() && recyclerView$ViewHolder2.getLayoutPosition() == i9 && !recyclerView$ViewHolder2.isAttachedToTransitionOverlay()) {
                if (!z8) {
                    this.mCachedViews.remove(i11);
                }
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "getScrapOrHiddenOrCachedHolderForPosition(" + i9 + ") found match in cache: " + recyclerView$ViewHolder2);
                }
                return recyclerView$ViewHolder2;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View getScrapViewAt(int i9) {
        return this.mAttachedScrap.get(i9).itemView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View getViewForPosition(int i9, boolean z8) {
        return tryGetViewHolderForPositionByDeadline(i9, z8, Long.MAX_VALUE).itemView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void markItemDecorInsetsDirty() {
        int size = this.mCachedViews.size();
        for (int i9 = 0; i9 < size; i9++) {
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.mCachedViews.get(i9).itemView.getLayoutParams();
            if (recyclerView$LayoutParams != null) {
                recyclerView$LayoutParams.mInsetsDirty = true;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void markKnownViewsInvalid() {
        int size = this.mCachedViews.size();
        for (int i9 = 0; i9 < size; i9++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i9);
            if (recyclerView$ViewHolder != null) {
                recyclerView$ViewHolder.addFlags(6);
                recyclerView$ViewHolder.addChangePayload(null);
            }
        }
        RecyclerView$Adapter recyclerView$Adapter = this.this$0.mAdapter;
        if (recyclerView$Adapter == null || !recyclerView$Adapter.hasStableIds()) {
            recycleAndClearCachedViews();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetPositionRecordsForInsert(int i9, int i10) {
        int size = this.mCachedViews.size();
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i11);
            if (recyclerView$ViewHolder != null && recyclerView$ViewHolder.mPosition >= i9) {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert cached " + i11 + " holder " + recyclerView$ViewHolder + " now at position " + (recyclerView$ViewHolder.mPosition + i10));
                }
                recyclerView$ViewHolder.offsetPosition(i10, false);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetPositionRecordsForMove(int i9, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        if (i9 < i10) {
            i11 = -1;
            i13 = i9;
            i12 = i10;
        } else {
            i11 = 1;
            i12 = i9;
            i13 = i10;
        }
        int size = this.mCachedViews.size();
        for (int i15 = 0; i15 < size; i15++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i15);
            if (recyclerView$ViewHolder != null && (i14 = recyclerView$ViewHolder.mPosition) >= i13 && i14 <= i12) {
                if (i14 == i9) {
                    recyclerView$ViewHolder.offsetPosition(i10 - i9, false);
                } else {
                    recyclerView$ViewHolder.offsetPosition(i11, false);
                }
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove cached child " + i15 + " holder " + recyclerView$ViewHolder);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetPositionRecordsForRemove(int i9, int i10, boolean z8) {
        int i11 = i9 + i10;
        for (int size = this.mCachedViews.size() - 1; size >= 0; size--) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(size);
            if (recyclerView$ViewHolder != null) {
                int i12 = recyclerView$ViewHolder.mPosition;
                if (i12 >= i11) {
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove cached " + size + " holder " + recyclerView$ViewHolder + " now at position " + (recyclerView$ViewHolder.mPosition - i10));
                    }
                    recyclerView$ViewHolder.offsetPosition(-i10, z8);
                } else if (i12 >= i9) {
                    recyclerView$ViewHolder.addFlags(8);
                    recycleCachedViewAt(size);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onAdapterChanged(RecyclerView$Adapter<?> recyclerView$Adapter, RecyclerView$Adapter<?> recyclerView$Adapter2, boolean z8) {
        clear();
        poolingContainerDetach(recyclerView$Adapter, true);
        getRecycledViewPool().onAdapterChanged(recyclerView$Adapter, recyclerView$Adapter2, z8);
        maybeSendPoolingContainerAttach();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onAttachedToWindow() {
        maybeSendPoolingContainerAttach();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onDetachedFromWindow() {
        for (int i9 = 0; i9 < this.mCachedViews.size(); i9++) {
            PoolingContainer.callPoolingContainerOnRelease(this.mCachedViews.get(i9).itemView);
        }
        poolingContainerDetach(this.this$0.mAdapter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void quickRecycleScrapView(View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.mScrapContainer = null;
        childViewHolderInt.mInChangeScrap = false;
        childViewHolderInt.clearReturnedFromScrapFlag();
        recycleViewHolderInternal(childViewHolderInt);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void recycleAndClearCachedViews() {
        for (int size = this.mCachedViews.size() - 1; size >= 0; size--) {
            recycleCachedViewAt(size);
        }
        this.mCachedViews.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            this.this$0.mPrefetchRegistry.clearPrefetchPositions();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void recycleCachedViewAt(int i9) {
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "Recycling cached view at index " + i9);
        }
        RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i9);
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "CachedViewHolder to be recycled: " + recyclerView$ViewHolder);
        }
        addViewHolderToRecycledViewPool(recyclerView$ViewHolder, true);
        this.mCachedViews.remove(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void recycleView(@NonNull View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.isTmpDetached()) {
            this.this$0.removeDetachedView(view, false);
        }
        if (childViewHolderInt.isScrap()) {
            childViewHolderInt.unScrap();
        } else if (childViewHolderInt.wasReturnedFromScrap()) {
            childViewHolderInt.clearReturnedFromScrapFlag();
        }
        recycleViewHolderInternal(childViewHolderInt);
        if (this.this$0.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
            return;
        }
        this.this$0.mItemAnimator.endAnimation(childViewHolderInt);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void recycleViewHolderInternal(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        boolean z8;
        boolean z9 = false;
        boolean z10 = true;
        if (recyclerView$ViewHolder.isScrap() || recyclerView$ViewHolder.itemView.getParent() != null) {
            StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(recyclerView$ViewHolder.isScrap());
            sb.append(" isAttached:");
            sb.append(recyclerView$ViewHolder.itemView.getParent() != null);
            throw new IllegalArgumentException(a.i(this.this$0, sb));
        }
        if (recyclerView$ViewHolder.isTmpDetached()) {
            StringBuilder sb2 = new StringBuilder("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
            sb2.append(recyclerView$ViewHolder);
            i.k(a.i(this.this$0, sb2));
            return;
        }
        if (recyclerView$ViewHolder.shouldIgnore()) {
            i.k(a.i(this.this$0, new StringBuilder("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
            return;
        }
        boolean zDoesTransientStatePreventRecycling = recyclerView$ViewHolder.doesTransientStatePreventRecycling();
        RecyclerView$Adapter recyclerView$Adapter = this.this$0.mAdapter;
        boolean z11 = recyclerView$Adapter != null && zDoesTransientStatePreventRecycling && recyclerView$Adapter.onFailedToRecycleView(recyclerView$ViewHolder);
        if (RecyclerView.sDebugAssertionsEnabled && this.mCachedViews.contains(recyclerView$ViewHolder)) {
            StringBuilder sb3 = new StringBuilder("cached view received recycle internal? ");
            sb3.append(recyclerView$ViewHolder);
            i.k(a.i(this.this$0, sb3));
            return;
        }
        if (z11 || recyclerView$ViewHolder.isRecyclable()) {
            if (this.mViewCacheMax <= 0 || recyclerView$ViewHolder.hasAnyOfTheFlags(526)) {
                z8 = false;
            } else {
                int size = this.mCachedViews.size();
                if (size >= this.mViewCacheMax && size > 0) {
                    recycleCachedViewAt(0);
                    size--;
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !this.this$0.mPrefetchRegistry.lastPrefetchIncludedPosition(recyclerView$ViewHolder.mPosition)) {
                    int i9 = size - 1;
                    while (i9 >= 0) {
                        if (!this.this$0.mPrefetchRegistry.lastPrefetchIncludedPosition(this.mCachedViews.get(i9).mPosition)) {
                            break;
                        } else {
                            i9--;
                        }
                    }
                    size = i9 + 1;
                }
                this.mCachedViews.add(size, recyclerView$ViewHolder);
                z8 = true;
            }
            if (z8) {
                z10 = false;
            } else {
                addViewHolderToRecycledViewPool(recyclerView$ViewHolder, true);
            }
            z9 = z8;
        } else {
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists" + this.this$0.exceptionLabel());
            }
            z10 = false;
        }
        this.this$0.mViewInfoStore.removeViewHolder(recyclerView$ViewHolder);
        if (z9 || z10 || !zDoesTransientStatePreventRecycling) {
            return;
        }
        PoolingContainer.callPoolingContainerOnRelease(recyclerView$ViewHolder.itemView);
        recyclerView$ViewHolder.mBindingAdapter = null;
        recyclerView$ViewHolder.mOwnerRecyclerView = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void scrapView(View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !this.this$0.canReuseUpdatedViewHolder(childViewHolderInt)) {
            if (this.mChangedScrap == null) {
                this.mChangedScrap = new ArrayList<>();
            }
            childViewHolderInt.setScrapContainer(this, true);
            this.mChangedScrap.add(childViewHolderInt);
            return;
        }
        if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || this.this$0.mAdapter.hasStableIds()) {
            childViewHolderInt.setScrapContainer(this, false);
            this.mAttachedScrap.add(childViewHolderInt);
        } else {
            i.k(a.i(this.this$0, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRecycledViewPool(RecyclerView$RecycledViewPool recyclerView$RecycledViewPool) {
        poolingContainerDetach(this.this$0.mAdapter);
        RecyclerView$RecycledViewPool recyclerView$RecycledViewPool2 = this.mRecyclerPool;
        if (recyclerView$RecycledViewPool2 != null) {
            recyclerView$RecycledViewPool2.detach();
        }
        this.mRecyclerPool = recyclerView$RecycledViewPool;
        if (recyclerView$RecycledViewPool != null && this.this$0.getAdapter() != null) {
            this.mRecyclerPool.attach();
        }
        maybeSendPoolingContainerAttach();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setViewCacheExtension(RecyclerView$ViewCacheExtension recyclerView$ViewCacheExtension) {
        this.mViewCacheExtension = recyclerView$ViewCacheExtension;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setViewCacheSize(int i9) {
        this.mRequestedCacheMax = i9;
        updateViewCacheSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:102:0x01da  */
    /* JADX WARN: Code duplicated, block: B:109:0x020e  */
    /* JADX WARN: Code duplicated, block: B:110:0x021a  */
    /* JADX WARN: Code duplicated, block: B:112:0x0220  */
    /* JADX WARN: Code duplicated, block: B:113:0x022e  */
    /* JADX WARN: Code duplicated, block: B:116:0x0234 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:118:0x0237  */
    /* JADX WARN: Code duplicated, block: B:18:0x0037 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0039  */
    /* JADX WARN: Code duplicated, block: B:21:0x0043  */
    /* JADX WARN: Code duplicated, block: B:22:0x004e  */
    /* JADX WARN: Code duplicated, block: B:24:0x0054  */
    /* JADX WARN: Code duplicated, block: B:27:0x005c  */
    /* JADX WARN: Code duplicated, block: B:29:0x005f  */
    /* JADX WARN: Code duplicated, block: B:86:0x0195  */
    /* JADX WARN: Code duplicated, block: B:92:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:94:0x01c7  */
    @Nullable
    public RecyclerView$ViewHolder tryGetViewHolderForPositionByDeadline(int i9, boolean z8, long j9) {
        RecyclerView$ViewHolder recyclerView$ViewHolderCreateViewHolder;
        boolean z9;
        RecyclerView$ViewHolder recyclerView$ViewHolder;
        boolean z10;
        boolean zTryBindViewHolderByDeadline;
        ViewGroup$LayoutParams layoutParams;
        RecyclerView recyclerView;
        RecyclerView$LayoutParams recyclerView$LayoutParams;
        int iFindPositionOffset;
        RecyclerView recyclerViewFindNestedRecyclerView;
        RecyclerView$ViewCacheExtension recyclerView$ViewCacheExtension;
        View viewForPositionAndType;
        if (i9 < 0 || i9 >= this.this$0.mState.getItemCount()) {
            StringBuilder sbV = a.v("Invalid item position ", i9, i9, "(", "). Item count:");
            sbV.append(this.this$0.mState.getItemCount());
            throw new IndexOutOfBoundsException(a.i(this.this$0, sbV));
        }
        if (this.this$0.mState.isPreLayout()) {
            recyclerView$ViewHolderCreateViewHolder = getChangedScrapViewForPosition(i9);
            if (recyclerView$ViewHolderCreateViewHolder != null) {
                z9 = true;
            }
            if (recyclerView$ViewHolderCreateViewHolder == null && (recyclerView$ViewHolderCreateViewHolder = getScrapOrHiddenOrCachedHolderForPosition(i9, z8)) != null) {
                if (validateViewHolderForOffsetPosition(recyclerView$ViewHolderCreateViewHolder)) {
                    z9 = true;
                } else {
                    if (!z8) {
                        recyclerView$ViewHolderCreateViewHolder.addFlags(4);
                        if (recyclerView$ViewHolderCreateViewHolder.isScrap()) {
                            this.this$0.removeDetachedView(recyclerView$ViewHolderCreateViewHolder.itemView, false);
                            recyclerView$ViewHolderCreateViewHolder.unScrap();
                        } else if (recyclerView$ViewHolderCreateViewHolder.wasReturnedFromScrap()) {
                            recyclerView$ViewHolderCreateViewHolder.clearReturnedFromScrapFlag();
                        }
                        recycleViewHolderInternal(recyclerView$ViewHolderCreateViewHolder);
                    }
                    recyclerView$ViewHolderCreateViewHolder = null;
                }
            }
            if (recyclerView$ViewHolderCreateViewHolder == null) {
                iFindPositionOffset = this.this$0.mAdapterHelper.findPositionOffset(i9);
                if (iFindPositionOffset >= 0 || iFindPositionOffset >= this.this$0.mAdapter.getItemCount()) {
                    StringBuilder sbV2 = a.v("Inconsistency detected. Invalid item position ", i9, iFindPositionOffset, "(offset:", ").state:");
                    sbV2.append(this.this$0.mState.getItemCount());
                    throw new IndexOutOfBoundsException(a.i(this.this$0, sbV2));
                }
                int itemViewType = this.this$0.mAdapter.getItemViewType(iFindPositionOffset);
                if (this.this$0.mAdapter.hasStableIds() && (recyclerView$ViewHolderCreateViewHolder = getScrapOrCachedViewForId(this.this$0.mAdapter.getItemId(iFindPositionOffset), itemViewType, z8)) != null) {
                    recyclerView$ViewHolderCreateViewHolder.mPosition = iFindPositionOffset;
                    z9 = true;
                }
                if (recyclerView$ViewHolderCreateViewHolder == null && (recyclerView$ViewCacheExtension = this.mViewCacheExtension) != null && (viewForPositionAndType = recyclerView$ViewCacheExtension.getViewForPositionAndType(this, i9, itemViewType)) != null) {
                    recyclerView$ViewHolderCreateViewHolder = this.this$0.getChildViewHolder(viewForPositionAndType);
                    if (recyclerView$ViewHolderCreateViewHolder == null) {
                        i.k(a.i(this.this$0, new StringBuilder("getViewForPositionAndType returned a view which does not have a ViewHolder")));
                        return null;
                    }
                    if (recyclerView$ViewHolderCreateViewHolder.shouldIgnore()) {
                        i.k(a.i(this.this$0, new StringBuilder("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.")));
                        return null;
                    }
                }
                if (recyclerView$ViewHolderCreateViewHolder == null) {
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "tryGetViewHolderForPositionByDeadline(" + i9 + ") fetching from shared pool");
                    }
                    recyclerView$ViewHolderCreateViewHolder = getRecycledViewPool().getRecycledView(itemViewType);
                    if (recyclerView$ViewHolderCreateViewHolder != null) {
                        recyclerView$ViewHolderCreateViewHolder.resetInternal();
                        if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                            invalidateDisplayListInt(recyclerView$ViewHolderCreateViewHolder);
                        }
                    }
                }
                if (recyclerView$ViewHolderCreateViewHolder == null) {
                    long nanoTime = this.this$0.getNanoTime();
                    if (j9 != Long.MAX_VALUE && !this.mRecyclerPool.willCreateInTime(itemViewType, nanoTime, j9)) {
                        return null;
                    }
                    RecyclerView recyclerView2 = this.this$0;
                    recyclerView$ViewHolderCreateViewHolder = recyclerView2.mAdapter.createViewHolder(recyclerView2, itemViewType);
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK && (recyclerViewFindNestedRecyclerView = RecyclerView.findNestedRecyclerView(recyclerView$ViewHolderCreateViewHolder.itemView)) != null) {
                        recyclerView$ViewHolderCreateViewHolder.mNestedRecyclerView = new WeakReference<>(recyclerViewFindNestedRecyclerView);
                    }
                    this.mRecyclerPool.factorInCreateTime(itemViewType, this.this$0.getNanoTime() - nanoTime);
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "tryGetViewHolderForPositionByDeadline created new ViewHolder");
                    }
                }
            }
            recyclerView$ViewHolder = recyclerView$ViewHolderCreateViewHolder;
            z10 = z9;
            if (z10 && !this.this$0.mState.isPreLayout() && recyclerView$ViewHolder.hasAnyOfTheFlags(8192)) {
                recyclerView$ViewHolder.setFlags(0, 8192);
                if (this.this$0.mState.mRunSimpleAnimations) {
                    int iBuildAdapterChangeFlagsForAnimations = RecyclerView$ItemAnimator.buildAdapterChangeFlagsForAnimations(recyclerView$ViewHolder) | 4096;
                    RecyclerView recyclerView3 = this.this$0;
                    this.this$0.recordAnimationInfoIfBouncedHiddenView(recyclerView$ViewHolder, recyclerView3.mItemAnimator.recordPreLayoutInformation(recyclerView3.mState, recyclerView$ViewHolder, iBuildAdapterChangeFlagsForAnimations, recyclerView$ViewHolder.getUnmodifiedPayloads()));
                }
            }
            if (this.this$0.mState.isPreLayout() || !recyclerView$ViewHolder.isBound()) {
                if (recyclerView$ViewHolder.isBound() || recyclerView$ViewHolder.needsUpdate() || recyclerView$ViewHolder.isInvalid()) {
                    if (!RecyclerView.sDebugAssertionsEnabled && recyclerView$ViewHolder.isRemoved()) {
                        StringBuilder sb = new StringBuilder("Removed holder should be bound and it should come here only in pre-layout. Holder: ");
                        sb.append(recyclerView$ViewHolder);
                        i.l(a.i(this.this$0, sb));
                        return null;
                    }
                    zTryBindViewHolderByDeadline = tryBindViewHolderByDeadline(recyclerView$ViewHolder, this.this$0.mAdapterHelper.findPositionOffset(i9), i9, j9);
                }
                layoutParams = recyclerView$ViewHolder.itemView.getLayoutParams();
                recyclerView = this.this$0;
                if (layoutParams == null) {
                    recyclerView$LayoutParams = (RecyclerView$LayoutParams) recyclerView.generateDefaultLayoutParams();
                    recyclerView$ViewHolder.itemView.setLayoutParams(recyclerView$LayoutParams);
                } else if (recyclerView.checkLayoutParams(layoutParams)) {
                    recyclerView$LayoutParams = (RecyclerView$LayoutParams) layoutParams;
                } else {
                    recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.this$0.generateLayoutParams(layoutParams);
                    recyclerView$ViewHolder.itemView.setLayoutParams(recyclerView$LayoutParams);
                }
                recyclerView$LayoutParams.mViewHolder = recyclerView$ViewHolder;
                recyclerView$LayoutParams.mPendingInvalidate = !z10 && zTryBindViewHolderByDeadline;
                return recyclerView$ViewHolder;
            }
            recyclerView$ViewHolder.mPreLayoutPosition = i9;
            zTryBindViewHolderByDeadline = false;
            layoutParams = recyclerView$ViewHolder.itemView.getLayoutParams();
            recyclerView = this.this$0;
            if (layoutParams == null) {
                recyclerView$LayoutParams = (RecyclerView$LayoutParams) recyclerView.generateDefaultLayoutParams();
                recyclerView$ViewHolder.itemView.setLayoutParams(recyclerView$LayoutParams);
            } else if (recyclerView.checkLayoutParams(layoutParams)) {
                recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.this$0.generateLayoutParams(layoutParams);
                recyclerView$ViewHolder.itemView.setLayoutParams(recyclerView$LayoutParams);
            } else {
                recyclerView$LayoutParams = (RecyclerView$LayoutParams) layoutParams;
            }
            recyclerView$LayoutParams.mViewHolder = recyclerView$ViewHolder;
            recyclerView$LayoutParams.mPendingInvalidate = !z10 && zTryBindViewHolderByDeadline;
            return recyclerView$ViewHolder;
        }
        recyclerView$ViewHolderCreateViewHolder = null;
        z9 = false;
        if (recyclerView$ViewHolderCreateViewHolder == null) {
            if (validateViewHolderForOffsetPosition(recyclerView$ViewHolderCreateViewHolder)) {
                if (!z8) {
                    recyclerView$ViewHolderCreateViewHolder.addFlags(4);
                    if (recyclerView$ViewHolderCreateViewHolder.isScrap()) {
                        this.this$0.removeDetachedView(recyclerView$ViewHolderCreateViewHolder.itemView, false);
                        recyclerView$ViewHolderCreateViewHolder.unScrap();
                    } else if (recyclerView$ViewHolderCreateViewHolder.wasReturnedFromScrap()) {
                        recyclerView$ViewHolderCreateViewHolder.clearReturnedFromScrapFlag();
                    }
                    recycleViewHolderInternal(recyclerView$ViewHolderCreateViewHolder);
                }
                recyclerView$ViewHolderCreateViewHolder = null;
            } else {
                z9 = true;
            }
        }
        if (recyclerView$ViewHolderCreateViewHolder == null) {
            iFindPositionOffset = this.this$0.mAdapterHelper.findPositionOffset(i9);
            if (iFindPositionOffset >= 0) {
            }
            StringBuilder sbV3 = a.v("Inconsistency detected. Invalid item position ", i9, iFindPositionOffset, "(offset:", ").state:");
            sbV3.append(this.this$0.mState.getItemCount());
            throw new IndexOutOfBoundsException(a.i(this.this$0, sbV3));
        }
        recyclerView$ViewHolder = recyclerView$ViewHolderCreateViewHolder;
        z10 = z9;
        if (z10) {
            recyclerView$ViewHolder.setFlags(0, 8192);
            if (this.this$0.mState.mRunSimpleAnimations) {
                int iBuildAdapterChangeFlagsForAnimations2 = RecyclerView$ItemAnimator.buildAdapterChangeFlagsForAnimations(recyclerView$ViewHolder) | 4096;
                RecyclerView recyclerView4 = this.this$0;
                this.this$0.recordAnimationInfoIfBouncedHiddenView(recyclerView$ViewHolder, recyclerView4.mItemAnimator.recordPreLayoutInformation(recyclerView4.mState, recyclerView$ViewHolder, iBuildAdapterChangeFlagsForAnimations2, recyclerView$ViewHolder.getUnmodifiedPayloads()));
            }
        }
        if (this.this$0.mState.isPreLayout()) {
            if (recyclerView$ViewHolder.isBound()) {
            }
            if (!RecyclerView.sDebugAssertionsEnabled) {
            }
            zTryBindViewHolderByDeadline = tryBindViewHolderByDeadline(recyclerView$ViewHolder, this.this$0.mAdapterHelper.findPositionOffset(i9), i9, j9);
        } else {
            if (recyclerView$ViewHolder.isBound()) {
            }
            if (!RecyclerView.sDebugAssertionsEnabled) {
            }
            zTryBindViewHolderByDeadline = tryBindViewHolderByDeadline(recyclerView$ViewHolder, this.this$0.mAdapterHelper.findPositionOffset(i9), i9, j9);
        }
        layoutParams = recyclerView$ViewHolder.itemView.getLayoutParams();
        recyclerView = this.this$0;
        if (layoutParams == null) {
            recyclerView$LayoutParams = (RecyclerView$LayoutParams) recyclerView.generateDefaultLayoutParams();
            recyclerView$ViewHolder.itemView.setLayoutParams(recyclerView$LayoutParams);
        } else if (recyclerView.checkLayoutParams(layoutParams)) {
            recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.this$0.generateLayoutParams(layoutParams);
            recyclerView$ViewHolder.itemView.setLayoutParams(recyclerView$LayoutParams);
        } else {
            recyclerView$LayoutParams = (RecyclerView$LayoutParams) layoutParams;
        }
        recyclerView$LayoutParams.mViewHolder = recyclerView$ViewHolder;
        recyclerView$LayoutParams.mPendingInvalidate = !z10 && zTryBindViewHolderByDeadline;
        return recyclerView$ViewHolder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unscrapView(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (recyclerView$ViewHolder.mInChangeScrap) {
            this.mChangedScrap.remove(recyclerView$ViewHolder);
        } else {
            this.mAttachedScrap.remove(recyclerView$ViewHolder);
        }
        recyclerView$ViewHolder.mScrapContainer = null;
        recyclerView$ViewHolder.mInChangeScrap = false;
        recyclerView$ViewHolder.clearReturnedFromScrapFlag();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateViewCacheSize() {
        RecyclerView$LayoutManager recyclerView$LayoutManager = this.this$0.mLayout;
        this.mViewCacheMax = this.mRequestedCacheMax + (recyclerView$LayoutManager != null ? recyclerView$LayoutManager.mPrefetchMaxCountObserved : 0);
        for (int size = this.mCachedViews.size() - 1; size >= 0 && this.mCachedViews.size() > this.mViewCacheMax; size--) {
            recycleCachedViewAt(size);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean validateViewHolderForOffsetPosition(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (recyclerView$ViewHolder.isRemoved()) {
            if (!RecyclerView.sDebugAssertionsEnabled || this.this$0.mState.isPreLayout()) {
                return this.this$0.mState.isPreLayout();
            }
            i.l(a.i(this.this$0, new StringBuilder("should not receive a removed view unless it is pre layout")));
            return false;
        }
        int i9 = recyclerView$ViewHolder.mPosition;
        if (i9 < 0 || i9 >= this.this$0.mAdapter.getItemCount()) {
            StringBuilder sb = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
            sb.append(recyclerView$ViewHolder);
            throw new IndexOutOfBoundsException(a.i(this.this$0, sb));
        }
        if (this.this$0.mState.isPreLayout() || this.this$0.mAdapter.getItemViewType(recyclerView$ViewHolder.mPosition) == recyclerView$ViewHolder.getItemViewType()) {
            return !this.this$0.mAdapter.hasStableIds() || recyclerView$ViewHolder.getItemId() == this.this$0.mAdapter.getItemId(recyclerView$ViewHolder.mPosition);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void viewRangeUpdate(int i9, int i10) {
        int i11;
        int i12 = i10 + i9;
        for (int size = this.mCachedViews.size() - 1; size >= 0; size--) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(size);
            if (recyclerView$ViewHolder != null && (i11 = recyclerView$ViewHolder.mPosition) >= i9 && i11 < i12) {
                recyclerView$ViewHolder.addFlags(2);
                recycleCachedViewAt(size);
            }
        }
    }

    private void poolingContainerDetach(RecyclerView$Adapter<?> recyclerView$Adapter) {
        poolingContainerDetach(recyclerView$Adapter, false);
    }

    @NonNull
    public View getViewForPosition(int i9) {
        return getViewForPosition(i9, false);
    }

    private void invalidateDisplayListInt(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        View view = recyclerView$ViewHolder.itemView;
        if (view instanceof ViewGroup) {
            invalidateDisplayListInt((ViewGroup) view, false);
        }
    }
}

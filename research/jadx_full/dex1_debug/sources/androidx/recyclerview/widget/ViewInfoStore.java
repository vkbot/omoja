package androidx.recyclerview.widget;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ViewInfoStore {
    private static final boolean DEBUG = false;

    @VisibleForTesting
    final SimpleArrayMap<RecyclerView$ViewHolder, ViewInfoStore$InfoRecord> mLayoutHolderMap = new SimpleArrayMap<>();

    @VisibleForTesting
    final LongSparseArray<RecyclerView$ViewHolder> mOldChangedHolders = new LongSparseArray<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RecyclerView$ItemAnimator$ItemHolderInfo popFromLayoutStep(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordValueAt;
        RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo;
        int iIndexOfKey = this.mLayoutHolderMap.indexOfKey(recyclerView$ViewHolder);
        if (iIndexOfKey >= 0 && (viewInfoStore$InfoRecordValueAt = this.mLayoutHolderMap.valueAt(iIndexOfKey)) != null) {
            int i10 = viewInfoStore$InfoRecordValueAt.flags;
            if ((i10 & i9) != 0) {
                int i11 = (~i9) & i10;
                viewInfoStore$InfoRecordValueAt.flags = i11;
                if (i9 == 4) {
                    recyclerView$ItemAnimator$ItemHolderInfo = viewInfoStore$InfoRecordValueAt.preInfo;
                } else {
                    if (i9 != 8) {
                        i.k("Must provide flag PRE or POST");
                        return null;
                    }
                    recyclerView$ItemAnimator$ItemHolderInfo = viewInfoStore$InfoRecordValueAt.postInfo;
                }
                if ((i11 & 12) == 0) {
                    this.mLayoutHolderMap.removeAt(iIndexOfKey);
                    ViewInfoStore$InfoRecord.recycle(viewInfoStore$InfoRecordValueAt);
                }
                return recyclerView$ItemAnimator$ItemHolderInfo;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addToAppearedInPreLayoutHolders(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordObtain = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecordObtain == null) {
            viewInfoStore$InfoRecordObtain = ViewInfoStore$InfoRecord.obtain();
            this.mLayoutHolderMap.put(recyclerView$ViewHolder, viewInfoStore$InfoRecordObtain);
        }
        viewInfoStore$InfoRecordObtain.flags |= 2;
        viewInfoStore$InfoRecordObtain.preInfo = recyclerView$ItemAnimator$ItemHolderInfo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addToDisappearedInLayout(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordObtain = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecordObtain == null) {
            viewInfoStore$InfoRecordObtain = ViewInfoStore$InfoRecord.obtain();
            this.mLayoutHolderMap.put(recyclerView$ViewHolder, viewInfoStore$InfoRecordObtain);
        }
        viewInfoStore$InfoRecordObtain.flags |= 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addToOldChangeHolders(long j9, RecyclerView$ViewHolder recyclerView$ViewHolder) {
        this.mOldChangedHolders.put(j9, recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addToPostLayout(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordObtain = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecordObtain == null) {
            viewInfoStore$InfoRecordObtain = ViewInfoStore$InfoRecord.obtain();
            this.mLayoutHolderMap.put(recyclerView$ViewHolder, viewInfoStore$InfoRecordObtain);
        }
        viewInfoStore$InfoRecordObtain.postInfo = recyclerView$ItemAnimator$ItemHolderInfo;
        viewInfoStore$InfoRecordObtain.flags |= 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addToPreLayout(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordObtain = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecordObtain == null) {
            viewInfoStore$InfoRecordObtain = ViewInfoStore$InfoRecord.obtain();
            this.mLayoutHolderMap.put(recyclerView$ViewHolder, viewInfoStore$InfoRecordObtain);
        }
        viewInfoStore$InfoRecordObtain.preInfo = recyclerView$ItemAnimator$ItemHolderInfo;
        viewInfoStore$InfoRecordObtain.flags |= 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        this.mLayoutHolderMap.clear();
        this.mOldChangedHolders.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$ViewHolder getFromOldChangeHolders(long j9) {
        return this.mOldChangedHolders.get(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDisappearing(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        return (viewInfoStore$InfoRecord == null || (viewInfoStore$InfoRecord.flags & 1) == 0) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInPreLayout(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        return (viewInfoStore$InfoRecord == null || (viewInfoStore$InfoRecord.flags & 4) == 0) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onDetach() {
        ViewInfoStore$InfoRecord.drainCache();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onViewDetached(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        removeFromDisappearedInLayout(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$ItemAnimator$ItemHolderInfo popFromPostLayout(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return popFromLayoutStep(recyclerView$ViewHolder, 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$ItemAnimator$ItemHolderInfo popFromPreLayout(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return popFromLayoutStep(recyclerView$ViewHolder, 4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void process(ViewInfoStore$ProcessCallback viewInfoStore$ProcessCallback) {
        for (int size = this.mLayoutHolderMap.getSize() - 1; size >= 0; size--) {
            RecyclerView$ViewHolder recyclerView$ViewHolderKeyAt = this.mLayoutHolderMap.keyAt(size);
            ViewInfoStore$InfoRecord viewInfoStore$InfoRecordRemoveAt = this.mLayoutHolderMap.removeAt(size);
            int i9 = viewInfoStore$InfoRecordRemoveAt.flags;
            if ((i9 & 3) == 3) {
                viewInfoStore$ProcessCallback.unused(recyclerView$ViewHolderKeyAt);
            } else if ((i9 & 1) != 0) {
                RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo = viewInfoStore$InfoRecordRemoveAt.preInfo;
                if (recyclerView$ItemAnimator$ItemHolderInfo == null) {
                    viewInfoStore$ProcessCallback.unused(recyclerView$ViewHolderKeyAt);
                } else {
                    viewInfoStore$ProcessCallback.processDisappeared(recyclerView$ViewHolderKeyAt, recyclerView$ItemAnimator$ItemHolderInfo, viewInfoStore$InfoRecordRemoveAt.postInfo);
                }
            } else if ((i9 & 14) == 14) {
                viewInfoStore$ProcessCallback.processAppeared(recyclerView$ViewHolderKeyAt, viewInfoStore$InfoRecordRemoveAt.preInfo, viewInfoStore$InfoRecordRemoveAt.postInfo);
            } else if ((i9 & 12) == 12) {
                viewInfoStore$ProcessCallback.processPersistent(recyclerView$ViewHolderKeyAt, viewInfoStore$InfoRecordRemoveAt.preInfo, viewInfoStore$InfoRecordRemoveAt.postInfo);
            } else if ((i9 & 4) != 0) {
                viewInfoStore$ProcessCallback.processDisappeared(recyclerView$ViewHolderKeyAt, viewInfoStore$InfoRecordRemoveAt.preInfo, null);
            } else if ((i9 & 8) != 0) {
                viewInfoStore$ProcessCallback.processAppeared(recyclerView$ViewHolderKeyAt, viewInfoStore$InfoRecordRemoveAt.preInfo, viewInfoStore$InfoRecordRemoveAt.postInfo);
            }
            ViewInfoStore$InfoRecord.recycle(viewInfoStore$InfoRecordRemoveAt);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeFromDisappearedInLayout(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecord == null) {
            return;
        }
        viewInfoStore$InfoRecord.flags &= -2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        for (int size = this.mOldChangedHolders.size() - 1; size >= 0; size--) {
            if (recyclerView$ViewHolder == this.mOldChangedHolders.valueAt(size)) {
                this.mOldChangedHolders.removeAt(size);
                break;
            }
        }
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordRemove = this.mLayoutHolderMap.remove(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecordRemove != null) {
            ViewInfoStore$InfoRecord.recycle(viewInfoStore$InfoRecordRemove);
        }
    }
}

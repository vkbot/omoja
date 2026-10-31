package androidx.recyclerview.widget;

import androidx.core.util.Pools$Pool;
import androidx.core.util.Pools$SimplePool;
import androidx.navigation.b;
import j1.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class AdapterHelper implements OpReorderer$Callback {
    private static final boolean DEBUG = false;
    static final int POSITION_TYPE_INVISIBLE = 0;
    static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
    private static final String TAG = "AHT";
    final AdapterHelper$Callback mCallback;
    final boolean mDisableRecycler;
    private int mExistingUpdateTypes;
    Runnable mOnItemProcessedCallback;
    final OpReorderer mOpReorderer;
    final ArrayList<AdapterHelper$UpdateOp> mPendingUpdates;
    final ArrayList<AdapterHelper$UpdateOp> mPostponedList;
    private Pools$Pool<AdapterHelper$UpdateOp> mUpdateOpPool;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AdapterHelper(AdapterHelper$Callback adapterHelper$Callback, boolean z8) {
        this.mUpdateOpPool = new Pools$SimplePool(30);
        this.mPendingUpdates = new ArrayList<>();
        this.mPostponedList = new ArrayList<>();
        this.mExistingUpdateTypes = 0;
        this.mCallback = adapterHelper$Callback;
        this.mDisableRecycler = z8;
        this.mOpReorderer = new OpReorderer(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void applyAdd(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        postponeAndUpdateViewHolders(adapterHelper$UpdateOp);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void applyMove(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        postponeAndUpdateViewHolders(adapterHelper$UpdateOp);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void applyRemove(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        boolean z8;
        byte b9;
        int i9 = adapterHelper$UpdateOp.positionStart;
        int i10 = adapterHelper$UpdateOp.itemCount + i9;
        byte b10 = -1;
        int i11 = i9;
        int i12 = 0;
        while (i11 < i10) {
            if (this.mCallback.findViewHolder(i11) != null || canFindInPreLayout(i11)) {
                if (b10 == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(2, i9, i12, null));
                    z8 = true;
                } else {
                    z8 = false;
                }
                b9 = 1;
            } else {
                if (b10 == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(2, i9, i12, null));
                    z8 = true;
                } else {
                    z8 = false;
                }
                b9 = 0;
            }
            if (z8) {
                i11 -= i12;
                i10 -= i12;
                i12 = 1;
            } else {
                i12++;
            }
            i11++;
            b10 = b9;
        }
        if (i12 != adapterHelper$UpdateOp.itemCount) {
            recycleUpdateOp(adapterHelper$UpdateOp);
            adapterHelper$UpdateOp = obtainUpdateOp(2, i9, i12, null);
        }
        if (b10 == 0) {
            dispatchAndUpdateViewHolders(adapterHelper$UpdateOp);
        } else {
            postponeAndUpdateViewHolders(adapterHelper$UpdateOp);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void applyUpdate(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        int i9 = adapterHelper$UpdateOp.positionStart;
        int i10 = adapterHelper$UpdateOp.itemCount + i9;
        int i11 = 0;
        byte b9 = -1;
        int i12 = i9;
        while (i9 < i10) {
            if (this.mCallback.findViewHolder(i9) != null || canFindInPreLayout(i9)) {
                if (b9 == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(4, i12, i11, adapterHelper$UpdateOp.payload));
                    i12 = i9;
                    i11 = 0;
                }
                b9 = 1;
            } else {
                if (b9 == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(4, i12, i11, adapterHelper$UpdateOp.payload));
                    i12 = i9;
                    i11 = 0;
                }
                b9 = 0;
            }
            i11++;
            i9++;
        }
        if (i11 != adapterHelper$UpdateOp.itemCount) {
            Object obj = adapterHelper$UpdateOp.payload;
            recycleUpdateOp(adapterHelper$UpdateOp);
            adapterHelper$UpdateOp = obtainUpdateOp(4, i12, i11, obj);
        }
        if (b9 == 0) {
            dispatchAndUpdateViewHolders(adapterHelper$UpdateOp);
        } else {
            postponeAndUpdateViewHolders(adapterHelper$UpdateOp);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean canFindInPreLayout(int i9) {
        int size = this.mPostponedList.size();
        for (int i10 = 0; i10 < size; i10++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPostponedList.get(i10);
            int i11 = adapterHelper$UpdateOp.cmd;
            if (i11 == 8) {
                if (findPositionOffset(adapterHelper$UpdateOp.itemCount, i10 + 1) == i9) {
                    return true;
                }
            } else if (i11 == 1) {
                int i12 = adapterHelper$UpdateOp.positionStart;
                int i13 = adapterHelper$UpdateOp.itemCount + i12;
                while (i12 < i13) {
                    if (findPositionOffset(i12, i10 + 1) == i9) {
                        return true;
                    }
                    i12++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void dispatchAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        int i9;
        int i10 = adapterHelper$UpdateOp.cmd;
        if (i10 == 1 || i10 == 8) {
            i.k("should not dispatch add or move for pre layout");
            return;
        }
        int iUpdatePositionWithPostponed = updatePositionWithPostponed(adapterHelper$UpdateOp.positionStart, i10);
        int i11 = adapterHelper$UpdateOp.positionStart;
        int i12 = adapterHelper$UpdateOp.cmd;
        if (i12 == 2) {
            i9 = 0;
        } else {
            if (i12 != 4) {
                b.t(adapterHelper$UpdateOp, "op should be remove or update.");
                return;
            }
            i9 = 1;
        }
        int i13 = 1;
        for (int i14 = 1; i14 < adapterHelper$UpdateOp.itemCount; i14++) {
            int iUpdatePositionWithPostponed2 = updatePositionWithPostponed((i9 * i14) + adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.cmd);
            int i15 = adapterHelper$UpdateOp.cmd;
            if (i15 == 2 ? iUpdatePositionWithPostponed2 != iUpdatePositionWithPostponed : !(i15 == 4 && iUpdatePositionWithPostponed2 == iUpdatePositionWithPostponed + 1)) {
                AdapterHelper$UpdateOp adapterHelper$UpdateOpObtainUpdateOp = obtainUpdateOp(i15, iUpdatePositionWithPostponed, i13, adapterHelper$UpdateOp.payload);
                dispatchFirstPassAndUpdateViewHolders(adapterHelper$UpdateOpObtainUpdateOp, i11);
                recycleUpdateOp(adapterHelper$UpdateOpObtainUpdateOp);
                if (adapterHelper$UpdateOp.cmd == 4) {
                    i11 += i13;
                }
                i13 = 1;
                iUpdatePositionWithPostponed = iUpdatePositionWithPostponed2;
            } else {
                i13++;
            }
        }
        Object obj = adapterHelper$UpdateOp.payload;
        recycleUpdateOp(adapterHelper$UpdateOp);
        if (i13 > 0) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOpObtainUpdateOp2 = obtainUpdateOp(adapterHelper$UpdateOp.cmd, iUpdatePositionWithPostponed, i13, obj);
            dispatchFirstPassAndUpdateViewHolders(adapterHelper$UpdateOpObtainUpdateOp2, i11);
            recycleUpdateOp(adapterHelper$UpdateOpObtainUpdateOp2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void postponeAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        this.mPostponedList.add(adapterHelper$UpdateOp);
        int i9 = adapterHelper$UpdateOp.cmd;
        if (i9 == 1) {
            this.mCallback.offsetPositionsForAdd(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            return;
        }
        if (i9 == 2) {
            this.mCallback.offsetPositionsForRemovingLaidOutOrNewView(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            return;
        }
        if (i9 == 4) {
            this.mCallback.markViewHoldersUpdated(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
        } else if (i9 == 8) {
            this.mCallback.offsetPositionsForMove(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
        } else {
            b.t(adapterHelper$UpdateOp, "Unknown update op type for ");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int updatePositionWithPostponed(int i9, int i10) {
        ArrayList<AdapterHelper$UpdateOp> arrayList;
        int i11;
        int i12;
        int size = this.mPostponedList.size() - 1;
        while (true) {
            arrayList = this.mPostponedList;
            if (size < 0) {
                break;
            }
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = arrayList.get(size);
            int i13 = adapterHelper$UpdateOp.cmd;
            int i14 = adapterHelper$UpdateOp.positionStart;
            if (i13 == 8) {
                int i15 = adapterHelper$UpdateOp.itemCount;
                if (i14 < i15) {
                    i12 = i15;
                    i11 = i14;
                } else {
                    i11 = i15;
                    i12 = i14;
                }
                if (i9 < i11 || i9 > i12) {
                    if (i9 < i14) {
                        if (i10 == 1) {
                            adapterHelper$UpdateOp.positionStart = i14 + 1;
                            adapterHelper$UpdateOp.itemCount = i15 + 1;
                        } else if (i10 == 2) {
                            adapterHelper$UpdateOp.positionStart = i14 - 1;
                            adapterHelper$UpdateOp.itemCount = i15 - 1;
                        }
                    }
                } else if (i11 == i14) {
                    if (i10 == 1) {
                        adapterHelper$UpdateOp.itemCount = i15 + 1;
                    } else if (i10 == 2) {
                        adapterHelper$UpdateOp.itemCount = i15 - 1;
                    }
                    i9++;
                } else {
                    if (i10 == 1) {
                        adapterHelper$UpdateOp.positionStart = i14 + 1;
                    } else if (i10 == 2) {
                        adapterHelper$UpdateOp.positionStart = i14 - 1;
                    }
                    i9--;
                }
            } else if (i14 <= i9) {
                if (i13 == 1) {
                    i9 -= adapterHelper$UpdateOp.itemCount;
                } else if (i13 == 2) {
                    i9 += adapterHelper$UpdateOp.itemCount;
                }
            } else if (i10 == 1) {
                adapterHelper$UpdateOp.positionStart = i14 + 1;
            } else if (i10 == 2) {
                adapterHelper$UpdateOp.positionStart = i14 - 1;
            }
            size--;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp2 = this.mPostponedList.get(size2);
            int i16 = adapterHelper$UpdateOp2.cmd;
            int i17 = adapterHelper$UpdateOp2.itemCount;
            if (i16 == 8) {
                if (i17 == adapterHelper$UpdateOp2.positionStart || i17 < 0) {
                    this.mPostponedList.remove(size2);
                    recycleUpdateOp(adapterHelper$UpdateOp2);
                }
            } else if (i17 <= 0) {
                this.mPostponedList.remove(size2);
                recycleUpdateOp(adapterHelper$UpdateOp2);
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AdapterHelper addUpdateOp(AdapterHelper$UpdateOp... adapterHelper$UpdateOpArr) {
        Collections.addAll(this.mPendingUpdates, adapterHelper$UpdateOpArr);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int applyPendingUpdatesToPosition(int i9) {
        int size = this.mPendingUpdates.size();
        for (int i10 = 0; i10 < size; i10++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPendingUpdates.get(i10);
            int i11 = adapterHelper$UpdateOp.cmd;
            if (i11 != 1) {
                if (i11 == 2) {
                    int i12 = adapterHelper$UpdateOp.positionStart;
                    if (i12 <= i9) {
                        int i13 = adapterHelper$UpdateOp.itemCount;
                        if (i12 + i13 > i9) {
                            return -1;
                        }
                        i9 -= i13;
                    } else {
                        continue;
                    }
                } else if (i11 == 8) {
                    int i14 = adapterHelper$UpdateOp.positionStart;
                    if (i14 == i9) {
                        i9 = adapterHelper$UpdateOp.itemCount;
                    } else {
                        if (i14 < i9) {
                            i9--;
                        }
                        if (adapterHelper$UpdateOp.itemCount <= i9) {
                            i9++;
                        }
                    }
                }
            } else if (adapterHelper$UpdateOp.positionStart <= i9) {
                i9 += adapterHelper$UpdateOp.itemCount;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void consumePostponedUpdates() {
        int size = this.mPostponedList.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mCallback.onDispatchSecondPass(this.mPostponedList.get(i9));
        }
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void consumeUpdatesInOnePass() {
        consumePostponedUpdates();
        int size = this.mPendingUpdates.size();
        int i9 = 0;
        while (true) {
            ArrayList<AdapterHelper$UpdateOp> arrayList = this.mPendingUpdates;
            if (i9 >= size) {
                recycleUpdateOpsAndClearList(arrayList);
                this.mExistingUpdateTypes = 0;
                return;
            }
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = arrayList.get(i9);
            int i10 = adapterHelper$UpdateOp.cmd;
            if (i10 == 1) {
                this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
                this.mCallback.offsetPositionsForAdd(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            } else if (i10 == 2) {
                this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
                this.mCallback.offsetPositionsForRemovingInvisible(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            } else if (i10 == 4) {
                this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
                this.mCallback.markViewHoldersUpdated(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
            } else if (i10 == 8) {
                this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
                this.mCallback.offsetPositionsForMove(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            }
            Runnable runnable = this.mOnItemProcessedCallback;
            if (runnable != null) {
                runnable.run();
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchFirstPassAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp, int i9) {
        this.mCallback.onDispatchFirstPass(adapterHelper$UpdateOp);
        int i10 = adapterHelper$UpdateOp.cmd;
        if (i10 == 2) {
            this.mCallback.offsetPositionsForRemovingInvisible(i9, adapterHelper$UpdateOp.itemCount);
        } else if (i10 == 4) {
            this.mCallback.markViewHoldersUpdated(i9, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
        } else {
            i.k("only remove and update ops can be dispatched in first pass");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findPositionOffset(int i9, int i10) {
        int size = this.mPostponedList.size();
        while (i10 < size) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPostponedList.get(i10);
            int i11 = adapterHelper$UpdateOp.cmd;
            int i12 = adapterHelper$UpdateOp.positionStart;
            if (i11 == 8) {
                if (i12 == i9) {
                    i9 = adapterHelper$UpdateOp.itemCount;
                } else {
                    if (i12 < i9) {
                        i9--;
                    }
                    if (adapterHelper$UpdateOp.itemCount <= i9) {
                        i9++;
                    }
                }
            } else if (i12 > i9) {
                continue;
            } else if (i11 == 2) {
                int i13 = adapterHelper$UpdateOp.itemCount;
                if (i9 < i12 + i13) {
                    return -1;
                }
                i9 -= i13;
            } else if (i11 == 1) {
                i9 += adapterHelper$UpdateOp.itemCount;
            }
            i10++;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasAnyUpdateTypes(int i9) {
        return (i9 & this.mExistingUpdateTypes) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasPendingUpdates() {
        return this.mPendingUpdates.size() > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasUpdates() {
        return (this.mPostponedList.isEmpty() || this.mPendingUpdates.isEmpty()) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OpReorderer$Callback
    public AdapterHelper$UpdateOp obtainUpdateOp(int i9, int i10, int i11, Object obj) {
        AdapterHelper$UpdateOp adapterHelper$UpdateOpAcquire = this.mUpdateOpPool.acquire();
        if (adapterHelper$UpdateOpAcquire == null) {
            return new AdapterHelper$UpdateOp(i9, i10, i11, obj);
        }
        adapterHelper$UpdateOpAcquire.cmd = i9;
        adapterHelper$UpdateOpAcquire.positionStart = i10;
        adapterHelper$UpdateOpAcquire.itemCount = i11;
        adapterHelper$UpdateOpAcquire.payload = obj;
        return adapterHelper$UpdateOpAcquire;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onItemRangeChanged(int i9, int i10, Object obj) {
        if (i10 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(4, i9, i10, obj));
        this.mExistingUpdateTypes |= 4;
        return this.mPendingUpdates.size() == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onItemRangeInserted(int i9, int i10) {
        if (i10 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(1, i9, i10, null));
        this.mExistingUpdateTypes |= 1;
        return this.mPendingUpdates.size() == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onItemRangeMoved(int i9, int i10, int i11) {
        if (i9 == i10) {
            return false;
        }
        if (i11 != 1) {
            i.k("Moving more than 1 item is not supported yet");
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(8, i9, i10, null));
        this.mExistingUpdateTypes |= 8;
        return this.mPendingUpdates.size() == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onItemRangeRemoved(int i9, int i10) {
        if (i10 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(2, i9, i10, null));
        this.mExistingUpdateTypes |= 2;
        return this.mPendingUpdates.size() == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void preProcess() {
        this.mOpReorderer.reorderOps(this.mPendingUpdates);
        int size = this.mPendingUpdates.size();
        int i9 = 0;
        while (true) {
            ArrayList<AdapterHelper$UpdateOp> arrayList = this.mPendingUpdates;
            if (i9 >= size) {
                arrayList.clear();
                return;
            }
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = arrayList.get(i9);
            int i10 = adapterHelper$UpdateOp.cmd;
            if (i10 == 1) {
                applyAdd(adapterHelper$UpdateOp);
            } else if (i10 == 2) {
                applyRemove(adapterHelper$UpdateOp);
            } else if (i10 == 4) {
                applyUpdate(adapterHelper$UpdateOp);
            } else if (i10 == 8) {
                applyMove(adapterHelper$UpdateOp);
            }
            Runnable runnable = this.mOnItemProcessedCallback;
            if (runnable != null) {
                runnable.run();
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OpReorderer$Callback
    public void recycleUpdateOp(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        if (this.mDisableRecycler) {
            return;
        }
        adapterHelper$UpdateOp.payload = null;
        this.mUpdateOpPool.release(adapterHelper$UpdateOp);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void recycleUpdateOpsAndClearList(List<AdapterHelper$UpdateOp> list) {
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            recycleUpdateOp(list.get(i9));
        }
        list.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    public AdapterHelper(AdapterHelper$Callback adapterHelper$Callback) {
        this(adapterHelper$Callback, false);
    }

    public int findPositionOffset(int i9) {
        return findPositionOffset(i9, 0);
    }
}

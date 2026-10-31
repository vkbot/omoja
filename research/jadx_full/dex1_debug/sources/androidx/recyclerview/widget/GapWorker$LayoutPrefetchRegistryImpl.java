package androidx.recyclerview.widget;

import j1.i;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class GapWorker$LayoutPrefetchRegistryImpl implements RecyclerView$LayoutManager$LayoutPrefetchRegistry {
    int mCount;
    int[] mPrefetchArray;
    int mPrefetchDx;
    int mPrefetchDy;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager$LayoutPrefetchRegistry
    public void addPosition(int i9, int i10) {
        if (i9 < 0) {
            i.k("Layout positions must be non-negative");
            return;
        }
        if (i10 < 0) {
            i.k("Pixel distance must be non-negative");
            return;
        }
        int i11 = this.mCount;
        int i12 = i11 * 2;
        int[] iArr = this.mPrefetchArray;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.mPrefetchArray = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i12 >= iArr.length) {
            int[] iArr3 = new int[i11 * 4];
            this.mPrefetchArray = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.mPrefetchArray;
        iArr4[i12] = i9;
        iArr4[i12 + 1] = i10;
        this.mCount++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearPrefetchPositions() {
        int[] iArr = this.mPrefetchArray;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.mCount = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void collectPrefetchPositionsFromView(RecyclerView recyclerView, boolean z8) {
        this.mCount = 0;
        int[] iArr = this.mPrefetchArray;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        RecyclerView$LayoutManager recyclerView$LayoutManager = recyclerView.mLayout;
        if (recyclerView.mAdapter == null || recyclerView$LayoutManager == null || !recyclerView$LayoutManager.isItemPrefetchEnabled()) {
            return;
        }
        if (z8) {
            if (!recyclerView.mAdapterHelper.hasPendingUpdates()) {
                recyclerView$LayoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            recyclerView$LayoutManager.collectAdjacentPrefetchPositions(this.mPrefetchDx, this.mPrefetchDy, recyclerView.mState, this);
        }
        int i9 = this.mCount;
        if (i9 > recyclerView$LayoutManager.mPrefetchMaxCountObserved) {
            recyclerView$LayoutManager.mPrefetchMaxCountObserved = i9;
            recyclerView$LayoutManager.mPrefetchMaxObservedInInitialPrefetch = z8;
            recyclerView.mRecycler.updateViewCacheSize();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean lastPrefetchIncludedPosition(int i9) {
        if (this.mPrefetchArray != null) {
            int i10 = this.mCount * 2;
            for (int i11 = 0; i11 < i10; i11 += 2) {
                if (this.mPrefetchArray[i11] == i9) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPrefetchVector(int i9, int i10) {
        this.mPrefetchDx = i9;
        this.mPrefetchDy = i10;
    }
}

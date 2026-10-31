package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StaggeredGridLayoutManager$LazySpanLookup {
    private static final int MIN_SIZE = 10;
    int[] mData;
    List<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> mFullSpanItems;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int invalidateFullSpansAfter(int i9) {
        if (this.mFullSpanItems == null) {
            return -1;
        }
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem fullSpanItem = getFullSpanItem(i9);
        if (fullSpanItem != null) {
            this.mFullSpanItems.remove(fullSpanItem);
        }
        int size = this.mFullSpanItems.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            }
            if (this.mFullSpanItems.get(i10).mPosition >= i9) {
                break;
            }
            i10++;
        }
        if (i10 == -1) {
            return -1;
        }
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(i10);
        this.mFullSpanItems.remove(i10);
        return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void offsetFullSpansForAddition(int i9, int i10) {
        List<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> list = this.mFullSpanItems;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(size);
            int i11 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition;
            if (i11 >= i9) {
                staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition = i11 + i10;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void offsetFullSpansForRemoval(int i9, int i10) {
        List<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> list = this.mFullSpanItems;
        if (list == null) {
            return;
        }
        int i11 = i9 + i10;
        for (int size = list.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(size);
            int i12 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition;
            if (i12 >= i9) {
                if (i12 < i11) {
                    this.mFullSpanItems.remove(size);
                } else {
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition = i12 - i10;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addFullSpanItem(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem) {
        if (this.mFullSpanItems == null) {
            this.mFullSpanItems = new ArrayList();
        }
        int size = this.mFullSpanItems.size();
        int i9 = 0;
        while (true) {
            List<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> list = this.mFullSpanItems;
            if (i9 >= size) {
                list.add(staggeredGridLayoutManager$LazySpanLookup$FullSpanItem);
                return;
            }
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2 = list.get(i9);
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2.mPosition == staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition) {
                this.mFullSpanItems.remove(i9);
            }
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2.mPosition >= staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition) {
                this.mFullSpanItems.add(i9, staggeredGridLayoutManager$LazySpanLookup$FullSpanItem);
                return;
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        int[] iArr = this.mData;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.mFullSpanItems = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensureSize(int i9) {
        int[] iArr = this.mData;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i9, 10) + 1];
            this.mData = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i9 >= iArr.length) {
            int[] iArr3 = new int[sizeForPosition(i9)];
            this.mData = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = this.mData;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int forceInvalidateAfter(int i9) {
        List<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> list = this.mFullSpanItems;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (this.mFullSpanItems.get(size).mPosition >= i9) {
                    this.mFullSpanItems.remove(size);
                }
            }
        }
        return invalidateAfter(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem getFirstFullSpanItemInRange(int i9, int i10, int i11, boolean z8) {
        List<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> list = this.mFullSpanItems;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(i12);
            int i13 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition;
            if (i13 >= i10) {
                return null;
            }
            if (i13 >= i9 && (i11 == 0 || staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapDir == i11 || (z8 && staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mHasUnwantedGapAfter))) {
                return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem getFullSpanItem(int i9) {
        List<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> list = this.mFullSpanItems;
        if (list == null) {
            return null;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(size);
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition == i9) {
                return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSpan(int i9) {
        int[] iArr = this.mData;
        if (iArr == null || i9 >= iArr.length) {
            return -1;
        }
        return iArr[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int invalidateAfter(int i9) {
        int[] iArr = this.mData;
        if (iArr == null || i9 >= iArr.length) {
            return -1;
        }
        int iInvalidateFullSpansAfter = invalidateFullSpansAfter(i9);
        int[] iArr2 = this.mData;
        if (iInvalidateFullSpansAfter == -1) {
            Arrays.fill(iArr2, i9, iArr2.length, -1);
            return this.mData.length;
        }
        int iMin = Math.min(iInvalidateFullSpansAfter + 1, iArr2.length);
        Arrays.fill(this.mData, i9, iMin, -1);
        return iMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetForAddition(int i9, int i10) {
        int[] iArr = this.mData;
        if (iArr == null || i9 >= iArr.length) {
            return;
        }
        int i11 = i9 + i10;
        ensureSize(i11);
        int[] iArr2 = this.mData;
        System.arraycopy(iArr2, i9, iArr2, i11, (iArr2.length - i9) - i10);
        Arrays.fill(this.mData, i9, i11, -1);
        offsetFullSpansForAddition(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetForRemoval(int i9, int i10) {
        int[] iArr = this.mData;
        if (iArr == null || i9 >= iArr.length) {
            return;
        }
        int i11 = i9 + i10;
        ensureSize(i11);
        int[] iArr2 = this.mData;
        System.arraycopy(iArr2, i11, iArr2, i9, (iArr2.length - i9) - i10);
        int[] iArr3 = this.mData;
        Arrays.fill(iArr3, iArr3.length - i10, iArr3.length, -1);
        offsetFullSpansForRemoval(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpan(int i9, StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span) {
        ensureSize(i9);
        this.mData[i9] = staggeredGridLayoutManager$Span.mIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int sizeForPosition(int i9) {
        int length = this.mData.length;
        while (length <= i9) {
            length *= 2;
        }
        return length;
    }
}

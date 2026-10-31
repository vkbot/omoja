package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.ULong;
import kotlin.text.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DiffUtil$DiffResult {
    private static final int FLAG_CHANGED = 2;
    private static final int FLAG_MASK = 15;
    private static final int FLAG_MOVED = 12;
    private static final int FLAG_MOVED_CHANGED = 4;
    private static final int FLAG_MOVED_NOT_CHANGED = 8;
    private static final int FLAG_NOT_CHANGED = 1;
    private static final int FLAG_OFFSET = 4;
    public static final int NO_POSITION = -1;
    private final DiffUtil$Callback mCallback;
    private final boolean mDetectMoves;
    private final List<DiffUtil$Diagonal> mDiagonals;
    private final int[] mNewItemStatuses;
    private final int mNewListSize;
    private final int[] mOldItemStatuses;
    private final int mOldListSize;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DiffUtil$DiffResult(DiffUtil$Callback diffUtil$Callback, List<DiffUtil$Diagonal> list, int[] iArr, int[] iArr2, boolean z8) {
        this.mDiagonals = list;
        this.mOldItemStatuses = iArr;
        this.mNewItemStatuses = iArr2;
        Arrays.fill(iArr, 0);
        Arrays.fill(iArr2, 0);
        this.mCallback = diffUtil$Callback;
        this.mOldListSize = diffUtil$Callback.getOldListSize();
        this.mNewListSize = diffUtil$Callback.getNewListSize();
        this.mDetectMoves = z8;
        addEdgeDiagonals();
        findMatchingItems();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addEdgeDiagonals() {
        DiffUtil$Diagonal diffUtil$Diagonal = this.mDiagonals.isEmpty() ? null : this.mDiagonals.get(0);
        if (diffUtil$Diagonal == null || diffUtil$Diagonal.f214x != 0 || diffUtil$Diagonal.f215y != 0) {
            this.mDiagonals.add(0, new DiffUtil$Diagonal(0, 0, 0));
        }
        this.mDiagonals.add(new DiffUtil$Diagonal(this.mOldListSize, this.mNewListSize, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void findMatchingAddition(int i9) {
        int size = this.mDiagonals.size();
        int iEndY = 0;
        for (int i10 = 0; i10 < size; i10++) {
            DiffUtil$Diagonal diffUtil$Diagonal = this.mDiagonals.get(i10);
            while (iEndY < diffUtil$Diagonal.f215y) {
                if (this.mNewItemStatuses[iEndY] == 0 && this.mCallback.areItemsTheSame(i9, iEndY)) {
                    int i11 = this.mCallback.areContentsTheSame(i9, iEndY) ? 8 : 4;
                    this.mOldItemStatuses[i9] = (iEndY << 4) | i11;
                    this.mNewItemStatuses[iEndY] = (i9 << 4) | i11;
                    return;
                }
                iEndY++;
            }
            iEndY = diffUtil$Diagonal.endY();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void findMatchingItems() {
        for (DiffUtil$Diagonal diffUtil$Diagonal : this.mDiagonals) {
            for (int i9 = 0; i9 < diffUtil$Diagonal.size; i9++) {
                int i10 = diffUtil$Diagonal.f214x + i9;
                int i11 = diffUtil$Diagonal.f215y + i9;
                int i12 = this.mCallback.areContentsTheSame(i10, i11) ? 1 : 2;
                this.mOldItemStatuses[i10] = (i11 << 4) | i12;
                this.mNewItemStatuses[i11] = (i10 << 4) | i12;
            }
        }
        if (this.mDetectMoves) {
            findMoveMatches();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void findMoveMatches() {
        int iEndX = 0;
        for (DiffUtil$Diagonal diffUtil$Diagonal : this.mDiagonals) {
            while (iEndX < diffUtil$Diagonal.f214x) {
                if (this.mOldItemStatuses[iEndX] == 0) {
                    findMatchingAddition(iEndX);
                }
                iEndX++;
            }
            iEndX = diffUtil$Diagonal.endX();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static DiffUtil$PostponedUpdate getPostponedUpdate(Collection<DiffUtil$PostponedUpdate> collection, int i9, boolean z8) {
        DiffUtil$PostponedUpdate next;
        Iterator<DiffUtil$PostponedUpdate> it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next.posInOwnerList == i9 && next.removal == z8) {
                it.remove();
                break;
            }
        }
        while (it.hasNext()) {
            DiffUtil$PostponedUpdate next2 = it.next();
            if (z8) {
                next2.currentPos--;
            } else {
                next2.currentPos++;
            }
        }
        return next;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int convertNewPositionToOld(@IntRange(from = ULong.MIN_VALUE) int i9) {
        if (i9 < 0 || i9 >= this.mNewListSize) {
            b.a(a.q(i9, "Index out of bounds - passed position = ", ", new list size = "), this.mNewListSize);
            return 0;
        }
        int i10 = this.mNewItemStatuses[i9];
        if ((i10 & 15) == 0) {
            return -1;
        }
        return i10 >> 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int convertOldPositionToNew(@IntRange(from = ULong.MIN_VALUE) int i9) {
        if (i9 < 0 || i9 >= this.mOldListSize) {
            b.a(a.q(i9, "Index out of bounds - passed position = ", ", old list size = "), this.mOldListSize);
            return 0;
        }
        int i10 = this.mOldItemStatuses[i9];
        if ((i10 & 15) == 0) {
            return -1;
        }
        return i10 >> 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchUpdatesTo(@NonNull ListUpdateCallback listUpdateCallback) {
        int i9;
        BatchingListUpdateCallback batchingListUpdateCallback = listUpdateCallback instanceof BatchingListUpdateCallback ? (BatchingListUpdateCallback) listUpdateCallback : new BatchingListUpdateCallback(listUpdateCallback);
        int i10 = this.mOldListSize;
        ArrayDeque arrayDeque = new ArrayDeque();
        int i11 = this.mOldListSize;
        int i12 = this.mNewListSize;
        for (int size = this.mDiagonals.size() - 1; size >= 0; size--) {
            DiffUtil$Diagonal diffUtil$Diagonal = this.mDiagonals.get(size);
            int iEndX = diffUtil$Diagonal.endX();
            int iEndY = diffUtil$Diagonal.endY();
            while (true) {
                if (i11 <= iEndX) {
                    break;
                }
                i11--;
                int i13 = this.mOldItemStatuses[i11];
                if ((i13 & 12) != 0) {
                    int i14 = i13 >> 4;
                    DiffUtil$PostponedUpdate postponedUpdate = getPostponedUpdate(arrayDeque, i14, false);
                    if (postponedUpdate != null) {
                        int i15 = (i10 - postponedUpdate.currentPos) - 1;
                        batchingListUpdateCallback.onMoved(i11, i15);
                        if ((i13 & 4) != 0) {
                            batchingListUpdateCallback.onChanged(i15, 1, this.mCallback.getChangePayload(i11, i14));
                        }
                    } else {
                        arrayDeque.add(new DiffUtil$PostponedUpdate(i11, (i10 - i11) - 1, true));
                    }
                } else {
                    batchingListUpdateCallback.onRemoved(i11, 1);
                    i10--;
                }
            }
            while (i12 > iEndY) {
                i12--;
                int i16 = this.mNewItemStatuses[i12];
                if ((i16 & 12) != 0) {
                    int i17 = i16 >> 4;
                    DiffUtil$PostponedUpdate postponedUpdate2 = getPostponedUpdate(arrayDeque, i17, true);
                    if (postponedUpdate2 == null) {
                        arrayDeque.add(new DiffUtil$PostponedUpdate(i12, i10 - i11, false));
                    } else {
                        batchingListUpdateCallback.onMoved((i10 - postponedUpdate2.currentPos) - 1, i11);
                        if ((i16 & 4) != 0) {
                            batchingListUpdateCallback.onChanged(i11, 1, this.mCallback.getChangePayload(i17, i12));
                        }
                    }
                } else {
                    batchingListUpdateCallback.onInserted(i11, 1);
                    i10++;
                }
            }
            int i18 = diffUtil$Diagonal.f214x;
            int i19 = diffUtil$Diagonal.f215y;
            for (i9 = 0; i9 < diffUtil$Diagonal.size; i9++) {
                if ((this.mOldItemStatuses[i18] & 15) == 2) {
                    batchingListUpdateCallback.onChanged(i18, 1, this.mCallback.getChangePayload(i18, i19));
                }
                i18++;
                i19++;
            }
            i11 = diffUtil$Diagonal.f214x;
            i12 = diffUtil$Diagonal.f215y;
        }
        batchingListUpdateCallback.dispatchLastEvent();
    }

    public void dispatchUpdatesTo(@NonNull RecyclerView$Adapter recyclerView$Adapter) {
        dispatchUpdatesTo(new AdapterListUpdateCallback(recyclerView$Adapter));
    }
}

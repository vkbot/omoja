package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import androidx.annotation.NonNull;
import j1.i;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import kotlin.text.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SortedList<T> {
    private static final int CAPACITY_GROWTH = 10;
    private static final int DELETION = 2;
    private static final int INSERTION = 1;
    public static final int INVALID_POSITION = -1;
    private static final int LOOKUP = 4;
    private static final int MIN_CAPACITY = 10;
    private SortedList$BatchedCallback mBatchedCallback;
    private SortedList$Callback mCallback;
    T[] mData;
    private int mNewDataStart;
    private T[] mOldData;
    private int mOldDataSize;
    private int mOldDataStart;
    private int mSize;
    private final Class<T> mTClass;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SortedList(@NonNull Class<T> cls, @NonNull SortedList$Callback<T> sortedList$Callback, int i9) {
        this.mTClass = cls;
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i9));
        this.mCallback = sortedList$Callback;
        this.mSize = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int add(T t, boolean z8) {
        int iFindIndexOf = findIndexOf(t, this.mData, 0, this.mSize, 1);
        if (iFindIndexOf == -1) {
            iFindIndexOf = 0;
        } else if (iFindIndexOf < this.mSize) {
            T t3 = this.mData[iFindIndexOf];
            if (this.mCallback.areItemsTheSame(t3, t)) {
                boolean zAreContentsTheSame = this.mCallback.areContentsTheSame(t3, t);
                T[] tArr = this.mData;
                if (zAreContentsTheSame) {
                    tArr[iFindIndexOf] = t;
                    return iFindIndexOf;
                }
                tArr[iFindIndexOf] = t;
                SortedList$Callback sortedList$Callback = this.mCallback;
                sortedList$Callback.onChanged(iFindIndexOf, 1, sortedList$Callback.getChangePayload(t3, t));
                return iFindIndexOf;
            }
        }
        addToData(iFindIndexOf, t);
        if (z8) {
            this.mCallback.onInserted(iFindIndexOf, 1);
        }
        return iFindIndexOf;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addAllInternal(T[] tArr) {
        if (tArr.length < 1) {
            return;
        }
        int iSortAndDedup = sortAndDedup(tArr);
        if (this.mSize != 0) {
            merge(tArr, iSortAndDedup);
            return;
        }
        this.mData = tArr;
        this.mSize = iSortAndDedup;
        this.mCallback.onInserted(0, iSortAndDedup);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addToData(int i9, T t) {
        int i10 = this.mSize;
        if (i9 > i10) {
            b.a(a.q(i9, "cannot add item to ", " because size is "), this.mSize);
            return;
        }
        T[] tArr = this.mData;
        if (i10 == tArr.length) {
            T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, tArr.length + 10));
            System.arraycopy(this.mData, 0, tArr2, 0, i9);
            tArr2[i9] = t;
            System.arraycopy(this.mData, i9, tArr2, i9 + 1, this.mSize - i9);
            this.mData = tArr2;
        } else {
            System.arraycopy(tArr, i9, tArr, i9 + 1, i10 - i9);
            this.mData[i9] = t;
        }
        this.mSize++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private T[] copyArray(T[] tArr) {
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, tArr.length));
        System.arraycopy(tArr, 0, tArr2, 0, tArr.length);
        return tArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int findIndexOf(T t, T[] tArr, int i9, int i10, int i11) {
        while (i9 < i10) {
            int i12 = (i9 + i10) / 2;
            T t3 = tArr[i12];
            int iCompare = this.mCallback.compare(t3, t);
            if (iCompare < 0) {
                i9 = i12 + 1;
            } else {
                if (iCompare == 0) {
                    if (!this.mCallback.areItemsTheSame(t3, t)) {
                        int iLinearEqualitySearch = linearEqualitySearch(t, i12, i9, i10);
                        if (i11 != 1 || iLinearEqualitySearch != -1) {
                            return iLinearEqualitySearch;
                        }
                    }
                    return i12;
                }
                i10 = i12;
            }
        }
        if (i11 == 1) {
            return i9;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int findSameItem(T t, T[] tArr, int i9, int i10) {
        while (i9 < i10) {
            if (this.mCallback.areItemsTheSame(tArr[i9], t)) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int linearEqualitySearch(T t, int i9, int i10, int i11) {
        T t3;
        for (int i12 = i9 - 1; i12 >= i10; i12--) {
            T t9 = this.mData[i12];
            if (this.mCallback.compare(t9, t) != 0) {
                break;
            }
            if (this.mCallback.areItemsTheSame(t9, t)) {
                return i12;
            }
        }
        do {
            i9++;
            if (i9 >= i11) {
                return -1;
            }
            t3 = this.mData[i9];
            if (this.mCallback.compare(t3, t) != 0) {
                return -1;
            }
        } while (!this.mCallback.areItemsTheSame(t3, t));
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void merge(T[] tArr, int i9) {
        boolean z8 = this.mCallback instanceof SortedList$BatchedCallback;
        if (!z8) {
            beginBatchedUpdates();
        }
        this.mOldData = this.mData;
        int i10 = 0;
        this.mOldDataStart = 0;
        int i11 = this.mSize;
        this.mOldDataSize = i11;
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, i11 + i9 + 10));
        this.mNewDataStart = 0;
        while (true) {
            int i12 = this.mOldDataStart;
            int i13 = this.mOldDataSize;
            if (i12 >= i13 && i10 >= i9) {
                break;
            }
            if (i12 == i13) {
                int i14 = i9 - i10;
                System.arraycopy(tArr, i10, this.mData, this.mNewDataStart, i14);
                int i15 = this.mNewDataStart + i14;
                this.mNewDataStart = i15;
                this.mSize += i14;
                this.mCallback.onInserted(i15 - i14, i14);
                break;
            }
            T[] tArr2 = this.mOldData;
            if (i10 == i9) {
                int i16 = i13 - i12;
                System.arraycopy(tArr2, i12, this.mData, this.mNewDataStart, i16);
                this.mNewDataStart += i16;
                break;
            }
            T t = tArr2[i12];
            T t3 = tArr[i10];
            int iCompare = this.mCallback.compare(t, t3);
            if (iCompare > 0) {
                T[] tArr3 = this.mData;
                int i17 = this.mNewDataStart;
                this.mNewDataStart = i17 + 1;
                tArr3[i17] = t3;
                this.mSize++;
                i10++;
                this.mCallback.onInserted(i17, 1);
            } else if (iCompare == 0 && this.mCallback.areItemsTheSame(t, t3)) {
                T[] tArr4 = this.mData;
                int i18 = this.mNewDataStart;
                this.mNewDataStart = i18 + 1;
                tArr4[i18] = t3;
                i10++;
                this.mOldDataStart++;
                if (!this.mCallback.areContentsTheSame(t, t3)) {
                    SortedList$Callback sortedList$Callback = this.mCallback;
                    sortedList$Callback.onChanged(this.mNewDataStart - 1, 1, sortedList$Callback.getChangePayload(t, t3));
                }
            } else {
                T[] tArr5 = this.mData;
                int i19 = this.mNewDataStart;
                this.mNewDataStart = i19 + 1;
                tArr5[i19] = t;
                this.mOldDataStart++;
            }
        }
        this.mOldData = null;
        if (z8) {
            return;
        }
        endBatchedUpdates();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean remove(T t, boolean z8) {
        int iFindIndexOf = findIndexOf(t, this.mData, 0, this.mSize, 2);
        if (iFindIndexOf == -1) {
            return false;
        }
        removeItemAtIndex(iFindIndexOf, z8);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void removeItemAtIndex(int i9, boolean z8) {
        T[] tArr = this.mData;
        System.arraycopy(tArr, i9 + 1, tArr, i9, (this.mSize - i9) - 1);
        int i10 = this.mSize - 1;
        this.mSize = i10;
        this.mData[i10] = null;
        if (z8) {
            this.mCallback.onRemoved(i9, 1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void replaceAllInsert(T t) {
        T[] tArr = this.mData;
        int i9 = this.mNewDataStart;
        tArr[i9] = t;
        this.mNewDataStart = i9 + 1;
        this.mSize++;
        this.mCallback.onInserted(i9, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void replaceAllInternal(@NonNull T[] tArr) {
        boolean z8 = this.mCallback instanceof SortedList$BatchedCallback;
        if (!z8) {
            beginBatchedUpdates();
        }
        this.mOldDataStart = 0;
        this.mOldDataSize = this.mSize;
        this.mOldData = this.mData;
        this.mNewDataStart = 0;
        int iSortAndDedup = sortAndDedup(tArr);
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, iSortAndDedup));
        while (true) {
            int i9 = this.mNewDataStart;
            if (i9 >= iSortAndDedup && this.mOldDataStart >= this.mOldDataSize) {
                break;
            }
            int i10 = this.mOldDataStart;
            int i11 = this.mOldDataSize;
            if (i10 >= i11) {
                int i12 = iSortAndDedup - i9;
                System.arraycopy(tArr, i9, this.mData, i9, i12);
                this.mNewDataStart += i12;
                this.mSize += i12;
                this.mCallback.onInserted(i9, i12);
                break;
            }
            if (i9 >= iSortAndDedup) {
                int i13 = i11 - i10;
                this.mSize -= i13;
                this.mCallback.onRemoved(i9, i13);
                break;
            }
            T t = this.mOldData[i10];
            T t3 = tArr[i9];
            int iCompare = this.mCallback.compare(t, t3);
            if (iCompare < 0) {
                replaceAllRemove();
            } else if (iCompare > 0) {
                replaceAllInsert(t3);
            } else if (this.mCallback.areItemsTheSame(t, t3)) {
                T[] tArr2 = this.mData;
                int i14 = this.mNewDataStart;
                tArr2[i14] = t3;
                this.mOldDataStart++;
                this.mNewDataStart = i14 + 1;
                if (!this.mCallback.areContentsTheSame(t, t3)) {
                    SortedList$Callback sortedList$Callback = this.mCallback;
                    sortedList$Callback.onChanged(this.mNewDataStart - 1, 1, sortedList$Callback.getChangePayload(t, t3));
                }
            } else {
                replaceAllRemove();
                replaceAllInsert(t3);
            }
        }
        this.mOldData = null;
        if (z8) {
            return;
        }
        endBatchedUpdates();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void replaceAllRemove() {
        this.mSize--;
        this.mOldDataStart++;
        this.mCallback.onRemoved(this.mNewDataStart, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int sortAndDedup(@NonNull T[] tArr) {
        if (tArr.length == 0) {
            return 0;
        }
        Arrays.sort(tArr, this.mCallback);
        int i9 = 0;
        int i10 = 1;
        for (int i11 = 1; i11 < tArr.length; i11++) {
            T t = tArr[i11];
            if (this.mCallback.compare(tArr[i9], t) == 0) {
                int iFindSameItem = findSameItem(t, tArr, i9, i10);
                if (iFindSameItem != -1) {
                    tArr[iFindSameItem] = t;
                } else {
                    if (i10 != i11) {
                        tArr[i10] = t;
                    }
                    i10++;
                }
            } else {
                if (i10 != i11) {
                    tArr[i10] = t;
                }
                i9 = i10;
                i10++;
            }
        }
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void throwIfInMutationOperation() {
        if (this.mOldData == null) {
            return;
        }
        i.l("Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addAll(@NonNull T[] tArr, boolean z8) {
        throwIfInMutationOperation();
        if (tArr.length == 0) {
            return;
        }
        if (z8) {
            addAllInternal(tArr);
        } else {
            addAllInternal(copyArray(tArr));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void beginBatchedUpdates() {
        throwIfInMutationOperation();
        SortedList$Callback sortedList$Callback = this.mCallback;
        if (sortedList$Callback instanceof SortedList$BatchedCallback) {
            return;
        }
        if (this.mBatchedCallback == null) {
            this.mBatchedCallback = new SortedList$BatchedCallback(sortedList$Callback);
        }
        this.mCallback = this.mBatchedCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        throwIfInMutationOperation();
        int i9 = this.mSize;
        if (i9 == 0) {
            return;
        }
        Arrays.fill(this.mData, 0, i9, (Object) null);
        this.mSize = 0;
        this.mCallback.onRemoved(0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void endBatchedUpdates() {
        throwIfInMutationOperation();
        SortedList$Callback sortedList$Callback = this.mCallback;
        if (sortedList$Callback instanceof SortedList$BatchedCallback) {
            ((SortedList$BatchedCallback) sortedList$Callback).dispatchLastEvent();
        }
        SortedList$Callback sortedList$Callback2 = this.mCallback;
        SortedList$BatchedCallback sortedList$BatchedCallback = this.mBatchedCallback;
        if (sortedList$Callback2 == sortedList$BatchedCallback) {
            this.mCallback = sortedList$BatchedCallback.mWrappedCallback;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T get(int i9) {
        int i10;
        if (i9 >= this.mSize || i9 < 0) {
            b.a(a.q(i9, "Asked to get item at ", " but size is "), this.mSize);
            return null;
        }
        T[] tArr = this.mOldData;
        return (tArr == null || i9 < (i10 = this.mNewDataStart)) ? this.mData[i9] : tArr[(i9 - i10) + this.mOldDataStart];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int indexOf(T t) {
        T[] tArr = this.mOldData;
        T[] tArr2 = this.mData;
        if (tArr == null) {
            return findIndexOf(t, tArr2, 0, this.mSize, 4);
        }
        int iFindIndexOf = findIndexOf(t, tArr2, 0, this.mNewDataStart, 4);
        if (iFindIndexOf != -1) {
            return iFindIndexOf;
        }
        int iFindIndexOf2 = findIndexOf(t, this.mOldData, this.mOldDataStart, this.mOldDataSize, 4);
        if (iFindIndexOf2 != -1) {
            return (iFindIndexOf2 - this.mOldDataStart) + this.mNewDataStart;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void recalculatePositionOfItemAt(int i9) {
        throwIfInMutationOperation();
        T t = get(i9);
        removeItemAtIndex(i9, false);
        int iAdd = add(t, false);
        if (i9 != iAdd) {
            this.mCallback.onMoved(i9, iAdd);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T removeItemAt(int i9) {
        throwIfInMutationOperation();
        T t = get(i9);
        removeItemAtIndex(i9, true);
        return t;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: androidx.recyclerview.widget.SortedList<T> */
    /* JADX WARN: Multi-variable type inference failed */
    public void replaceAll(@NonNull Collection<T> collection) {
        replaceAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.mTClass, collection.size())), true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size() {
        return this.mSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateItemAt(int i9, T t) {
        throwIfInMutationOperation();
        T t3 = get(i9);
        boolean z8 = t3 == t || !this.mCallback.areContentsTheSame(t3, t);
        if (t3 != t && this.mCallback.compare(t3, t) == 0) {
            this.mData[i9] = t;
            if (z8) {
                SortedList$Callback sortedList$Callback = this.mCallback;
                sortedList$Callback.onChanged(i9, 1, sortedList$Callback.getChangePayload(t3, t));
                return;
            }
            return;
        }
        if (z8) {
            SortedList$Callback sortedList$Callback2 = this.mCallback;
            sortedList$Callback2.onChanged(i9, 1, sortedList$Callback2.getChangePayload(t3, t));
        }
        removeItemAtIndex(i9, false);
        int iAdd = add(t, false);
        if (i9 != iAdd) {
            this.mCallback.onMoved(i9, iAdd);
        }
    }

    public SortedList(@NonNull Class<T> cls, @NonNull SortedList$Callback<T> sortedList$Callback) {
        this(cls, sortedList$Callback, 10);
    }

    public void addAll(@NonNull T... tArr) {
        addAll(tArr, false);
    }

    public void replaceAll(@NonNull T... tArr) {
        replaceAll(tArr, false);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: androidx.recyclerview.widget.SortedList<T> */
    /* JADX WARN: Multi-variable type inference failed */
    public void addAll(@NonNull Collection<T> collection) {
        addAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.mTClass, collection.size())), true);
    }

    public boolean remove(T t) {
        throwIfInMutationOperation();
        return remove(t, true);
    }

    public void replaceAll(@NonNull T[] tArr, boolean z8) {
        throwIfInMutationOperation();
        if (z8) {
            replaceAllInternal(tArr);
        } else {
            replaceAllInternal(copyArray(tArr));
        }
    }

    public int add(T t) {
        throwIfInMutationOperation();
        return add(t, true);
    }
}

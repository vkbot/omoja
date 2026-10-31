package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AsyncListUtil<T> {
    static final boolean DEBUG = false;
    static final String TAG = "AsyncListUtil";
    boolean mAllowScrollHints;
    private final ThreadUtil$BackgroundCallback<T> mBackgroundCallback;
    final ThreadUtil$BackgroundCallback<T> mBackgroundProxy;
    final AsyncListUtil$DataCallback<T> mDataCallback;
    private final ThreadUtil$MainThreadCallback<T> mMainThreadCallback;
    final ThreadUtil$MainThreadCallback<T> mMainThreadProxy;
    final Class<T> mTClass;
    final TileList<T> mTileList;
    final int mTileSize;
    final AsyncListUtil$ViewCallback mViewCallback;
    final int[] mTmpRange = new int[2];
    final int[] mPrevRange = new int[2];
    final int[] mTmpRangeExtended = new int[2];
    private int mScrollHint = 0;
    int mItemCount = 0;
    int mDisplayedGeneration = 0;
    int mRequestedGeneration = 0;
    final SparseIntArray mMissingPositions = new SparseIntArray();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AsyncListUtil(@NonNull Class<T> cls, int i9, @NonNull AsyncListUtil$DataCallback<T> asyncListUtil$DataCallback, @NonNull AsyncListUtil$ViewCallback asyncListUtil$ViewCallback) {
        AsyncListUtil$1 asyncListUtil$1 = new AsyncListUtil$1(this);
        this.mMainThreadCallback = asyncListUtil$1;
        AsyncListUtil$2 asyncListUtil$2 = new AsyncListUtil$2(this);
        this.mBackgroundCallback = asyncListUtil$2;
        this.mTClass = cls;
        this.mTileSize = i9;
        this.mDataCallback = asyncListUtil$DataCallback;
        this.mViewCallback = asyncListUtil$ViewCallback;
        this.mTileList = new TileList<>(i9);
        MessageThreadUtil messageThreadUtil = new MessageThreadUtil();
        this.mMainThreadProxy = messageThreadUtil.getMainThreadProxy(asyncListUtil$1);
        this.mBackgroundProxy = messageThreadUtil.getBackgroundProxy(asyncListUtil$2);
        refresh();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isRefreshPending() {
        return this.mRequestedGeneration != this.mDisplayedGeneration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public T getItem(int i9) {
        if (i9 >= 0 && i9 < this.mItemCount) {
            T itemAt = this.mTileList.getItemAt(i9);
            if (itemAt == null && !isRefreshPending()) {
                this.mMissingPositions.put(i9, 0);
            }
            return itemAt;
        }
        throw new IndexOutOfBoundsException(i9 + " is not within 0 and " + this.mItemCount);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getItemCount() {
        return this.mItemCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void log(String str, Object... objArr) {
        Log.d(TAG, "[MAIN] ".concat(String.format(str, objArr)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onRangeChanged() {
        if (isRefreshPending()) {
            return;
        }
        updateRange();
        this.mAllowScrollHints = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void refresh() {
        this.mMissingPositions.clear();
        ThreadUtil$BackgroundCallback<T> threadUtil$BackgroundCallback = this.mBackgroundProxy;
        int i9 = this.mRequestedGeneration + 1;
        this.mRequestedGeneration = i9;
        threadUtil$BackgroundCallback.refresh(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateRange() {
        int i9;
        this.mViewCallback.getItemRangeInto(this.mTmpRange);
        int[] iArr = this.mTmpRange;
        int i10 = iArr[0];
        int i11 = iArr[1];
        if (i10 > i11 || i10 < 0 || i11 >= this.mItemCount) {
            return;
        }
        if (this.mAllowScrollHints) {
            int[] iArr2 = this.mPrevRange;
            if (i10 > iArr2[1] || (i9 = iArr2[0]) > i11) {
                this.mScrollHint = 0;
            } else if (i10 < i9) {
                this.mScrollHint = 1;
            } else if (i10 > i9) {
                this.mScrollHint = 2;
            }
        } else {
            this.mScrollHint = 0;
        }
        int[] iArr3 = this.mPrevRange;
        iArr3[0] = i10;
        iArr3[1] = i11;
        this.mViewCallback.extendRangeInto(iArr, this.mTmpRangeExtended, this.mScrollHint);
        int[] iArr4 = this.mTmpRangeExtended;
        iArr4[0] = Math.min(this.mTmpRange[0], Math.max(iArr4[0], 0));
        int[] iArr5 = this.mTmpRangeExtended;
        iArr5[1] = Math.max(this.mTmpRange[1], Math.min(iArr5[1], this.mItemCount - 1));
        ThreadUtil$BackgroundCallback<T> threadUtil$BackgroundCallback = this.mBackgroundProxy;
        int[] iArr6 = this.mTmpRange;
        int i12 = iArr6[0];
        int i13 = iArr6[1];
        int[] iArr7 = this.mTmpRangeExtended;
        threadUtil$BackgroundCallback.updateRange(i12, i13, iArr7[0], iArr7[1], this.mScrollHint);
    }
}

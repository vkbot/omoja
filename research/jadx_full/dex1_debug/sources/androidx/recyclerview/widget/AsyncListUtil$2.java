package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseBooleanArray;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AsyncListUtil$2<T> implements ThreadUtil$BackgroundCallback<T> {
    private int mFirstRequiredTileStart;
    private int mGeneration;
    private int mItemCount;
    private int mLastRequiredTileStart;
    final SparseBooleanArray mLoadedTiles = new SparseBooleanArray();
    private TileList$Tile<T> mRecycledRoot;
    final /* synthetic */ AsyncListUtil this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AsyncListUtil$2(AsyncListUtil asyncListUtil) {
        this.this$0 = asyncListUtil;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TileList$Tile<T> acquireTile() {
        TileList$Tile<T> tileList$Tile = this.mRecycledRoot;
        if (tileList$Tile != null) {
            this.mRecycledRoot = tileList$Tile.mNext;
            return tileList$Tile;
        }
        AsyncListUtil asyncListUtil = this.this$0;
        return new TileList$Tile<>(asyncListUtil.mTClass, asyncListUtil.mTileSize);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addTile(TileList$Tile<T> tileList$Tile) {
        this.mLoadedTiles.put(tileList$Tile.mStartPosition, true);
        this.this$0.mMainThreadProxy.addTile(this.mGeneration, tileList$Tile);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void flushTileCache(int i9) {
        int maxCachedTiles = this.this$0.mDataCallback.getMaxCachedTiles();
        while (this.mLoadedTiles.size() >= maxCachedTiles) {
            int iKeyAt = this.mLoadedTiles.keyAt(0);
            SparseBooleanArray sparseBooleanArray = this.mLoadedTiles;
            int iKeyAt2 = sparseBooleanArray.keyAt(sparseBooleanArray.size() - 1);
            int i10 = this.mFirstRequiredTileStart - iKeyAt;
            int i11 = iKeyAt2 - this.mLastRequiredTileStart;
            if (i10 > 0 && (i10 >= i11 || i9 == 2)) {
                removeTile(iKeyAt);
            } else {
                if (i11 <= 0) {
                    return;
                }
                if (i10 >= i11 && i9 != 1) {
                    return;
                } else {
                    removeTile(iKeyAt2);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getTileStart(int i9) {
        return i9 - (i9 % this.this$0.mTileSize);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isTileLoaded(int i9) {
        return this.mLoadedTiles.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void log(String str, Object... objArr) {
        Log.d("AsyncListUtil", "[BKGR] ".concat(String.format(str, objArr)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void removeTile(int i9) {
        this.mLoadedTiles.delete(i9);
        this.this$0.mMainThreadProxy.removeTile(this.mGeneration, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void requestTiles(int i9, int i10, int i11, boolean z8) {
        int i12 = i9;
        while (i12 <= i10) {
            this.this$0.mBackgroundProxy.loadTile(z8 ? (i10 + i9) - i12 : i12, i11);
            i12 += this.this$0.mTileSize;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$BackgroundCallback
    public void loadTile(int i9, int i10) {
        if (isTileLoaded(i9)) {
            return;
        }
        TileList$Tile<T> tileList$TileAcquireTile = acquireTile();
        tileList$TileAcquireTile.mStartPosition = i9;
        int iMin = Math.min(this.this$0.mTileSize, this.mItemCount - i9);
        tileList$TileAcquireTile.mItemCount = iMin;
        this.this$0.mDataCallback.fillData(tileList$TileAcquireTile.mItems, tileList$TileAcquireTile.mStartPosition, iMin);
        flushTileCache(i10);
        addTile(tileList$TileAcquireTile);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$BackgroundCallback
    public void recycleTile(TileList$Tile<T> tileList$Tile) {
        this.this$0.mDataCallback.recycleData(tileList$Tile.mItems, tileList$Tile.mItemCount);
        tileList$Tile.mNext = this.mRecycledRoot;
        this.mRecycledRoot = tileList$Tile;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$BackgroundCallback
    public void refresh(int i9) {
        this.mGeneration = i9;
        this.mLoadedTiles.clear();
        int iRefreshData = this.this$0.mDataCallback.refreshData();
        this.mItemCount = iRefreshData;
        this.this$0.mMainThreadProxy.updateItemCount(this.mGeneration, iRefreshData);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$BackgroundCallback
    public void updateRange(int i9, int i10, int i11, int i12, int i13) {
        if (i9 > i10) {
            return;
        }
        int tileStart = getTileStart(i9);
        int tileStart2 = getTileStart(i10);
        this.mFirstRequiredTileStart = getTileStart(i11);
        int tileStart3 = getTileStart(i12);
        this.mLastRequiredTileStart = tileStart3;
        if (i13 == 1) {
            requestTiles(this.mFirstRequiredTileStart, tileStart2, i13, true);
            requestTiles(tileStart2 + this.this$0.mTileSize, this.mLastRequiredTileStart, i13, false);
        } else {
            requestTiles(tileStart, tileStart3, i13, false);
            requestTiles(this.mFirstRequiredTileStart, tileStart - this.this$0.mTileSize, i13, true);
        }
    }
}

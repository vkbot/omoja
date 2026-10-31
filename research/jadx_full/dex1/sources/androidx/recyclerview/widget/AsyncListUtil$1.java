package androidx.recyclerview.widget;

import android.util.Log;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AsyncListUtil$1<T> implements ThreadUtil$MainThreadCallback<T> {
    final /* synthetic */ AsyncListUtil this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AsyncListUtil$1(AsyncListUtil asyncListUtil) {
        this.this$0 = asyncListUtil;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isRequestedGeneration(int i9) {
        return i9 == this.this$0.mRequestedGeneration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recycleAllTiles() {
        int i9 = 0;
        while (true) {
            int size = this.this$0.mTileList.size();
            AsyncListUtil asyncListUtil = this.this$0;
            if (i9 >= size) {
                asyncListUtil.mTileList.clear();
                return;
            } else {
                asyncListUtil.mBackgroundProxy.recycleTile(asyncListUtil.mTileList.getAtIndex(i9));
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$MainThreadCallback
    public void addTile(int i9, TileList$Tile<T> tileList$Tile) {
        boolean zIsRequestedGeneration = isRequestedGeneration(i9);
        AsyncListUtil asyncListUtil = this.this$0;
        if (!zIsRequestedGeneration) {
            asyncListUtil.mBackgroundProxy.recycleTile(tileList$Tile);
            return;
        }
        TileList$Tile<T> tileList$TileAddOrReplace = asyncListUtil.mTileList.addOrReplace(tileList$Tile);
        if (tileList$TileAddOrReplace != null) {
            Log.e("AsyncListUtil", "duplicate tile @" + tileList$TileAddOrReplace.mStartPosition);
            this.this$0.mBackgroundProxy.recycleTile(tileList$TileAddOrReplace);
        }
        int i10 = tileList$Tile.mStartPosition + tileList$Tile.mItemCount;
        int i11 = 0;
        while (i11 < this.this$0.mMissingPositions.size()) {
            int iKeyAt = this.this$0.mMissingPositions.keyAt(i11);
            if (tileList$Tile.mStartPosition > iKeyAt || iKeyAt >= i10) {
                i11++;
            } else {
                this.this$0.mMissingPositions.removeAt(i11);
                this.this$0.mViewCallback.onItemLoaded(iKeyAt);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$MainThreadCallback
    public void removeTile(int i9, int i10) {
        if (isRequestedGeneration(i9)) {
            TileList$Tile<T> tileList$TileRemoveAtPos = this.this$0.mTileList.removeAtPos(i10);
            if (tileList$TileRemoveAtPos != null) {
                this.this$0.mBackgroundProxy.recycleTile(tileList$TileRemoveAtPos);
                return;
            }
            Log.e("AsyncListUtil", "tile not found @" + i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ThreadUtil$MainThreadCallback
    public void updateItemCount(int i9, int i10) {
        if (isRequestedGeneration(i9)) {
            AsyncListUtil asyncListUtil = this.this$0;
            asyncListUtil.mItemCount = i10;
            asyncListUtil.mViewCallback.onDataRefresh();
            AsyncListUtil asyncListUtil2 = this.this$0;
            asyncListUtil2.mDisplayedGeneration = asyncListUtil2.mRequestedGeneration;
            recycleAllTiles();
            AsyncListUtil asyncListUtil3 = this.this$0;
            asyncListUtil3.mAllowScrollHints = false;
            asyncListUtil3.updateRange();
        }
    }
}

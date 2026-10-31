package androidx.recyclerview.widget;

import android.util.SparseArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class TileList<T> {
    TileList$Tile<T> mLastAccessedTile;
    final int mTileSize;
    private final SparseArray<TileList$Tile<T>> mTiles = new SparseArray<>(10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TileList(int i9) {
        this.mTileSize = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TileList$Tile<T> addOrReplace(TileList$Tile<T> tileList$Tile) {
        int iIndexOfKey = this.mTiles.indexOfKey(tileList$Tile.mStartPosition);
        SparseArray<TileList$Tile<T>> sparseArray = this.mTiles;
        if (iIndexOfKey < 0) {
            sparseArray.put(tileList$Tile.mStartPosition, tileList$Tile);
            return null;
        }
        TileList$Tile<T> tileList$TileValueAt = sparseArray.valueAt(iIndexOfKey);
        this.mTiles.setValueAt(iIndexOfKey, tileList$Tile);
        if (this.mLastAccessedTile == tileList$TileValueAt) {
            this.mLastAccessedTile = tileList$Tile;
        }
        return tileList$TileValueAt;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        this.mTiles.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TileList$Tile<T> getAtIndex(int i9) {
        if (i9 < 0 || i9 >= this.mTiles.size()) {
            return null;
        }
        return this.mTiles.valueAt(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T getItemAt(int i9) {
        TileList$Tile<T> tileList$Tile = this.mLastAccessedTile;
        if (tileList$Tile == null || !tileList$Tile.containsPosition(i9)) {
            int iIndexOfKey = this.mTiles.indexOfKey(i9 - (i9 % this.mTileSize));
            if (iIndexOfKey < 0) {
                return null;
            }
            this.mLastAccessedTile = this.mTiles.valueAt(iIndexOfKey);
        }
        return this.mLastAccessedTile.getByPosition(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TileList$Tile<T> removeAtPos(int i9) {
        TileList$Tile<T> tileList$Tile = this.mTiles.get(i9);
        if (this.mLastAccessedTile == tileList$Tile) {
            this.mLastAccessedTile = null;
        }
        this.mTiles.delete(i9);
        return tileList$Tile;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size() {
        return this.mTiles.size();
    }
}

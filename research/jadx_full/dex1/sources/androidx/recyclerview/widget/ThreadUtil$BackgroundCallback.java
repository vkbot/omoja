package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface ThreadUtil$BackgroundCallback<T> {
    void loadTile(int i9, int i10);

    void recycleTile(TileList$Tile<T> tileList$Tile);

    void refresh(int i9);

    void updateRange(int i9, int i10, int i11, int i12, int i13);
}

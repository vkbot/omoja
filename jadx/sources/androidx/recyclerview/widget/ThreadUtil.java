package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
interface ThreadUtil<T> {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface BackgroundCallback<T> {
        void loadTile(int i10, int i11);

        void recycleTile(TileList.Tile<T> tile);

        void refresh(int i10);

        void updateRange(int i10, int i11, int i12, int i13, int i14);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface MainThreadCallback<T> {
        void addTile(int i10, TileList.Tile<T> tile);

        void removeTile(int i10, int i11);

        void updateItemCount(int i10, int i11);
    }

    BackgroundCallback<T> getBackgroundProxy(BackgroundCallback<T> backgroundCallback);

    MainThreadCallback<T> getMainThreadProxy(MainThreadCallback<T> mainThreadCallback);
}

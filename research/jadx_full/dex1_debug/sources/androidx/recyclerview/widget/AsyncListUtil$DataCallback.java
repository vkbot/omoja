package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class AsyncListUtil$DataCallback<T> {
    @WorkerThread
    public abstract void fillData(@NonNull T[] tArr, int i9, int i10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @WorkerThread
    public int getMaxCachedTiles() {
        return 10;
    }

    @WorkerThread
    public abstract int refreshData();

    @WorkerThread
    public void recycleData(@NonNull T[] tArr, int i9) {
    }
}

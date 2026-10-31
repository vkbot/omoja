package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TileList$Tile<T> {
    public int mItemCount;
    public final T[] mItems;
    TileList$Tile<T> mNext;
    public int mStartPosition;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TileList$Tile(@NonNull Class<T> cls, int i9) {
        this.mItems = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean containsPosition(int i9) {
        int i10 = this.mStartPosition;
        return i10 <= i9 && i9 < i10 + this.mItemCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T getByPosition(int i9) {
        return this.mItems[i9 - this.mStartPosition];
    }
}

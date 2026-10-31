package androidx.recyclerview.widget;

import androidx.annotation.Nullable;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class SortedList$Callback<T2> implements Comparator<T2>, ListUpdateCallback {
    public abstract boolean areContentsTheSame(T2 t3, T2 t9);

    public abstract boolean areItemsTheSame(T2 t3, T2 t9);

    @Override // java.util.Comparator
    public abstract int compare(T2 t3, T2 t9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Object getChangePayload(T2 t3, T2 t9) {
        return null;
    }

    public abstract void onChanged(int i9, int i10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onChanged(int i9, int i10, Object obj) {
        onChanged(i9, i10);
    }
}

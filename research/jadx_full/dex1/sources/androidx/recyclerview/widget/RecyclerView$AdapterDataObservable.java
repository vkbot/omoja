package androidx.recyclerview.widget;

import android.database.Observable;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$AdapterDataObservable extends Observable<RecyclerView$AdapterDataObserver> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasObservers() {
        return !((Observable) this).mObservers.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyChanged() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$AdapterDataObserver) ((Observable) this).mObservers.get(size)).onChanged();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyItemMoved(int i9, int i10) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i9, i10, 1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyItemRangeChanged(int i9, int i10, @Nullable Object obj) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i9, i10, obj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyItemRangeInserted(int i9, int i10) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i9, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyItemRangeRemoved(int i9, int i10) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i9, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyStateRestorationPolicyChanged() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$AdapterDataObserver) ((Observable) this).mObservers.get(size)).onStateRestorationPolicyChanged();
        }
    }

    public void notifyItemRangeChanged(int i9, int i10) {
        notifyItemRangeChanged(i9, i10, null);
    }
}

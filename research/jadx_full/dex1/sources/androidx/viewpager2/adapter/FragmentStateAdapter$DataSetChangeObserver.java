package androidx.viewpager2.adapter;

import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView$AdapterDataObserver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class FragmentStateAdapter$DataSetChangeObserver extends RecyclerView$AdapterDataObserver {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FragmentStateAdapter$DataSetChangeObserver() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public abstract void onChanged();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public final void onItemRangeChanged(int i9, int i10) {
        onChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public final void onItemRangeInserted(int i9, int i10) {
        onChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public final void onItemRangeMoved(int i9, int i10, int i11) {
        onChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public final void onItemRangeRemoved(int i9, int i10) {
        onChanged();
    }

    public /* synthetic */ FragmentStateAdapter$DataSetChangeObserver(FragmentStateAdapter$1 fragmentStateAdapter$1) {
        this();
    }

    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public final void onItemRangeChanged(int i9, int i10, @Nullable Object obj) {
        onChanged();
    }
}

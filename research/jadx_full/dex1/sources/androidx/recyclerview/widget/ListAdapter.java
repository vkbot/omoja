package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ListAdapter<T, VH extends RecyclerView$ViewHolder> extends RecyclerView$Adapter<VH> {
    final AsyncListDiffer<T> mDiffer;
    private final AsyncListDiffer$ListListener<T> mListener;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListAdapter(@NonNull DiffUtil$ItemCallback<T> diffUtil$ItemCallback) {
        ListAdapter$1 listAdapter$1 = new ListAdapter$1(this);
        this.mListener = listAdapter$1;
        AsyncListDiffer<T> asyncListDiffer = new AsyncListDiffer<>(new AdapterListUpdateCallback(this), new AsyncDifferConfig$Builder(diffUtil$ItemCallback).build());
        this.mDiffer = asyncListDiffer;
        asyncListDiffer.addListListener(listAdapter$1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<T> getCurrentList() {
        return this.mDiffer.getCurrentList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T getItem(int i9) {
        return this.mDiffer.getCurrentList().get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public int getItemCount() {
        return this.mDiffer.getCurrentList().size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void submitList(@Nullable List<T> list) {
        this.mDiffer.submitList(list);
    }

    public void submitList(@Nullable List<T> list, @Nullable Runnable runnable) {
        this.mDiffer.submitList(list, runnable);
    }

    public ListAdapter(@NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        ListAdapter$1 listAdapter$1 = new ListAdapter$1(this);
        this.mListener = listAdapter$1;
        AsyncListDiffer<T> asyncListDiffer = new AsyncListDiffer<>(new AdapterListUpdateCallback(this), asyncDifferConfig);
        this.mDiffer = asyncListDiffer;
        asyncListDiffer.addListListener(listAdapter$1);
    }

    public void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2) {
    }
}

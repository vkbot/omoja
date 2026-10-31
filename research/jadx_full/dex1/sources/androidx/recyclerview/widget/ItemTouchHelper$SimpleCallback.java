package androidx.recyclerview.widget;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ItemTouchHelper$SimpleCallback extends ItemTouchHelper$Callback {
    private int mDefaultDragDirs;
    private int mDefaultSwipeDirs;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ItemTouchHelper$SimpleCallback(int i9, int i10) {
        this.mDefaultSwipeDirs = i10;
        this.mDefaultDragDirs = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDragDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return this.mDefaultDragDirs;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ItemTouchHelper$Callback
    public int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return ItemTouchHelper$Callback.makeMovementFlags(getDragDirs(recyclerView, recyclerView$ViewHolder), getSwipeDirs(recyclerView, recyclerView$ViewHolder));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSwipeDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return this.mDefaultSwipeDirs;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDefaultDragDirs(int i9) {
        this.mDefaultDragDirs = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDefaultSwipeDirs(int i9) {
        this.mDefaultSwipeDirs = i9;
    }
}

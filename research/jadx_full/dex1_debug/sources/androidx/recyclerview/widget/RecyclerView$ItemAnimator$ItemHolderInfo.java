package androidx.recyclerview.widget;

import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$ItemAnimator$ItemHolderInfo {
    public int bottom;
    public int changeFlags;
    public int left;
    public int right;
    public int top;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RecyclerView$ItemAnimator$ItemHolderInfo setFrom(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        View view = recyclerView$ViewHolder.itemView;
        this.left = view.getLeft();
        this.top = view.getTop();
        this.right = view.getRight();
        this.bottom = view.getBottom();
        return this;
    }

    @NonNull
    public RecyclerView$ItemAnimator$ItemHolderInfo setFrom(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return setFrom(recyclerView$ViewHolder, 0);
    }
}

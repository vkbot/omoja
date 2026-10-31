package androidx.recyclerview.widget;

import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ItemTouchHelper$1 implements Runnable {
    final /* synthetic */ ItemTouchHelper this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ItemTouchHelper$1(ItemTouchHelper itemTouchHelper) {
        this.this$0 = itemTouchHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        ItemTouchHelper itemTouchHelper = this.this$0;
        if (itemTouchHelper.mSelected == null || !itemTouchHelper.scrollIfNecessary()) {
            return;
        }
        ItemTouchHelper itemTouchHelper2 = this.this$0;
        RecyclerView$ViewHolder recyclerView$ViewHolder = itemTouchHelper2.mSelected;
        if (recyclerView$ViewHolder != null) {
            itemTouchHelper2.moveIfNecessary(recyclerView$ViewHolder);
        }
        ItemTouchHelper itemTouchHelper3 = this.this$0;
        itemTouchHelper3.mRecyclerView.removeCallbacks(itemTouchHelper3.mScrollRunnable);
        ViewCompat.postOnAnimation(this.this$0.mRecyclerView, this);
    }
}

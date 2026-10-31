package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ItemTouchHelper$5 implements RecyclerView$ChildDrawingOrderCallback {
    final /* synthetic */ ItemTouchHelper this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ItemTouchHelper$5(ItemTouchHelper itemTouchHelper) {
        this.this$0 = itemTouchHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ChildDrawingOrderCallback
    public int onGetChildDrawingOrder(int i9, int i10) {
        ItemTouchHelper itemTouchHelper = this.this$0;
        View view = itemTouchHelper.mOverdrawChild;
        if (view != null) {
            int iIndexOfChild = itemTouchHelper.mOverdrawChildPosition;
            if (iIndexOfChild == -1) {
                iIndexOfChild = itemTouchHelper.mRecyclerView.indexOfChild(view);
                this.this$0.mOverdrawChildPosition = iIndexOfChild;
            }
            if (i10 == i9 - 1) {
                return iIndexOfChild;
            }
            if (i10 >= iIndexOfChild) {
                return i10 + 1;
            }
        }
        return i10;
    }
}

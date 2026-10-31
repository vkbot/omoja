package androidx.recyclerview.widget;

import android.animation.Animator;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ItemTouchHelper$3 extends ItemTouchHelper$RecoverAnimation {
    final /* synthetic */ ItemTouchHelper this$0;
    final /* synthetic */ RecyclerView$ViewHolder val$prevSelected;
    final /* synthetic */ int val$swipeDir;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ItemTouchHelper$3(ItemTouchHelper itemTouchHelper, RecyclerView$ViewHolder recyclerView$ViewHolder, int i9, int i10, float f8, float f9, float f10, float f11, int i11, RecyclerView$ViewHolder recyclerView$ViewHolder2) {
        super(recyclerView$ViewHolder, i9, i10, f8, f9, f10, f11);
        this.this$0 = itemTouchHelper;
        this.val$swipeDir = i11;
        this.val$prevSelected = recyclerView$ViewHolder2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ItemTouchHelper$RecoverAnimation, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        if (this.mOverridden) {
            return;
        }
        int i9 = this.val$swipeDir;
        ItemTouchHelper itemTouchHelper = this.this$0;
        if (i9 <= 0) {
            itemTouchHelper.mCallback.clearView(itemTouchHelper.mRecyclerView, this.val$prevSelected);
        } else {
            itemTouchHelper.mPendingCleanup.add(this.val$prevSelected.itemView);
            this.mIsPendingCleanup = true;
            int i10 = this.val$swipeDir;
            if (i10 > 0) {
                this.this$0.postDispatchSwipe(this, i10);
            }
        }
        ItemTouchHelper itemTouchHelper2 = this.this$0;
        View view = itemTouchHelper2.mOverdrawChild;
        View view2 = this.val$prevSelected.itemView;
        if (view == view2) {
            itemTouchHelper2.removeChildDrawingOrderCallbackIfNecessary(view2);
        }
    }
}

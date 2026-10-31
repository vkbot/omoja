package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ItemTouchHelper$4 implements Runnable {
    final /* synthetic */ ItemTouchHelper this$0;
    final /* synthetic */ ItemTouchHelper$RecoverAnimation val$anim;
    final /* synthetic */ int val$swipeDir;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public ItemTouchHelper$4(ItemTouchHelper itemTouchHelper, ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation, int i9) {
        this.this$0 = itemTouchHelper;
        this.val$anim = itemTouchHelper$RecoverAnimation;
        this.val$swipeDir = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        RecyclerView recyclerView = this.this$0.mRecyclerView;
        if (recyclerView == null || !recyclerView.isAttachedToWindow()) {
            return;
        }
        ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = this.val$anim;
        if (itemTouchHelper$RecoverAnimation.mOverridden || itemTouchHelper$RecoverAnimation.mViewHolder.getAbsoluteAdapterPosition() == -1) {
            return;
        }
        RecyclerView$ItemAnimator itemAnimator = this.this$0.mRecyclerView.getItemAnimator();
        if ((itemAnimator == null || !itemAnimator.isRunning(null)) && !this.this$0.hasRunningRecoverAnim()) {
            this.this$0.mCallback.onSwiped(this.val$anim.mViewHolder, this.val$swipeDir);
        } else {
            this.this$0.mRecyclerView.post(this);
        }
    }
}

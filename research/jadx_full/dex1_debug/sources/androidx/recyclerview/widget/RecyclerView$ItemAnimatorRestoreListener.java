package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$ItemAnimatorRestoreListener implements RecyclerView$ItemAnimator$ItemAnimatorListener {
    final /* synthetic */ RecyclerView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$ItemAnimatorRestoreListener(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemAnimator$ItemAnimatorListener
    public void onAnimationFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        recyclerView$ViewHolder.setIsRecyclable(true);
        if (recyclerView$ViewHolder.mShadowedHolder != null && recyclerView$ViewHolder.mShadowingHolder == null) {
            recyclerView$ViewHolder.mShadowedHolder = null;
        }
        recyclerView$ViewHolder.mShadowingHolder = null;
        if (recyclerView$ViewHolder.shouldBeKeptAsChild() || this.this$0.removeAnimatingView(recyclerView$ViewHolder.itemView) || !recyclerView$ViewHolder.isTmpDetached()) {
            return;
        }
        this.this$0.removeDetachedView(recyclerView$ViewHolder.itemView, false);
    }
}

package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SnapHelper$1 extends RecyclerView$OnScrollListener {
    boolean mScrolled = false;
    final /* synthetic */ SnapHelper this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SnapHelper$1(SnapHelper snapHelper) {
        this.this$0 = snapHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i9) {
        super.onScrollStateChanged(recyclerView, i9);
        if (i9 == 0 && this.mScrolled) {
            this.mScrolled = false;
            this.this$0.snapToTargetExistingView();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i9, int i10) {
        if (i9 == 0 && i10 == 0) {
            return;
        }
        this.mScrolled = true;
    }
}

package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FastScroller$2 extends RecyclerView$OnScrollListener {
    final /* synthetic */ FastScroller this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FastScroller$2(FastScroller fastScroller) {
        this.this$0 = fastScroller;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i9, int i10) {
        this.this$0.updateScrollPosition(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
    }
}

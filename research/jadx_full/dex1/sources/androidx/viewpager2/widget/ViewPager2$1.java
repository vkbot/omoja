package androidx.viewpager2.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager2$1 extends ViewPager2$DataSetChangeObserver {
    final /* synthetic */ ViewPager2 this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPager2$1(ViewPager2 viewPager2) {
        super(null);
        this.this$0 = viewPager2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onChanged() {
        ViewPager2 viewPager2 = this.this$0;
        viewPager2.mCurrentItemDirty = true;
        viewPager2.mScrollEventAdapter.notifyDataSetChangeHappened();
    }
}

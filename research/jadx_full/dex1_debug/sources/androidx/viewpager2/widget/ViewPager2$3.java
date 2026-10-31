package androidx.viewpager2.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager2$3 extends ViewPager2$OnPageChangeCallback {
    final /* synthetic */ ViewPager2 this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager2$3(ViewPager2 viewPager2) {
        this.this$0 = viewPager2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback
    public void onPageSelected(int i9) {
        this.this$0.clearFocus();
        if (this.this$0.hasFocus()) {
            this.this$0.mRecyclerView.requestFocus(2);
        }
    }
}

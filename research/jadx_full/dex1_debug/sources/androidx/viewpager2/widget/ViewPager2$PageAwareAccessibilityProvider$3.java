package androidx.viewpager2.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager2$PageAwareAccessibilityProvider$3 extends ViewPager2$DataSetChangeObserver {
    final /* synthetic */ ViewPager2$PageAwareAccessibilityProvider this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPager2$PageAwareAccessibilityProvider$3(ViewPager2$PageAwareAccessibilityProvider viewPager2$PageAwareAccessibilityProvider) {
        super(null);
        this.this$1 = viewPager2$PageAwareAccessibilityProvider;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onChanged() {
        this.this$1.updatePageAccessibilityActions();
    }
}

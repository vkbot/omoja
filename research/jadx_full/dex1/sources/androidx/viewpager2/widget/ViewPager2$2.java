package androidx.viewpager2.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager2$2 extends ViewPager2$OnPageChangeCallback {
    final /* synthetic */ ViewPager2 this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager2$2(ViewPager2 viewPager2) {
        this.this$0 = viewPager2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback
    public void onPageScrollStateChanged(int i9) {
        if (i9 == 0) {
            this.this$0.updateCurrentItem();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback
    public void onPageSelected(int i9) {
        ViewPager2 viewPager2 = this.this$0;
        if (viewPager2.mCurrentItem != i9) {
            viewPager2.mCurrentItem = i9;
            viewPager2.mAccessibilityProvider.onSetNewCurrentItem();
        }
    }
}

package androidx.viewpager2.adapter;

import androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentStateAdapter$FragmentMaxLifecycleEnforcer$1 extends ViewPager2$OnPageChangeCallback {
    final /* synthetic */ FragmentStateAdapter$FragmentMaxLifecycleEnforcer this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentStateAdapter$FragmentMaxLifecycleEnforcer$1(FragmentStateAdapter$FragmentMaxLifecycleEnforcer fragmentStateAdapter$FragmentMaxLifecycleEnforcer) {
        this.this$1 = fragmentStateAdapter$FragmentMaxLifecycleEnforcer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback
    public void onPageScrollStateChanged(int i9) {
        this.this$1.updateFragmentMaxLifecycle(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback
    public void onPageSelected(int i9) {
        this.this$1.updateFragmentMaxLifecycle(false);
    }
}

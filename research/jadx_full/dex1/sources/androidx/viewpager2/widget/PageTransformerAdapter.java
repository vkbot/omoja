package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class PageTransformerAdapter extends ViewPager2$OnPageChangeCallback {
    private final LinearLayoutManager mLayoutManager;
    private ViewPager2$PageTransformer mPageTransformer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PageTransformerAdapter(LinearLayoutManager linearLayoutManager) {
        this.mLayoutManager = linearLayoutManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager2$PageTransformer getPageTransformer() {
        return this.mPageTransformer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback
    public void onPageScrolled(int i9, float f8, int i10) {
        if (this.mPageTransformer == null) {
            return;
        }
        float f9 = -f8;
        for (int i11 = 0; i11 < this.mLayoutManager.getChildCount(); i11++) {
            View childAt = this.mLayoutManager.getChildAt(i11);
            if (childAt == null) {
                Locale locale = Locale.US;
                throw new IllegalStateException("LayoutManager returned a null child at pos " + i11 + "/" + this.mLayoutManager.getChildCount() + " while transforming pages");
            }
            this.mPageTransformer.transformPage(childAt, (this.mLayoutManager.getPosition(childAt) - i9) + f9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPageTransformer(@Nullable ViewPager2$PageTransformer viewPager2$PageTransformer) {
        this.mPageTransformer = viewPager2$PageTransformer;
    }

    @Override // androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback
    public void onPageScrollStateChanged(int i9) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback
    public void onPageSelected(int i9) {
    }
}

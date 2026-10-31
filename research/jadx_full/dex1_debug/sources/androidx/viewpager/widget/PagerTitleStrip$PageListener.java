package androidx.viewpager.widget;

import android.database.DataSetObserver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PagerTitleStrip$PageListener extends DataSetObserver implements ViewPager$OnPageChangeListener, ViewPager$OnAdapterChangeListener {
    private int mScrollState;
    final /* synthetic */ PagerTitleStrip this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PagerTitleStrip$PageListener(PagerTitleStrip pagerTitleStrip) {
        this.this$0 = pagerTitleStrip;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager.widget.ViewPager$OnAdapterChangeListener
    public void onAdapterChanged(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        this.this$0.updateAdapter(pagerAdapter, pagerAdapter2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.database.DataSetObserver
    public void onChanged() {
        PagerTitleStrip pagerTitleStrip = this.this$0;
        pagerTitleStrip.updateText(pagerTitleStrip.mPager.getCurrentItem(), this.this$0.mPager.getAdapter());
        PagerTitleStrip pagerTitleStrip2 = this.this$0;
        float f8 = pagerTitleStrip2.mLastKnownPositionOffset;
        if (f8 < 0.0f) {
            f8 = 0.0f;
        }
        pagerTitleStrip2.updateTextPositions(pagerTitleStrip2.mPager.getCurrentItem(), f8, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager.widget.ViewPager$OnPageChangeListener
    public void onPageScrollStateChanged(int i9) {
        this.mScrollState = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager.widget.ViewPager$OnPageChangeListener
    public void onPageScrolled(int i9, float f8, int i10) {
        if (f8 > 0.5f) {
            i9++;
        }
        this.this$0.updateTextPositions(i9, f8, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager.widget.ViewPager$OnPageChangeListener
    public void onPageSelected(int i9) {
        if (this.mScrollState == 0) {
            PagerTitleStrip pagerTitleStrip = this.this$0;
            pagerTitleStrip.updateText(pagerTitleStrip.mPager.getCurrentItem(), this.this$0.mPager.getAdapter());
            PagerTitleStrip pagerTitleStrip2 = this.this$0;
            float f8 = pagerTitleStrip2.mLastKnownPositionOffset;
            if (f8 < 0.0f) {
                f8 = 0.0f;
            }
            pagerTitleStrip2.updateTextPositions(pagerTitleStrip2.mPager.getCurrentItem(), f8, true);
        }
    }
}

package androidx.viewpager.widget;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PagerTabStrip$1 implements View$OnClickListener {
    final /* synthetic */ PagerTabStrip this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PagerTabStrip$1(PagerTabStrip pagerTabStrip) {
        this.this$0 = pagerTabStrip;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        ViewPager viewPager = this.this$0.mPager;
        viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
    }
}

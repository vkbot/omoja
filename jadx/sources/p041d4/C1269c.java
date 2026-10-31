package p041d4;

import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: renamed from: d4.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1269c implements ViewPager.OnAdapterChangeListener {

    /* JADX INFO: renamed from: a */
    public boolean f3042a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ TabLayout f3043b;

    public C1269c(TabLayout tabLayout) {
        this.f3043b = tabLayout;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
    public final void onAdapterChanged(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        TabLayout tabLayout = this.f3043b;
        if (tabLayout.f2450Q == viewPager) {
            tabLayout.m1842m(pagerAdapter2, this.f3042a);
        }
    }
}

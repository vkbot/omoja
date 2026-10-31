package p041d4;

import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: d4.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1276j implements ViewPager.OnPageChangeListener {

    /* JADX INFO: renamed from: a */
    public final WeakReference f3060a;

    /* JADX INFO: renamed from: b */
    public int f3061b;

    /* JADX INFO: renamed from: c */
    public int f3062c;

    public C1276j(TabLayout tabLayout) {
        this.f3060a = new WeakReference(tabLayout);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrollStateChanged(int i10) {
        this.f3061b = this.f3062c;
        this.f3062c = i10;
        TabLayout tabLayout = (TabLayout) this.f3060a.get();
        if (tabLayout != null) {
            tabLayout.f2456W = this.f3062c;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrolled(int i10, float f8, int i11) {
        TabLayout tabLayout = (TabLayout) this.f3060a.get();
        if (tabLayout != null) {
            int i12 = this.f3062c;
            boolean z9 = true;
            if (i12 == 2 && this.f3061b != 1) {
                z9 = false;
            }
            if (i12 == 2 && this.f3061b == 0) {
                z9 = false;
            }
            tabLayout.m1843n(i10, f8, z9, z9, false);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageSelected(int i10) {
        TabLayout tabLayout = (TabLayout) this.f3060a.get();
        if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
            return;
        }
        int i11 = this.f3062c;
        tabLayout.m1841l((i10 < 0 || i10 >= tabLayout.getTabCount()) ? null : (C1275i) tabLayout.f2459c.get(i10), i11 == 0 || (i11 == 2 && this.f3061b == 0));
    }
}

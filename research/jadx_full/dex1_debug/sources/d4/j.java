package d4;

import androidx.viewpager.widget.ViewPager$OnPageChangeListener;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j implements ViewPager$OnPageChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f1748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1749b;
    public int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(TabLayout tabLayout) {
        this.f1748a = new WeakReference(tabLayout);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager.widget.ViewPager$OnPageChangeListener
    public final void onPageScrollStateChanged(int i9) {
        this.f1749b = this.c;
        this.c = i9;
        TabLayout tabLayout = (TabLayout) this.f1748a.get();
        if (tabLayout != null) {
            tabLayout.W = this.c;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager.widget.ViewPager$OnPageChangeListener
    public final void onPageScrolled(int i9, float f8, int i10) {
        TabLayout tabLayout = (TabLayout) this.f1748a.get();
        if (tabLayout != null) {
            int i11 = this.c;
            boolean z8 = true;
            if (i11 == 2 && this.f1749b != 1) {
                z8 = false;
            }
            if (i11 == 2 && this.f1749b == 0) {
                z8 = false;
            }
            tabLayout.n(i9, f8, z8, z8, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager.widget.ViewPager$OnPageChangeListener
    public final void onPageSelected(int i9) {
        TabLayout tabLayout = (TabLayout) this.f1748a.get();
        if (tabLayout == null || tabLayout.getSelectedTabPosition() == i9 || i9 >= tabLayout.getTabCount()) {
            return;
        }
        int i10 = this.c;
        tabLayout.l((i9 < 0 || i9 >= tabLayout.getTabCount()) ? null : (i) tabLayout.c.get(i9), i10 == 0 || (i10 == 2 && this.f1749b == 0));
    }
}

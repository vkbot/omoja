package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class MarginPageTransformer implements ViewPager2$PageTransformer {
    private final int mMarginPx;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MarginPageTransformer(@Px int i9) {
        Preconditions.checkArgumentNonnegative(i9, "Margin must be non-negative");
        this.mMarginPx = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewPager2 requireViewPager(@NonNull View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            return (ViewPager2) parent2;
        }
        i.l("Expected the page view to be managed by a ViewPager2 instance.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$PageTransformer
    public void transformPage(@NonNull View view, float f8) {
        ViewPager2 viewPager2RequireViewPager = requireViewPager(view);
        float f9 = this.mMarginPx * f8;
        if (viewPager2RequireViewPager.getOrientation() != 0) {
            view.setTranslationY(f9);
            return;
        }
        if (viewPager2RequireViewPager.isRtl()) {
            f9 = -f9;
        }
        view.setTranslationX(f9);
    }
}

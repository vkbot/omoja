package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class CompositePageTransformer implements ViewPager2$PageTransformer {
    private final List<ViewPager2$PageTransformer> mTransformers = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addTransformer(@NonNull ViewPager2$PageTransformer viewPager2$PageTransformer) {
        this.mTransformers.add(viewPager2$PageTransformer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeTransformer(@NonNull ViewPager2$PageTransformer viewPager2$PageTransformer) {
        this.mTransformers.remove(viewPager2$PageTransformer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$PageTransformer
    public void transformPage(@NonNull View view, float f8) {
        Iterator<ViewPager2$PageTransformer> it = this.mTransformers.iterator();
        while (it.hasNext()) {
            it.next().transformPage(view, f8);
        }
    }
}

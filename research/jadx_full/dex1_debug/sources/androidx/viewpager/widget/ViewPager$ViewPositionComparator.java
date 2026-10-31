package androidx.viewpager.widget;

import android.view.View;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager$ViewPositionComparator implements Comparator<View> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(View view, View view2) {
        ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) view.getLayoutParams();
        ViewPager$LayoutParams viewPager$LayoutParams2 = (ViewPager$LayoutParams) view2.getLayoutParams();
        boolean z8 = viewPager$LayoutParams.isDecor;
        if (z8 != viewPager$LayoutParams2.isDecor) {
            return z8 ? 1 : -1;
        }
        return viewPager$LayoutParams.position - viewPager$LayoutParams2.position;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(View view, View view2) {
        return compare2(view, view2);
    }
}

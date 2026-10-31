package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView$LayoutParams;
import androidx.recyclerview.widget.RecyclerView$OnChildAttachStateChangeListener;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager2$4 implements RecyclerView$OnChildAttachStateChangeListener {
    final /* synthetic */ ViewPager2 this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager2$4(ViewPager2 viewPager2) {
        this.this$0 = viewPager2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$OnChildAttachStateChangeListener
    public void onChildViewAttachedToWindow(@NonNull View view) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        if (((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).width == -1 && ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).height == -1) {
            return;
        }
        i.l("Pages must fill the whole ViewPager2 (use match_parent)");
    }

    @Override // androidx.recyclerview.widget.RecyclerView$OnChildAttachStateChangeListener
    public void onChildViewDetachedFromWindow(@NonNull View view) {
    }
}

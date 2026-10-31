package androidx.appcompat.widget;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ScrollingTabContainerView$TabClickListener implements View$OnClickListener {
    final /* synthetic */ ScrollingTabContainerView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ScrollingTabContainerView$TabClickListener(ScrollingTabContainerView scrollingTabContainerView) {
        this.this$0 = scrollingTabContainerView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        ((ScrollingTabContainerView$TabView) view).getTab().select();
        int childCount = this.this$0.mTabLayout.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = this.this$0.mTabLayout.getChildAt(i9);
            childAt.setSelected(childAt == view);
        }
    }
}

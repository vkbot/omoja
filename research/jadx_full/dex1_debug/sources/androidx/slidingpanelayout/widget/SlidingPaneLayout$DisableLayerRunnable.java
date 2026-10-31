package androidx.slidingpanelayout.widget;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SlidingPaneLayout$DisableLayerRunnable implements Runnable {
    final View mChildView;
    final /* synthetic */ SlidingPaneLayout this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SlidingPaneLayout$DisableLayerRunnable(SlidingPaneLayout slidingPaneLayout, View view) {
        this.this$0 = slidingPaneLayout;
        this.mChildView = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        if (this.mChildView.getParent() == this.this$0) {
            this.mChildView.setLayerType(0, null);
            this.this$0.invalidateChildRegion(this.mChildView);
        }
        this.this$0.mPostedRunnables.remove(this);
    }
}

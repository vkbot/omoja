package androidx.coordinatorlayout.widget;

import android.view.ViewTreeObserver$OnPreDrawListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CoordinatorLayout$OnPreDrawListener implements ViewTreeObserver$OnPreDrawListener {
    final /* synthetic */ CoordinatorLayout this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CoordinatorLayout$OnPreDrawListener(CoordinatorLayout coordinatorLayout) {
        this.this$0 = coordinatorLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnPreDrawListener
    public boolean onPreDraw() {
        this.this$0.onChildViewsChanged(0);
        return true;
    }
}

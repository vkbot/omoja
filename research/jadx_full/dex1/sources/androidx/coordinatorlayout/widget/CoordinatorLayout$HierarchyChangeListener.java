package androidx.coordinatorlayout.widget;

import android.view.View;
import android.view.ViewGroup$OnHierarchyChangeListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CoordinatorLayout$HierarchyChangeListener implements ViewGroup$OnHierarchyChangeListener {
    final /* synthetic */ CoordinatorLayout this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CoordinatorLayout$HierarchyChangeListener(CoordinatorLayout coordinatorLayout) {
        this.this$0 = coordinatorLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup$OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        ViewGroup$OnHierarchyChangeListener viewGroup$OnHierarchyChangeListener = this.this$0.mOnHierarchyChangeListener;
        if (viewGroup$OnHierarchyChangeListener != null) {
            viewGroup$OnHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup$OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        this.this$0.onChildViewsChanged(2);
        ViewGroup$OnHierarchyChangeListener viewGroup$OnHierarchyChangeListener = this.this$0.mOnHierarchyChangeListener;
        if (viewGroup$OnHierarchyChangeListener != null) {
            viewGroup$OnHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}

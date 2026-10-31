package androidx.customview.widget;

import android.os.Bundle;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ExploreByTouchHelper$MyNodeProvider extends AccessibilityNodeProviderCompat {
    final /* synthetic */ ExploreByTouchHelper this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ExploreByTouchHelper$MyNodeProvider(ExploreByTouchHelper exploreByTouchHelper) {
        this.this$0 = exploreByTouchHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i9) {
        return AccessibilityNodeInfoCompat.obtain(this.this$0.obtainAccessibilityNodeInfo(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
    public AccessibilityNodeInfoCompat findFocus(int i9) {
        ExploreByTouchHelper exploreByTouchHelper = this.this$0;
        int i10 = i9 == 2 ? exploreByTouchHelper.mAccessibilityFocusedVirtualViewId : exploreByTouchHelper.mKeyboardFocusedVirtualViewId;
        if (i10 == Integer.MIN_VALUE) {
            return null;
        }
        return createAccessibilityNodeInfo(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
    public boolean performAction(int i9, int i10, Bundle bundle) {
        return this.this$0.performAction(i9, i10, bundle);
    }
}

package androidx.customview.widget;

import android.graphics.Rect;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ExploreByTouchHelper$1 implements FocusStrategy$BoundsAdapter<AccessibilityNodeInfoCompat> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, android.graphics.Rect] */
    @Override // androidx.customview.widget.FocusStrategy$BoundsAdapter
    public /* bridge */ /* synthetic */ void obtainBounds(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
        obtainBounds2(accessibilityNodeInfoCompat, rect);
    }

    /* JADX INFO: renamed from: obtainBounds, reason: avoid collision after fix types in other method */
    public void obtainBounds2(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
        accessibilityNodeInfoCompat.getBoundsInParent(rect);
    }
}

package androidx.viewpager2.widget;

import androidx.annotation.NonNull;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager2$BasicAccessibilityProvider extends ViewPager2$AccessibilityProvider {
    final /* synthetic */ ViewPager2 this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPager2$BasicAccessibilityProvider(ViewPager2 viewPager2) {
        super(viewPager2, null);
        this.this$0 = viewPager2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public boolean handlesLmPerformAccessibilityAction(int i9) {
        return (i9 == 8192 || i9 == 4096) && !this.this$0.isUserInputEnabled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public boolean handlesRvGetAccessibilityClassName() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public void onLmInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.this$0.isUserInputEnabled()) {
            return;
        }
        accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
        accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
        accessibilityNodeInfoCompat.setScrollable(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public boolean onLmPerformAccessibilityAction(int i9) {
        if (handlesLmPerformAccessibilityAction(i9)) {
            return false;
        }
        throw new IllegalStateException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$AccessibilityProvider
    public CharSequence onRvGetAccessibilityClassName() {
        if (handlesRvGetAccessibilityClassName()) {
            return "androidx.viewpager.widget.ViewPager";
        }
        throw new IllegalStateException();
    }
}

package androidx.viewpager.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager$MyAccessibilityDelegate extends AccessibilityDelegateCompat {
    final /* synthetic */ ViewPager this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager$MyAccessibilityDelegate(ViewPager viewPager) {
        this.this$0 = viewPager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean canScroll() {
        PagerAdapter pagerAdapter = this.this$0.mAdapter;
        return pagerAdapter != null && pagerAdapter.getCount() > 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        PagerAdapter pagerAdapter;
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(ViewPager.class.getName());
        accessibilityEvent.setScrollable(canScroll());
        if (accessibilityEvent.getEventType() != 4096 || (pagerAdapter = this.this$0.mAdapter) == null) {
            return;
        }
        accessibilityEvent.setItemCount(pagerAdapter.getCount());
        accessibilityEvent.setFromIndex(this.this$0.mCurItem);
        accessibilityEvent.setToIndex(this.this$0.mCurItem);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
        accessibilityNodeInfoCompat.setScrollable(canScroll());
        if (this.this$0.canScrollHorizontally(1)) {
            accessibilityNodeInfoCompat.addAction(4096);
        }
        if (this.this$0.canScrollHorizontally(-1)) {
            accessibilityNodeInfoCompat.addAction(8192);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.AccessibilityDelegateCompat
    public boolean performAccessibilityAction(View view, int i9, Bundle bundle) {
        if (super.performAccessibilityAction(view, i9, bundle)) {
            return true;
        }
        if (i9 == 4096) {
            if (!this.this$0.canScrollHorizontally(1)) {
                return false;
            }
            ViewPager viewPager = this.this$0;
            viewPager.setCurrentItem(viewPager.mCurItem + 1);
            return true;
        }
        if (i9 != 8192 || !this.this$0.canScrollHorizontally(-1)) {
            return false;
        }
        ViewPager viewPager2 = this.this$0;
        viewPager2.setCurrentItem(viewPager2.mCurItem - 1);
        return true;
    }
}

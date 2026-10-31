package androidx.viewpager2.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$Adapter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ViewPager2$AccessibilityProvider {
    final /* synthetic */ ViewPager2 this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewPager2$AccessibilityProvider(ViewPager2 viewPager2) {
        this.this$0 = viewPager2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean handlesGetAccessibilityClassName() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean handlesLmPerformAccessibilityAction(int i9) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean handlesPerformAccessibilityAction(int i9, Bundle bundle) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean handlesRvGetAccessibilityClassName() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String onGetAccessibilityClassName() {
        throw new IllegalStateException("Not implemented.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onLmPerformAccessibilityAction(int i9) {
        throw new IllegalStateException("Not implemented.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onPerformAccessibilityAction(int i9, Bundle bundle) {
        throw new IllegalStateException("Not implemented.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharSequence onRvGetAccessibilityClassName() {
        throw new IllegalStateException("Not implemented.");
    }

    public /* synthetic */ ViewPager2$AccessibilityProvider(ViewPager2 viewPager2, ViewPager2$1 viewPager2$1) {
        this(viewPager2);
    }

    public void onRestorePendingState() {
    }

    public void onSetLayoutDirection() {
    }

    public void onSetNewCurrentItem() {
    }

    public void onSetOrientation() {
    }

    public void onSetUserInputEnabled() {
    }

    public void onAttachAdapter(@Nullable RecyclerView$Adapter<?> recyclerView$Adapter) {
    }

    public void onDetachAdapter(@Nullable RecyclerView$Adapter<?> recyclerView$Adapter) {
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
    }

    public void onLmInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public void onRvInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
    }

    public void onInitialize(@NonNull CompositeOnPageChangeCallback compositeOnPageChangeCallback, @NonNull RecyclerView recyclerView) {
    }

    public void onLmInitializeAccessibilityNodeInfoForItem(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }
}

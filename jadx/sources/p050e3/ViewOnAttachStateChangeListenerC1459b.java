package p050e3;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import p051e4.C1483p;

/* JADX INFO: renamed from: e3.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnAttachStateChangeListenerC1459b implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3538b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3539c;

    public /* synthetic */ ViewOnAttachStateChangeListenerC1459b(int i10, Object obj) {
        this.f3538b = i10;
        this.f3539c = obj;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        switch (this.f3538b) {
            case 0:
            case 1:
                break;
            default:
                C1483p c1483p = (C1483p) this.f3539c;
                AccessibilityManager accessibilityManager = c1483p.f3620u;
                if (c1483p.f3621v != null && accessibilityManager != null && c1483p.isAttachedToWindow()) {
                    accessibilityManager.addTouchExplorationStateChangeListener(c1483p.f3621v);
                    break;
                }
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        AccessibilityManager accessibilityManager2;
        AccessibilityManager accessibilityManager3;
        switch (this.f3538b) {
            case 0:
                HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) this.f3539c;
                AccessibilityManagerTouchExplorationStateChangeListenerC1458a accessibilityManagerTouchExplorationStateChangeListenerC1458a = hideBottomViewOnScrollBehavior.f2097h;
                if (accessibilityManagerTouchExplorationStateChangeListenerC1458a != null && (accessibilityManager = hideBottomViewOnScrollBehavior.f2096g) != null) {
                    accessibilityManager.removeTouchExplorationStateChangeListener(accessibilityManagerTouchExplorationStateChangeListenerC1458a);
                    hideBottomViewOnScrollBehavior.f2097h = null;
                    break;
                }
                break;
            case 1:
                HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) this.f3539c;
                AccessibilityManagerTouchExplorationStateChangeListenerC1458a accessibilityManagerTouchExplorationStateChangeListenerC1458a2 = hideViewOnScrollBehavior.f2103c;
                if (accessibilityManagerTouchExplorationStateChangeListenerC1458a2 != null && (accessibilityManager2 = hideViewOnScrollBehavior.f2102b) != null) {
                    accessibilityManager2.removeTouchExplorationStateChangeListener(accessibilityManagerTouchExplorationStateChangeListenerC1458a2);
                    hideViewOnScrollBehavior.f2103c = null;
                    break;
                }
                break;
            default:
                C1483p c1483p = (C1483p) this.f3539c;
                AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = c1483p.f3621v;
                if (touchExplorationStateChangeListener != null && (accessibilityManager3 = c1483p.f3620u) != null) {
                    accessibilityManager3.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
                    break;
                }
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    private final void m2500a(View view) {
    }

    /* JADX INFO: renamed from: b */
    private final void m2501b(View view) {
    }
}

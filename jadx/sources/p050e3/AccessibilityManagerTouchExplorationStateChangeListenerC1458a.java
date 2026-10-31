package p050e3;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;

/* JADX INFO: renamed from: e3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class AccessibilityManagerTouchExplorationStateChangeListenerC1458a implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3535a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ View f3536b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ CoordinatorLayout.Behavior f3537c;

    public /* synthetic */ AccessibilityManagerTouchExplorationStateChangeListenerC1458a(CoordinatorLayout.Behavior behavior, View view, int i10) {
        this.f3535a = i10;
        this.f3537c = behavior;
        this.f3536b = view;
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z9) {
        switch (this.f3535a) {
            case 0:
                HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) this.f3537c;
                if (z9 && hideBottomViewOnScrollBehavior.f2099j == 1) {
                    hideBottomViewOnScrollBehavior.m1750a(this.f3536b);
                    break;
                }
                break;
            default:
                HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) this.f3537c;
                if (hideViewOnScrollBehavior.f2104d && z9 && hideViewOnScrollBehavior.f2111k == 1) {
                    hideViewOnScrollBehavior.m1752b(this.f3536b);
                    break;
                }
                break;
        }
    }
}

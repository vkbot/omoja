package e3;

import android.view.View;
import android.view.accessibility.AccessibilityManager$TouchExplorationStateChangeListener;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements AccessibilityManager$TouchExplorationStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2028b;
    public final /* synthetic */ CoordinatorLayout$Behavior c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(CoordinatorLayout$Behavior coordinatorLayout$Behavior, View view, int i9) {
        this.f2027a = i9;
        this.c = coordinatorLayout$Behavior;
        this.f2028b = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.accessibility.AccessibilityManager$TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z8) {
        switch (this.f2027a) {
            case 0:
                HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) this.c;
                if (z8 && hideBottomViewOnScrollBehavior.f1141j == 1) {
                    hideBottomViewOnScrollBehavior.a(this.f2028b);
                    break;
                }
                break;
            default:
                HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) this.c;
                if (hideViewOnScrollBehavior.d && z8 && hideViewOnScrollBehavior.f1150k == 1) {
                    hideViewOnScrollBehavior.b(this.f2028b);
                    break;
                }
                break;
        }
    }
}

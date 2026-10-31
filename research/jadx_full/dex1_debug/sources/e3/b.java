package e3;

import android.view.View;
import android.view.View$OnAttachStateChangeListener;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityManager$TouchExplorationStateChangeListener;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import e4.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements View$OnAttachStateChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2029b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i9, Object obj) {
        this.f2029b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        switch (this.f2029b) {
            case 0:
            case 1:
                break;
            default:
                p pVar = (p) this.c;
                AccessibilityManager accessibilityManager = pVar.f2088u;
                if (pVar.f2089v != null && accessibilityManager != null && pVar.isAttachedToWindow()) {
                    accessibilityManager.addTouchExplorationStateChangeListener(pVar.f2089v);
                    break;
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        AccessibilityManager accessibilityManager2;
        AccessibilityManager accessibilityManager3;
        switch (this.f2029b) {
            case 0:
                HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) this.c;
                a aVar = hideBottomViewOnScrollBehavior.f1139h;
                if (aVar != null && (accessibilityManager = hideBottomViewOnScrollBehavior.f1138g) != null) {
                    accessibilityManager.removeTouchExplorationStateChangeListener(aVar);
                    hideBottomViewOnScrollBehavior.f1139h = null;
                    break;
                }
                break;
            case 1:
                HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) this.c;
                a aVar2 = hideViewOnScrollBehavior.c;
                if (aVar2 != null && (accessibilityManager2 = hideViewOnScrollBehavior.f1144b) != null) {
                    accessibilityManager2.removeTouchExplorationStateChangeListener(aVar2);
                    hideViewOnScrollBehavior.c = null;
                    break;
                }
                break;
            default:
                p pVar = (p) this.c;
                AccessibilityManager$TouchExplorationStateChangeListener accessibilityManager$TouchExplorationStateChangeListener = pVar.f2089v;
                if (accessibilityManager$TouchExplorationStateChangeListener != null && (accessibilityManager3 = pVar.f2088u) != null) {
                    accessibilityManager3.removeTouchExplorationStateChangeListener(accessibilityManager$TouchExplorationStateChangeListener);
                    break;
                }
                break;
        }
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }
}

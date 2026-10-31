package e3;

import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.view.accessibility.AccessibilityViewCommand$CommandArguments;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements AccessibilityViewCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f2036a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(SwipeDismissBehavior swipeDismissBehavior) {
        this.f2036a = swipeDismissBehavior;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public final boolean perform(View view, AccessibilityViewCommand$CommandArguments accessibilityViewCommand$CommandArguments) {
        SwipeDismissBehavior swipeDismissBehavior = this.f2036a;
        if (!swipeDismissBehavior.a(view)) {
            return false;
        }
        boolean z8 = view.getLayoutDirection() == 1;
        int i9 = swipeDismissBehavior.e;
        ViewCompat.offsetLeftAndRight(view, (!(i9 == 0 && z8) && (i9 != 1 || z8)) ? view.getWidth() : -view.getWidth());
        view.setAlpha(0.0f);
        b4.f fVar = swipeDismissBehavior.f1153b;
        if (fVar != null) {
            fVar.a(view);
        }
        return true;
    }
}

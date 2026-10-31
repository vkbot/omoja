package p050e3;

import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.material.behavior.SwipeDismissBehavior;
import p019b4.C0895f;

/* JADX INFO: renamed from: e3.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1463f implements AccessibilityViewCommand {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ SwipeDismissBehavior f3548a;

    public C1463f(SwipeDismissBehavior swipeDismissBehavior) {
        this.f3548a = swipeDismissBehavior;
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        SwipeDismissBehavior swipeDismissBehavior = this.f3548a;
        if (!swipeDismissBehavior.mo1753a(view)) {
            return false;
        }
        boolean z9 = view.getLayoutDirection() == 1;
        int i10 = swipeDismissBehavior.f2117e;
        ViewCompat.offsetLeftAndRight(view, (!(i10 == 0 && z9) && (i10 != 1 || z9)) ? view.getWidth() : -view.getWidth());
        view.setAlpha(0.0f);
        C0895f c0895f = swipeDismissBehavior.f2114b;
        if (c0895f != null) {
            c0895f.m1026a(view);
        }
        return true;
    }
}

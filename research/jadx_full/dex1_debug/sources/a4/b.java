package a4;

import android.view.View;
import android.view.ViewParent;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.view.accessibility.AccessibilityViewCommand$CommandArguments;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements AccessibilityViewCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SideSheetBehavior f28a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f29b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(SideSheetBehavior sideSheetBehavior, int i9) {
        this.f28a = sideSheetBehavior;
        this.f29b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public final boolean perform(View view, AccessibilityViewCommand$CommandArguments accessibilityViewCommand$CommandArguments) {
        int i9 = this.f29b;
        if (i9 == 1 || i9 == 2) {
            throw new IllegalArgumentException(ai.onnxruntime.a.p(new StringBuilder("STATE_"), i9 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        SideSheetBehavior sideSheetBehavior = this.f28a;
        WeakReference weakReference = sideSheetBehavior.f1350p;
        if (weakReference == null || weakReference.get() == null) {
            sideSheetBehavior.a(i9);
            return true;
        }
        View view2 = (View) sideSheetBehavior.f1350p.get();
        c cVar = new c(sideSheetBehavior, i9, 0);
        ViewParent parent = view2.getParent();
        if (parent != null && parent.isLayoutRequested() && view2.isAttachedToWindow()) {
            view2.post(cVar);
            return true;
        }
        cVar.run();
        return true;
    }
}

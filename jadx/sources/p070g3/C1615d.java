package p070g3;

import android.view.View;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: renamed from: g3.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1615d implements AccessibilityViewCommand {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f4061a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ BottomSheetBehavior f4062b;

    public C1615d(BottomSheetBehavior bottomSheetBehavior, int i10) {
        this.f4062b = bottomSheetBehavior;
        this.f4061a = i10;
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        this.f4062b.m1764k(this.f4061a);
        return true;
    }
}

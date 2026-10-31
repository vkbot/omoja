package p080h3;

import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;

/* JADX INFO: renamed from: h3.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1661g extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ MaterialButtonToggleGroup f4254a;

    public C1661g(MaterialButtonToggleGroup materialButtonToggleGroup) {
        this.f4254a = materialButtonToggleGroup;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        int i10;
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        int i11 = MaterialButtonToggleGroup.f2212r;
        if (view instanceof MaterialButton) {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                MaterialButtonToggleGroup materialButtonToggleGroup = this.f4254a;
                if (i12 >= materialButtonToggleGroup.getChildCount()) {
                    break;
                }
                if (materialButtonToggleGroup.getChildAt(i12) == view) {
                    i10 = i13;
                } else {
                    if ((materialButtonToggleGroup.getChildAt(i12) instanceof MaterialButton) && materialButtonToggleGroup.getChildAt(i12).getVisibility() != 8) {
                        i13++;
                    }
                    i12++;
                }
            }
            i10 = -1;
        } else {
            i10 = -1;
        }
        accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, i10, 1, false, ((MaterialButton) view).f2198m));
    }
}

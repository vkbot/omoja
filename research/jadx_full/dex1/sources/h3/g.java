package h3;

import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialButtonToggleGroup f2464a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(MaterialButtonToggleGroup materialButtonToggleGroup) {
        this.f2464a = materialButtonToggleGroup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        int i9;
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        int i10 = MaterialButtonToggleGroup.r;
        if (view instanceof MaterialButton) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                MaterialButtonToggleGroup materialButtonToggleGroup = this.f2464a;
                if (i11 >= materialButtonToggleGroup.getChildCount()) {
                    break;
                }
                if (materialButtonToggleGroup.getChildAt(i11) == view) {
                    i9 = i12;
                } else {
                    if ((materialButtonToggleGroup.getChildAt(i11) instanceof MaterialButton) && materialButtonToggleGroup.getChildAt(i11).getVisibility() != 8) {
                        i12++;
                    }
                    i11++;
                }
            }
            i9 = -1;
        } else {
            i9 = -1;
        }
        accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(0, 1, i9, 1, false, ((MaterialButton) view).f1193m));
    }
}

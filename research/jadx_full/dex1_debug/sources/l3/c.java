package l3;

import android.R$attr;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View$OnClickListener;
import android.widget.Button;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.chip.Chip;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends ExploreByTouchHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Chip f3259a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Chip chip, Chip chip2) {
        super(chip2);
        this.f3259a = chip;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final int getVirtualViewAt(float f8, float f9) {
        Rect rect = Chip.t;
        Chip chip = this.f3259a;
        return (chip.d() && Chip.a(chip).contains(f8, f9)) ? 1 : 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void getVisibleVirtualViews(List list) {
        e eVar;
        list.add(0);
        Rect rect = Chip.t;
        Chip chip = this.f3259a;
        if (!chip.d() || (eVar = chip.f1217b) == null || !eVar.V || chip.e == null) {
            return;
        }
        list.add(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final boolean onPerformActionForVirtualView(int i9, int i10, Bundle bundle) {
        boolean z8 = false;
        if (i10 == 16) {
            Chip chip = this.f3259a;
            if (i9 == 0) {
                return chip.performClick();
            }
            if (i9 == 1) {
                chip.playSoundEffect(0);
                View$OnClickListener view$OnClickListener = chip.e;
                if (view$OnClickListener != null) {
                    view$OnClickListener.onClick(chip);
                    z8 = true;
                }
                if (chip.f1228p) {
                    chip.f1227o.sendEventForVirtualView(1, 1);
                }
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        Chip chip = this.f3259a;
        e eVar = chip.f1217b;
        accessibilityNodeInfoCompat.setCheckable(eVar != null && eVar.f3261b0);
        accessibilityNodeInfoCompat.setClickable(chip.isClickable());
        accessibilityNodeInfoCompat.setClassName(chip.getAccessibilityClassName());
        accessibilityNodeInfoCompat.setText(chip.getText());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void onPopulateNodeForVirtualView(int i9, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (i9 != 1) {
            accessibilityNodeInfoCompat.setContentDescription("");
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.t);
            return;
        }
        Chip chip = this.f3259a;
        CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
        if (closeIconContentDescription != null) {
            accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
        } else {
            CharSequence text = chip.getText();
            accessibilityNodeInfoCompat.setContentDescription(chip.getContext().getString(2131952365, TextUtils.isEmpty(text) ? "" : text).trim());
        }
        accessibilityNodeInfoCompat.setBoundsInParent(Chip.b(chip));
        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_CLICK);
        accessibilityNodeInfoCompat.setEnabled(chip.isEnabled());
        accessibilityNodeInfoCompat.setClassName(Button.class.getName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void onVirtualViewKeyboardFocusChanged(int i9, boolean z8) {
        Chip chip = this.f3259a;
        if (i9 == 1) {
            chip.f1222j = z8;
        }
        e eVar = chip.f1217b;
        boolean z9 = chip.f1222j;
        boolean zW = false;
        if (eVar.W != null) {
            zW = eVar.W(z9 ? new int[]{R$attr.state_pressed, R$attr.state_enabled} : e.Q0);
        }
        if (zW) {
            chip.refreshDrawableState();
        }
    }
}

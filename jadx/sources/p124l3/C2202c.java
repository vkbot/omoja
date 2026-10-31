package p124l3;

import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.example.navistart.R;
import com.google.android.material.chip.Chip;
import java.util.List;

/* JADX INFO: renamed from: l3.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2202c extends ExploreByTouchHelper {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Chip f5732a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2202c(Chip chip, Chip chip2) {
        super(chip2);
        this.f5732a = chip;
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final int getVirtualViewAt(float f8, float f10) {
        Rect rect = Chip.f2229t;
        Chip chip = this.f5732a;
        return (chip.m1792d() && chip.getCloseIconTouchBounds().contains(f8, f10)) ? 1 : 0;
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void getVisibleVirtualViews(List list) {
        C2204e c2204e;
        list.add(0);
        Rect rect = Chip.f2229t;
        Chip chip = this.f5732a;
        if (!chip.m1792d() || (c2204e = chip.f2232b) == null || !c2204e.f5764V || chip.f2235e == null) {
            return;
        }
        list.add(1);
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
        boolean z9 = false;
        if (i11 == 16) {
            Chip chip = this.f5732a;
            if (i10 == 0) {
                return chip.performClick();
            }
            if (i10 == 1) {
                chip.playSoundEffect(0);
                View.OnClickListener onClickListener = chip.f2235e;
                if (onClickListener != null) {
                    onClickListener.onClick(chip);
                    z9 = true;
                }
                if (chip.f2246p) {
                    chip.f2245o.sendEventForVirtualView(1, 1);
                }
            }
        }
        return z9;
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        Chip chip = this.f5732a;
        C2204e c2204e = chip.f2232b;
        accessibilityNodeInfoCompat.setCheckable(c2204e != null && c2204e.f5770b0);
        accessibilityNodeInfoCompat.setClickable(chip.isClickable());
        accessibilityNodeInfoCompat.setClassName(chip.getAccessibilityClassName());
        accessibilityNodeInfoCompat.setText(chip.getText());
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void onPopulateNodeForVirtualView(int i10, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (i10 != 1) {
            accessibilityNodeInfoCompat.setContentDescription("");
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.f2229t);
            return;
        }
        Chip chip = this.f5732a;
        CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
        if (closeIconContentDescription != null) {
            accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
        } else {
            CharSequence text = chip.getText();
            accessibilityNodeInfoCompat.setContentDescription(chip.getContext().getString(R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
        }
        accessibilityNodeInfoCompat.setBoundsInParent(chip.getCloseIconTouchBoundsInt());
        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        accessibilityNodeInfoCompat.setEnabled(chip.isEnabled());
        accessibilityNodeInfoCompat.setClassName(Button.class.getName());
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void onVirtualViewKeyboardFocusChanged(int i10, boolean z9) {
        Chip chip = this.f5732a;
        if (i10 == 1) {
            chip.f2240j = z9;
        }
        C2204e c2204e = chip.f2232b;
        boolean z10 = chip.f2240j;
        boolean zM3527W = false;
        if (c2204e.f5765W != null) {
            zM3527W = c2204e.m3527W(z10 ? new int[]{android.R.attr.state_pressed, android.R.attr.state_enabled} : C2204e.f5733Q0);
        }
        if (zM3527W) {
            chip.refreshDrawableState();
        }
    }
}

package com.google.android.material.datepicker;

import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.example.navistart.R;

/* JADX INFO: renamed from: com.google.android.material.datepicker.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1100k extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C1103n f2277a;

    public C1100k(C1103n c1103n) {
        this.f2277a = c1103n;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        C1103n c1103n = this.f2277a;
        accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, c1103n.f2292m.getVisibility() == 0 ? c1103n.getString(R.string.mtrl_picker_toggle_to_year_selection) : c1103n.getString(R.string.mtrl_picker_toggle_to_day_selection)));
    }
}

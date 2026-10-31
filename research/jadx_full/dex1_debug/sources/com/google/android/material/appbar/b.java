package com.google.android.material.appbar;

import android.os.Bundle;
import android.view.View;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f1131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f1132b;
    public final /* synthetic */ AppBarLayout$BaseBehavior c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(CoordinatorLayout coordinatorLayout, AppBarLayout$BaseBehavior appBarLayout$BaseBehavior, AppBarLayout appBarLayout) {
        this.c = appBarLayout$BaseBehavior;
        this.f1131a = appBarLayout;
        this.f1132b = coordinatorLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
        AppBarLayout appBarLayout = this.f1131a;
        if (appBarLayout.getTotalScrollRange() == 0) {
            return;
        }
        CoordinatorLayout coordinatorLayout = this.f1132b;
        AppBarLayout$BaseBehavior appBarLayout$BaseBehavior = this.c;
        View viewF = AppBarLayout$BaseBehavior.f(appBarLayout$BaseBehavior, coordinatorLayout);
        if (viewF == null) {
            return;
        }
        int childCount = appBarLayout.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            if (((c3.c) appBarLayout.getChildAt(i9).getLayoutParams()).f477a != 0) {
                if (appBarLayout$BaseBehavior.c() != (-appBarLayout.getTotalScrollRange())) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    accessibilityNodeInfoCompat.setScrollable(true);
                }
                if (appBarLayout$BaseBehavior.c() != 0) {
                    if (!viewF.canScrollVertically(-1)) {
                        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                        accessibilityNodeInfoCompat.setScrollable(true);
                        return;
                    } else {
                        if ((-appBarLayout.getDownNestedPreScrollRange()) != 0) {
                            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                            accessibilityNodeInfoCompat.setScrollable(true);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean performAccessibilityAction(View view, int i9, Bundle bundle) {
        AppBarLayout appBarLayout = this.f1131a;
        if (i9 == 4096) {
            appBarLayout.setExpanded(false);
            return true;
        }
        if (i9 != 8192) {
            return super.performAccessibilityAction(view, i9, bundle);
        }
        AppBarLayout$BaseBehavior appBarLayout$BaseBehavior = this.c;
        if (appBarLayout$BaseBehavior.c() != 0) {
            View viewF = AppBarLayout$BaseBehavior.f(appBarLayout$BaseBehavior, this.f1132b);
            if (!viewF.canScrollVertically(-1)) {
                appBarLayout.setExpanded(true);
                return true;
            }
            int i10 = -appBarLayout.getDownNestedPreScrollRange();
            if (i10 != 0) {
                appBarLayout$BaseBehavior.i(this.f1132b, this.f1131a, viewF, i10, new int[]{0, 0});
                return true;
            }
        }
        return false;
    }
}

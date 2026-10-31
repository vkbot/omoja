package com.google.android.material.appbar;

import android.os.Bundle;
import android.view.View;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import p028c3.C0977c;

/* JADX INFO: renamed from: com.google.android.material.appbar.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1084b extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AppBarLayout f2082a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ CoordinatorLayout f2083b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AppBarLayout.BaseBehavior f2084c;

    public C1084b(CoordinatorLayout coordinatorLayout, AppBarLayout.BaseBehavior baseBehavior, AppBarLayout appBarLayout) {
        this.f2084c = baseBehavior;
        this.f2082a = appBarLayout;
        this.f2083b = coordinatorLayout;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
        AppBarLayout appBarLayout = this.f2082a;
        if (appBarLayout.getTotalScrollRange() == 0) {
            return;
        }
        CoordinatorLayout coordinatorLayout = this.f2083b;
        AppBarLayout.BaseBehavior baseBehavior = this.f2084c;
        View viewM1741f = AppBarLayout.BaseBehavior.m1741f(baseBehavior, coordinatorLayout);
        if (viewM1741f == null) {
            return;
        }
        int childCount = appBarLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((C0977c) appBarLayout.getChildAt(i10).getLayoutParams()).f909a != 0) {
                if (baseBehavior.mo1097c() != (-appBarLayout.getTotalScrollRange())) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    accessibilityNodeInfoCompat.setScrollable(true);
                }
                if (baseBehavior.mo1097c() != 0) {
                    if (!viewM1741f.canScrollVertically(-1)) {
                        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                        accessibilityNodeInfoCompat.setScrollable(true);
                        return;
                    } else {
                        if ((-appBarLayout.getDownNestedPreScrollRange()) != 0) {
                            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
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

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
        AppBarLayout appBarLayout = this.f2082a;
        if (i10 == 4096) {
            appBarLayout.setExpanded(false);
            return true;
        }
        if (i10 != 8192) {
            return super.performAccessibilityAction(view, i10, bundle);
        }
        AppBarLayout.BaseBehavior baseBehavior = this.f2084c;
        if (baseBehavior.mo1097c() != 0) {
            View viewM1741f = AppBarLayout.BaseBehavior.m1741f(baseBehavior, this.f2083b);
            if (!viewM1741f.canScrollVertically(-1)) {
                appBarLayout.setExpanded(true);
                return true;
            }
            int i11 = -appBarLayout.getDownNestedPreScrollRange();
            if (i11 != 0) {
                baseBehavior.m1745i(this.f2083b, this.f2082a, viewM1741f, i11, new int[]{0, 0});
                return true;
            }
        }
        return false;
    }
}

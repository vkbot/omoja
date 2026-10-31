package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams;
import androidx.core.view.ViewCompat;
import c3.g;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppBarLayout$ScrollingViewBehavior extends g {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppBarLayout$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a3.a.D);
        this.f484f = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AppBarLayout d(List list) {
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            View view = (View) list.get(i9);
            if (view instanceof AppBarLayout) {
                return (AppBarLayout) view;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof AppBarLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) view2.getLayoutParams()).getBehavior();
        if (behavior instanceof AppBarLayout$BaseBehavior) {
            ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((AppBarLayout$BaseBehavior) behavior).f1121j) + this.e) - c(view2));
        }
        if (!(view2 instanceof AppBarLayout)) {
            return false;
        }
        AppBarLayout appBarLayout = (AppBarLayout) view2;
        if (!appBarLayout.f1109l) {
            return false;
        }
        appBarLayout.e(appBarLayout.f(view));
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view2 instanceof AppBarLayout) {
            ViewCompat.setAccessibilityDelegate(coordinatorLayout, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z8) {
        AppBarLayout appBarLayoutD = d(coordinatorLayout.getDependencies(view));
        if (appBarLayoutD != null) {
            Rect rect2 = new Rect(rect);
            rect2.offset(view.getLeft(), view.getTop());
            int width = coordinatorLayout.getWidth();
            int height = coordinatorLayout.getHeight();
            Rect rect3 = this.c;
            rect3.set(0, 0, width, height);
            if (!rect3.contains(rect2)) {
                appBarLayoutD.d(false, !z8, true);
                return true;
            }
        }
        return false;
    }

    public AppBarLayout$ScrollingViewBehavior() {
    }
}

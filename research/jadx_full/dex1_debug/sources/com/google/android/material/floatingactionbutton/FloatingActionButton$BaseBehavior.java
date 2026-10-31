package com.google.android.material.floatingactionbutton;

import a3.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams;
import androidx.core.view.ViewCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.List;
import s3.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FloatingActionButton$BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout$Behavior<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Rect f1309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f1310b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FloatingActionButton$BaseBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f14k);
        this.f1310b = typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) floatingActionButton.getLayoutParams();
        if (!this.f1310b || coordinatorLayout$LayoutParams.getAnchorId() != appBarLayout.getId() || floatingActionButton.getUserSetVisibility() != 0) {
            return false;
        }
        if (this.f1309a == null) {
            this.f1309a = new Rect();
        }
        Rect rect = this.f1309a;
        d.a(coordinatorLayout, appBarLayout, rect);
        if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
            floatingActionButton.d();
            return true;
        }
        floatingActionButton.f();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean b(View view, FloatingActionButton floatingActionButton) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) floatingActionButton.getLayoutParams();
        if (!this.f1310b || coordinatorLayout$LayoutParams.getAnchorId() != view.getId() || floatingActionButton.getUserSetVisibility() != 0) {
            return false;
        }
        if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup$MarginLayoutParams) ((CoordinatorLayout$LayoutParams) floatingActionButton.getLayoutParams())).topMargin) {
            floatingActionButton.d();
            return true;
        }
        floatingActionButton.f();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
        FloatingActionButton floatingActionButton = (FloatingActionButton) view;
        Rect rect2 = floatingActionButton.f1304m;
        rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onAttachedToLayoutParams(CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams) {
        if (coordinatorLayout$LayoutParams.dodgeInsetEdges == 0) {
            coordinatorLayout$LayoutParams.dodgeInsetEdges = 80;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        FloatingActionButton floatingActionButton = (FloatingActionButton) view;
        if (view2 instanceof AppBarLayout) {
            a(coordinatorLayout, (AppBarLayout) view2, floatingActionButton);
        } else {
            ViewGroup$LayoutParams layoutParams = view2.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout$LayoutParams ? ((CoordinatorLayout$LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior : false) {
                b(view2, floatingActionButton);
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i9) {
        FloatingActionButton floatingActionButton = (FloatingActionButton) view;
        List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
        int size = dependencies.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            View view2 = dependencies.get(i11);
            if (!(view2 instanceof AppBarLayout)) {
                ViewGroup$LayoutParams layoutParams = view2.getLayoutParams();
                if ((layoutParams instanceof CoordinatorLayout$LayoutParams ? ((CoordinatorLayout$LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior : false) && b(view2, floatingActionButton)) {
                    break;
                }
            } else {
                if (a(coordinatorLayout, (AppBarLayout) view2, floatingActionButton)) {
                    break;
                }
            }
        }
        coordinatorLayout.onLayoutChild(floatingActionButton, i9);
        Rect rect = floatingActionButton.f1304m;
        if (rect.centerX() > 0 && rect.centerY() > 0) {
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) floatingActionButton.getLayoutParams();
            int i12 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin) {
                i10 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin) {
                i10 = -rect.top;
            }
            if (i10 != 0) {
                ViewCompat.offsetTopAndBottom(floatingActionButton, i10);
            }
            if (i12 != 0) {
                ViewCompat.offsetLeftAndRight(floatingActionButton, i12);
            }
        }
        return true;
    }

    public FloatingActionButton$BaseBehavior() {
        this.f1310b = true;
    }
}

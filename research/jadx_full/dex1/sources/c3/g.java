package c3;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams;
import androidx.core.math.MathUtils;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.AppBarLayout$BaseBehavior;
import com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior;
import com.google.android.material.search.SearchBar$ScrollingViewBehavior;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g extends h {
    public final Rect c;
    public final Rect d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f484f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g() {
        this.c = new Rect();
        this.d = new Rect();
        this.e = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // c3.h
    public final void b(CoordinatorLayout coordinatorLayout, View view, int i9) {
        AppBarLayout appBarLayoutD = AppBarLayout$ScrollingViewBehavior.d(coordinatorLayout.getDependencies(view));
        if (appBarLayoutD == null) {
            coordinatorLayout.onLayoutChild(view, i9);
            this.e = 0;
            return;
        }
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        int paddingLeft = coordinatorLayout.getPaddingLeft() + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).leftMargin;
        int bottom = appBarLayoutD.getBottom() + ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).topMargin;
        int width = (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).rightMargin;
        int bottom2 = ((appBarLayoutD.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup$MarginLayoutParams) coordinatorLayout$LayoutParams).bottomMargin;
        Rect rect = this.c;
        rect.set(paddingLeft, bottom, width, bottom2);
        WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            rect.left = lastWindowInsets.getSystemWindowInsetLeft() + rect.left;
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        int i10 = coordinatorLayout$LayoutParams.gravity;
        if (i10 == 0) {
            i10 = 8388659;
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        Rect rect2 = this.d;
        Gravity.apply(i10, measuredWidth, measuredHeight, rect, rect2, i9);
        int iC = c(appBarLayoutD);
        view.layout(rect2.left, rect2.top - iC, rect2.right, rect2.bottom - iC);
        this.e = rect2.top - appBarLayoutD.getBottom();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c(View view) {
        int i9;
        if (this.f484f == 0) {
            return 0;
        }
        float f8 = 0.0f;
        if (view instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
            CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            int iC = behavior instanceof AppBarLayout$BaseBehavior ? ((AppBarLayout$BaseBehavior) behavior).c() : 0;
            if ((downNestedPreScrollRange == 0 || totalScrollRange + iC > downNestedPreScrollRange) && (i9 = totalScrollRange - downNestedPreScrollRange) != 0) {
                f8 = (iC / i9) + 1.0f;
            }
        }
        int i10 = this.f484f;
        return MathUtils.clamp((int) (f8 * i10), 0, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i9, int i10, int i11, int i12) {
        AppBarLayout appBarLayoutD;
        WindowInsetsCompat lastWindowInsets;
        int i13 = view.getLayoutParams().height;
        if ((i13 != -1 && i13 != -2) || (appBarLayoutD = AppBarLayout$ScrollingViewBehavior.d(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        int size = View$MeasureSpec.getSize(i11);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (appBarLayoutD.getFitsSystemWindows() && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.getSystemWindowInsetBottom() + lastWindowInsets.getSystemWindowInsetTop();
        }
        int totalScrollRange = appBarLayoutD.getTotalScrollRange() + size;
        int measuredHeight = appBarLayoutD.getMeasuredHeight();
        if (this instanceof SearchBar$ScrollingViewBehavior) {
            view.setTranslationY(-measuredHeight);
        } else {
            view.setTranslationY(0.0f);
            totalScrollRange -= measuredHeight;
        }
        coordinatorLayout.onMeasureChild(view, i9, i10, View$MeasureSpec.makeMeasureSpec(totalScrollRange, i13 == -1 ? BasicMeasure.EXACTLY : Integer.MIN_VALUE), i12);
        return true;
    }

    public g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = new Rect();
        this.d = new Rect();
        this.e = 0;
    }
}

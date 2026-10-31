package p028c3;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.search.SearchBar$ScrollingViewBehavior;

/* JADX INFO: renamed from: c3.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0981g extends AbstractC0982h {

    /* JADX INFO: renamed from: c */
    public final Rect f923c;

    /* JADX INFO: renamed from: d */
    public final Rect f924d;

    /* JADX INFO: renamed from: e */
    public int f925e;

    /* JADX INFO: renamed from: f */
    public int f926f;

    public AbstractC0981g() {
        this.f923c = new Rect();
        this.f924d = new Rect();
        this.f925e = 0;
    }

    @Override // p028c3.AbstractC0982h
    /* JADX INFO: renamed from: b */
    public final void mo1100b(CoordinatorLayout coordinatorLayout, View view, int i10) {
        AppBarLayout appBarLayoutM1748d = AppBarLayout.ScrollingViewBehavior.m1748d(coordinatorLayout.getDependencies(view));
        if (appBarLayoutM1748d == null) {
            coordinatorLayout.onLayoutChild(view, i10);
            this.f925e = 0;
            return;
        }
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
        int paddingLeft = coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        int bottom = appBarLayoutM1748d.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        int width = (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int bottom2 = ((appBarLayoutM1748d.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        Rect rect = this.f923c;
        rect.set(paddingLeft, bottom, width, bottom2);
        WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            rect.left = lastWindowInsets.getSystemWindowInsetLeft() + rect.left;
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        int i11 = layoutParams.gravity;
        if (i11 == 0) {
            i11 = 8388659;
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        Rect rect2 = this.f924d;
        Gravity.apply(i11, measuredWidth, measuredHeight, rect, rect2, i10);
        int iM1101c = m1101c(appBarLayoutM1748d);
        view.layout(rect2.left, rect2.top - iM1101c, rect2.right, rect2.bottom - iM1101c);
        this.f925e = rect2.top - appBarLayoutM1748d.getBottom();
    }

    /* JADX INFO: renamed from: c */
    public final int m1101c(View view) {
        int i10;
        if (this.f926f == 0) {
            return 0;
        }
        float f8 = 0.0f;
        if (view instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            int iMo1097c = behavior instanceof AppBarLayout.BaseBehavior ? ((AppBarLayout.BaseBehavior) behavior).mo1097c() : 0;
            if ((downNestedPreScrollRange == 0 || totalScrollRange + iMo1097c > downNestedPreScrollRange) && (i10 = totalScrollRange - downNestedPreScrollRange) != 0) {
                f8 = (iMo1097c / i10) + 1.0f;
            }
        }
        int i11 = this.f926f;
        return MathUtils.clamp((int) (f8 * i11), 0, i11);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
        AppBarLayout appBarLayoutM1748d;
        WindowInsetsCompat lastWindowInsets;
        int i14 = view.getLayoutParams().height;
        if ((i14 != -1 && i14 != -2) || (appBarLayoutM1748d = AppBarLayout.ScrollingViewBehavior.m1748d(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i12);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (appBarLayoutM1748d.getFitsSystemWindows() && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.getSystemWindowInsetBottom() + lastWindowInsets.getSystemWindowInsetTop();
        }
        int totalScrollRange = appBarLayoutM1748d.getTotalScrollRange() + size;
        int measuredHeight = appBarLayoutM1748d.getMeasuredHeight();
        if (this instanceof SearchBar$ScrollingViewBehavior) {
            view.setTranslationY(-measuredHeight);
        } else {
            view.setTranslationY(0.0f);
            totalScrollRange -= measuredHeight;
        }
        coordinatorLayout.onMeasureChild(view, i10, i11, View.MeasureSpec.makeMeasureSpec(totalScrollRange, i14 == -1 ? BasicMeasure.EXACTLY : Integer.MIN_VALUE), i13);
        return true;
    }

    public AbstractC0981g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f923c = new Rect();
        this.f924d = new Rect();
        this.f925e = 0;
    }
}

package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.media.h;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams;
import androidx.core.math.MathUtils;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import c3.f;
import c3.i;
import com.google.android.material.appbar.AppBarLayout;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppBarLayout$BaseBehavior<T extends AppBarLayout> extends f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1121j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1122k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ValueAnimator f1123l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public d f1124m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public WeakReference f1125n;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppBarLayout$BaseBehavior() {
        this.f480f = -1;
        this.f482h = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static View f(AppBarLayout$BaseBehavior appBarLayout$BaseBehavior, CoordinatorLayout coordinatorLayout) {
        int childCount = coordinatorLayout.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = coordinatorLayout.getChildAt(i9);
            if (((CoordinatorLayout$LayoutParams) childAt.getLayoutParams()).getBehavior() instanceof AppBarLayout$ScrollingViewBehavior) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static View h(CoordinatorLayout coordinatorLayout) {
        int childCount = coordinatorLayout.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = coordinatorLayout.getChildAt(i9);
            if ((childAt instanceof NestedScrollingChild) || (childAt instanceof AbsListView) || (childAt instanceof ScrollView)) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:26:0x005a  */
    public static void l(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i9, int i10, boolean z8) {
        View childAt;
        boolean zF;
        int iAbs = Math.abs(i9);
        int childCount = appBarLayout.getChildCount();
        int i11 = 0;
        while (true) {
            if (i11 >= childCount) {
                childAt = null;
                break;
            }
            childAt = appBarLayout.getChildAt(i11);
            if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                break;
            } else {
                i11++;
            }
        }
        if (childAt != null) {
            int i12 = ((c3.c) childAt.getLayoutParams()).f477a;
            if ((i12 & 1) != 0) {
                int minimumHeight = childAt.getMinimumHeight();
                zF = true;
                if (i10 <= 0 || (i12 & 12) == 0 ? (i12 & 2) == 0 || (-i9) < (childAt.getBottom() - minimumHeight) - appBarLayout.getTopInset() : (-i9) < (childAt.getBottom() - minimumHeight) - appBarLayout.getTopInset()) {
                    zF = false;
                }
            } else {
                zF = false;
            }
        } else {
            zF = false;
        }
        if (appBarLayout.f1109l) {
            zF = appBarLayout.f(h(coordinatorLayout));
        }
        boolean zE = appBarLayout.e(zF);
        if (!z8) {
            if (zE) {
                List<View> dependents = coordinatorLayout.getDependents(appBarLayout);
                int size = dependents.size();
                for (int i13 = 0; i13 < size; i13++) {
                    CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) dependents.get(i13).getLayoutParams()).getBehavior();
                    if (behavior instanceof AppBarLayout$ScrollingViewBehavior) {
                        if (((AppBarLayout$ScrollingViewBehavior) behavior).f484f == 0) {
                            return;
                        }
                    }
                }
                return;
            }
            return;
        }
        if (appBarLayout.getBackground() != null) {
            appBarLayout.getBackground().jumpToCurrentState();
        }
        if (appBarLayout.getForeground() != null) {
            appBarLayout.getForeground().jumpToCurrentState();
        }
        if (appBarLayout.getStateListAnimator() != null) {
            appBarLayout.getStateListAnimator().jumpToCurrentState();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // c3.f
    public final int c() {
        return a() + this.f1121j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:40:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:62:0x0157  */
    /* JADX WARN: Code duplicated, block: B:64:0x015c  */
    /* JADX WARN: Code duplicated, block: B:65:0x015e  */
    @Override // c3.f
    public final int d(CoordinatorLayout coordinatorLayout, View view, int i9, int i10, int i11) {
        int top;
        boolean z8;
        int i12;
        int i13;
        h hVar;
        int topInset;
        AppBarLayout appBarLayout = (AppBarLayout) view;
        int iC = c();
        int i14 = 0;
        if (i10 == 0 || iC < i10 || iC > i11) {
            this.f1121j = 0;
        } else {
            int iClamp = MathUtils.clamp(i9, i10, i11);
            if (iC != iClamp) {
                if (!appBarLayout.f1103f) {
                    top = iClamp;
                    break;
                }
                int iAbs = Math.abs(iClamp);
                int childCount = appBarLayout.getChildCount();
                int i15 = 0;
                while (true) {
                    if (i15 < childCount) {
                        View childAt = appBarLayout.getChildAt(i15);
                        c3.c cVar = (c3.c) childAt.getLayoutParams();
                        Interpolator interpolator = cVar.c;
                        if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                            if (interpolator != null) {
                                int i16 = cVar.f477a;
                                if ((i16 & 1) != 0) {
                                    topInset = childAt.getHeight() + ((LinearLayout$LayoutParams) cVar).topMargin + ((LinearLayout$LayoutParams) cVar).bottomMargin;
                                    if ((i16 & 2) != 0) {
                                        topInset -= childAt.getMinimumHeight();
                                    }
                                } else {
                                    topInset = 0;
                                }
                                if (childAt.getFitsSystemWindows()) {
                                    topInset -= appBarLayout.getTopInset();
                                }
                                if (topInset > 0) {
                                    float f8 = topInset;
                                    top = (childAt.getTop() + Math.round(interpolator.getInterpolation((iAbs - childAt.getTop()) / f8) * f8)) * Integer.signum(iClamp);
                                    break;
                                }
                            }
                        } else {
                            i15++;
                        }
                    }
                    top = iClamp;
                    break;
                }
                i iVar = this.f485a;
                int i17 = 1;
                if (iVar != null) {
                    if (iVar.c != top) {
                        iVar.c = top;
                        iVar.b();
                        z8 = true;
                    }
                    int i18 = iC - iClamp;
                    this.f1121j = iClamp - top;
                    if (z8) {
                        i13 = 0;
                        while (i13 < appBarLayout.getChildCount()) {
                            c3.c cVar2 = (c3.c) appBarLayout.getChildAt(i13).getLayoutParams();
                            hVar = cVar2.f478b;
                            if (hVar == null && (cVar2.f477a & i17) != 0) {
                                View childAt2 = appBarLayout.getChildAt(i13);
                                float fA = a();
                                Rect rect = (Rect) hVar.d;
                                Rect rect2 = (Rect) hVar.c;
                                childAt2.getDrawingRect(rect2);
                                appBarLayout.offsetDescendantRectToMyCoords(childAt2, rect2);
                                rect2.offset(0, -appBarLayout.getTopInset());
                                float fAbs = rect2.top - Math.abs(fA);
                                if (fAbs <= 0.0f) {
                                    float fClamp = 1.0f - MathUtils.clamp(Math.abs(fAbs / rect2.height()), 0.0f, 1.0f);
                                    float fHeight = (-fAbs) - ((rect2.height() * 0.3f) * (1.0f - (fClamp * fClamp)));
                                    childAt2.setTranslationY(fHeight);
                                    childAt2.getDrawingRect(rect);
                                    rect.offset(0, (int) (-fHeight));
                                    if (fHeight >= rect.height()) {
                                        childAt2.setAlpha(0.0f);
                                    } else {
                                        childAt2.setAlpha(1.0f);
                                    }
                                    childAt2.setClipBounds(rect);
                                } else {
                                    childAt2.setClipBounds(null);
                                    childAt2.setTranslationY(0.0f);
                                    childAt2.setAlpha(1.0f);
                                }
                            }
                            i13++;
                            i17 = 1;
                        }
                    }
                    if (!z8 && appBarLayout.f1103f) {
                        coordinatorLayout.dispatchDependentViewsChanged(appBarLayout);
                    }
                    appBarLayout.f1102b = a();
                    if (!appBarLayout.willNotDraw()) {
                        appBarLayout.postInvalidateOnAnimation();
                    }
                    if (iClamp < iC) {
                        i12 = -1;
                    } else {
                        i12 = 1;
                    }
                    l(coordinatorLayout, appBarLayout, iClamp, i12, false);
                    i14 = i18;
                } else {
                    this.f486b = top;
                }
                z8 = false;
                int i19 = iC - iClamp;
                this.f1121j = iClamp - top;
                if (z8) {
                    i13 = 0;
                    while (i13 < appBarLayout.getChildCount()) {
                        c3.c cVar3 = (c3.c) appBarLayout.getChildAt(i13).getLayoutParams();
                        hVar = cVar3.f478b;
                        if (hVar == null) {
                        }
                        i13++;
                        i17 = 1;
                    }
                }
                if (!z8) {
                    coordinatorLayout.dispatchDependentViewsChanged(appBarLayout);
                }
                appBarLayout.f1102b = a();
                if (!appBarLayout.willNotDraw()) {
                    appBarLayout.postInvalidateOnAnimation();
                }
                if (iClamp < iC) {
                    i12 = -1;
                } else {
                    i12 = 1;
                }
                l(coordinatorLayout, appBarLayout, iClamp, i12, false);
                i14 = i19;
            }
        }
        if (!ViewCompat.hasAccessibilityDelegate(coordinatorLayout)) {
            ViewCompat.setAccessibilityDelegate(coordinatorLayout, new b(coordinatorLayout, this, appBarLayout));
        }
        return i14;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i9) {
        int iAbs = Math.abs(c() - i9);
        float fAbs = Math.abs(0.0f);
        int iRound = fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
        int iC = c();
        ValueAnimator valueAnimator = this.f1123l;
        if (iC == i9) {
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                return;
            }
            this.f1123l.cancel();
            return;
        }
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f1123l = valueAnimator2;
            valueAnimator2.setInterpolator(b3.a.e);
            this.f1123l.addUpdateListener(new a(coordinatorLayout, this, appBarLayout));
        } else {
            valueAnimator.cancel();
        }
        this.f1123l.setDuration(Math.min(iRound, 600));
        this.f1123l.setIntValues(iC, i9);
        this.f1123l.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:9:0x002b  */
    public final void i(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i9, int[] iArr) {
        AppBarLayout appBarLayout2;
        int i10;
        int downNestedPreScrollRange;
        if (i9 == 0) {
            appBarLayout2 = appBarLayout;
        } else {
            if (i9 < 0) {
                i10 = -appBarLayout.getTotalScrollRange();
                downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange() + i10;
            } else {
                i10 = -appBarLayout.getUpNestedPreScrollRange();
                downNestedPreScrollRange = 0;
            }
            int i11 = i10;
            int i12 = downNestedPreScrollRange;
            if (i11 != i12) {
                appBarLayout2 = appBarLayout;
                iArr[1] = d(coordinatorLayout, appBarLayout2, c() - i9, i11, i12);
            } else {
                appBarLayout2 = appBarLayout;
            }
        }
        if (appBarLayout2.f1109l) {
            appBarLayout2.e(appBarLayout2.f(view));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d j(Parcelable parcelable, AppBarLayout appBarLayout) {
        int iA = a();
        int childCount = appBarLayout.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = appBarLayout.getChildAt(i9);
            int bottom = childAt.getBottom() + iA;
            if (childAt.getTop() + iA <= 0 && bottom >= 0) {
                if (parcelable == null) {
                    parcelable = AbsSavedState.EMPTY_STATE;
                }
                d dVar = new d(parcelable);
                boolean z8 = iA == 0;
                dVar.c = z8;
                dVar.f1133b = !z8 && (-iA) >= appBarLayout.getTotalScrollRange();
                dVar.d = i9;
                dVar.f1134f = bottom == appBarLayout.getTopInset() + childAt.getMinimumHeight();
                dVar.e = bottom / childAt.getHeight();
                return dVar;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
        int paddingTop = appBarLayout.getPaddingTop() + appBarLayout.getTopInset();
        int iC = c() - paddingTop;
        int childCount = appBarLayout.getChildCount();
        int i9 = 0;
        while (true) {
            if (i9 >= childCount) {
                i9 = -1;
                break;
            }
            View childAt = appBarLayout.getChildAt(i9);
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            c3.c cVar = (c3.c) childAt.getLayoutParams();
            if ((cVar.f477a & 32) == 32) {
                top -= ((LinearLayout$LayoutParams) cVar).topMargin;
                bottom += ((LinearLayout$LayoutParams) cVar).bottomMargin;
            }
            int i10 = -iC;
            if (top <= i10 && bottom >= i10) {
                break;
            } else {
                i9++;
            }
        }
        if (i9 >= 0) {
            View childAt2 = appBarLayout.getChildAt(i9);
            c3.c cVar2 = (c3.c) childAt2.getLayoutParams();
            int i11 = cVar2.f477a;
            if ((i11 & 17) == 17) {
                int topInset = -childAt2.getTop();
                int minimumHeight = -childAt2.getBottom();
                if (i9 == 0 && appBarLayout.getFitsSystemWindows() && childAt2.getFitsSystemWindows()) {
                    topInset -= appBarLayout.getTopInset();
                }
                if ((i11 & 2) == 2) {
                    minimumHeight += childAt2.getMinimumHeight();
                } else if ((i11 & 5) == 5) {
                    int minimumHeight2 = childAt2.getMinimumHeight() + minimumHeight;
                    if (iC < minimumHeight2) {
                        topInset = minimumHeight2;
                    } else {
                        minimumHeight = minimumHeight2;
                    }
                }
                if ((i11 & 32) == 32) {
                    topInset += ((LinearLayout$LayoutParams) cVar2).topMargin;
                    minimumHeight -= ((LinearLayout$LayoutParams) cVar2).bottomMargin;
                }
                if (iC < (minimumHeight + topInset) / 2) {
                    topInset = minimumHeight;
                }
                g(coordinatorLayout, appBarLayout, MathUtils.clamp(topInset + paddingTop, -appBarLayout.getTotalScrollRange(), 0));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // c3.h, androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i9) {
        int iRound;
        AppBarLayout appBarLayout = (AppBarLayout) view;
        super.onLayoutChild(coordinatorLayout, appBarLayout, i9);
        int pendingAction = appBarLayout.getPendingAction();
        d dVar = this.f1124m;
        if (dVar == null || (pendingAction & 8) != 0) {
            if (pendingAction != 0) {
                boolean z8 = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i10 = -appBarLayout.getUpNestedPreScrollRange();
                    if (z8) {
                        g(coordinatorLayout, appBarLayout, i10);
                    } else {
                        e(coordinatorLayout, appBarLayout, i10);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z8) {
                        g(coordinatorLayout, appBarLayout, 0);
                    } else {
                        e(coordinatorLayout, appBarLayout, 0);
                    }
                }
            }
        } else if (dVar.f1133b) {
            e(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange());
        } else if (dVar.c) {
            e(coordinatorLayout, appBarLayout, 0);
        } else {
            View childAt = appBarLayout.getChildAt(dVar.d);
            int i11 = -childAt.getBottom();
            if (this.f1124m.f1134f) {
                iRound = appBarLayout.getTopInset() + childAt.getMinimumHeight() + i11;
            } else {
                iRound = Math.round(childAt.getHeight() * this.f1124m.e) + i11;
            }
            e(coordinatorLayout, appBarLayout, iRound);
        }
        appBarLayout.f1104g = 0;
        this.f1124m = null;
        int iClamp = MathUtils.clamp(a(), -appBarLayout.getTotalScrollRange(), 0);
        i iVar = this.f485a;
        if (iVar == null) {
            this.f486b = iClamp;
        } else if (iVar.c != iClamp) {
            iVar.c = iClamp;
            iVar.b();
        }
        l(coordinatorLayout, appBarLayout, a(), 0, true);
        appBarLayout.f1102b = a();
        if (!appBarLayout.willNotDraw()) {
            appBarLayout.postInvalidateOnAnimation();
        }
        if (!ViewCompat.hasAccessibilityDelegate(coordinatorLayout)) {
            ViewCompat.setAccessibilityDelegate(coordinatorLayout, new b(coordinatorLayout, this, appBarLayout));
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i9, int i10, int i11, int i12) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        if (((ViewGroup$MarginLayoutParams) ((CoordinatorLayout$LayoutParams) appBarLayout.getLayoutParams())).height != -2) {
            return super.onMeasureChild(coordinatorLayout, appBarLayout, i9, i10, i11, i12);
        }
        coordinatorLayout.onMeasureChild(appBarLayout, i9, i10, View$MeasureSpec.makeMeasureSpec(0, 0), i12);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i9, int i10, int[] iArr, int i11) {
        i(coordinatorLayout, (AppBarLayout) view, view2, i10, iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i9, int i10, int i11, int i12, int i13, int[] iArr) {
        CoordinatorLayout coordinatorLayout2;
        AppBarLayout appBarLayout = (AppBarLayout) view;
        if (i12 < 0) {
            int i14 = -appBarLayout.getDownNestedScrollRange();
            coordinatorLayout2 = coordinatorLayout;
            iArr[1] = d(coordinatorLayout2, appBarLayout, c() - i12, i14, 0);
        } else {
            coordinatorLayout2 = coordinatorLayout;
        }
        if (i12 != 0 || ViewCompat.hasAccessibilityDelegate(coordinatorLayout2)) {
            return;
        }
        ViewCompat.setAccessibilityDelegate(coordinatorLayout2, new b(coordinatorLayout2, this, appBarLayout));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        if (!(parcelable instanceof d)) {
            super.onRestoreInstanceState(coordinatorLayout, appBarLayout, parcelable);
            this.f1124m = null;
        } else {
            d dVar = (d) parcelable;
            this.f1124m = dVar;
            super.onRestoreInstanceState(coordinatorLayout, appBarLayout, dVar.getSuperState());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, appBarLayout);
        d dVarJ = j(parcelableOnSaveInstanceState, appBarLayout);
        return dVarJ == null ? parcelableOnSaveInstanceState : dVarJ;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i9, int i10) {
        ValueAnimator valueAnimator;
        AppBarLayout appBarLayout = (AppBarLayout) view;
        boolean z8 = (i9 & 2) != 0 && (appBarLayout.f1109l || appBarLayout.f1108k || (appBarLayout.getTotalScrollRange() != 0 && coordinatorLayout.getHeight() - view2.getHeight() <= appBarLayout.getHeight()));
        if (z8 && (valueAnimator = this.f1123l) != null) {
            valueAnimator.cancel();
        }
        this.f1125n = null;
        this.f1122k = i10;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onStopNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i9) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        if (this.f1122k == 0 || i9 == 1) {
            k(coordinatorLayout, appBarLayout);
            if (appBarLayout.f1109l) {
                appBarLayout.e(appBarLayout.f(view2));
            }
        }
        this.f1125n = new WeakReference(view2);
    }

    public AppBarLayout$BaseBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f480f = -1;
        this.f482h = -1;
    }
}

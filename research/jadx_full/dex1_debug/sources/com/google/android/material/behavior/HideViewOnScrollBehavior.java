package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.g;
import e3.a;
import e3.b;
import e3.c;
import e3.d;
import j1.i;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class HideViewOnScrollBehavior<V extends View> extends CoordinatorLayout$Behavior<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f1143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AccessibilityManager f1144b;
    public a c;
    public final boolean d;
    public final LinkedHashSet e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1145f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1146g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TimeInterpolator f1147h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TimeInterpolator f1148i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1149j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1150k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ViewPropertyAnimator f1151l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HideViewOnScrollBehavior() {
        this.d = true;
        this.e = new LinkedHashSet();
        this.f1149j = 0;
        this.f1150k = 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9) {
        int i10;
        d dVar = this.f1143a;
        if (dVar != null) {
            switch (dVar.f2033a) {
                case 0:
                    i10 = 1;
                    break;
                case 1:
                    i10 = 2;
                    break;
                default:
                    i10 = 0;
                    break;
            }
            if (i10 == i9) {
                return;
            }
        }
        if (i9 == 0) {
            this.f1143a = new d(2);
            return;
        }
        if (i9 == 1) {
            this.f1143a = new d(0);
        } else if (i9 == 2) {
            this.f1143a = new d(1);
        } else {
            i.k(ai.onnxruntime.a.f(i9, "Invalid view edge position value: ", ". Must be 0, 1 or 2."));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(View view) {
        if (this.f1150k == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f1151l;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f1150k = 2;
        Iterator it = this.e.iterator();
        if (it.hasNext()) {
            throw g.b(it);
        }
        this.f1143a.getClass();
        this.f1151l = this.f1143a.k(0, view).setInterpolator(this.f1147h).setDuration(this.f1145f).setListener(new c(1, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i9) {
        int measuredHeight;
        int i10;
        if (this.f1144b == null) {
            this.f1144b = (AccessibilityManager) ContextCompat.getSystemService(view.getContext(), AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.f1144b;
        if (accessibilityManager != null && this.c == null) {
            a aVar = new a(this, view, 1);
            this.c = aVar;
            accessibilityManager.addTouchExplorationStateChangeListener(aVar);
            view.addOnAttachStateChangeListener(new b(1, this));
        }
        ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) view.getLayoutParams();
        int i11 = ((CoordinatorLayout$LayoutParams) view.getLayoutParams()).gravity;
        if (i11 == 80 || i11 == 81) {
            a(1);
        } else {
            int absoluteGravity = Gravity.getAbsoluteGravity(i11, i9);
            a((absoluteGravity == 3 || absoluteGravity == 19) ? 2 : 0);
        }
        switch (this.f1143a.f2033a) {
            case 0:
                measuredHeight = view.getMeasuredHeight();
                i10 = viewGroup$MarginLayoutParams.bottomMargin;
                break;
            case 1:
                measuredHeight = view.getMeasuredWidth();
                i10 = viewGroup$MarginLayoutParams.leftMargin;
                break;
            default:
                measuredHeight = view.getMeasuredWidth();
                i10 = viewGroup$MarginLayoutParams.rightMargin;
                break;
        }
        this.f1149j = measuredHeight + i10;
        this.f1145f = com.bumptech.glide.d.q(view.getContext(), 2130904052, 225);
        this.f1146g = com.bumptech.glide.d.q(view.getContext(), 2130904058, 175);
        this.f1147h = com.bumptech.glide.d.r(view.getContext(), 2130904068, b3.a.d);
        this.f1148i = com.bumptech.glide.d.r(view.getContext(), 2130904068, b3.a.c);
        return super.onLayoutChild(coordinatorLayout, view, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i9, int i10, int i11, int i12, int i13, int[] iArr) {
        AccessibilityManager accessibilityManager;
        if (i10 <= 0) {
            if (i10 < 0) {
                b(view);
                return;
            }
            return;
        }
        if (this.f1150k == 1) {
            return;
        }
        if (this.d && (accessibilityManager = this.f1144b) != null && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f1151l;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f1150k = 1;
        Iterator it = this.e.iterator();
        if (it.hasNext()) {
            throw g.b(it);
        }
        this.f1151l = this.f1143a.k(this.f1149j, view).setInterpolator(this.f1148i).setDuration(this.f1146g).setListener(new c(1, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i9, int i10) {
        return i9 == 2;
    }

    public HideViewOnScrollBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = true;
        this.e = new LinkedHashSet();
        this.f1149j = 0;
        this.f1150k = 2;
    }
}

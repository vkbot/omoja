package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.d;
import com.bumptech.glide.g;
import e3.a;
import e3.b;
import e3.c;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout$Behavior<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f1135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1136b;
    public int c;
    public TimeInterpolator d;
    public TimeInterpolator e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1137f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AccessibilityManager f1138g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a f1139h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f1140i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1141j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ViewPropertyAnimator f1142k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HideBottomViewOnScrollBehavior() {
        this.f1135a = new LinkedHashSet();
        this.f1137f = 0;
        this.f1140i = true;
        this.f1141j = 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(View view) {
        if (this.f1141j == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f1142k;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f1141j = 2;
        Iterator it = this.f1135a.iterator();
        if (it.hasNext()) {
            throw g.b(it);
        }
        this.f1142k = view.animate().translationY(0).setInterpolator(this.d).setDuration(this.f1136b).setListener(new c(0, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i9) {
        this.f1137f = view.getMeasuredHeight() + ((ViewGroup$MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.f1136b = d.q(view.getContext(), 2130904052, 225);
        this.c = d.q(view.getContext(), 2130904058, 175);
        this.d = d.r(view.getContext(), 2130904068, b3.a.d);
        this.e = d.r(view.getContext(), 2130904068, b3.a.c);
        if (this.f1138g == null) {
            this.f1138g = (AccessibilityManager) ContextCompat.getSystemService(view.getContext(), AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.f1138g;
        if (accessibilityManager != null && this.f1139h == null) {
            a aVar = new a(this, view, 0);
            this.f1139h = aVar;
            accessibilityManager.addTouchExplorationStateChangeListener(aVar);
            view.addOnAttachStateChangeListener(new b(0, this));
        }
        return super.onLayoutChild(coordinatorLayout, view, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i9, int i10, int i11, int i12, int i13, int[] iArr) {
        AccessibilityManager accessibilityManager;
        if (i10 <= 0) {
            if (i10 < 0) {
                a(view);
                return;
            }
            return;
        }
        if (this.f1141j == 1) {
            return;
        }
        if (this.f1140i && (accessibilityManager = this.f1138g) != null && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f1142k;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f1141j = 1;
        Iterator it = this.f1135a.iterator();
        if (it.hasNext()) {
            throw g.b(it);
        }
        this.f1142k = view.animate().translationY(this.f1137f).setInterpolator(this.e).setDuration(this.c).setListener(new c(0, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i9, int i10) {
        return i9 == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1135a = new LinkedHashSet();
        this.f1137f = 0;
        this.f1140i = true;
        this.f1141j = 2;
    }
}

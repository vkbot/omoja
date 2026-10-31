package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ViewDragHelper;
import p019b4.C0895f;
import p050e3.C1462e;
import p050e3.C1463f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* JADX INFO: renamed from: a */
    public ViewDragHelper f2113a;

    /* JADX INFO: renamed from: b */
    public C0895f f2114b;

    /* JADX INFO: renamed from: c */
    public boolean f2115c;

    /* JADX INFO: renamed from: d */
    public boolean f2116d;

    /* JADX INFO: renamed from: e */
    public int f2117e = 2;

    /* JADX INFO: renamed from: f */
    public final float f2118f = 0.5f;

    /* JADX INFO: renamed from: g */
    public float f2119g = 0.0f;

    /* JADX INFO: renamed from: h */
    public float f2120h = 0.5f;

    /* JADX INFO: renamed from: i */
    public final C1462e f2121i = new C1462e(this);

    /* JADX INFO: renamed from: a */
    public boolean mo1753a(View view) {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zIsPointInChildBounds = this.f2115c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zIsPointInChildBounds = coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f2115c = zIsPointInChildBounds;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f2115c = false;
        }
        if (zIsPointInChildBounds) {
            if (this.f2113a == null) {
                this.f2113a = ViewDragHelper.create(coordinatorLayout, this.f2121i);
            }
            if (!this.f2116d && this.f2113a.shouldInterceptTouchEvent(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, view, i10);
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            ViewCompat.removeAccessibilityAction(view, 1048576);
            if (mo1753a(view)) {
                ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new C1463f(this));
            }
        }
        return zOnLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.f2113a == null) {
            return false;
        }
        if (this.f2116d && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f2113a.processTouchEvent(motionEvent);
        return true;
    }
}

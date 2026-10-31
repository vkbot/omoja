package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;
import androidx.customview.widget.ViewDragHelper;
import b4.f;
import e3.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout$Behavior<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ViewDragHelper f1152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f f1153b;
    public boolean c;
    public boolean d;
    public int e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f1154f = 0.5f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f1155g = 0.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f1156h = 0.5f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e f1157i = new e(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean a(View view) {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zIsPointInChildBounds = this.c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zIsPointInChildBounds = coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.c = zIsPointInChildBounds;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.c = false;
        }
        if (zIsPointInChildBounds) {
            if (this.f1152a == null) {
                this.f1152a = ViewDragHelper.create(coordinatorLayout, this.f1157i);
            }
            if (!this.d && this.f1152a.shouldInterceptTouchEvent(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i9) {
        boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, view, i9);
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            ViewCompat.removeAccessibilityAction(view, 1048576);
            if (a(view)) {
                ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_DISMISS, null, new e3.f(this));
            }
        }
        return zOnLayoutChild;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.f1152a == null) {
            return false;
        }
        if (this.d && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f1152a.processTouchEvent(motionEvent);
        return true;
    }
}

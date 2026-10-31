package com.google.android.material.snackbar;

import android.support.v4.media.C0090h;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import p019b4.AbstractC0898i;
import p019b4.C0896g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* JADX INFO: renamed from: j */
    public final C0896g f2425j;

    public BaseTransientBottomBar$Behavior() {
        C0896g c0896g = new C0896g();
        this.f2119g = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        this.f2120h = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        this.f2117e = 0;
        this.f2425j = c0896g;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    /* JADX INFO: renamed from: a */
    public final boolean mo1753a(View view) {
        this.f2425j.getClass();
        return view instanceof AbstractC0898i;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f2425j.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                C0090h.m233j().m253t(null);
            }
        } else if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            C0090h.m233j().m250p(null);
        }
        return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
    }
}

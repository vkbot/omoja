package com.google.android.material.snackbar;

import android.support.v4.media.h;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b4.g;
import b4.i;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final g f1355j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BaseTransientBottomBar$Behavior() {
        g gVar = new g();
        this.f1155g = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        this.f1156h = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        this.e = 0;
        this.f1355j = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean a(View view) {
        this.f1355j.getClass();
        return view instanceof i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f1355j.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                h.j().t(null);
            }
        } else if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            h.j().p(null);
        }
        return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
    }
}

package com.google.android.material.timepicker;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;

/* JADX INFO: renamed from: com.google.android.material.timepicker.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnTouchListenerC1127k implements View.OnTouchListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ GestureDetector f2605b;

    public ViewOnTouchListenerC1127k(GestureDetector gestureDetector) {
        this.f2605b = gestureDetector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (((Checkable) view).isChecked()) {
            return this.f2605b.onTouchEvent(motionEvent);
        }
        return false;
    }
}

package com.google.android.material.timepicker;

import android.view.ViewTreeObserver;

/* JADX INFO: renamed from: com.google.android.material.timepicker.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC1118b implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ ClockFaceView f2598b;

    public ViewTreeObserverOnPreDrawListenerC1118b(ClockFaceView clockFaceView) {
        this.f2598b = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        ClockFaceView clockFaceView = this.f2598b;
        ClockHandView clockHandView = clockFaceView.f2566e;
        if (clockFaceView.isShown()) {
            clockFaceView.getViewTreeObserver().removeOnPreDrawListener(this);
            int height = ((clockFaceView.getHeight() / 2) - clockHandView.f2585e) - clockFaceView.f2574m;
            if (height != clockFaceView.f2603c) {
                clockFaceView.f2603c = height;
                clockFaceView.mo1873a();
                clockHandView.f2593m = clockFaceView.f2603c;
                clockHandView.invalidate();
            }
        }
        return true;
    }
}

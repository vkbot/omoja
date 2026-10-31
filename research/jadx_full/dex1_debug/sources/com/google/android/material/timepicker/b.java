package com.google.android.material.timepicker;

import android.view.ViewTreeObserver$OnPreDrawListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements ViewTreeObserver$OnPreDrawListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f1452b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(ClockFaceView clockFaceView) {
        this.f1452b = clockFaceView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnPreDrawListener
    public final boolean onPreDraw() {
        ClockFaceView clockFaceView = this.f1452b;
        ClockHandView clockHandView = clockFaceView.e;
        if (clockFaceView.isShown()) {
            clockFaceView.getViewTreeObserver().removeOnPreDrawListener(this);
            int height = ((clockFaceView.getHeight() / 2) - clockHandView.e) - clockFaceView.f1433m;
            if (height != clockFaceView.c) {
                clockFaceView.c = height;
                clockFaceView.a();
                clockHandView.f1448m = clockFaceView.c;
                clockHandView.invalidate();
            }
        }
        return true;
    }
}

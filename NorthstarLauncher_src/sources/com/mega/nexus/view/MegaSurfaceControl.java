package com.mega.nexus.view;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.Log;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewRootImpl;

/* JADX INFO: loaded from: classes2.dex */
public final class MegaSurfaceControl {
    private static final String TAG = "MegaSurfaceControl";

    public static Bitmap screenshot(Rect rect, int i, int i2, int i3) {
        return MegaSurfaceControlAdapter.screenshot(rect, i, i2, i3);
    }

    public static boolean setBackgroundBlurRadius(View view, int i) {
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        ViewRootImpl viewRootImpl = view.getViewRootImpl();
        if (viewRootImpl == null) {
            Log.w(TAG, "viewRoot is null");
            return false;
        }
        SurfaceControl surfaceControl = viewRootImpl.getSurfaceControl();
        if (!surfaceControl.isValid()) {
            Log.w(TAG, "surfaceControl is not valid");
            return false;
        }
        transaction.setBackgroundBlurRadius(surfaceControl, i);
        transaction.apply();
        return true;
    }
}

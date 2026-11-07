package com.android.server.policy;

import android.os.IBinder;
import android.view.View;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
class SplashScreenSurface implements WindowManagerPolicy.StartingSurface {
    private static final String TAG = "WindowManager";
    private final IBinder mAppToken;
    private final View mView;

    SplashScreenSurface(View view, IBinder appToken) {
        this.mView = view;
        this.mAppToken = appToken;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.StartingSurface
    public void remove() {
        WindowManager wm = (WindowManager) this.mView.getContext().getSystemService(WindowManager.class);
        wm.removeView(this.mView);
    }
}

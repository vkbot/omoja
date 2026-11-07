package com.android.server.wm;

import com.android.server.policy.WindowManagerPolicy;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StartingData {
    protected final WindowManagerService mService;

    abstract WindowManagerPolicy.StartingSurface createStartingSurface(ActivityRecord activityRecord);

    protected StartingData(WindowManagerService service) {
        this.mService = service;
    }
}

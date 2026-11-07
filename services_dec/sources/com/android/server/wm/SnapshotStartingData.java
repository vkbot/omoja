package com.android.server.wm;

import android.app.ActivityManager;
import com.android.server.policy.WindowManagerPolicy;

/* JADX INFO: loaded from: classes2.dex */
class SnapshotStartingData extends StartingData {
    private final WindowManagerService mService;
    private final ActivityManager.TaskSnapshot mSnapshot;

    SnapshotStartingData(WindowManagerService service, ActivityManager.TaskSnapshot snapshot) {
        super(service);
        this.mService = service;
        this.mSnapshot = snapshot;
    }

    @Override // com.android.server.wm.StartingData
    WindowManagerPolicy.StartingSurface createStartingSurface(ActivityRecord activity) {
        return this.mService.mTaskSnapshotController.createStartingSurface(activity, this.mSnapshot);
    }
}

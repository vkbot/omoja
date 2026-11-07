package com.android.server.rollback;

import android.content.Context;
import com.android.server.SystemService;

/* JADX INFO: loaded from: classes2.dex */
public final class RollbackManagerService extends SystemService {
    private RollbackManagerServiceImpl mService;

    public RollbackManagerService(Context context) {
        super(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.IBinder, com.android.server.rollback.RollbackManagerServiceImpl] */
    @Override // com.android.server.SystemService
    public void onStart() {
        ?? rollbackManagerServiceImpl = new RollbackManagerServiceImpl(getContext());
        this.mService = rollbackManagerServiceImpl;
        publishBinderService("rollback", rollbackManagerServiceImpl);
    }

    @Override // com.android.server.SystemService
    public void onUnlockUser(int user) {
        this.mService.onUnlockUser(user);
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 1000) {
            this.mService.onBootCompleted();
        }
    }
}

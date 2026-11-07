package com.android.server;

import android.content.Context;
import android.os.UserManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class BluetoothService extends SystemService {
    private static final String TAG = "BluetoothService";
    private BluetoothManagerService mBluetoothManagerService;
    private boolean mInitialized;

    public BluetoothService(Context context) {
        super(context);
        this.mInitialized = false;
        this.mBluetoothManagerService = new BluetoothManagerService(context);
    }

    private void initialize() {
        if (!this.mInitialized) {
            this.mBluetoothManagerService.handleOnBootPhase();
            this.mInitialized = true;
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        Log.d(TAG, "onBootPhase(): phase: " + phase);
        if (phase == 500) {
            publishBinderService("bluetooth_manager", this.mBluetoothManagerService);
        } else if (phase == 1000 && !UserManager.isHeadlessSystemUserMode()) {
            initialize();
        }
    }

    @Override // com.android.server.SystemService
    public void onSwitchUser(int userHandle) {
        Log.d(TAG, "onSwitchUser(): userHandle: " + userHandle + ", mInitialized: " + this.mInitialized);
        if (!this.mInitialized) {
            initialize();
        } else {
            this.mBluetoothManagerService.handleOnSwitchUser(userHandle);
        }
    }

    @Override // com.android.server.SystemService
    public void onUnlockUser(int userHandle) {
        this.mBluetoothManagerService.handleOnUnlockUser(userHandle);
    }
}

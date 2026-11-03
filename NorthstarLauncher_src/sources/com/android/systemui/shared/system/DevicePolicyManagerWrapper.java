package com.android.systemui.shared.system;

import android.app.AppGlobals;
import android.app.admin.DevicePolicyManager;

/* JADX INFO: loaded from: classes.dex */
public class DevicePolicyManagerWrapper {
    private static final DevicePolicyManagerWrapper sInstance = new DevicePolicyManagerWrapper();
    private static final DevicePolicyManager sDevicePolicyManager = (DevicePolicyManager) AppGlobals.getInitialApplication().getSystemService(DevicePolicyManager.class);

    public static DevicePolicyManagerWrapper getInstance() {
        return sInstance;
    }

    private DevicePolicyManagerWrapper() {
    }

    public boolean isLockTaskPermitted(String str) {
        return sDevicePolicyManager.isLockTaskPermitted(str);
    }
}

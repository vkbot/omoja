package com.mega.nexus.app;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.os.UserHandle;

/* JADX INFO: loaded from: classes2.dex */
public class MegaDevicePolicyManager {
    public static ComponentName getProfileOwnerAsUser(DevicePolicyManager devicePolicyManager, int i) {
        return devicePolicyManager.getProfileOwnerAsUser(i);
    }

    public static ComponentName getDeviceOwnerComponentOnAnyUser(DevicePolicyManager devicePolicyManager) {
        return devicePolicyManager.getDeviceOwnerComponentOnAnyUser();
    }

    public static UserHandle getDeviceOwnerUser(DevicePolicyManager devicePolicyManager) {
        return devicePolicyManager.getDeviceOwnerUser();
    }

    public static boolean isDeviceOwnerAppOnAnyUser(DevicePolicyManager devicePolicyManager, String str) {
        return devicePolicyManager.isDeviceOwnerAppOnAnyUser(str);
    }

    public static boolean packageHasActiveAdmins(DevicePolicyManager devicePolicyManager, String str) {
        return devicePolicyManager.packageHasActiveAdmins(str);
    }

    public static boolean isUninstallInQueue(DevicePolicyManager devicePolicyManager, String str) {
        return devicePolicyManager.isUninstallInQueue(str);
    }

    public static int getDeviceOwnerUserId(DevicePolicyManager devicePolicyManager) {
        return devicePolicyManager.getDeviceOwnerUserId();
    }
}

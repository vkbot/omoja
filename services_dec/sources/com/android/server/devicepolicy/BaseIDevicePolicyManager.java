package com.android.server.devicepolicy;

import android.accounts.Account;
import android.app.admin.IDevicePolicyManager;
import android.content.ComponentName;
import android.os.UserHandle;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseIDevicePolicyManager extends IDevicePolicyManager.Stub {
    abstract void handleStartUser(int i);

    abstract void handleStopUser(int i);

    abstract void handleUnlockUser(int i);

    abstract void systemReady(int i);

    BaseIDevicePolicyManager() {
    }

    public void clearSystemUpdatePolicyFreezePeriodRecord() {
    }

    public boolean setKeyGrantForApp(ComponentName admin, String callerPackage, String alias, String packageName, boolean hasGrant) {
        return false;
    }

    public void setLocationEnabled(ComponentName who, boolean locationEnabled) {
    }

    public boolean isOrganizationOwnedDeviceWithManagedProfile() {
        return false;
    }

    public int getPersonalAppsSuspendedReasons(ComponentName admin) {
        return 0;
    }

    public void setPersonalAppsSuspended(ComponentName admin, boolean suspended) {
    }

    public void setManagedProfileMaximumTimeOff(ComponentName admin, long timeoutMs) {
    }

    public long getManagedProfileMaximumTimeOff(ComponentName admin) {
        return 0L;
    }

    public boolean canProfileOwnerResetPasswordWhenLocked(int userId) {
        return false;
    }

    public void finalizeWorkProfileProvisioning(UserHandle managedProfileUser, Account migratedAccount) {
    }
}

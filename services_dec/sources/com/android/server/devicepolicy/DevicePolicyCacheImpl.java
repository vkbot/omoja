package com.android.server.devicepolicy;

import android.app.admin.DevicePolicyCache;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.android.internal.util.IndentingPrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class DevicePolicyCacheImpl extends DevicePolicyCache {
    private final Object mLock = new Object();
    private final SparseBooleanArray mScreenCaptureDisabled = new SparseBooleanArray();
    private final SparseIntArray mPasswordQuality = new SparseIntArray();

    public void onUserRemoved(int userHandle) {
        synchronized (this.mLock) {
            this.mScreenCaptureDisabled.delete(userHandle);
            this.mPasswordQuality.delete(userHandle);
        }
    }

    public boolean isScreenCaptureAllowed(int userHandle, boolean ownerCanAddInternalSystemWindow) {
        boolean z;
        synchronized (this.mLock) {
            z = !this.mScreenCaptureDisabled.get(userHandle) || ownerCanAddInternalSystemWindow;
        }
        return z;
    }

    public void setScreenCaptureAllowed(int userHandle, boolean allowed) {
        synchronized (this.mLock) {
            this.mScreenCaptureDisabled.put(userHandle, !allowed);
        }
    }

    public int getPasswordQuality(int userHandle) {
        int i;
        synchronized (this.mLock) {
            i = this.mPasswordQuality.get(userHandle, 0);
        }
        return i;
    }

    public void setPasswordQuality(int userHandle, int quality) {
        synchronized (this.mLock) {
            this.mPasswordQuality.put(userHandle, quality);
        }
    }

    public void dump(IndentingPrintWriter pw) {
        pw.println("Device policy cache:");
        pw.increaseIndent();
        pw.println("Screen capture disabled: " + this.mScreenCaptureDisabled.toString());
        pw.println("Password quality: " + this.mPasswordQuality.toString());
        pw.decreaseIndent();
    }
}

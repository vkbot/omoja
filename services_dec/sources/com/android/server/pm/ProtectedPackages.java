package com.android.server.pm;

import android.R;
import android.content.Context;
import android.util.SparseArray;
import com.android.internal.util.ArrayUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ProtectedPackages {
    private final Context mContext;
    private String mDeviceOwnerPackage;
    private List<String> mDeviceOwnerProtectedPackages;
    private int mDeviceOwnerUserId;
    private final String mDeviceProvisioningPackage;
    private SparseArray<String> mProfileOwnerPackages;

    public ProtectedPackages(Context context) {
        this.mContext = context;
        this.mDeviceProvisioningPackage = context.getResources().getString(R.string.config_ethernet_iface_regex);
    }

    public synchronized void setDeviceAndProfileOwnerPackages(int deviceOwnerUserId, String deviceOwnerPackage, SparseArray<String> profileOwnerPackages) {
        this.mDeviceOwnerUserId = deviceOwnerUserId;
        SparseArray<String> sparseArrayClone = null;
        this.mDeviceOwnerPackage = deviceOwnerUserId == -10000 ? null : deviceOwnerPackage;
        if (profileOwnerPackages != null) {
            sparseArrayClone = profileOwnerPackages.clone();
        }
        this.mProfileOwnerPackages = sparseArrayClone;
    }

    public synchronized void setDeviceOwnerProtectedPackages(List<String> packageNames) {
        this.mDeviceOwnerProtectedPackages = new ArrayList(packageNames);
    }

    private synchronized boolean hasDeviceOwnerOrProfileOwner(int userId, String packageName) {
        if (packageName == null) {
            return false;
        }
        if (this.mDeviceOwnerPackage != null && this.mDeviceOwnerUserId == userId && packageName.equals(this.mDeviceOwnerPackage)) {
            return true;
        }
        return this.mProfileOwnerPackages != null && packageName.equals(this.mProfileOwnerPackages.get(userId));
    }

    public synchronized String getDeviceOwnerOrProfileOwnerPackage(int userId) {
        if (this.mDeviceOwnerUserId == userId) {
            return this.mDeviceOwnerPackage;
        }
        if (this.mProfileOwnerPackages == null) {
            return null;
        }
        return this.mProfileOwnerPackages.get(userId);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0018  */
    private synchronized boolean isProtectedPackage(String packageName) {
        boolean z;
        if (packageName != null) {
            if (packageName.equals(this.mDeviceProvisioningPackage) || ArrayUtils.contains(this.mDeviceOwnerProtectedPackages, packageName)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        return z;
    }

    public boolean isPackageStateProtected(int userId, String packageName) {
        return hasDeviceOwnerOrProfileOwner(userId, packageName) || isProtectedPackage(packageName);
    }

    public boolean isPackageDataProtected(int userId, String packageName) {
        return hasDeviceOwnerOrProfileOwner(userId, packageName) || isProtectedPackage(packageName);
    }
}

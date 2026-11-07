package com.android.server.oemlock;

/* JADX INFO: loaded from: classes.dex */
abstract class OemLock {
    abstract String getLockName();

    abstract boolean isOemUnlockAllowedByCarrier();

    abstract boolean isOemUnlockAllowedByDevice();

    abstract void setOemUnlockAllowedByCarrier(boolean z, byte[] bArr);

    abstract void setOemUnlockAllowedByDevice(boolean z);

    OemLock() {
    }
}

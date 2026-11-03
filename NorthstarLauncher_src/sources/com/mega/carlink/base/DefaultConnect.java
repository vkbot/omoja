package com.mega.carlink.base;

import android.bluetooth.BluetoothDevice;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class DefaultConnect implements ICommonConnect {
    @Override // com.mega.carlink.base.ICommonConnect
    public void create() {
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public void destroy() {
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public IConnectInfoProvider getConnectInfoProvider() {
        return null;
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public int getConnectPlatform() {
        return 0;
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public String getName() {
        return "unknown";
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public void goToDisplayActivity() {
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public boolean isConnected() {
        return false;
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public boolean isConnecting() {
        return false;
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public void registerConnectStatusListener(IDeviceConnectStatusListener iDeviceConnectStatusListener) {
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public void startConnect() {
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public boolean stopConnect(String str) {
        return false;
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public void tryQuickConnect(BluetoothDevice bluetoothDevice) {
    }

    @Override // com.mega.carlink.base.ICommonConnect
    public void unRegisterConnectStatusListener(IDeviceConnectStatusListener iDeviceConnectStatusListener) {
    }
}

package com.mega.carlink.base;

import android.bluetooth.BluetoothDevice;

/* JADX INFO: loaded from: classes2.dex */
public interface ICommonConnect {
    void create();

    void destroy();

    IConnectInfoProvider getConnectInfoProvider();

    int getConnectPlatform();

    String getName();

    void goToDisplayActivity();

    boolean isConnected();

    boolean isConnecting();

    default boolean isForeground() {
        return false;
    }

    default void notifyHungUpCall() {
    }

    default void onApStateChange(boolean z) {
    }

    default void onHotWordReceive(String str, String str2) {
    }

    default void onWifiStateChange(boolean z) {
    }

    void registerConnectStatusListener(IDeviceConnectStatusListener iDeviceConnectStatusListener);

    void startConnect();

    boolean stopConnect(String str);

    default void stopVR() {
    }

    default boolean tryConnectDeviceBluetooth() {
        return false;
    }

    void tryQuickConnect(BluetoothDevice bluetoothDevice);

    void unRegisterConnectStatusListener(IDeviceConnectStatusListener iDeviceConnectStatusListener);
}

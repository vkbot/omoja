package com.mega.sdk.linkmanager;

import android.bluetooth.BluetoothDevice;

/* JADX INFO: loaded from: classes2.dex */
public interface ICarPlayLinkCallback {
    void onCarPlayConnectStatusChanged(int i, int i2, String str);

    void onCarPlayDeviceBatteryLeveChanged(String str, int i);

    void onCarPlayDeviceDeleted(String str);

    default void onCarPlayRequestFromIPhone(BluetoothDevice bluetoothDevice) {
    }

    default void onReceiveUICommand(int i, String str) {
    }
}

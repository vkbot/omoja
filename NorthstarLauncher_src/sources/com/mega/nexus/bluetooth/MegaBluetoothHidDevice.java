package com.mega.nexus.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHidDevice;

/* JADX INFO: loaded from: classes2.dex */
public class MegaBluetoothHidDevice {
    public static boolean setConnectionPolicy(BluetoothHidDevice bluetoothHidDevice, BluetoothDevice bluetoothDevice, int i) {
        return bluetoothHidDevice.setConnectionPolicy(bluetoothDevice, i);
    }
}

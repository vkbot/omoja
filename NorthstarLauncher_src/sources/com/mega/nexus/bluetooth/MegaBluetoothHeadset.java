package com.mega.nexus.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;

/* JADX INFO: loaded from: classes2.dex */
public class MegaBluetoothHeadset {
    public static final String ACTION_ACTIVE_DEVICE_CHANGED = "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED";

    public static boolean disconnect(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        return bluetoothHeadset.disconnect(bluetoothDevice);
    }

    public static boolean connect(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        return bluetoothHeadset.connect(bluetoothDevice);
    }

    public static int getPriority(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        return bluetoothHeadset.getPriority(bluetoothDevice);
    }

    public static boolean setPriority(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice, int i) {
        return MegaBluetoothHeadsetAdapter.setPriority(bluetoothHeadset, bluetoothDevice, i);
    }

    public static boolean setActiveDevice(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        return bluetoothHeadset.setActiveDevice(bluetoothDevice);
    }

    public static BluetoothDevice getActiveDevice(BluetoothHeadset bluetoothHeadset) {
        return bluetoothHeadset.getActiveDevice();
    }

    public static int getConnectionPolicy(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        return bluetoothHeadset.getConnectionPolicy(bluetoothDevice);
    }

    public static boolean setConnectionPolicy(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice, int i) {
        return bluetoothHeadset.setConnectionPolicy(bluetoothDevice, i);
    }
}

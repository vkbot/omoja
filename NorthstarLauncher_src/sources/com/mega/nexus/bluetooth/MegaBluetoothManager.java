package com.mega.nexus.bluetooth;

import android.bluetooth.BluetoothManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaBluetoothManager {
    public static void factoryReset(BluetoothManager bluetoothManager) {
        bluetoothManager.getAdapter().factoryReset();
    }
}

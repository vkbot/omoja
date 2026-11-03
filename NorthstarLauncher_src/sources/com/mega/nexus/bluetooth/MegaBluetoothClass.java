package com.mega.nexus.bluetooth;

import android.bluetooth.BluetoothClass;

/* JADX INFO: loaded from: classes2.dex */
public class MegaBluetoothClass {
    public static final int PROFILE_A2DP = 1;
    public static final int PROFILE_HEADSET = 0;
    public static final int PROFILE_NAP = 5;
    public static final int PROFILE_OPP = 2;
    public static final int PROFILE_PANU = 4;

    public static class Device {
        public static final int PERIPHERAL_KEYBOARD = 1344;
        public static final int PERIPHERAL_KEYBOARD_POINTING = 1472;
        public static final int PERIPHERAL_POINTING = 1408;
    }

    public static boolean doesClassMatch(BluetoothClass bluetoothClass, int i) {
        return bluetoothClass.doesClassMatch(i);
    }
}

package com.mega.nexus.bluetooth;

import android.bluetooth.BluetoothDevice;

/* JADX INFO: loaded from: classes2.dex */
public class MegaBluetoothDevice {
    public static final int ACCESS_ALLOWED = 1;
    public static final int ACCESS_REJECTED = 2;
    public static final int ACCESS_UNKNOWN = 0;
    public static final String ACTION_ALIAS_CHANGED = "android.bluetooth.device.action.ALIAS_CHANGED";
    public static final String ACTION_BATTERY_LEVEL_CHANGED = "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED";
    public static final String ACTION_NAME_CHANGED = "android.bluetooth.device.action.NAME_CHANGED";
    public static final String ACTION_PAIRING_CANCEL = "android.bluetooth.device.action.PAIRING_CANCEL";
    public static final String ACTION_UUID = "android.bluetooth.device.action.UUID";
    public static final int BOND_SUCCESS = 0;
    public static final String EXTRA_REASON = "android.bluetooth.device.extra.REASON";
    public static final int PAIRING_VARIANT_CONSENT = 3;
    public static final int PAIRING_VARIANT_DISPLAY_PASSKEY = 4;
    public static final int PAIRING_VARIANT_DISPLAY_PIN = 5;
    public static final int PAIRING_VARIANT_OOB_CONSENT = 6;
    public static final int PAIRING_VARIANT_PASSKEY = 1;
    public static final int PAIRING_VARIANT_PIN_16_DIGITS = 7;
    public static final int UNBOND_REASON_AUTH_FAILED = 1;
    public static final int UNBOND_REASON_AUTH_REJECTED = 2;
    public static final int UNBOND_REASON_AUTH_TIMEOUT = 6;
    public static final int UNBOND_REASON_DISCOVERY_IN_PROGRESS = 5;
    public static final int UNBOND_REASON_REMOTE_AUTH_CANCELED = 8;
    public static final int UNBOND_REASON_REMOTE_DEVICE_DOWN = 4;
    public static final int UNBOND_REASON_REPEATED_ATTEMPTS = 7;

    public static boolean isConnected(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice.isConnected();
    }

    public static boolean cancelBondProcess(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice.cancelBondProcess();
    }

    public static boolean removeBond(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice.removeBond();
    }

    public static boolean isBondingInitiatedLocally(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice.isBondingInitiatedLocally();
    }

    public static int getPhonebookAccessPermission(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice.getPhonebookAccessPermission();
    }

    public static boolean setPhonebookAccessPermission(BluetoothDevice bluetoothDevice, int i) {
        return bluetoothDevice.setPhonebookAccessPermission(i);
    }

    public static boolean setMessageAccessPermission(BluetoothDevice bluetoothDevice, int i) {
        return bluetoothDevice.setMessageAccessPermission(i);
    }

    public static int getMessageAccessPermission(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice.getMessageAccessPermission();
    }

    public static boolean setSimAccessPermission(BluetoothDevice bluetoothDevice, int i) {
        return bluetoothDevice.setSimAccessPermission(i);
    }

    public static int getSimAccessPermission(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice.getSimAccessPermission();
    }

    public static boolean setPairingConfirmation(BluetoothDevice bluetoothDevice, boolean z) {
        return bluetoothDevice.setPairingConfirmation(z);
    }

    public static byte[] convertPinToBytes(String str) {
        return BluetoothDevice.convertPinToBytes(str);
    }

    public static int getAdapterIndex(BluetoothDevice bluetoothDevice) {
        return MegaBluetoothDeviceAdapter.getAdapterIndex(bluetoothDevice);
    }
}

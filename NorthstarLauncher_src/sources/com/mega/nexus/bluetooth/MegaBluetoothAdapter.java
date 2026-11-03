package com.mega.nexus.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.os.ParcelUuid;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class MegaBluetoothAdapter {

    public static abstract class RoleSwitchListener extends BluetoothAdapter.RoleSwitchListener {
        public void onRoleSwitchChanged(int i, int i2) {
        }
    }

    public static ParcelUuid[] getUuids(BluetoothAdapter bluetoothAdapter) {
        return bluetoothAdapter.getUuids();
    }

    public static int getConnectionState(BluetoothAdapter bluetoothAdapter) {
        return bluetoothAdapter.getConnectionState();
    }

    public static void setDiscoverableTimeout(BluetoothAdapter bluetoothAdapter, int i) {
        MegaBluetoothAdapterWrapper.setDiscoverableTimeout(bluetoothAdapter, i);
    }

    public static long getDiscoveryEndMillis(BluetoothAdapter bluetoothAdapter) {
        return bluetoothAdapter.getDiscoveryEndMillis();
    }

    public static boolean setScanMode(BluetoothAdapter bluetoothAdapter, int i) {
        return MegaBluetoothAdapterWrapper.setScanMode(bluetoothAdapter, i);
    }

    public static List<Integer> getSupportedProfiles(BluetoothAdapter bluetoothAdapter) {
        return bluetoothAdapter.getSupportedProfiles();
    }

    public static boolean featureRoleSwitchSupported(BluetoothAdapter bluetoothAdapter) {
        return bluetoothAdapter.featureRoleSwitchSupported();
    }

    public static boolean switchAvRole(BluetoothAdapter bluetoothAdapter, int i) {
        return bluetoothAdapter.switchAvRole(i);
    }

    public static int getCurrentAvRole(BluetoothAdapter bluetoothAdapter) {
        return bluetoothAdapter.getCurrentAvRole();
    }

    public static void addRoleSwitchListener(BluetoothAdapter bluetoothAdapter, RoleSwitchListener roleSwitchListener) {
        bluetoothAdapter.addRoleSwitchListener(roleSwitchListener);
    }

    public static void removeRoleSwitchListener(BluetoothAdapter bluetoothAdapter, RoleSwitchListener roleSwitchListener) {
        bluetoothAdapter.removeRoleSwitchListener(roleSwitchListener);
    }

    public static boolean connectAllEnabledProfiles(BluetoothAdapter bluetoothAdapter, BluetoothDevice bluetoothDevice) {
        return MegaBluetoothAdapterWrapper.connectAllEnabledProfiles(bluetoothAdapter, bluetoothDevice);
    }

    public static boolean disconnectAllEnabledProfiles(BluetoothAdapter bluetoothAdapter, BluetoothDevice bluetoothDevice) {
        return MegaBluetoothAdapterWrapper.disconnectAllEnabledProfiles(bluetoothAdapter, bluetoothDevice);
    }
}

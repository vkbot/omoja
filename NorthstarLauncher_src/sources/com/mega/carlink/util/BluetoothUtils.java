package com.mega.carlink.util;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.text.TextUtils;
import com.mega.nexus.bluetooth.MegaBluetoothAdapter;
import com.mega.nexus.bluetooth.MegaBluetoothDevice;
import java.util.Set;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothUtils {
    private static final String TAG = "CarLinkBluetoothUtils";
    private static BluetoothUtils sBluetoothUtils;
    private final BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();

    public BluetoothAdapter getAdapter() {
        return this.mBluetoothAdapter;
    }

    public static BluetoothUtils getInstance() {
        if (sBluetoothUtils == null) {
            sBluetoothUtils = new BluetoothUtils();
        }
        return sBluetoothUtils;
    }

    private BluetoothUtils() {
    }

    public BluetoothDevice getDevice(String str) {
        Set<BluetoothDevice> bondedDevices = this.mBluetoothAdapter.getBondedDevices();
        MLog.d(TAG, "getDevice bondedDevices==" + bondedDevices);
        for (BluetoothDevice bluetoothDevice : bondedDevices) {
            if (TextUtils.equals(str, bluetoothDevice.getAddress())) {
                return bluetoothDevice;
            }
        }
        return null;
    }

    public void disconnectAllBluetooth(boolean z) {
        MLog.d(TAG, "disconnectAllBluetooth() isScanModeNone==" + z);
        if (z) {
            MegaBluetoothAdapter.setScanMode(this.mBluetoothAdapter, 20);
        }
        Set<BluetoothDevice> bondedDevices = this.mBluetoothAdapter.getBondedDevices();
        MLog.d(TAG, "disconnectAllBluetooth bondedDevices==" + bondedDevices);
        for (BluetoothDevice bluetoothDevice : bondedDevices) {
            MegaBluetoothDevice.isConnected(bluetoothDevice);
            MLog.d(TAG, "disconnectAllBluetooth name=" + bluetoothDevice.getName());
            MLog.d(TAG, "disconnectAllBluetooth disconnectAllEnabledProfiles: " + MegaBluetoothAdapter.disconnectAllEnabledProfiles(this.mBluetoothAdapter, bluetoothDevice));
        }
    }

    public BluetoothDevice getConnectedDevice() {
        Set<BluetoothDevice> bondedDevices = this.mBluetoothAdapter.getBondedDevices();
        MLog.d(TAG, "getConnectedDevice bondedDevices==" + bondedDevices);
        for (BluetoothDevice bluetoothDevice : bondedDevices) {
            if (MegaBluetoothDevice.isConnected(bluetoothDevice)) {
                MLog.d(TAG, "getConnectedDevice connectedDevice address==" + bluetoothDevice.getAddress() + ", name=" + bluetoothDevice.getName());
                return bluetoothDevice;
            }
        }
        return null;
    }

    public boolean isBluetoothConnected() {
        MLog.d(TAG, "isBluetoothConnected()");
        return getConnectedDevice() != null;
    }

    public void setBluetoothVisible(boolean z) {
        MLog.d(TAG, "setBluetoothVisible: enabled==" + z);
        if (z) {
            MegaBluetoothAdapter.setScanMode(this.mBluetoothAdapter, 21);
        } else {
            MegaBluetoothAdapter.setScanMode(this.mBluetoothAdapter, 20);
        }
    }
}

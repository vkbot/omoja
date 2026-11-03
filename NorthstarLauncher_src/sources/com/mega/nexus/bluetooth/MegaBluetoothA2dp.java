package com.mega.nexus.bluetooth;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothCodecConfig;
import android.bluetooth.BluetoothCodecStatus;
import android.bluetooth.BluetoothDevice;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MegaBluetoothA2dp {
    public static final String ACTION_ACTIVE_DEVICE_CHANGED = "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED";
    public static final int OPTIONAL_CODECS_PREF_DISABLED = 0;
    public static final int OPTIONAL_CODECS_PREF_ENABLED = 1;
    public static final int OPTIONAL_CODECS_PREF_UNKNOWN = -1;
    public static final int OPTIONAL_CODECS_SUPPORTED = 1;

    public static boolean disconnect(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return bluetoothA2dp.disconnect(bluetoothDevice);
    }

    public static boolean connect(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return bluetoothA2dp.connect(bluetoothDevice);
    }

    public static int getPriority(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return bluetoothA2dp.getPriority(bluetoothDevice);
    }

    public static boolean setPriority(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice, int i) {
        return bluetoothA2dp.setPriority(bluetoothDevice, i);
    }

    public static void enableOptionalCodecs(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        bluetoothA2dp.enableOptionalCodecs(bluetoothDevice);
    }

    public static void disableOptionalCodecs(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        bluetoothA2dp.disableOptionalCodecs(bluetoothDevice);
    }

    public static int isOptionalCodecsSupported(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return bluetoothA2dp.isOptionalCodecsSupported(bluetoothDevice);
    }

    public static int isOptionalCodecsEnabled(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return bluetoothA2dp.isOptionalCodecsEnabled(bluetoothDevice);
    }

    public static void setOptionalCodecsEnabled(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice, int i) {
        bluetoothA2dp.setOptionalCodecsEnabled(bluetoothDevice, i);
    }

    public static BluetoothCodecStatus getCodecStatus(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return bluetoothA2dp.getCodecStatus(bluetoothDevice);
    }

    public static boolean setActiveDevice(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return bluetoothA2dp.setActiveDevice(bluetoothDevice);
    }

    public static BluetoothDevice getActiveDevice(BluetoothA2dp bluetoothA2dp) {
        return bluetoothA2dp.getActiveDevice();
    }

    public static boolean isAvrcpAbsoluteVolumeSupported(BluetoothA2dp bluetoothA2dp) {
        return bluetoothA2dp.isAvrcpAbsoluteVolumeSupported();
    }

    public static void setAvrcpAbsoluteVolume(BluetoothA2dp bluetoothA2dp, int i) {
        bluetoothA2dp.setAvrcpAbsoluteVolume(i);
    }

    public static boolean shouldSendVolumeKeys(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return bluetoothA2dp.shouldSendVolumeKeys(bluetoothDevice);
    }

    public static void setCodecConfigPreference(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice, BluetoothCodecConfig bluetoothCodecConfig) {
        bluetoothA2dp.setCodecConfigPreference(bluetoothDevice, bluetoothCodecConfig);
    }

    public static List<BluetoothDevice> getConnectedDevices(BluetoothA2dp bluetoothA2dp) {
        return bluetoothA2dp.getConnectedDevices();
    }

    public static List<BluetoothDevice> getDevicesMatchingConnectionStates(BluetoothA2dp bluetoothA2dp, int[] iArr) {
        return bluetoothA2dp.getDevicesMatchingConnectionStates(iArr);
    }

    public static int getConnectionState(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return bluetoothA2dp.getConnectionState(bluetoothDevice);
    }

    public boolean isA2dpPlaying(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return bluetoothA2dp.isA2dpPlaying(bluetoothDevice);
    }

    public static int getConnectionPolicy(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return bluetoothA2dp.getConnectionPolicy(bluetoothDevice);
    }

    public static boolean setConnectionPolicy(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice, int i) {
        return bluetoothA2dp.setConnectionPolicy(bluetoothDevice, i);
    }
}

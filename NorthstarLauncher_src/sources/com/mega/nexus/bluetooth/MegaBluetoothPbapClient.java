package com.mega.nexus.bluetooth;

import android.bluetooth.BluetoothPbapClient;
import android.bluetooth.BluetoothPbapClientCallback;

/* JADX INFO: loaded from: classes2.dex */
public class MegaBluetoothPbapClient {
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_PHONEBOOK_DOWNLOAD_STATE_CHANGED = "android.bluetooth.pbapclient.profile.action.PHONEBOOK_DOWNLOAD_STATE_CHANGED";
    public static final String EXTRA_DOWNLOAD_STATE = "android.bluetooth.pbapclient.profile.extra.DOWNLOAD_STATE";
    public static final String EXTRA_PHONEBOOK_PATH = "android.bluetooth.pbapclient.profile.extra.PHONEBOOK_PATH";
    public static final String EXTRA_PHONEBOOK_SIZE = "android.bluetooth.pbapclient.profile.extra.PHONEBOOK_SIZE";

    public static void registerCallback(BluetoothPbapClient bluetoothPbapClient, BluetoothPbapClientCallback bluetoothPbapClientCallback) {
        bluetoothPbapClient.registerCallback(bluetoothPbapClientCallback);
    }

    public static void unregisterCallback(BluetoothPbapClient bluetoothPbapClient, BluetoothPbapClientCallback bluetoothPbapClientCallback) {
        bluetoothPbapClient.unregisterCallback(bluetoothPbapClientCallback);
    }
}

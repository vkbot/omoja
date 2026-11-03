package com.mega.carlink.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.mega.carlink.view.CarLinkAppListManager;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceNameReceiver extends BroadcastReceiver {
    public static final String DEVICE_NAME_ACTION = "device_name_action";
    public static final String KEY_DEVICE_NAME = "key_device_name";
    private static final String TAG = "DeviceNameReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("device_name_action".equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra("key_device_name");
            MLog.d(TAG, "onReceive: deviceName==" + stringExtra);
            CarLinkAppListManager.getInstance(context).setDeviceName(stringExtra);
        }
    }
}

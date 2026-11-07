package com.android.server.usb;

import android.R;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbDevice;
import android.os.UserHandle;
import android.util.Slog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class UsbHandlerManager {
    private static final String LOG_TAG = UsbHandlerManager.class.getSimpleName();
    private final Context mContext;

    UsbHandlerManager(Context context) {
        this.mContext = context;
    }

    void showUsbAccessoryUriActivity(UsbAccessory accessory, UserHandle user) {
        String uri = accessory.getUri();
        if (uri != null && uri.length() > 0) {
            Intent dialogIntent = createDialogIntent();
            dialogIntent.setComponent(ComponentName.unflattenFromString(this.mContext.getResources().getString(R.string.config_radio_access_family)));
            dialogIntent.putExtra("accessory", accessory);
            dialogIntent.putExtra("uri", uri);
            try {
                this.mContext.startActivityAsUser(dialogIntent, user);
            } catch (ActivityNotFoundException e) {
                Slog.e(LOG_TAG, "unable to start UsbAccessoryUriActivity");
            }
        }
    }

    void confirmUsbHandler(ResolveInfo rInfo, UsbDevice device, UsbAccessory accessory) {
        Intent resolverIntent = createDialogIntent();
        resolverIntent.setComponent(ComponentName.unflattenFromString(this.mContext.getResources().getString(R.string.config_rawContactsLocalAccountName)));
        resolverIntent.putExtra("rinfo", rInfo);
        UserHandle user = UserHandle.getUserHandleForUid(rInfo.activityInfo.applicationInfo.uid);
        if (device != null) {
            resolverIntent.putExtra("device", device);
        } else {
            resolverIntent.putExtra("accessory", accessory);
        }
        try {
            this.mContext.startActivityAsUser(resolverIntent, user);
        } catch (ActivityNotFoundException e) {
            Slog.e(LOG_TAG, "unable to start activity " + resolverIntent, e);
        }
    }

    void selectUsbHandler(ArrayList<ResolveInfo> matches, UserHandle user, Intent intent) {
        Intent resolverIntent = createDialogIntent();
        resolverIntent.setComponent(ComponentName.unflattenFromString(this.mContext.getResources().getString(R.string.config_recentsComponentName)));
        resolverIntent.putParcelableArrayListExtra("rlist", matches);
        resolverIntent.putExtra("android.intent.extra.INTENT", intent);
        try {
            this.mContext.startActivityAsUser(resolverIntent, user);
        } catch (ActivityNotFoundException e) {
            Slog.e(LOG_TAG, "unable to start activity " + resolverIntent, e);
        }
    }

    private Intent createDialogIntent() {
        Intent intent = new Intent();
        intent.addFlags(AudioFormat.EVRC);
        return intent;
    }
}

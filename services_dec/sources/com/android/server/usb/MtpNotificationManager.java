package com.android.server.usb;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.os.UserHandle;
import com.android.internal.notification.SystemNotificationChannels;

/* JADX INFO: loaded from: classes2.dex */
class MtpNotificationManager {
    private static final String ACTION_OPEN_IN_APPS = "com.android.server.usb.ACTION_OPEN_IN_APPS";
    private static final int PROTOCOL_MTP = 0;
    private static final int PROTOCOL_PTP = 1;
    private static final int SUBCLASS_MTP = 255;
    private static final int SUBCLASS_STILL_IMAGE_CAPTURE = 1;
    private static final String TAG = "UsbMtpNotificationManager";
    private final Context mContext;
    private final OnOpenInAppListener mListener;

    interface OnOpenInAppListener {
        void onOpenInApp(UsbDevice usbDevice);
    }

    MtpNotificationManager(Context context, OnOpenInAppListener listener) {
        this.mContext = context;
        this.mListener = listener;
        Receiver receiver = new Receiver();
        context.registerReceiver(receiver, new IntentFilter(ACTION_OPEN_IN_APPS));
    }

    void showNotification(UsbDevice device) {
        Resources resources = this.mContext.getResources();
        String title = resources.getString(R.string.permlab_backgroundCamera, device.getProductName());
        String description = resources.getString(R.string.permlab_audioWrite);
        Notification.Builder builder = new Notification.Builder(this.mContext, SystemNotificationChannels.USB).setContentTitle(title).setContentText(description).setSmallIcon(R.drawable.pointer_wait_65).setCategory("sys");
        Intent intent = new Intent(ACTION_OPEN_IN_APPS);
        intent.putExtra("device", device);
        intent.addFlags(1342177280);
        PendingIntent openIntent = PendingIntent.getBroadcastAsUser(this.mContext, device.getDeviceId(), intent, AudioFormat.OPUS, UserHandle.SYSTEM);
        builder.setContentIntent(openIntent);
        Notification notification = builder.build();
        notification.flags |= 256;
        ((NotificationManager) this.mContext.getSystemService(NotificationManager.class)).notify(Integer.toString(device.getDeviceId()), 25, notification);
    }

    void hideNotification(int deviceId) {
        ((NotificationManager) this.mContext.getSystemService(NotificationManager.class)).cancel(Integer.toString(deviceId), 25);
    }

    private class Receiver extends BroadcastReceiver {
        private Receiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UsbDevice device = (UsbDevice) intent.getExtras().getParcelable("device");
            if (device == null) {
                return;
            }
            String action = intent.getAction();
            byte b = -1;
            if (action.hashCode() == 768361239 && action.equals(MtpNotificationManager.ACTION_OPEN_IN_APPS)) {
                b = 0;
            }
            if (b == 0) {
                MtpNotificationManager.this.mListener.onOpenInApp(device);
            }
        }
    }

    static boolean shouldShowNotification(PackageManager packageManager, UsbDevice device) {
        return !packageManager.hasSystemFeature("android.hardware.type.automotive") && isMtpDevice(device);
    }

    private static boolean isMtpDevice(UsbDevice device) {
        for (int i = 0; i < device.getInterfaceCount(); i++) {
            UsbInterface usbInterface = device.getInterface(i);
            if (usbInterface.getInterfaceClass() == 6 && usbInterface.getInterfaceSubclass() == 1 && usbInterface.getInterfaceProtocol() == 1) {
                return true;
            }
            if (usbInterface.getInterfaceClass() == 255 && usbInterface.getInterfaceSubclass() == 255 && usbInterface.getInterfaceProtocol() == 0 && "MTP".equals(usbInterface.getName())) {
                return true;
            }
        }
        return false;
    }
}

package com.android.server.devicepolicy;

import android.R;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.graphics.drawable.Icon;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.UserHandle;
import android.util.Slog;
import com.android.internal.notification.SystemNotificationChannels;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
class RemoteBugreportUtils {
    static final String BUGREPORT_MIMETYPE = "application/vnd.android.bugreport";
    static final String CTL_STOP = "ctl.stop";
    static final int NOTIFICATION_ID = 678432343;
    static final String REMOTE_BUGREPORT_SERVICE = "bugreportd";
    static final long REMOTE_BUGREPORT_TIMEOUT_MILLIS = 600000;
    private static final String TAG = "RemoteBugreportUtils";

    @Retention(RetentionPolicy.SOURCE)
    @interface RemoteBugreportNotificationType {
    }

    RemoteBugreportUtils() {
    }

    static Notification buildNotification(Context context, int type) {
        Intent dialogIntent = new Intent("android.settings.SHOW_REMOTE_BUGREPORT_DIALOG");
        dialogIntent.addFlags(268468224);
        dialogIntent.putExtra("android.app.extra.bugreport_notification_type", type);
        ActivityInfo targetInfo = dialogIntent.resolveActivityInfo(context.getPackageManager(), 1048576);
        if (targetInfo != null) {
            dialogIntent.setComponent(targetInfo.getComponentName());
        } else {
            Slog.wtf(TAG, "Failed to resolve intent for remote bugreport dialog");
        }
        PendingIntent pendingDialogIntent = PendingIntent.getActivityAsUser(context, type, dialogIntent, 0, null, UserHandle.CURRENT);
        Notification.Builder builder = new Notification.Builder(context, SystemNotificationChannels.DEVICE_ADMIN).setSmallIcon(R.drawable.$$loader_horizontal_watch__5__0).setOngoing(true).setLocalOnly(true).setContentIntent(pendingDialogIntent).setColor(context.getColor(R.color.system_notification_accent_color));
        if (type == 2) {
            builder.setContentTitle(context.getString(R.string.permdesc_queryAllPackages)).setProgress(0, 0, true);
        } else if (type == 1) {
            builder.setContentTitle(context.getString(R.string.permgroupdesc_location)).setProgress(0, 0, true);
        } else if (type == 3) {
            PendingIntent pendingIntentAccept = PendingIntent.getBroadcast(context, NOTIFICATION_ID, new Intent("com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"), AudioFormat.EVRC);
            PendingIntent pendingIntentDecline = PendingIntent.getBroadcast(context, NOTIFICATION_ID, new Intent("com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"), AudioFormat.EVRC);
            builder.addAction(new Notification.Action.Builder((Icon) null, context.getString(R.string.config_wwan_network_service_class), pendingIntentDecline).build()).addAction(new Notification.Action.Builder((Icon) null, context.getString(R.string.permdesc_observeCompanionDevicePresence), pendingIntentAccept).build()).setContentTitle(context.getString(R.string.permdesc_postNotification)).setContentText(context.getString(R.string.permdesc_persistentActivity)).setStyle(new Notification.BigTextStyle().bigText(context.getString(R.string.permdesc_persistentActivity)));
        }
        return builder.build();
    }
}

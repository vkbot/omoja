package com.android.server.wm;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.Uri;
import android.os.Bundle;
import com.android.server.pm.Settings;
import com.android.server.policy.IconUtilities;

/* JADX INFO: loaded from: classes2.dex */
class AlertWindowNotification {
    private static final String CHANNEL_PREFIX = "com.android.server.wm.AlertWindowNotification - ";
    private static final int NOTIFICATION_ID = 0;
    private static NotificationChannelGroup sChannelGroup;
    private static int sNextRequestCode = 0;
    private IconUtilities mIconUtilities;
    private final NotificationManager mNotificationManager;
    private String mNotificationTag;
    private final String mPackageName;
    private boolean mPosted;
    private final int mRequestCode;
    private final WindowManagerService mService;

    AlertWindowNotification(WindowManagerService service, String packageName) {
        this.mService = service;
        this.mPackageName = packageName;
        this.mNotificationManager = (NotificationManager) service.mContext.getSystemService("notification");
        this.mNotificationTag = CHANNEL_PREFIX + this.mPackageName;
        int i = sNextRequestCode;
        sNextRequestCode = i + 1;
        this.mRequestCode = i;
        this.mIconUtilities = new IconUtilities(this.mService.mContext);
    }

    void post() {
        this.mService.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$AlertWindowNotification$iVtcJMb6VtqtAgEtGUDCkGay0tM
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onPostNotification();
            }
        });
    }

    void cancel(final boolean deleteChannel) {
        this.mService.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$AlertWindowNotification$ZuqSYML-X-nkNVTba_yeIT9hJ1s
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancel$0$AlertWindowNotification(deleteChannel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onCancelNotification, reason: merged with bridge method [inline-methods] */
    public void lambda$cancel$0$AlertWindowNotification(boolean deleteChannel) {
        if (!this.mPosted) {
            return;
        }
        this.mPosted = false;
        this.mNotificationManager.cancel(this.mNotificationTag, 0);
        if (deleteChannel) {
            this.mNotificationManager.deleteNotificationChannel(this.mNotificationTag);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPostNotification() {
        Drawable drawable;
        if (this.mPosted) {
            return;
        }
        this.mPosted = true;
        Context context = this.mService.mContext;
        PackageManager pm = context.getPackageManager();
        ApplicationInfo aInfo = getApplicationInfo(pm, this.mPackageName);
        String appName = aInfo != null ? pm.getApplicationLabel(aInfo).toString() : this.mPackageName;
        createNotificationChannel(context, appName);
        String message = context.getString(R.string.auto_data_switch_title, appName);
        Bundle extras = new Bundle();
        extras.putStringArray("android.foregroundApps", new String[]{this.mPackageName});
        Notification.Builder builder = new Notification.Builder(context, this.mNotificationTag).setOngoing(true).setContentTitle(context.getString(R.string.autoclick_feature_name, appName)).setContentText(message).setSmallIcon(R.drawable.$progress_indeterminate_horizontal_material__59).setColor(context.getColor(R.color.system_notification_accent_color)).setStyle(new Notification.BigTextStyle().bigText(message)).setLocalOnly(true).addExtras(extras).setContentIntent(getContentIntent(context, this.mPackageName));
        if (aInfo != null && (drawable = pm.getApplicationIcon(aInfo)) != null) {
            Bitmap bitmap = this.mIconUtilities.createIconBitmap(drawable);
            builder.setLargeIcon(bitmap);
        }
        this.mNotificationManager.notify(this.mNotificationTag, 0, builder.build());
    }

    private PendingIntent getContentIntent(Context context, String packageName) {
        Intent intent = new Intent("android.settings.MANAGE_APP_OVERLAY_PERMISSION", Uri.fromParts(Settings.ATTR_PACKAGE, packageName, null));
        intent.setFlags(268468224);
        return PendingIntent.getActivity(context, this.mRequestCode, intent, AudioFormat.AAC_ADIF);
    }

    private void createNotificationChannel(Context context, String appName) {
        if (sChannelGroup == null) {
            NotificationChannelGroup notificationChannelGroup = new NotificationChannelGroup(CHANNEL_PREFIX, this.mService.mContext.getString(R.string.as_app_forced_to_restricted_bucket));
            sChannelGroup = notificationChannelGroup;
            this.mNotificationManager.createNotificationChannelGroup(notificationChannelGroup);
        }
        String nameChannel = context.getString(R.string.auto_data_switch_content, appName);
        if (this.mNotificationManager.getNotificationChannel(this.mNotificationTag) != null) {
            return;
        }
        NotificationChannel channel = new NotificationChannel(this.mNotificationTag, nameChannel, 1);
        channel.enableLights(false);
        channel.enableVibration(false);
        channel.setBlockable(true);
        channel.setGroup(sChannelGroup.getId());
        channel.setBypassDnd(true);
        this.mNotificationManager.createNotificationChannel(channel);
    }

    private ApplicationInfo getApplicationInfo(PackageManager pm, String packageName) {
        try {
            return pm.getApplicationInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }
}

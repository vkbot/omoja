package com.mega.nexus.app;

import android.app.NotificationManager;
import android.content.Context;
import android.service.notification.StatusBarNotification;

/* JADX INFO: loaded from: classes2.dex */
public class MegaNotificationManager {
    public static int getZenMode(NotificationManager notificationManager) {
        return notificationManager.getZenMode();
    }

    public static Context getPackageContext(StatusBarNotification statusBarNotification, Context context) {
        return statusBarNotification.getPackageContext(context);
    }
}

package com.mega.nexus.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.UserHandle;
import android.view.Display;

/* JADX INFO: loaded from: classes2.dex */
public class MegaContext {
    public static final String NETWORKMANAGEMENT_SERVICE = "network_management";
    public static final String RADIO_SERVICE = "broadcastradio";
    public static final String WIFI_SERVICE = "wifi";

    public static void updateDisplay(Context context, int i) {
        context.updateDisplay(i);
    }

    public static Display getDisplay(Context context) {
        return context.getDisplay();
    }

    public static Handler getMainThreadHandler(Context context) {
        return context.getMainThreadHandler();
    }

    public static boolean bindServiceAsUser(Context context, Intent intent, ServiceConnection serviceConnection, int i, UserHandle userHandle) {
        return context.bindServiceAsUser(intent, serviceConnection, i, userHandle);
    }

    public static ComponentName startServiceAsUser(Context context, Intent intent, UserHandle userHandle) {
        return context.startServiceAsUser(intent, userHandle);
    }

    public static boolean stopServiceAsUser(Context context, Intent intent, UserHandle userHandle) {
        return context.stopServiceAsUser(intent, userHandle);
    }

    public static void startActivityAsUser(Context context, Intent intent, UserHandle userHandle) {
        context.startActivityAsUser(intent, userHandle);
    }

    public static void startActivityAsUser(Context context, Intent intent, Bundle bundle, UserHandle userHandle) {
        context.startActivityAsUser(intent, bundle, userHandle);
    }

    public static void startActivitiesAsUser(Context context, Intent[] intentArr, Bundle bundle, UserHandle userHandle) {
        context.startActivitiesAsUser(intentArr, bundle, userHandle);
    }

    public static Intent registerReceiverAsUser(Context context, BroadcastReceiver broadcastReceiver, UserHandle userHandle, IntentFilter intentFilter, String str, Handler handler) {
        return context.registerReceiverAsUser(broadcastReceiver, userHandle, intentFilter, str, handler);
    }

    public static IBinder getActivityToken(Context context) {
        return context.getActivityToken();
    }

    public static ComponentName startForegroundService(Context context, Intent intent) {
        return context.startForegroundService(intent);
    }

    public static ComponentName startForegroundServiceAsUser(Context context, Intent intent, UserHandle userHandle) {
        return context.startForegroundServiceAsUser(intent, userHandle);
    }
}

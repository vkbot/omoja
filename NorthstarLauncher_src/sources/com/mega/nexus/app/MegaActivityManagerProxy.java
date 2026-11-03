package com.mega.nexus.app;

import android.app.ActivityManager;
import android.app.IUserSwitchObserver;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class MegaActivityManagerProxy {
    public static final int PROCESS_RECORD_FROZEN = 0;
    public static final int PROCESS_RECORD_INVALID = -1;
    public static final int PROCESS_RECORD_UNFROZEN = 1;
    public static final int PROCESS_STATE_PERSISTENT = 0;
    private static final String TAG = "MegaActivityManager";

    public static final class RunningAppProcessInfo {
        public static final int FLAG_PERSISTENT = 2;
    }

    public static void forceStopPackage(String str, int i) throws RemoteException {
        Log.i(TAG, "forceStopPackage: packageName=" + str + " userId=" + i);
        ActivityManager.getService().forceStopPackage(str, i);
    }

    public static void forceStopPackage(ActivityManager activityManager, String str) {
        Log.i(TAG, "forceStopPackage: packageName=" + str);
        activityManager.forceStopPackage(str);
    }

    public static void backgroundWhitelistUid(int i) {
        Log.i(TAG, "Adding uid " + i + " to bg uid whitelist");
        MegaActivityManagerProxyAdapter.backgroundWhitelistUid(i);
    }

    public static synchronized void registerTaskStackListener(MegaTaskStackListener megaTaskStackListener) throws RemoteException {
        Log.i(TAG, "registerTaskStackListener listener=" + megaTaskStackListener);
        MegaActivityManagerProxyAdapter.registerTaskStackListener(megaTaskStackListener);
    }

    public static synchronized void unregisterTaskStackListener(MegaTaskStackListener megaTaskStackListener) throws RemoteException {
        Log.i(TAG, "unregisterTaskStackListener listener=" + megaTaskStackListener);
        MegaActivityManagerProxyAdapter.unregisterTaskStackListener(megaTaskStackListener);
    }

    public static int getRunningAppFlag(ActivityManager.RunningAppProcessInfo runningAppProcessInfo) {
        return runningAppProcessInfo.flags;
    }

    public static int getRunningAppProcessState(ActivityManager.RunningAppProcessInfo runningAppProcessInfo) {
        return runningAppProcessInfo.processState;
    }

    public static int getCurrentUser() {
        return ActivityManager.getCurrentUser();
    }

    public static Configuration getConfiguration() throws RemoteException {
        return ActivityManager.getService().getConfiguration();
    }

    public static void updatePersistentConfiguration(Configuration configuration) throws RemoteException {
        ActivityManager.getService().updatePersistentConfiguration(configuration);
    }

    public static void registerUserSwitchObserver(IUserSwitchObserver iUserSwitchObserver, String str) throws RemoteException {
        ActivityManager.getService().registerUserSwitchObserver(iUserSwitchObserver, str);
    }

    public static void unregisterUserSwitchObserver(IUserSwitchObserver iUserSwitchObserver) throws RemoteException {
        ActivityManager.getService().unregisterUserSwitchObserver(iUserSwitchObserver);
    }

    public static class TaskDescription {
        public static Bitmap getInMemoryIcon(ActivityManager.TaskDescription taskDescription) {
            return taskDescription.getInMemoryIcon();
        }

        public static String getIconFilename(ActivityManager.TaskDescription taskDescription) {
            return taskDescription.getIconFilename();
        }

        public static Bitmap loadTaskDescriptionIcon(ActivityManager.TaskDescription taskDescription, String str, int i) {
            return ActivityManager.TaskDescription.loadTaskDescriptionIcon(str, i);
        }
    }

    public static int getProcessRecordFrozenState(Context context, int i) {
        return MegaActivityManagerProxyAdapter.getProcessRecordFrozenState(context, i);
    }
}

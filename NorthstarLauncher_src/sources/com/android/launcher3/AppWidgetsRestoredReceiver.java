package com.android.launcher3;

import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Process;
import android.util.Log;
import com.android.launcher3.model.LoaderTask;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.provider.RestoreDbTask;
import com.android.launcher3.util.ContentWriter;

/* JADX INFO: loaded from: classes.dex */
public class AppWidgetsRestoredReceiver extends BroadcastReceiver {
    private static final String TAG = "AWRestoredReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, Intent intent) {
        if ("android.appwidget.action.APPWIDGET_HOST_RESTORED".equals(intent.getAction())) {
            int intExtra = intent.getIntExtra("hostId", 0);
            Log.d(TAG, "Widget ID map received for host:" + intExtra);
            if (intExtra != 1024) {
                return;
            }
            int[] intArrayExtra = intent.getIntArrayExtra("appWidgetOldIds");
            int[] intArrayExtra2 = intent.getIntArrayExtra("appWidgetIds");
            if (intArrayExtra != null && intArrayExtra2 != null && intArrayExtra.length == intArrayExtra2.length) {
                RestoreDbTask.setRestoredAppWidgetIds(context, intArrayExtra, intArrayExtra2);
            } else {
                Log.e(TAG, "Invalid host restored received");
            }
        }
    }

    public static void restoreAppWidgetIds(Context context, int[] oldWidgetIds, int[] newWidgetIds) {
        LauncherAppWidgetHost launcherAppWidgetHost = new LauncherAppWidgetHost(context);
        int i = 0;
        if (!RestoreDbTask.isPending(context)) {
            Log.e(TAG, "Skipping widget ID remap as DB already in use");
            int length = newWidgetIds.length;
            while (i < length) {
                int i2 = newWidgetIds[i];
                Log.d(TAG, "Deleting widgetId: " + i2);
                launcherAppWidgetHost.deleteAppWidgetId(i2);
                i++;
            }
            return;
        }
        ContentResolver contentResolver = context.getContentResolver();
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        while (i < oldWidgetIds.length) {
            Log.i(TAG, "Widget state restore id " + oldWidgetIds[i] + " => " + newWidgetIds[i]);
            int i3 = LoaderTask.isValidProvider(appWidgetManager.getAppWidgetInfo(newWidgetIds[i])) ? 4 : 2;
            long serialNumberForUser = UserCache.INSTANCE.m166x39265fe7(context).getSerialNumberForUser(Process.myUserHandle());
            String string = Integer.toString(oldWidgetIds[i]);
            if (new ContentWriter(context, new ContentWriter.CommitParams("appWidgetId=? and (restored & 1) = 1 and profileId=?", new String[]{string, Long.toString(serialNumberForUser)})).put(LauncherSettings.Favorites.APPWIDGET_ID, Integer.valueOf(newWidgetIds[i])).put(LauncherSettings.Favorites.RESTORED, Integer.valueOf(i3)).commit() == 0) {
                Cursor cursorQuery = contentResolver.query(LauncherSettings.Favorites.CONTENT_URI, new String[]{LauncherSettings.Favorites.APPWIDGET_ID}, "appWidgetId=?", new String[]{string}, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        launcherAppWidgetHost.deleteAppWidgetId(newWidgetIds[i]);
                    }
                    cursorQuery.close();
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            i++;
        }
        LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
        if (instanceNoCreate != null) {
            instanceNoCreate.getModel().forceReload();
        }
    }
}

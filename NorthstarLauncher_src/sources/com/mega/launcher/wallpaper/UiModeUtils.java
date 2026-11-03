package com.mega.launcher.wallpaper;

import android.app.UiModeManager;
import android.content.Context;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class UiModeUtils {
    private static final String TAG = "UiModeUtils";
    private static boolean sIsNightMode = false;

    public static boolean isNightMode(Context context) {
        if (context == null) {
            return false;
        }
        boolean z = ((UiModeManager) context.getSystemService("uimode")).getNightMode() == 2;
        sIsNightMode = z;
        return z;
    }

    public static boolean isNightModeChange(Context context) {
        if (context == null) {
            return false;
        }
        boolean z = ((UiModeManager) context.getSystemService("uimode")).getNightMode() == 2;
        MLog.d(TAG, "isNightModeChange: sIsNightMode = " + sIsNightMode + ", isNightMode = " + z);
        if (z == sIsNightMode) {
            return false;
        }
        sIsNightMode = z;
        return true;
    }
}

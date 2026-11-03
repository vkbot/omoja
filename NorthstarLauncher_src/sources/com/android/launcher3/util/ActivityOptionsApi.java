package com.android.launcher3.util;

import android.app.ActivityOptions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class ActivityOptionsApi {
    private static final String TAG = "ActivityOptionsApi";
    private static Method sSetLaunchWindowingMode;

    static {
        try {
            Method declaredMethod = ActivityOptions.class.getDeclaredMethod("setLaunchWindowingMode", Integer.TYPE);
            sSetLaunchWindowingMode = declaredMethod;
            declaredMethod.setAccessible(true);
            MLog.d(TAG, "static initializer: ".concat(sSetLaunchWindowingMode != null ? "success" : "failed"));
        } catch (NoSuchMethodException e) {
            MLog.e(TAG, "static initializer: ", e);
        }
    }

    public static void setLaunchWindowingMode(ActivityOptions options, int windowingMode) {
        Method method = sSetLaunchWindowingMode;
        if (method != null) {
            try {
                method.invoke(options, Integer.valueOf(windowingMode));
            } catch (IllegalAccessException e) {
                MLog.e(TAG, "setLaunchWindowingMode: Illegal " + windowingMode, e);
            } catch (RuntimeException e2) {
                MLog.e(TAG, "setLaunchWindowingMode: " + windowingMode, e2);
            } catch (InvocationTargetException e3) {
                MLog.e(TAG, "setLaunchWindowingMode: Invocation " + windowingMode, e3);
            }
        }
    }
}

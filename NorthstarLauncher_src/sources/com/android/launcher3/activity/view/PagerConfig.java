package com.android.launcher3.activity.view;

/* JADX INFO: loaded from: classes.dex */
public class PagerConfig {
    private static final String TAG = "PagerGrid";
    private static int sFlingThreshold = 1000;
    private static float sMillisecondsPreInch = 60.0f;
    private static boolean sShowLog = false;

    public static int getFlingThreshold() {
        return sFlingThreshold;
    }

    public static float getMillisecondsPreInch() {
        return sMillisecondsPreInch;
    }

    public static boolean isShowLog() {
        return sShowLog;
    }

    public static void setFlingThreshold(int flingThreshold) {
        sFlingThreshold = flingThreshold;
    }

    public static void setMillisecondsPreInch(float millisecondsPreInch) {
        sMillisecondsPreInch = millisecondsPreInch;
    }

    public static void setShowLog(boolean showLog) {
        sShowLog = showLog;
    }
}

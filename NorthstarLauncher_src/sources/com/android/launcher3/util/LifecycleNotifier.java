package com.android.launcher3.util;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleNotifier {
    private static final String ACTION_LAUNCHER_LIFECYCLE = "com.android.launcher3.launcher.lifecycle";
    private static final String KEY_LAUNCHER_LIFECYCLE = "launcher_lifecycle";
    public static final int LAUNCHER_CREATED = 1;
    public static final int LAUNCHER_DESTROYED = 6;
    public static final int LAUNCHER_PAUSED = 4;
    public static final int LAUNCHER_RESUMED = 3;
    public static final int LAUNCHER_STARTED = 2;
    public static final int LAUNCHER_STOPPED = 5;
    private static final SerialExecutor SERIAL_EXECUTOR = Executors.newSerialExecutor();
    private static final String TAG = "LifecycleNotifier";

    @Retention(RetentionPolicy.SOURCE)
    public @interface LauncherLifecycle {
    }

    public static void send(final Context context, final int lifecycle) {
        SERIAL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.util.LifecycleNotifier$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LifecycleNotifier.lambda$send$0(lifecycle, context);
            }
        });
    }

    static /* synthetic */ void lambda$send$0(int i, Context context) {
        MLog.d(TAG, "send: " + toLifecycleString(i));
        Settings.Global.putInt(context.getContentResolver(), KEY_LAUNCHER_LIFECYCLE, i);
        Intent intent = new Intent(ACTION_LAUNCHER_LIFECYCLE);
        intent.setPackage(Const.PACKAGE_WIDGET);
        intent.putExtra(KEY_LAUNCHER_LIFECYCLE, i);
        intent.addFlags(16777216);
        context.sendBroadcast(intent);
    }

    public static String toLifecycleString(int launcherLifecycle) {
        switch (launcherLifecycle) {
            case 1:
                return "CREATED";
            case 2:
                return "STARTED";
            case 3:
                return "RESUMED";
            case 4:
                return "PAUSED";
            case 5:
                return "STOPPED";
            case 6:
                return "DESTROYED";
            default:
                return "UNKNOWN-" + launcherLifecycle;
        }
    }
}

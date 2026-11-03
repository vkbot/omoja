package com.android.launcher3.util;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.android.launcher3.R;
import com.android.systemui.shared.recents.model.Task;
import com.mega.chery.utils.QuickClickChecker;
import com.mega.chery.utils.ToastViewUtils;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Predicate;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class AppStarter {
    private static final QuickClickChecker QUICK_CLICK_CHECKER = new QuickClickChecker();
    private static final String TAG = "AppStarter";

    public static void startPackageActivity(Context context, Intent intent, Bundle options, String reason) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            MLog.d(TAG, "startPackageActivity: component == null");
            return;
        }
        if (QUICK_CLICK_CHECKER.reject()) {
            MLog.d(TAG, "startPackageActivity: too often. skip " + component + " reason=" + reason);
            return;
        }
        final String packageName = component.getPackageName();
        if (checkCarPlay(context, packageName)) {
            MLog.w(TAG, "startPackageActivity: can't start CarPlay. reason=" + reason);
            return;
        }
        if (Const.inMoveTaskToFront(packageName)) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityManager.class);
            Optional<ActivityManager.RunningTaskInfo> optionalFindFirst = activityManager.getRunningTasks(30).stream().filter(new Predicate() { // from class: com.android.launcher3.util.AppStarter$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return AppStarter.lambda$startPackageActivity$0(packageName, (ActivityManager.RunningTaskInfo) obj);
                }
            }).findFirst();
            if (optionalFindFirst.isPresent()) {
                try {
                    MLog.d("moveTaskToFront " + optionalFindFirst.get().topActivity + " reason=" + reason);
                    activityManager.moveTaskToFront(optionalFindFirst.get().taskId, 0, options);
                    return;
                } catch (RuntimeException e) {
                    MLog.e(TAG, "moveTaskToFront failed. ", e);
                }
            }
        }
        boolean zWillSplitScreen = Const.willSplitScreen(packageName);
        MLog.d(TAG, "startActivity " + component + " willSplitScreen=" + zWillSplitScreen + " reason=" + reason);
        if (zWillSplitScreen) {
            try {
                options = overrideActivityOptions(context).toBundle();
            } catch (ActivityNotFoundException | SecurityException e2) {
                MLog.e(TAG, "startPackageActivity: failed.", e2);
                return;
            }
        }
        context.startActivity(intent, options);
    }

    static /* synthetic */ boolean lambda$startPackageActivity$0(String str, ActivityManager.RunningTaskInfo runningTaskInfo) {
        ComponentName component;
        Task.TaskKey taskKey = new Task.TaskKey(runningTaskInfo);
        if (taskKey.sourceComponent != null) {
            component = taskKey.sourceComponent;
        } else {
            component = taskKey.getComponent();
        }
        return component != null && str.equals(component.getPackageName());
    }

    private static ActivityOptions overrideActivityOptions(Context context) {
        ActivityOptions activityOptionsMakeCustomAnimation = ActivityOptions.makeCustomAnimation(context, R.anim.activity_enter, 0);
        ActivityOptionsApi.setLaunchWindowingMode(activityOptionsMakeCustomAnimation, 4);
        return activityOptionsMakeCustomAnimation;
    }

    private static boolean checkCarPlay(Context context, String packageName) {
        if (!Objects.equals(packageName, "com.mega.carplay") || !AppStarterExKt.isBtPhoneActive(context)) {
            return false;
        }
        ToastViewUtils.makeText(context, context.getString(R.string.calling_can_not_open_carplay), 3000L).show();
        return true;
    }
}

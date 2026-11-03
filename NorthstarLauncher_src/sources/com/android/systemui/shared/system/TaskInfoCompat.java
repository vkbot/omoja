package com.android.systemui.shared.system;

import android.app.ActivityManager;
import android.app.TaskInfo;
import android.content.ComponentName;

/* JADX INFO: loaded from: classes.dex */
public class TaskInfoCompat {
    public static int getUserId(TaskInfo taskInfo) {
        return taskInfo.userId;
    }

    public static int getActivityType(TaskInfo taskInfo) {
        return taskInfo.configuration.windowConfiguration.getActivityType();
    }

    public static int getWindowingMode(TaskInfo taskInfo) {
        return taskInfo.configuration.windowConfiguration.getWindowingMode();
    }

    public static boolean supportsSplitScreenMultiWindow(TaskInfo taskInfo) {
        return taskInfo.supportsSplitScreenMultiWindow;
    }

    public static ComponentName getTopActivity(TaskInfo taskInfo) {
        return taskInfo.topActivity;
    }

    public static ActivityManager.TaskDescription getTaskDescription(TaskInfo taskInfo) {
        return taskInfo.taskDescription;
    }
}

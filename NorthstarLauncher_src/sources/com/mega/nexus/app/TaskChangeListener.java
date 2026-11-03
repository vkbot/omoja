package com.mega.nexus.app;

import android.app.ActivityManager;
import android.view.SurfaceControl;

/* JADX INFO: loaded from: classes2.dex */
public interface TaskChangeListener {
    void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl);

    void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo);

    void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo);
}

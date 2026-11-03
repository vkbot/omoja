package com.android.launcher3.model;

import android.content.ComponentName;
import android.os.UserHandle;
import com.android.launcher3.R;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.ResourceBasedOverride;

/* JADX INFO: loaded from: classes.dex */
public class AppLaunchTracker implements ResourceBasedOverride {
    public static final String CONTAINER_DEFAULT = Integer.toString(1);
    public static final String CONTAINER_ALL_APPS = Integer.toString(4);
    public static final String CONTAINER_PREDICTIONS = Integer.toString(7);
    public static final String CONTAINER_SEARCH = Integer.toString(8);
    public static final String CONTAINER_OVERVIEW = Integer.toString(6);
    public static final String CONTAINER_HOTSEAT = Integer.toString(2);
    public static final MainThreadInitializedObject<AppLaunchTracker> INSTANCE = MainThreadInitializedObject.forOverride(AppLaunchTracker.class, R.string.app_launch_tracker_class);

    public void onDismissApp(ComponentName componentName, UserHandle user, String container) {
    }

    public void onReturnedToHome() {
    }

    public void onStartApp(ComponentName componentName, UserHandle user, String container) {
    }

    public void onStartShortcut(String packageName, String shortcutId, UserHandle user, String container) {
    }
}

package com.android.launcher3.views;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.icons.IconCache;

/* JADX INFO: loaded from: classes.dex */
public interface AppTransitionContext {
    public static final int FLAG_CURRENT_PAGE_ONLY = 1;
    public static final int FLAG_TRANSIT_TASK_CLOSE = 4;
    public static final int FLAG_TRANSIT_TASK_TO_FRONT = 2;
    public static final int FLAG_TRANSIT_WALLPAPER_OPEN = 1;

    View findItemView(ComponentName componentName, int flags);

    ComponentName getComponentName(int taskId);

    DeviceProfile getDeviceProfile();

    Activity getHostActivity();

    ViewGroup getHostView();

    int getIconBitmapSize();

    IconCache getIconCache();

    boolean useDefaultAnimation();

    /* JADX WARN: Multi-variable type inference failed */
    static AppTransitionContext lookupContext(Context context) {
        if (context instanceof AppTransitionContext) {
            return (AppTransitionContext) context;
        }
        if (context instanceof ContextThemeWrapper) {
            return lookupContext(((ContextWrapper) context).getBaseContext());
        }
        throw new IllegalArgumentException("Cannot find AppTransitionContext in parent tree");
    }
}

package com.android.launcher3.logging;

import android.view.View;
import android.view.ViewParent;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class StatsLogUtils {
    private static final int MAXIMUM_VIEW_HIERARCHY_LEVEL = 5;

    public interface LogContainerProvider {
        void fillInLogContainerData(ItemInfo childInfo, LauncherLogProto.Target child, ArrayList<LauncherLogProto.Target> parents);
    }

    public static LogContainerProvider getLaunchProviderRecursive(View v) {
        if (v != null) {
            ViewParent parent = v.getParent();
            int i = 5;
            while (parent != null) {
                int i2 = i - 1;
                if (i <= 0) {
                    break;
                }
                if (parent instanceof LogContainerProvider) {
                    return (LogContainerProvider) parent;
                }
                parent = parent.getParent();
                i = i2;
            }
        }
        return null;
    }
}

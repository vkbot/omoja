package com.android.launcher3;

import android.content.ComponentName;
import com.android.launcher3.util.ResourceBasedOverride;

/* JADX INFO: loaded from: classes.dex */
public class AppFilter implements ResourceBasedOverride {
    public boolean shouldShowApp(ComponentName component) {
        return true;
    }

    public boolean shouldShowApp(String packageName, String className) {
        return true;
    }
}

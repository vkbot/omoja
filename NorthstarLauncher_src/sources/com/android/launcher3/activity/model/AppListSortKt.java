package com.android.launcher3.activity.model;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import com.android.launcher3.icons.cache.BaseIconCache;
import kotlin.Metadata;

/* JADX INFO: compiled from: AppListSort.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0002¨\u0006\u0003"}, d2 = {BaseIconCache.IconDB.COLUMN_COMPONENT, "Landroid/content/ComponentName;", "Lcom/android/launcher3/activity/model/AllAppInfo;", "NorthstarLauncher_northstarRelease"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class AppListSortKt {
    public static final ComponentName componentName(AllAppInfo allAppInfo) {
        if (allAppInfo == null) {
            return null;
        }
        ResolveInfo resolveInfo = allAppInfo.getResolveInfo();
        ActivityInfo activityInfo = resolveInfo != null ? resolveInfo.activityInfo : null;
        if (activityInfo == null) {
            return null;
        }
        return new ComponentName(activityInfo.packageName, activityInfo.name);
    }
}

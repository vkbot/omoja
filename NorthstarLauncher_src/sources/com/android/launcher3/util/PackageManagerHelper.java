package com.android.launcher3.util;

import android.app.AppOpsManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.mega.chery.utils.ToastViewUtils;
import com.mega.launcherapi.WallpaperConstant;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PackageManagerHelper {
    private static final String TAG = "PackageManagerHelper";
    private final Context mContext;
    private final LauncherApps mLauncherApps;
    private final PackageManager mPm;

    public PackageManagerHelper(Context context) {
        this.mContext = context;
        this.mPm = context.getPackageManager();
        this.mLauncherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
    }

    public boolean isAppOnSdcard(String packageName, UserHandle user) {
        ApplicationInfo applicationInfo = getApplicationInfo(packageName, user, 8192);
        return (applicationInfo == null || (applicationInfo.flags & 262144) == 0) ? false : true;
    }

    public boolean isAppSuspended(String packageName, UserHandle user) {
        ApplicationInfo applicationInfo = getApplicationInfo(packageName, user, 0);
        return applicationInfo != null && isAppSuspended(applicationInfo);
    }

    public ApplicationInfo getApplicationInfo(String packageName, UserHandle user, int flags) {
        if (Utilities.ATLEAST_OREO) {
            try {
                ApplicationInfo applicationInfo = this.mLauncherApps.getApplicationInfo(packageName, flags, user);
                if ((applicationInfo.flags & 8388608) == 0 || !applicationInfo.enabled) {
                    return null;
                }
                return applicationInfo;
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        boolean zEquals = Process.myUserHandle().equals(user);
        if (!zEquals && flags == 0) {
            List<LauncherActivityInfo> activityList = this.mLauncherApps.getActivityList(packageName, user);
            if (activityList.size() > 0) {
                return activityList.get(0).getApplicationInfo();
            }
            return null;
        }
        try {
            ApplicationInfo applicationInfo2 = this.mPm.getApplicationInfo(packageName, flags);
            if (!(zEquals && (applicationInfo2.flags & 8388608) == 0) && applicationInfo2.enabled) {
                return applicationInfo2;
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused2) {
            return null;
        }
    }

    public boolean isSafeMode() {
        return this.mContext.getPackageManager().isSafeMode();
    }

    public Intent getAppLaunchIntent(String pkg, UserHandle user) {
        List<LauncherActivityInfo> activityList = this.mLauncherApps.getActivityList(pkg, user);
        if (activityList.isEmpty()) {
            return null;
        }
        return AppInfo.makeLaunchIntent(activityList.get(0));
    }

    public static boolean isAppSuspended(ApplicationInfo info) {
        return (info.flags & BasicMeasure.EXACTLY) != 0;
    }

    public boolean hasPermissionForActivity(Intent intent, String srcPackage) {
        ResolveInfo resolveInfoResolveActivity = this.mPm.resolveActivity(intent, 0);
        if (resolveInfoResolveActivity == null) {
            return false;
        }
        if (TextUtils.isEmpty(resolveInfoResolveActivity.activityInfo.permission)) {
            return true;
        }
        if (TextUtils.isEmpty(srcPackage) || this.mPm.checkPermission(resolveInfoResolveActivity.activityInfo.permission, srcPackage) != 0) {
            return false;
        }
        if (TextUtils.isEmpty(AppOpsManager.permissionToOp(resolveInfoResolveActivity.activityInfo.permission))) {
            return true;
        }
        try {
            return this.mPm.getApplicationInfo(srcPackage, 0).targetSdkVersion >= 23;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public Intent getMarketIntent(String packageName) {
        return new Intent("android.intent.action.VIEW").setData(new Uri.Builder().scheme("market").authority("details").appendQueryParameter(WallpaperConstant.WALLPAPER_COLUMN_ID, packageName).build()).putExtra("android.intent.extra.REFERRER", new Uri.Builder().scheme("android-app").authority(this.mContext.getPackageName()).build());
    }

    public static Intent getMarketSearchIntent(Context context, String query) {
        try {
            Intent uri = Intent.parseUri(context.getString(R.string.market_search_intent), 0);
            if (!TextUtils.isEmpty(query)) {
                uri.setData(uri.getData().buildUpon().appendQueryParameter("q", query).build());
            }
            return uri;
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }

    public static Intent getStyleWallpapersIntent(Context context) {
        return new Intent("android.intent.action.SET_WALLPAPER").setComponent(new ComponentName(context.getString(R.string.wallpaper_picker_package), "com.android.customization.picker.CustomizationPickerActivity"));
    }

    public void startDetailsActivityForInfo(ItemInfo info, Rect sourceBounds, Bundle opts) {
        ComponentName targetComponent;
        if (info instanceof AppInfo) {
            targetComponent = ((AppInfo) info).componentName;
        } else if (info instanceof WorkspaceItemInfo) {
            targetComponent = info.getTargetComponent();
        } else if (info instanceof PendingAddItemInfo) {
            targetComponent = ((PendingAddItemInfo) info).componentName;
        } else {
            targetComponent = info instanceof LauncherAppWidgetInfo ? ((LauncherAppWidgetInfo) info).providerName : null;
        }
        if (targetComponent != null) {
            try {
                this.mLauncherApps.startAppDetailsActivity(targetComponent, info.user, sourceBounds, opts);
            } catch (ActivityNotFoundException | SecurityException e) {
                ToastViewUtils.makeText(this.mContext, R.string.activity_not_found, 3000L).show();
                Log.e(TAG, "Unable to launch settings", e);
            }
        }
    }

    public static IntentFilter getPackageFilter(String pkg, String... actions) {
        IntentFilter intentFilter = new IntentFilter();
        for (String str : actions) {
            intentFilter.addAction(str);
        }
        intentFilter.addDataScheme("package");
        intentFilter.addDataSchemeSpecificPart(pkg, 0);
        return intentFilter;
    }

    public static boolean isSystemApp(Context context, Intent intent) {
        String packageName;
        PackageManager packageManager = context.getPackageManager();
        ComponentName component = intent.getComponent();
        if (component == null) {
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
            packageName = (resolveInfoResolveActivity == null || resolveInfoResolveActivity.activityInfo == null) ? null : resolveInfoResolveActivity.activityInfo.packageName;
        } else {
            packageName = component.getPackageName();
        }
        if (packageName == null) {
            packageName = intent.getPackage();
        }
        if (packageName == null) {
            return false;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            return (packageInfo == null || packageInfo.applicationInfo == null || (packageInfo.applicationInfo.flags & 1) == 0) ? false : true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static Pair<String, Resources> findSystemApk(String action, PackageManager pm) {
        Iterator<ResolveInfo> it = pm.queryBroadcastReceivers(new Intent(action), 1048576).iterator();
        while (it.hasNext()) {
            String str = it.next().activityInfo.packageName;
            try {
                return Pair.create(str, pm.getResourcesForApplication(str));
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w(TAG, "Failed to find resources for " + str);
            }
        }
        return null;
    }

    public static boolean isLauncherAppTarget(Intent launchIntent) {
        if (launchIntent == null || !"android.intent.action.MAIN".equals(launchIntent.getAction()) || launchIntent.getComponent() == null || launchIntent.getCategories() == null || launchIntent.getCategories().size() != 1 || !launchIntent.hasCategory("android.intent.category.LAUNCHER") || !TextUtils.isEmpty(launchIntent.getDataString())) {
            return false;
        }
        Bundle extras = launchIntent.getExtras();
        return extras == null || extras.keySet().isEmpty();
    }

    public static boolean hasShortcutsPermission(Context context) {
        try {
            return ((LauncherApps) context.getSystemService(LauncherApps.class)).hasShortcutHostPermission();
        } catch (IllegalStateException | SecurityException e) {
            Log.e(TAG, "Failed to make shortcut manager call", e);
            return false;
        }
    }
}

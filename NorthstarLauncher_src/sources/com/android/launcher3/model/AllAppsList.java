package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.os.UserHandle;
import android.util.Log;
import com.android.launcher3.AppFilter;
import com.android.launcher3.compat.AlphabeticIndexCompat;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.FlagOp;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.SafeCloseable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class AllAppsList {
    public static final int DEFAULT_APPLICATIONS_NUMBER = 42;
    private static final Consumer<AppInfo> NO_OP_CONSUMER = new Consumer() { // from class: com.android.launcher3.model.AllAppsList$$ExternalSyntheticLambda1
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            AllAppsList.lambda$static$0((AppInfo) obj);
        }
    };
    private static final String TAG = "AllAppsList";
    private AppFilter mAppFilter;
    private int mFlags;
    private IconCache mIconCache;
    private AlphabeticIndexCompat mIndex;
    public final ArrayList<AppInfo> data = new ArrayList<>(42);
    private boolean mDataChanged = false;
    private Consumer<AppInfo> mRemoveListener = NO_OP_CONSUMER;

    static /* synthetic */ void lambda$static$0(AppInfo appInfo) {
    }

    public boolean getAndResetChangeFlag() {
        boolean z = this.mDataChanged;
        this.mDataChanged = false;
        return z;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public boolean hasShortcutHostPermission() {
        return (this.mFlags & 1) != 0;
    }

    /* JADX INFO: renamed from: lambda$trackRemoves$1$com-android-launcher3-model-AllAppsList, reason: not valid java name */
    /* synthetic */ void m109lambda$trackRemoves$1$comandroidlauncher3modelAllAppsList() {
        this.mRemoveListener = NO_OP_CONSUMER;
    }

    public void setFlags(int flagMask, boolean enabled) {
        if (enabled) {
            this.mFlags = flagMask | this.mFlags;
        } else {
            this.mFlags = (~flagMask) & this.mFlags;
        }
        this.mDataChanged = true;
    }

    public AllAppsList(IconCache iconCache, AppFilter appFilter) {
        this.mIconCache = iconCache;
        this.mAppFilter = appFilter;
    }

    public void add(AppInfo info, LauncherActivityInfo activityInfo) {
        if (this.mAppFilter.shouldShowApp(info.componentName) && findAppInfo(info.componentName, info.user) == null) {
            this.mIconCache.getTitleAndIcon(info, activityInfo, true);
            this.data.add(info);
            this.mDataChanged = true;
        }
    }

    private void removeApp(int index) {
        AppInfo appInfoRemove = this.data.remove(index);
        if (appInfoRemove != null) {
            this.mDataChanged = true;
            this.mRemoveListener.accept(appInfoRemove);
        }
    }

    public void clear() {
        this.data.clear();
        this.mDataChanged = false;
    }

    public void addPackage(Context context, String packageName, UserHandle user) {
        for (LauncherActivityInfo launcherActivityInfo : ((LauncherApps) context.getSystemService(LauncherApps.class)).getActivityList(packageName, user)) {
            add(new AppInfo(context, launcherActivityInfo, user), launcherActivityInfo);
        }
    }

    public void removePackage(String packageName, UserHandle user) {
        ArrayList<AppInfo> arrayList = this.data;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AppInfo appInfo = arrayList.get(size);
            if (appInfo.user.equals(user) && packageName.equals(appInfo.componentName.getPackageName())) {
                removeApp(size);
            }
        }
    }

    public void updateDisabledFlags(ItemInfoMatcher matcher, FlagOp op) {
        ArrayList<AppInfo> arrayList = this.data;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AppInfo appInfo = arrayList.get(size);
            if (matcher.matches(appInfo, appInfo.componentName)) {
                appInfo.runtimeStatusFlags = op.apply(appInfo.runtimeStatusFlags);
                this.mDataChanged = true;
            }
        }
    }

    public void updateIconsAndLabels(HashSet<String> packages, UserHandle user) {
        for (AppInfo appInfo : this.data) {
            if (appInfo.user.equals(user) && packages.contains(appInfo.componentName.getPackageName())) {
                this.mIconCache.updateTitleAndIcon(appInfo);
                this.mDataChanged = true;
            }
        }
    }

    public void updatePackage(Context context, String packageName, UserHandle user) {
        List<LauncherActivityInfo> activityList = ((LauncherApps) context.getSystemService(LauncherApps.class)).getActivityList(packageName, user);
        if (activityList.size() > 0) {
            for (int size = this.data.size() - 1; size >= 0; size--) {
                AppInfo appInfo = this.data.get(size);
                if (user.equals(appInfo.user) && packageName.equals(appInfo.componentName.getPackageName()) && !findActivity(activityList, appInfo.componentName)) {
                    Log.w(TAG, "Changing shortcut target due to app component name change.");
                    removeApp(size);
                }
            }
            for (LauncherActivityInfo launcherActivityInfo : activityList) {
                AppInfo appInfoFindAppInfo = findAppInfo(launcherActivityInfo.getComponentName(), user);
                if (appInfoFindAppInfo == null) {
                    add(new AppInfo(context, launcherActivityInfo, user), launcherActivityInfo);
                } else {
                    this.mIconCache.getTitleAndIcon(appInfoFindAppInfo, launcherActivityInfo, true);
                    this.mDataChanged = true;
                }
            }
            return;
        }
        for (int size2 = this.data.size() - 1; size2 >= 0; size2--) {
            AppInfo appInfo2 = this.data.get(size2);
            if (user.equals(appInfo2.user) && packageName.equals(appInfo2.componentName.getPackageName())) {
                this.mIconCache.remove(appInfo2.componentName, user);
                removeApp(size2);
            }
        }
    }

    private static boolean findActivity(List<LauncherActivityInfo> apps, ComponentName component) {
        Iterator<LauncherActivityInfo> it = apps.iterator();
        while (it.hasNext()) {
            if (it.next().getComponentName().equals(component)) {
                return true;
            }
        }
        return false;
    }

    private AppInfo findAppInfo(ComponentName componentName, UserHandle user) {
        for (AppInfo appInfo : this.data) {
            if (componentName.equals(appInfo.componentName) && user.equals(appInfo.user)) {
                return appInfo;
            }
        }
        return null;
    }

    public AppInfo[] copyData() {
        AppInfo[] appInfoArr = (AppInfo[]) this.data.toArray(AppInfo.EMPTY_ARRAY);
        Arrays.sort(appInfoArr, AppInfo.COMPONENT_KEY_COMPARATOR);
        return appInfoArr;
    }

    public SafeCloseable trackRemoves(Consumer<AppInfo> removeListener) {
        this.mRemoveListener = removeListener;
        return new SafeCloseable() { // from class: com.android.launcher3.model.AllAppsList$$ExternalSyntheticLambda0
            @Override // com.android.launcher3.util.SafeCloseable, java.lang.AutoCloseable
            public final void close() {
                this.f$0.m109lambda$trackRemoves$1$comandroidlauncher3modelAllAppsList();
            }
        };
    }

    public String toString() {
        return "AllAppsList{data=" + this.data + ", mIconCache=" + this.mIconCache + ", mAppFilter=" + this.mAppFilter + ", mDataChanged=" + this.mDataChanged + ", mRemoveListener=" + this.mRemoveListener + ", mIndex=" + this.mIndex + ", mFlags=" + this.mFlags + '}';
    }
}

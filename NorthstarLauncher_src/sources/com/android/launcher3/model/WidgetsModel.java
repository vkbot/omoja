package com.android.launcher3.model;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.UserHandle;
import android.util.Log;
import com.android.launcher3.AppFilter;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.Utilities;
import com.android.launcher3.compat.AlphabeticIndexCompat;
import com.android.launcher3.config.CheryAppFilter;
import com.android.launcher3.config.CheryWidgetFilter;
import com.android.launcher3.icons.ComponentWithLabelAndIcon;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.Preconditions;
import com.android.launcher3.widget.WidgetItemComparator;
import com.android.launcher3.widget.WidgetListRowEntry;
import com.android.launcher3.widget.WidgetManagerHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class WidgetsModel {
    private static final boolean DEBUG = true;
    public static final boolean GO_DISABLE_WIDGETS = false;
    private static final String TAG = "WidgetsModel";
    private AppFilter mAppFilter;
    private final MultiHashMap<PackageItemInfo, WidgetItem> mWidgetsList = new MultiHashMap<>();

    public synchronized ArrayList<WidgetListRowEntry> getWidgetsList(Context context) {
        ArrayList<WidgetListRowEntry> arrayList;
        arrayList = new ArrayList<>();
        AlphabeticIndexCompat alphabeticIndexCompat = new AlphabeticIndexCompat(context);
        WidgetItemComparator widgetItemComparator = new WidgetItemComparator();
        for (Map.Entry<PackageItemInfo, WidgetItem> entry : this.mWidgetsList.entrySet()) {
            WidgetListRowEntry widgetListRowEntry = new WidgetListRowEntry(entry.getKey(), (ArrayList) entry.getValue());
            widgetListRowEntry.titleSectionName = widgetListRowEntry.pkgItem.title == null ? "" : alphabeticIndexCompat.computeSectionName(widgetListRowEntry.pkgItem.title);
            Collections.sort(widgetListRowEntry.widgets, widgetItemComparator);
            arrayList.add(widgetListRowEntry);
        }
        return arrayList;
    }

    public List<ComponentWithLabelAndIcon> update(LauncherAppState app, PackageUserKey packageUser, AllAppsList apps) {
        Preconditions.assertWorkerThread();
        Context context = app.getContext();
        ArrayList<? extends ComponentKey> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        InvariantDeviceProfile invariantDeviceProfile = app.getInvariantDeviceProfile();
        PackageManager packageManager = app.getContext().getPackageManager();
        for (AppWidgetProviderInfo appWidgetProviderInfo : new WidgetManagerHelper(context).getAllProviders(packageUser)) {
            ApplicationInfo applicationInfo = Utilities.getApplicationInfo(appWidgetProviderInfo);
            if (applicationInfo == null) {
                MLog.d(TAG, "update: applicationInfo not found. " + appWidgetProviderInfo);
            } else if ((applicationInfo.flags & 1) == 0) {
                MLog.d(TAG, "update: ignored because of non system app. " + appWidgetProviderInfo);
            } else {
                LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfoFromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(context, appWidgetProviderInfo);
                MLog.d(TAG, "update: " + launcherAppWidgetProviderInfoFromProviderInfo);
                arrayList.add(new WidgetItem(launcherAppWidgetProviderInfoFromProviderInfo, invariantDeviceProfile, app.getIconCache()));
                arrayList2.add(launcherAppWidgetProviderInfoFromProviderInfo);
            }
        }
        for (ShortcutConfigActivityInfo shortcutConfigActivityInfo : ShortcutConfigActivityInfo.queryList(context, packageUser)) {
            arrayList.add(new WidgetItem(shortcutConfigActivityInfo, app.getIconCache(), packageManager));
            arrayList2.add(shortcutConfigActivityInfo);
        }
        if (apps != null) {
            for (AppInfo appInfo : apps.data) {
                if (packageUser == null || Objects.equals(packageUser.mPackageName, appInfo.componentName.getPackageName())) {
                    appInfo.title = appInfo.source.getLabel().toString();
                    arrayList.add(new WidgetItem(appInfo, app.getIconCache(), packageManager));
                }
            }
        }
        setWidgetsAndShortcuts(arrayList, app, packageUser);
        app.getWidgetCache().removeObsoletePreviews(arrayList, packageUser);
        return arrayList2;
    }

    private synchronized void setWidgetsAndShortcuts(ArrayList<WidgetItem> rawWidgetsShortcuts, LauncherAppState app, PackageUserKey packageUser) {
        PackageItemInfo next;
        Log.d(TAG, "addWidgetsAndShortcuts, widgetsShortcuts#=" + rawWidgetsShortcuts.size());
        HashMap map = new HashMap();
        if (packageUser == null) {
            this.mWidgetsList.clear();
        } else {
            Iterator<PackageItemInfo> it = this.mWidgetsList.keySet().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!next.packageName.equals(packageUser.mPackageName));
            if (next != null) {
                map.put(next.packageName, next);
                Iterator it2 = ((ArrayList) this.mWidgetsList.get(next)).iterator();
                while (it2.hasNext()) {
                    WidgetItem widgetItem = (WidgetItem) it2.next();
                    if (widgetItem.componentName.getPackageName().equals(packageUser.mPackageName) && widgetItem.user.equals(packageUser.mUser)) {
                        it2.remove();
                    }
                }
            }
        }
        InvariantDeviceProfile invariantDeviceProfile = app.getInvariantDeviceProfile();
        UserHandle userHandleMyUserHandle = Process.myUserHandle();
        for (WidgetItem widgetItem2 : rawWidgetsShortcuts) {
            if (widgetItem2.widgetInfo != null) {
                if ((widgetItem2.widgetInfo.getWidgetFeatures() & 2) == 0) {
                    int iMin = Math.min(widgetItem2.widgetInfo.spanX, widgetItem2.widgetInfo.minSpanX);
                    int iMin2 = Math.min(widgetItem2.widgetInfo.spanY, widgetItem2.widgetInfo.minSpanY);
                    if (iMin > invariantDeviceProfile.numColumns || iMin2 > invariantDeviceProfile.numRows) {
                        Log.d(TAG, String.format("Widget %s : (%d X %d) can't fit on this device", widgetItem2.componentName, Integer.valueOf(iMin), Integer.valueOf(iMin2)));
                    }
                }
            }
            if (this.mAppFilter == null) {
                this.mAppFilter = new CheryAppFilter();
            }
            if (widgetItem2.appInfo != null && !this.mAppFilter.shouldShowApp(widgetItem2.componentName)) {
                Log.d(TAG, String.format("%s is filtered and not added to the app tray.", widgetItem2.componentName));
            } else if (widgetItem2.widgetInfo == null || CheryWidgetFilter.get().shouldShowApp(widgetItem2.componentName)) {
                String packageName = widgetItem2.componentName.getPackageName();
                PackageItemInfo packageItemInfo = (PackageItemInfo) map.get(packageName);
                if (packageItemInfo == null) {
                    packageItemInfo = new PackageItemInfo(packageName);
                    packageItemInfo.user = widgetItem2.user;
                    map.put(packageName, packageItemInfo);
                } else if (!userHandleMyUserHandle.equals(packageItemInfo.user)) {
                    packageItemInfo.user = widgetItem2.user;
                }
                this.mWidgetsList.addToList(packageItemInfo, widgetItem2);
            } else {
                Log.d(TAG, String.format("%s is filtered and not added to the widget tray.", widgetItem2.componentName));
            }
        }
        IconCache iconCache = app.getIconCache();
        Iterator it3 = map.values().iterator();
        while (it3.hasNext()) {
            iconCache.getTitleAndIconForApp((PackageItemInfo) it3.next(), true);
        }
    }

    public synchronized void onPackageIconsUpdated(Set<String> packageNames, UserHandle user, LauncherAppState app) {
        for (Map.Entry<PackageItemInfo, WidgetItem> entry : this.mWidgetsList.entrySet()) {
            if (packageNames.contains(entry.getKey().packageName)) {
                ArrayList arrayList = (ArrayList) entry.getValue();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    WidgetItem widgetItem = (WidgetItem) arrayList.get(i);
                    if (widgetItem.user.equals(user)) {
                        if (widgetItem.activityInfo != null) {
                            arrayList.set(i, new WidgetItem(widgetItem.activityInfo, app.getIconCache(), app.getContext().getPackageManager()));
                        } else if (widgetItem.widgetInfo != null) {
                            arrayList.set(i, new WidgetItem(widgetItem.widgetInfo, app.getInvariantDeviceProfile(), app.getIconCache()));
                        } else if (widgetItem.appInfo != null) {
                            arrayList.set(i, new WidgetItem(widgetItem.appInfo, app.getIconCache(), app.getContext().getPackageManager()));
                        }
                    }
                }
            }
        }
    }

    public WidgetItem getWidgetProviderInfoByProviderName(ComponentName providerName) {
        ArrayList<WidgetItem> arrayList = (ArrayList) this.mWidgetsList.get(new PackageItemInfo(providerName.getPackageName()));
        if (arrayList == null) {
            return null;
        }
        for (WidgetItem widgetItem : arrayList) {
            if (widgetItem.componentName.equals(providerName)) {
                return widgetItem;
            }
        }
        return null;
    }
}

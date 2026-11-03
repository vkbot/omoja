package com.android.launcher3.widget;

import android.content.Intent;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;

/* JADX INFO: loaded from: classes.dex */
public class PendingAddShortcutInfo extends PendingAddItemInfo {
    public ShortcutConfigActivityInfo activityInfo;
    public AppInfo appInfo;

    public PendingAddShortcutInfo(ShortcutConfigActivityInfo activityInfo) {
        this.activityInfo = activityInfo;
        this.componentName = activityInfo.getComponent();
        this.user = activityInfo.getUser();
        this.itemType = activityInfo.getItemType();
        this.container = LauncherSettings.Favorites.CONTAINER_WIDGETS_TRAY;
    }

    public PendingAddShortcutInfo(AppInfo appInfo) {
        this.appInfo = appInfo;
        this.componentName = appInfo.componentName;
        this.user = appInfo.user;
        this.itemType = appInfo.itemType;
        this.container = LauncherSettings.Favorites.CONTAINER_WIDGETS_TRAY;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public Intent getIntent() {
        return this.appInfo.intent;
    }
}

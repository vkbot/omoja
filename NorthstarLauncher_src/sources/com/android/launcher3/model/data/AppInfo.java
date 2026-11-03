package com.android.launcher3.model.data;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageManagerHelper;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class AppInfo extends ItemInfoWithIcon {
    public ComponentName componentName;
    public Intent intent;
    private int mIndex;
    public String sectionName;
    public LauncherActivityInfo source;
    public static final AppInfo[] EMPTY_ARRAY = new AppInfo[0];
    public static final Comparator<AppInfo> COMPONENT_KEY_COMPARATOR = new Comparator() { // from class: com.android.launcher3.model.data.AppInfo$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return AppInfo.lambda$static$0((AppInfo) obj, (AppInfo) obj2);
        }
    };

    public int getIndex() {
        return this.mIndex;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public Intent getIntent() {
        return this.intent;
    }

    public void setIndex(int index) {
        this.mIndex = index;
    }

    static /* synthetic */ int lambda$static$0(AppInfo appInfo, AppInfo appInfo2) {
        int iHashCode = appInfo.user.hashCode() - appInfo2.user.hashCode();
        return iHashCode != 0 ? iHashCode : appInfo.componentName.compareTo(appInfo2.componentName);
    }

    public AppInfo() {
        this.sectionName = "";
        this.mIndex = -1;
        this.itemType = 0;
    }

    public AppInfo(Context context, LauncherActivityInfo info, UserHandle user) {
        this(info, user, ((UserManager) context.getSystemService(UserManager.class)).isQuietModeEnabled(user));
    }

    public AppInfo(LauncherActivityInfo info, UserHandle user, boolean quietModeEnabled) {
        this.sectionName = "";
        this.mIndex = -1;
        this.source = info;
        this.componentName = info.getComponentName();
        this.container = LauncherSettings.Favorites.CONTAINER_ALL_APPS;
        this.user = user;
        this.intent = makeLaunchIntent(info);
        if (quietModeEnabled) {
            this.runtimeStatusFlags |= 8;
        }
        updateRuntimeFlagsForActivityTarget(this, info);
    }

    public AppInfo(AppInfo info) {
        super(info);
        this.sectionName = "";
        this.mIndex = -1;
        this.source = info.source;
        this.componentName = info.componentName;
        this.title = Utilities.trim(info.title);
        this.intent = new Intent(info.intent);
        this.user = info.user;
        this.runtimeStatusFlags = info.runtimeStatusFlags;
    }

    public AppInfo(ComponentName componentName, CharSequence title, UserHandle user, Intent intent) {
        this.sectionName = "";
        this.mIndex = -1;
        this.componentName = componentName;
        this.title = title;
        this.user = user;
        this.intent = intent;
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon, com.android.launcher3.model.data.ItemInfo
    protected String dumpProperties() {
        return super.dumpProperties() + " componentName=" + this.componentName;
    }

    public WorkspaceItemInfo makeWorkspaceItem() {
        return new WorkspaceItemInfo(this);
    }

    public ComponentKey toComponentKey() {
        return new ComponentKey(this.componentName, this.user);
    }

    public static Intent makeLaunchIntent(LauncherActivityInfo info) {
        return makeLaunchIntent(info.getComponentName());
    }

    public static Intent makeLaunchIntent(ComponentName cn) {
        return new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(cn).setFlags(270532608);
    }

    public static void updateRuntimeFlagsForActivityTarget(ItemInfoWithIcon info, LauncherActivityInfo lai) {
        ApplicationInfo applicationInfo = lai.getApplicationInfo();
        if (PackageManagerHelper.isAppSuspended(applicationInfo)) {
            info.runtimeStatusFlags |= 4;
        }
        info.runtimeStatusFlags |= (applicationInfo.flags & 1) == 0 ? 128 : 64;
        if (Utilities.ATLEAST_OREO && applicationInfo.targetSdkVersion >= 26 && Process.myUserHandle().equals(lai.getUser())) {
            info.runtimeStatusFlags |= 256;
        }
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* JADX INFO: renamed from: clone */
    public AppInfo mo125clone() {
        return new AppInfo(this);
    }
}

package com.android.launcher3.model;

import android.content.pm.PackageManager;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.util.ComponentKey;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class WidgetItem extends ComponentKey {
    public final ShortcutConfigActivityInfo activityInfo;
    public AppInfo appInfo;
    public final String label;
    public final int spanX;
    public final int spanY;
    public final LauncherAppWidgetProviderInfo widgetInfo;

    public WidgetItem(LauncherAppWidgetProviderInfo info, InvariantDeviceProfile idp, IconCache iconCache) {
        super(info.provider, info.getProfile());
        this.label = iconCache.getTitleNoCache(info);
        this.widgetInfo = info;
        this.activityInfo = null;
        this.spanX = Math.min(info.spanX, idp.numColumns);
        this.spanY = Math.min(info.spanY, idp.numRows);
    }

    public WidgetItem(ShortcutConfigActivityInfo info, IconCache iconCache, PackageManager pm) {
        super(info.getComponent(), info.getUser());
        this.label = info.isPersistable() ? iconCache.getTitleNoCache(info) : Utilities.trim(info.getLabel(pm));
        this.widgetInfo = null;
        this.activityInfo = info;
        this.spanY = 1;
        this.spanX = 1;
    }

    public WidgetItem(AppInfo info, IconCache iconCache, PackageManager pm) {
        super(info.componentName, info.user);
        this.label = info.title.toString();
        this.widgetInfo = null;
        this.activityInfo = null;
        this.appInfo = info;
        this.spanY = 1;
        this.spanX = 1;
    }

    @Override // com.android.launcher3.util.ComponentKey
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other != null && getClass() == other.getClass() && super.equals(other)) {
            return Objects.equals(this.label, ((WidgetItem) other).label);
        }
        return false;
    }

    @Override // com.android.launcher3.util.ComponentKey
    public String toString() {
        return "WidgetItem{widgetInfo=" + this.widgetInfo + ", appInfo=" + this.appInfo + ", label='" + this.label + "', spanX=" + this.spanX + ", hash=" + hashCode() + '}';
    }
}

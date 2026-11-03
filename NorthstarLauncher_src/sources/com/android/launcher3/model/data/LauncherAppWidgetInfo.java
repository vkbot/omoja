package com.android.launcher3.model.data;

import android.appwidget.AppWidgetHostView;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Process;
import com.android.launcher3.AppWidgetResizeFrame;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.logger.LauncherAtom;
import com.android.launcher3.util.ContentWriter;

/* JADX INFO: loaded from: classes.dex */
public class LauncherAppWidgetInfo extends ItemInfo {
    public static final int CUSTOM_WIDGET_ID = -100;
    public static final int FLAG_DIRECT_CONFIG = 32;
    public static final int FLAG_ID_ALLOCATED = 16;
    public static final int FLAG_ID_NOT_VALID = 1;
    public static final int FLAG_PROVIDER_NOT_READY = 2;
    public static final int FLAG_RESTORE_STARTED = 8;
    public static final int FLAG_UI_NOT_READY = 4;
    public static final int NO_ID = -1;
    public static final int OPTION_SEARCH_WIDGET = 1;
    public static final int RESTORE_COMPLETED = 0;
    public int appWidgetId;
    public Intent bindOptions;
    public int installProgress;
    private boolean mHasNotifiedInitialWidgetSizeChanged;
    public int options;
    public PackageItemInfo pendingItemInfo;
    public ComponentName providerName;
    public int restoreStatus;

    @Override // com.android.launcher3.model.data.ItemInfo
    public ComponentName getTargetComponent() {
        return this.providerName;
    }

    public final boolean hasOptionFlag(int option) {
        return (this.options & option) != 0;
    }

    public final boolean hasRestoreFlag(int flag) {
        return (this.restoreStatus & flag) == flag;
    }

    public boolean isCustomWidget() {
        return this.appWidgetId <= -100;
    }

    public final boolean isWidgetIdAllocated() {
        int i = this.restoreStatus;
        return (i & 1) == 0 || (i & 16) == 16;
    }

    public LauncherAppWidgetInfo(int appWidgetId, ComponentName providerName) {
        this.installProgress = -1;
        this.appWidgetId = appWidgetId;
        this.providerName = providerName;
        if (isCustomWidget()) {
            this.itemType = 5;
        } else {
            this.itemType = 4;
        }
        this.spanX = -1;
        this.spanY = -1;
        this.user = Process.myUserHandle();
        this.restoreStatus = 0;
    }

    public LauncherAppWidgetInfo() {
        this.appWidgetId = -1;
        this.installProgress = -1;
        this.itemType = 4;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public void onAddToDatabase(ContentWriter writer) {
        super.onAddToDatabase(writer);
        writer.put(LauncherSettings.Favorites.APPWIDGET_ID, Integer.valueOf(this.appWidgetId)).put(LauncherSettings.Favorites.APPWIDGET_PROVIDER, this.providerName.flattenToString()).put(LauncherSettings.Favorites.RESTORED, Integer.valueOf(this.restoreStatus)).put(LauncherSettings.Favorites.OPTIONS, Integer.valueOf(this.options)).put(LauncherSettings.Favorites.INTENT, this.bindOptions);
    }

    public void onBindAppWidget(Launcher launcher, AppWidgetHostView hostView) {
        if (this.mHasNotifiedInitialWidgetSizeChanged) {
            return;
        }
        AppWidgetResizeFrame.updateWidgetSizeRanges(hostView, launcher, this.spanX, this.spanY);
        this.mHasNotifiedInitialWidgetSizeChanged = true;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    protected String dumpProperties() {
        return super.dumpProperties() + " providerName=" + this.providerName + " appWidgetId=" + this.appWidgetId;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public void setItemBuilder(LauncherAtom.ItemInfo.Builder builder) {
        builder.setWidget(LauncherAtom.Widget.newBuilder().setSpanX(this.spanX).setSpanY(this.spanY).setComponentName(this.providerName.toString()).setPackageName(this.providerName.getPackageName()));
    }
}

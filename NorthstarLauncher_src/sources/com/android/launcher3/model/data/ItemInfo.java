package com.android.launcher3.model.data;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.logger.LauncherAtom;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.util.ContentWriter;
import java.util.Optional;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public class ItemInfo {
    public static final boolean DEBUG = true;
    public static final int NO_ID = -1;
    public static final String RT_SHOW_DELAY = "show_delay";
    public int cellX;
    public int cellY;
    public int container;
    public CharSequence contentDescription;
    public int id;
    public int itemType;
    private ComponentName mComponentName;
    public int minSpanX;
    public int minSpanY;
    public int rank;
    public Bundle runtime;
    public int screenId;
    public int spanX;
    public int spanY;
    public CharSequence title;
    public UserHandle user;

    public Intent getIntent() {
        return null;
    }

    public int getViewId() {
        return this.id;
    }

    public boolean isDisabled() {
        return false;
    }

    public boolean isPredictedItem() {
        int i = this.container;
        return i == -103 || i == -102;
    }

    public void setItemBuilder(LauncherAtom.ItemInfo.Builder builder) {
    }

    public void setTitle(CharSequence title, ModelWriter modelWriter) {
        this.title = title;
    }

    public ItemInfo() {
        this.id = -1;
        this.container = -1;
        this.screenId = -1;
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
        this.minSpanX = 1;
        this.minSpanY = 1;
        this.rank = 0;
        this.runtime = new Bundle();
        this.user = Process.myUserHandle();
    }

    protected ItemInfo(ItemInfo info) {
        this.id = -1;
        this.container = -1;
        this.screenId = -1;
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
        this.minSpanX = 1;
        this.minSpanY = 1;
        this.rank = 0;
        this.runtime = new Bundle();
        copyFrom(info);
    }

    public void copyFrom(ItemInfo info) {
        this.id = info.id;
        this.cellX = info.cellX;
        this.cellY = info.cellY;
        this.spanX = info.spanX;
        this.spanY = info.spanY;
        this.rank = info.rank;
        this.screenId = info.screenId;
        this.itemType = info.itemType;
        this.container = info.container;
        this.user = info.user;
        this.contentDescription = info.contentDescription;
        this.mComponentName = info.getTargetComponent();
    }

    public ComponentName getTargetComponent() {
        Intent intent = getIntent();
        if (intent == null) {
            return null;
        }
        ComponentName component = intent.getComponent();
        return component != null ? component : this.mComponentName;
    }

    public void writeToValues(ContentWriter writer) {
        writer.put(LauncherSettings.Favorites.ITEM_TYPE, Integer.valueOf(this.itemType)).put(LauncherSettings.Favorites.CONTAINER, Integer.valueOf(this.container)).put(LauncherSettings.Favorites.SCREEN, Integer.valueOf(this.screenId)).put(LauncherSettings.Favorites.CELLX, Integer.valueOf(this.cellX)).put(LauncherSettings.Favorites.CELLY, Integer.valueOf(this.cellY)).put(LauncherSettings.Favorites.SPANX, Integer.valueOf(this.spanX)).put(LauncherSettings.Favorites.SPANY, Integer.valueOf(this.spanY)).put(LauncherSettings.Favorites.RANK, Integer.valueOf(this.rank));
    }

    public void readFromValues(ContentValues values) {
        this.itemType = values.getAsInteger(LauncherSettings.Favorites.ITEM_TYPE).intValue();
        this.container = values.getAsInteger(LauncherSettings.Favorites.CONTAINER).intValue();
        this.screenId = values.getAsInteger(LauncherSettings.Favorites.SCREEN).intValue();
        this.cellX = values.getAsInteger(LauncherSettings.Favorites.CELLX).intValue();
        this.cellY = values.getAsInteger(LauncherSettings.Favorites.CELLY).intValue();
        this.spanX = values.getAsInteger(LauncherSettings.Favorites.SPANX).intValue();
        this.spanY = values.getAsInteger(LauncherSettings.Favorites.SPANY).intValue();
        this.rank = values.getAsInteger(LauncherSettings.Favorites.RANK).intValue();
    }

    public void onAddToDatabase(ContentWriter writer) {
        if (this.screenId == -201) {
            throw new RuntimeException("Screen id should not be EXTRA_EMPTY_SCREEN_ID");
        }
        writeToValues(writer);
        writer.put("profileId", this.user);
    }

    public final String toString() {
        return getClass().getSimpleName() + "(" + dumpProperties() + ")";
    }

    protected String dumpProperties() {
        return "id=" + this.id + " type=" + LauncherSettings.Favorites.itemTypeToString(this.itemType) + " container=" + LauncherSettings.Favorites.containerToString(this.container) + " targetComponent=" + getTargetComponent() + " screen=" + this.screenId + " cell(" + this.cellX + "," + this.cellY + ") span(" + this.spanX + "," + this.spanY + ") minSpan(" + this.minSpanX + "," + this.minSpanY + ") rank=" + this.rank + " user=" + this.user + " title=" + ((Object) this.title);
    }

    public LauncherAtom.ItemInfo buildProto() {
        return buildProto(null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x005a  */
    public LauncherAtom.ItemInfo buildProto(FolderInfo fInfo) {
        LauncherAtom.ItemInfo.Builder defaultItemInfoBuilder = getDefaultItemInfoBuilder();
        Optional optionalOfNullable = Optional.ofNullable(getTargetComponent());
        int i = this.itemType;
        if (i == 0) {
            defaultItemInfoBuilder.setApplication((LauncherAtom.Application.Builder) optionalOfNullable.map(new Function() { // from class: com.android.launcher3.model.data.ItemInfo$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    ComponentName componentName = (ComponentName) obj;
                    return LauncherAtom.Application.newBuilder().setComponentName(componentName.flattenToShortString()).setPackageName(componentName.getPackageName());
                }
            }).orElse(LauncherAtom.Application.newBuilder()));
        } else if (i == 1) {
            defaultItemInfoBuilder.setShortcut((LauncherAtom.Shortcut.Builder) optionalOfNullable.map(new Function() { // from class: com.android.launcher3.model.data.ItemInfo$$ExternalSyntheticLambda1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return LauncherAtom.Shortcut.newBuilder().setShortcutName(((ComponentName) obj).flattenToShortString());
                }
            }).orElse(LauncherAtom.Shortcut.newBuilder()));
        } else if (i == 4) {
            defaultItemInfoBuilder.setWidget(((LauncherAtom.Widget.Builder) optionalOfNullable.map(new Function() { // from class: com.android.launcher3.model.data.ItemInfo$$ExternalSyntheticLambda2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    ComponentName componentName = (ComponentName) obj;
                    return LauncherAtom.Widget.newBuilder().setComponentName(componentName.flattenToShortString()).setPackageName(componentName.getPackageName());
                }
            }).orElse(LauncherAtom.Widget.newBuilder())).setSpanX(this.spanX).setSpanY(this.spanY));
        } else if (i == 6) {
            defaultItemInfoBuilder.setShortcut((LauncherAtom.Shortcut.Builder) optionalOfNullable.map(new Function() { // from class: com.android.launcher3.model.data.ItemInfo$$ExternalSyntheticLambda1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return LauncherAtom.Shortcut.newBuilder().setShortcutName(((ComponentName) obj).flattenToShortString());
                }
            }).orElse(LauncherAtom.Shortcut.newBuilder()));
        } else if (i == 7) {
            defaultItemInfoBuilder.setTask(LauncherAtom.Task.newBuilder().setComponentName(getTargetComponent().flattenToShortString()).setIndex(this.screenId));
        }
        if (fInfo != null) {
            LauncherAtom.FolderContainer.Builder builderNewBuilder = LauncherAtom.FolderContainer.newBuilder();
            builderNewBuilder.setGridX(this.cellX).setGridY(this.cellY).setPageIndex(this.screenId);
            int i2 = fInfo.container;
            if (i2 == -103 || i2 == -101) {
                builderNewBuilder.setHotseat(LauncherAtom.HotseatContainer.newBuilder().setIndex(fInfo.screenId));
            } else if (i2 == -100) {
                builderNewBuilder.setWorkspace(LauncherAtom.WorkspaceContainer.newBuilder().setPageIndex(fInfo.screenId).setGridX(fInfo.cellX).setGridY(fInfo.cellY));
            }
            defaultItemInfoBuilder.setContainerInfo(LauncherAtom.ContainerInfo.newBuilder().setFolder(builderNewBuilder));
        } else {
            LauncherAtom.ContainerInfo containerInfo = getContainerInfo();
            if (!containerInfo.getContainerCase().equals(LauncherAtom.ContainerInfo.ContainerCase.CONTAINER_NOT_SET)) {
                defaultItemInfoBuilder.setContainerInfo(containerInfo);
            }
        }
        return defaultItemInfoBuilder.build();
    }

    LauncherAtom.ItemInfo.Builder getDefaultItemInfoBuilder() {
        LauncherAtom.ItemInfo.Builder builderNewBuilder = LauncherAtom.ItemInfo.newBuilder();
        builderNewBuilder.setIsWork(this.user != Process.myUserHandle());
        return builderNewBuilder;
    }

    protected LauncherAtom.ContainerInfo getContainerInfo() {
        switch (this.container) {
            case LauncherSettings.Favorites.CONTAINER_TASKFOREGROUND /* -110 */:
                return LauncherAtom.ContainerInfo.newBuilder().setTaskForegroundContainer(LauncherAtom.TaskForegroundContainer.getDefaultInstance()).build();
            case LauncherSettings.Favorites.CONTAINER_TASKSWITCHER /* -109 */:
                return LauncherAtom.ContainerInfo.newBuilder().setTaskSwitcherContainer(LauncherAtom.TaskSwitcherContainer.getDefaultInstance()).build();
            case LauncherSettings.Favorites.CONTAINER_SETTINGS /* -108 */:
                return LauncherAtom.ContainerInfo.newBuilder().setSettingsContainer(LauncherAtom.SettingsContainer.getDefaultInstance()).build();
            case LauncherSettings.Favorites.CONTAINER_SHORTCUTS /* -107 */:
                return LauncherAtom.ContainerInfo.newBuilder().setShortcutsContainer(LauncherAtom.ShortcutsContainer.getDefaultInstance()).build();
            case LauncherSettings.Favorites.CONTAINER_SEARCH_RESULTS /* -106 */:
                return LauncherAtom.ContainerInfo.newBuilder().setSearchResultContainer(LauncherAtom.SearchResultContainer.getDefaultInstance()).build();
            case LauncherSettings.Favorites.CONTAINER_WIDGETS_TRAY /* -105 */:
                return LauncherAtom.ContainerInfo.newBuilder().setWidgetsContainer(LauncherAtom.WidgetsContainer.getDefaultInstance()).build();
            case LauncherSettings.Favorites.CONTAINER_ALL_APPS /* -104 */:
                return LauncherAtom.ContainerInfo.newBuilder().setAllAppsContainer(LauncherAtom.AllAppsContainer.getDefaultInstance()).build();
            case LauncherSettings.Favorites.CONTAINER_HOTSEAT_PREDICTION /* -103 */:
                return LauncherAtom.ContainerInfo.newBuilder().setPredictedHotseatContainer(LauncherAtom.PredictedHotseatContainer.newBuilder().setIndex(this.screenId)).build();
            case LauncherSettings.Favorites.CONTAINER_PREDICTION /* -102 */:
                return LauncherAtom.ContainerInfo.newBuilder().setPredictionContainer(LauncherAtom.PredictionContainer.getDefaultInstance()).build();
            case LauncherSettings.Favorites.CONTAINER_HOTSEAT /* -101 */:
                return LauncherAtom.ContainerInfo.newBuilder().setHotseat(LauncherAtom.HotseatContainer.newBuilder().setIndex(this.screenId)).build();
            case -100:
                return LauncherAtom.ContainerInfo.newBuilder().setWorkspace(LauncherAtom.WorkspaceContainer.newBuilder().setGridX(this.cellX).setGridY(this.cellY).setPageIndex(this.screenId)).build();
            default:
                return LauncherAtom.ContainerInfo.getDefaultInstance();
        }
    }

    public ItemInfo makeShallowCopy() {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.copyFrom(this);
        return itemInfo;
    }
}

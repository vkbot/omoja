package com.android.launcher3.model;

import android.content.Intent;
import android.os.UserHandle;
import android.util.LongSparseArray;
import android.util.Pair;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.PackageManagerHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AddWorkspaceItemsTask extends BaseModelUpdateTask {
    private final List<Pair<ItemInfo, Object>> mItemList;

    public AddWorkspaceItemsTask(List<Pair<ItemInfo, Object>> itemList) {
        this.mItemList = itemList;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public void execute(LauncherAppState app, BgDataModel dataModel, AllAppsList apps) {
        if (this.mItemList.isEmpty()) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        final IntArray intArray = new IntArray();
        synchronized (dataModel) {
            IntArray intArrayCollectWorkspaceScreens = dataModel.collectWorkspaceScreens();
            ArrayList<ItemInfo> arrayList2 = new ArrayList();
            Iterator<Pair<ItemInfo, Object>> it = this.mItemList.iterator();
            while (it.hasNext()) {
                ItemInfo itemInfoMakeWorkspaceItem = (ItemInfo) it.next().first;
                if ((itemInfoMakeWorkspaceItem.itemType != 0 && itemInfoMakeWorkspaceItem.itemType != 1) || (!shortcutExists(dataModel, itemInfoMakeWorkspaceItem.getIntent(), itemInfoMakeWorkspaceItem.user) && !PackageManagerHelper.isSystemApp(app.getContext(), itemInfoMakeWorkspaceItem.getIntent()))) {
                    if (itemInfoMakeWorkspaceItem.itemType == 0 && (itemInfoMakeWorkspaceItem instanceof AppInfo)) {
                        itemInfoMakeWorkspaceItem = ((AppInfo) itemInfoMakeWorkspaceItem).makeWorkspaceItem();
                    }
                    if (itemInfoMakeWorkspaceItem != null) {
                        arrayList2.add(itemInfoMakeWorkspaceItem);
                    }
                }
            }
            for (ItemInfo itemInfoMakeWorkspaceItem2 : arrayList2) {
                int[] iArrFindSpaceForItem = findSpaceForItem(app, dataModel, intArrayCollectWorkspaceScreens, intArray, itemInfoMakeWorkspaceItem2.spanX, itemInfoMakeWorkspaceItem2.spanY);
                int i = iArrFindSpaceForItem[0];
                if (!(itemInfoMakeWorkspaceItem2 instanceof WorkspaceItemInfo) && !(itemInfoMakeWorkspaceItem2 instanceof FolderInfo) && !(itemInfoMakeWorkspaceItem2 instanceof LauncherAppWidgetInfo)) {
                    if (itemInfoMakeWorkspaceItem2 instanceof AppInfo) {
                        itemInfoMakeWorkspaceItem2 = ((AppInfo) itemInfoMakeWorkspaceItem2).makeWorkspaceItem();
                    } else {
                        throw new RuntimeException("Unexpected info type");
                    }
                }
                getModelWriter().addItemToDatabase(itemInfoMakeWorkspaceItem2, -100, i, iArrFindSpaceForItem[1], iArrFindSpaceForItem[2]);
                arrayList.add(itemInfoMakeWorkspaceItem2);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.AddWorkspaceItemsTask.1
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public void execute(BgDataModel.Callbacks callbacks) {
                ArrayList<ItemInfo> arrayList3 = new ArrayList<>();
                ArrayList<ItemInfo> arrayList4 = new ArrayList<>();
                if (!arrayList.isEmpty()) {
                    ArrayList arrayList5 = arrayList;
                    int i2 = ((ItemInfo) arrayList5.get(arrayList5.size() - 1)).screenId;
                    for (ItemInfo itemInfo : arrayList) {
                        if (itemInfo.screenId == i2) {
                            arrayList3.add(itemInfo);
                        } else {
                            arrayList4.add(itemInfo);
                        }
                    }
                }
                callbacks.bindAppsAdded(intArray, arrayList4, arrayList3);
            }
        });
    }

    protected boolean shortcutExists(BgDataModel dataModel, Intent intent, UserHandle user) {
        String uri;
        String uri2;
        String packageName;
        if (intent == null) {
            return true;
        }
        if (intent.getComponent() != null) {
            packageName = intent.getComponent().getPackageName();
            if (intent.getPackage() != null) {
                uri = intent.toUri(0);
                uri2 = new Intent(intent).setPackage(null).toUri(0);
            } else {
                uri = new Intent(intent).setPackage(packageName).toUri(0);
                uri2 = intent.toUri(0);
            }
        } else {
            uri = intent.toUri(0);
            uri2 = intent.toUri(0);
            packageName = null;
        }
        boolean zIsLauncherAppTarget = PackageManagerHelper.isLauncherAppTarget(intent);
        synchronized (dataModel) {
            for (ItemInfo itemInfo : dataModel.itemsIdMap) {
                if (itemInfo instanceof WorkspaceItemInfo) {
                    WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                    if (itemInfo.getIntent() != null && workspaceItemInfo.user.equals(user)) {
                        Intent intent2 = new Intent(itemInfo.getIntent());
                        intent2.setSourceBounds(intent.getSourceBounds());
                        String uri3 = intent2.toUri(0);
                        if (!uri.equals(uri3) && !uri2.equals(uri3)) {
                            if (zIsLauncherAppTarget && workspaceItemInfo.isPromise() && workspaceItemInfo.hasStatusFlag(2) && workspaceItemInfo.getTargetComponent() != null && packageName != null && packageName.equals(workspaceItemInfo.getTargetComponent().getPackageName())) {
                                return true;
                            }
                        }
                        return true;
                    }
                }
            }
            return false;
        }
    }

    protected int[] findSpaceForItem(LauncherAppState app, BgDataModel dataModel, IntArray workspaceScreens, IntArray addedWorkspaceScreensFinal, int spanX, int spanY) {
        int i;
        boolean zFindNextAvailableIconSpaceInScreen;
        LongSparseArray longSparseArray = new LongSparseArray();
        synchronized (dataModel) {
            for (ItemInfo itemInfo : dataModel.itemsIdMap) {
                if (itemInfo.container == -100) {
                    ArrayList arrayList = (ArrayList) longSparseArray.get(itemInfo.screenId);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        longSparseArray.put(itemInfo.screenId, arrayList);
                    }
                    arrayList.add(itemInfo);
                }
            }
        }
        int[] iArr = new int[2];
        int size = workspaceScreens.size();
        int i2 = !workspaceScreens.isEmpty();
        if (i2 < size) {
            int i3 = workspaceScreens.get(i2);
            zFindNextAvailableIconSpaceInScreen = findNextAvailableIconSpaceInScreen(app, (ArrayList) longSparseArray.get(i3), iArr, spanX, spanY);
            i = i3;
        } else {
            i = 0;
            zFindNextAvailableIconSpaceInScreen = false;
        }
        if (!zFindNextAvailableIconSpaceInScreen) {
            int i4 = 1;
            while (i4 < size) {
                int i5 = workspaceScreens.get(i4);
                if (findNextAvailableIconSpaceInScreen(app, (ArrayList) longSparseArray.get(i5), iArr, spanX, spanY)) {
                    zFindNextAvailableIconSpaceInScreen = true;
                    i = i5;
                    break;
                }
                i4++;
                i = i5;
            }
        }
        if (!zFindNextAvailableIconSpaceInScreen) {
            int i6 = LauncherSettings.Settings.call(app.getContext().getContentResolver(), LauncherSettings.Settings.METHOD_NEW_SCREEN_ID).getInt(LauncherSettings.Settings.EXTRA_VALUE);
            workspaceScreens.add(i6);
            addedWorkspaceScreensFinal.add(i6);
            if (!findNextAvailableIconSpaceInScreen(app, (ArrayList) longSparseArray.get(i6), iArr, spanX, spanY)) {
                throw new RuntimeException("Can't find space to add the item");
            }
            i = i6;
        }
        return new int[]{i, iArr[0], iArr[1]};
    }

    private boolean findNextAvailableIconSpaceInScreen(LauncherAppState app, ArrayList<ItemInfo> occupiedPos, int[] xy, int spanX, int spanY) {
        GridOccupancy gridOccupancy = new GridOccupancy(256, app.getInvariantDeviceProfile().numRows);
        if (occupiedPos != null) {
            Iterator<ItemInfo> it = occupiedPos.iterator();
            while (it.hasNext()) {
                gridOccupancy.markCells(it.next(), true);
            }
        }
        return gridOccupancy.findVacantCell(xy, spanX, spanY);
    }
}

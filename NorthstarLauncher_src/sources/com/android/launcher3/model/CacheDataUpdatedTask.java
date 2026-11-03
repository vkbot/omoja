package com.android.launcher3.model;

import android.content.ComponentName;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class CacheDataUpdatedTask extends BaseModelUpdateTask {
    public static final int OP_CACHE_UPDATE = 1;
    public static final int OP_SESSION_UPDATE = 2;
    private final int mOp;
    private final HashSet<String> mPackages;
    private final UserHandle mUser;

    public CacheDataUpdatedTask(int op, UserHandle user, HashSet<String> packages) {
        this.mOp = op;
        this.mUser = user;
        this.mPackages = packages;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public void execute(LauncherAppState app, BgDataModel dataModel, AllAppsList apps) {
        IconCache iconCache = app.getIconCache();
        ArrayList<WorkspaceItemInfo> arrayList = new ArrayList<>();
        synchronized (dataModel) {
            for (ItemInfo itemInfo : dataModel.itemsIdMap) {
                if ((itemInfo instanceof WorkspaceItemInfo) && this.mUser.equals(itemInfo.user)) {
                    WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                    ComponentName targetComponent = workspaceItemInfo.getTargetComponent();
                    if (workspaceItemInfo.itemType == 0 && isValidShortcut(workspaceItemInfo) && targetComponent != null && this.mPackages.contains(targetComponent.getPackageName())) {
                        iconCache.getTitleAndIcon(workspaceItemInfo, workspaceItemInfo.usingLowResIcon());
                        arrayList.add(workspaceItemInfo);
                    }
                }
            }
            apps.updateIconsAndLabels(this.mPackages, this.mUser);
        }
        bindUpdatedWorkspaceItems(arrayList);
        bindApplicationsIfNeeded();
    }

    public boolean isValidShortcut(WorkspaceItemInfo si) {
        int i = this.mOp;
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return false;
        }
        return si.hasPromiseIconUi();
    }
}

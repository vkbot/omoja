package com.android.launcher3.model;

import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class UserLockStateChangedTask extends BaseModelUpdateTask {
    private boolean mIsUserUnlocked;
    private final UserHandle mUser;

    public UserLockStateChangedTask(UserHandle user, boolean isUserUnlocked) {
        this.mUser = user;
        this.mIsUserUnlocked = isUserUnlocked;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public void execute(LauncherAppState app, BgDataModel dataModel, AllAppsList apps) {
        Context context = app.getContext();
        HashMap map = new HashMap();
        if (this.mIsUserUnlocked) {
            ShortcutRequest.QueryResult queryResultQuery = new ShortcutRequest(context, this.mUser).query(2);
            if (queryResultQuery.wasSuccess()) {
                for (ShortcutInfo shortcutInfo : queryResultQuery) {
                    map.put(ShortcutKey.fromInfo(shortcutInfo), shortcutInfo);
                }
            } else {
                this.mIsUserUnlocked = false;
            }
        }
        ArrayList<WorkspaceItemInfo> arrayList = new ArrayList<>();
        HashSet hashSet = new HashSet();
        for (ItemInfo itemInfo : dataModel.itemsIdMap) {
            if (itemInfo.itemType == 6 && this.mUser.equals(itemInfo.user)) {
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                if (this.mIsUserUnlocked) {
                    ShortcutKey shortcutKeyFromItemInfo = ShortcutKey.fromItemInfo(workspaceItemInfo);
                    ShortcutInfo shortcutInfo2 = (ShortcutInfo) map.get(shortcutKeyFromItemInfo);
                    if (shortcutInfo2 == null) {
                        hashSet.add(shortcutKeyFromItemInfo);
                    } else {
                        workspaceItemInfo.runtimeStatusFlags &= -33;
                        workspaceItemInfo.updateFromDeepShortcutInfo(shortcutInfo2, context);
                        app.getIconCache().getShortcutIcon(workspaceItemInfo, shortcutInfo2);
                    }
                } else {
                    workspaceItemInfo.runtimeStatusFlags |= 32;
                }
                arrayList.add(workspaceItemInfo);
            }
        }
        bindUpdatedWorkspaceItems(arrayList);
        if (!hashSet.isEmpty()) {
            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofShortcutKeys(hashSet));
        }
        Iterator<ComponentKey> it = dataModel.deepShortcutMap.keySet().iterator();
        while (it.hasNext()) {
            if (it.next().user.equals(this.mUser)) {
                it.remove();
            }
        }
        if (this.mIsUserUnlocked) {
            dataModel.updateDeepShortcutCounts(null, this.mUser, new ShortcutRequest(context, this.mUser).query(11));
        }
        bindDeepShortcuts(dataModel);
    }
}

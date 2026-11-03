package com.android.launcher3.model;

import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.MultiHashMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ShortcutsChangedTask extends BaseModelUpdateTask {
    private final String mPackageName;
    private final List<ShortcutInfo> mShortcuts;
    private final boolean mUpdateIdMap;
    private final UserHandle mUser;

    public ShortcutsChangedTask(String packageName, List<ShortcutInfo> shortcuts, UserHandle user, boolean updateIdMap) {
        this.mPackageName = packageName;
        this.mShortcuts = shortcuts;
        this.mUser = user;
        this.mUpdateIdMap = updateIdMap;
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public void execute(LauncherAppState app, BgDataModel dataModel, AllAppsList apps) {
        Context context = app.getContext();
        HashSet hashSet = new HashSet();
        MultiHashMap multiHashMap = new MultiHashMap();
        HashSet hashSet2 = new HashSet();
        for (ItemInfo itemInfo : dataModel.itemsIdMap) {
            if (itemInfo.itemType == 6) {
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                if (this.mPackageName.equals(workspaceItemInfo.getIntent().getPackage()) && workspaceItemInfo.user.equals(this.mUser)) {
                    multiHashMap.addToList(ShortcutKey.fromItemInfo(workspaceItemInfo), workspaceItemInfo);
                    hashSet2.add(workspaceItemInfo.getDeepShortcutId());
                }
            }
        }
        ArrayList<WorkspaceItemInfo> arrayList = new ArrayList<>();
        if (!multiHashMap.isEmpty()) {
            for (ShortcutInfo shortcutInfo : new ShortcutRequest(context, this.mUser).forPackage(this.mPackageName, new ArrayList(hashSet2)).query(11)) {
                ShortcutKey shortcutKeyFromInfo = ShortcutKey.fromInfo(shortcutInfo);
                List<WorkspaceItemInfo> listRemove = multiHashMap.remove(shortcutKeyFromInfo);
                if (!shortcutInfo.isPinned()) {
                    hashSet.add(shortcutKeyFromInfo);
                } else {
                    for (WorkspaceItemInfo workspaceItemInfo2 : listRemove) {
                        workspaceItemInfo2.updateFromDeepShortcutInfo(shortcutInfo, context);
                        app.getIconCache().getShortcutIcon(workspaceItemInfo2, shortcutInfo);
                        arrayList.add(workspaceItemInfo2);
                    }
                }
            }
        }
        hashSet.addAll(multiHashMap.keySet());
        bindUpdatedWorkspaceItems(arrayList);
        if (!multiHashMap.isEmpty()) {
            deleteAndBindComponentsRemoved(ItemInfoMatcher.ofShortcutKeys(hashSet));
        }
        if (this.mUpdateIdMap) {
            dataModel.updateDeepShortcutCounts(this.mPackageName, this.mUser, this.mShortcuts);
            bindDeepShortcuts(dataModel);
        }
    }
}

package com.android.launcher3.popup;

import android.content.ComponentName;
import android.content.pm.ShortcutInfo;
import android.os.Handler;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationInfo;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.shortcuts.ShortcutRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class PopupPopulator {
    public static final int MAX_SHORTCUTS = 4;
    public static final int MAX_SHORTCUTS_IF_NOTIFICATIONS = 2;
    static final int NUM_DYNAMIC = 2;
    private static final Comparator<ShortcutInfo> SHORTCUT_RANK_COMPARATOR = new Comparator<ShortcutInfo>() { // from class: com.android.launcher3.popup.PopupPopulator.1
        @Override // java.util.Comparator
        public int compare(ShortcutInfo a, ShortcutInfo b) {
            if (a.isDeclaredInManifest() && !b.isDeclaredInManifest()) {
                return -1;
            }
            if (a.isDeclaredInManifest() || !b.isDeclaredInManifest()) {
                return Integer.compare(a.getRank(), b.getRank());
            }
            return 1;
        }
    };

    public static List<ShortcutInfo> sortAndFilterShortcuts(List<ShortcutInfo> shortcuts, String shortcutIdToRemoveFirst) {
        if (shortcutIdToRemoveFirst != null) {
            Iterator<ShortcutInfo> it = shortcuts.iterator();
            while (it.hasNext()) {
                if (it.next().getId().equals(shortcutIdToRemoveFirst)) {
                    it.remove();
                    break;
                }
            }
        }
        Collections.sort(shortcuts, SHORTCUT_RANK_COMPARATOR);
        if (shortcuts.size() <= 4) {
            return shortcuts;
        }
        ArrayList arrayList = new ArrayList(4);
        int size = shortcuts.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            ShortcutInfo shortcutInfo = shortcuts.get(i2);
            int size2 = arrayList.size();
            if (size2 < 4) {
                arrayList.add(shortcutInfo);
                if (shortcutInfo.isDynamic()) {
                    i++;
                }
            } else if (shortcutInfo.isDynamic() && i < 2) {
                i++;
                arrayList.remove(size2 - i);
                arrayList.add(shortcutInfo);
            }
        }
        return arrayList;
    }

    public static Runnable createUpdateRunnable(final BaseDraggingActivity launcher, final ItemInfo originalInfo, final Handler uiHandler, final PopupContainerWithArrow container, final List<DeepShortcutView> shortcutViews, final List<NotificationKeyData> notificationKeys) {
        final ComponentName targetComponent = originalInfo.getTargetComponent();
        final UserHandle userHandle = originalInfo.user;
        return new Runnable() { // from class: com.android.launcher3.popup.PopupPopulator$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                PopupPopulator.lambda$createUpdateRunnable$3(notificationKeys, launcher, originalInfo, uiHandler, container, userHandle, targetComponent, shortcutViews);
            }
        };
    }

    static /* synthetic */ void lambda$createUpdateRunnable$3(List list, final BaseDraggingActivity baseDraggingActivity, final ItemInfo itemInfo, Handler handler, final PopupContainerWithArrow popupContainerWithArrow, UserHandle userHandle, ComponentName componentName, List list2) {
        final List listEmptyList;
        if (!list.isEmpty()) {
            NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
            if (instanceIfConnected == null) {
                listEmptyList = Collections.emptyList();
            } else {
                listEmptyList = (List) instanceIfConnected.getNotificationsForKeys(list).stream().map(new Function() { // from class: com.android.launcher3.popup.PopupPopulator$$ExternalSyntheticLambda0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return PopupPopulator.lambda$createUpdateRunnable$0(baseDraggingActivity, itemInfo, (StatusBarNotification) obj);
                    }
                }).collect(Collectors.toList());
            }
            handler.post(new Runnable() { // from class: com.android.launcher3.popup.PopupPopulator$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    popupContainerWithArrow.applyNotificationInfos(listEmptyList);
                }
            });
        }
        ShortcutRequest.QueryResult queryResultQuery = new ShortcutRequest(baseDraggingActivity, userHandle).withContainer(componentName).query(9);
        List<ShortcutInfo> listSortAndFilterShortcuts = sortAndFilterShortcuts(queryResultQuery, list.isEmpty() ? null : ((NotificationKeyData) list.get(0)).shortcutId);
        IconCache iconCache = LauncherAppState.getInstance(baseDraggingActivity).getIconCache();
        for (int i = 0; i < listSortAndFilterShortcuts.size() && i < list2.size(); i++) {
            final ShortcutInfo shortcutInfo = listSortAndFilterShortcuts.get(i);
            final WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(shortcutInfo, baseDraggingActivity);
            iconCache.getUnbadgedShortcutIcon(workspaceItemInfo, shortcutInfo);
            workspaceItemInfo.rank = i;
            workspaceItemInfo.container = LauncherSettings.Favorites.CONTAINER_SHORTCUTS;
            final DeepShortcutView deepShortcutView = (DeepShortcutView) list2.get(i);
            handler.post(new Runnable() { // from class: com.android.launcher3.popup.PopupPopulator$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    deepShortcutView.applyShortcutInfo(workspaceItemInfo, shortcutInfo, popupContainerWithArrow);
                }
            });
        }
    }

    static /* synthetic */ NotificationInfo lambda$createUpdateRunnable$0(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo, StatusBarNotification statusBarNotification) {
        return new NotificationInfo(baseDraggingActivity, statusBarNotification, itemInfo);
    }
}

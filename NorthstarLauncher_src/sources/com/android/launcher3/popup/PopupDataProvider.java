package com.android.launcher3.popup;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.service.notification.StatusBarNotification;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.ShortcutUtil;
import com.android.launcher3.widget.WidgetListRowEntry;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class PopupDataProvider implements NotificationListener.NotificationsChangedListener {
    private static final boolean LOGD = false;
    private static final String TAG = "PopupDataProvider";
    private final Consumer<Predicate<PackageUserKey>> mNotificationDotsChangeListener;
    private HashMap<ComponentKey, Integer> mDeepShortcutMap = new HashMap<>();
    private Map<PackageUserKey, DotInfo> mPackageUserToDotInfos = new HashMap();
    private ArrayList<WidgetListRowEntry> mAllWidgets = new ArrayList<>();
    private PopupDataChangeListener mChangeListener = PopupDataChangeListener.INSTANCE;

    public interface PopupDataChangeListener {
        public static final PopupDataChangeListener INSTANCE = new PopupDataChangeListener() { // from class: com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener.1
        };

        default void onNotificationDotsUpdated(Predicate<PackageUserKey> updatedDots) {
        }

        default void onWidgetsBound(boolean updateAppsOnly) {
        }

        default void trimNotifications(Map<PackageUserKey, DotInfo> updatedDots) {
        }
    }

    public ArrayList<WidgetListRowEntry> getAllWidgets() {
        return this.mAllWidgets;
    }

    public void setDeepShortcutMap(HashMap<ComponentKey, Integer> deepShortcutMapCopy) {
        this.mDeepShortcutMap = deepShortcutMapCopy;
    }

    public PopupDataProvider(Consumer<Predicate<PackageUserKey>> notificationDotsChangeListener) {
        this.mNotificationDotsChangeListener = notificationDotsChangeListener;
    }

    private void updateNotificationDots(Predicate<PackageUserKey> updatedDots) {
        this.mNotificationDotsChangeListener.accept(updatedDots);
        this.mChangeListener.onNotificationDotsUpdated(updatedDots);
    }

    @Override // com.android.launcher3.notification.NotificationListener.NotificationsChangedListener
    public void onNotificationPosted(PackageUserKey postedPackageUserKey, NotificationKeyData notificationKey) {
        DotInfo dotInfo = this.mPackageUserToDotInfos.get(postedPackageUserKey);
        if (dotInfo == null) {
            dotInfo = new DotInfo();
            this.mPackageUserToDotInfos.put(postedPackageUserKey, dotInfo);
        }
        if (dotInfo.addOrUpdateNotificationKey(notificationKey)) {
            Objects.requireNonNull(postedPackageUserKey);
            updateNotificationDots(new PopupDataProvider$$ExternalSyntheticLambda0(postedPackageUserKey));
        }
    }

    @Override // com.android.launcher3.notification.NotificationListener.NotificationsChangedListener
    public void onNotificationRemoved(PackageUserKey removedPackageUserKey, NotificationKeyData notificationKey) {
        DotInfo dotInfo = this.mPackageUserToDotInfos.get(removedPackageUserKey);
        if (dotInfo == null || !dotInfo.removeNotificationKey(notificationKey)) {
            return;
        }
        if (dotInfo.getNotificationKeys().size() == 0) {
            this.mPackageUserToDotInfos.remove(removedPackageUserKey);
        }
        Objects.requireNonNull(removedPackageUserKey);
        updateNotificationDots(new PopupDataProvider$$ExternalSyntheticLambda0(removedPackageUserKey));
        trimNotifications(this.mPackageUserToDotInfos);
    }

    @Override // com.android.launcher3.notification.NotificationListener.NotificationsChangedListener
    public void onNotificationFullRefresh(List<StatusBarNotification> activeNotifications) {
        if (activeNotifications == null) {
            return;
        }
        final HashMap map = new HashMap(this.mPackageUserToDotInfos);
        this.mPackageUserToDotInfos.clear();
        for (StatusBarNotification statusBarNotification : activeNotifications) {
            PackageUserKey packageUserKeyFromNotification = PackageUserKey.fromNotification(statusBarNotification);
            DotInfo dotInfo = this.mPackageUserToDotInfos.get(packageUserKeyFromNotification);
            if (dotInfo == null) {
                dotInfo = new DotInfo();
                this.mPackageUserToDotInfos.put(packageUserKeyFromNotification, dotInfo);
            }
            dotInfo.addOrUpdateNotificationKey(NotificationKeyData.fromNotification(statusBarNotification));
        }
        for (PackageUserKey packageUserKey : this.mPackageUserToDotInfos.keySet()) {
            DotInfo dotInfo2 = (DotInfo) map.get(packageUserKey);
            DotInfo dotInfo3 = this.mPackageUserToDotInfos.get(packageUserKey);
            if (dotInfo2 == null || dotInfo2.getNotificationCount() != dotInfo3.getNotificationCount()) {
                map.put(packageUserKey, dotInfo3);
            } else {
                map.remove(packageUserKey);
            }
        }
        if (!map.isEmpty()) {
            Objects.requireNonNull(map);
            updateNotificationDots(new Predicate() { // from class: com.android.launcher3.popup.PopupDataProvider$$ExternalSyntheticLambda1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return map.containsKey((PackageUserKey) obj);
                }
            });
        }
        trimNotifications(map);
    }

    private void trimNotifications(Map<PackageUserKey, DotInfo> updatedDots) {
        this.mChangeListener.trimNotifications(updatedDots);
    }

    public int getShortcutCountForItem(ItemInfo info) {
        ComponentName targetComponent;
        Integer num;
        if (!ShortcutUtil.supportsDeepShortcuts(info) || (targetComponent = info.getTargetComponent()) == null || (num = this.mDeepShortcutMap.get(new ComponentKey(targetComponent, info.user))) == null) {
            return 0;
        }
        return num.intValue();
    }

    public DotInfo getDotInfoForItem(ItemInfo info) {
        DotInfo dotInfo;
        if (!ShortcutUtil.supportsShortcuts(info) || (dotInfo = this.mPackageUserToDotInfos.get(PackageUserKey.fromItemInfo(info))) == null || getNotificationsForItem(info, dotInfo.getNotificationKeys()).isEmpty()) {
            return null;
        }
        return dotInfo;
    }

    public DotInfo getDotInfoForItem(ActivityInfo info) {
        if (info == null) {
            return null;
        }
        return this.mPackageUserToDotInfos.get(PackageUserKey.fromActivityInfo(info));
    }

    public List<NotificationKeyData> getNotificationKeysForItem(ItemInfo info) {
        DotInfo dotInfoForItem = getDotInfoForItem(info);
        if (dotInfoForItem == null) {
            return Collections.EMPTY_LIST;
        }
        return getNotificationsForItem(info, dotInfoForItem.getNotificationKeys());
    }

    public void cancelNotification(String notificationKey) {
        NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
        if (instanceIfConnected == null) {
            return;
        }
        instanceIfConnected.cancelNotificationFromLauncher(notificationKey);
    }

    public void setAllWidgets(ArrayList<WidgetListRowEntry> allWidgets, boolean updateAppsOnly) {
        this.mAllWidgets = allWidgets;
        this.mChangeListener.onWidgetsBound(updateAppsOnly);
    }

    public void setChangeListener(PopupDataChangeListener listener) {
        if (listener == null) {
            listener = PopupDataChangeListener.INSTANCE;
        }
        this.mChangeListener = listener;
    }

    public List<WidgetItem> getWidgetsForPackageUser(PackageUserKey packageUserKey) {
        for (WidgetListRowEntry widgetListRowEntry : this.mAllWidgets) {
            if (widgetListRowEntry.pkgItem.packageName.equals(packageUserKey.mPackageName)) {
                ArrayList arrayList = new ArrayList(widgetListRowEntry.widgets);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (!((WidgetItem) it.next()).user.equals(packageUserKey.mUser)) {
                        it.remove();
                    }
                }
                if (arrayList.isEmpty()) {
                    return null;
                }
                return arrayList;
            }
        }
        return null;
    }

    public static List<NotificationKeyData> getNotificationsForItem(ItemInfo info, List<NotificationKeyData> notifications) {
        final String shortcutIdIfPinnedShortcut = ShortcutUtil.getShortcutIdIfPinnedShortcut(info);
        if (shortcutIdIfPinnedShortcut == null) {
            return notifications;
        }
        final String[] personKeysIfPinnedShortcut = ShortcutUtil.getPersonKeysIfPinnedShortcut(info);
        return (List) notifications.stream().filter(new Predicate() { // from class: com.android.launcher3.popup.PopupDataProvider$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return PopupDataProvider.lambda$getNotificationsForItem$0(shortcutIdIfPinnedShortcut, personKeysIfPinnedShortcut, (NotificationKeyData) obj);
            }
        }).collect(Collectors.toList());
    }

    static /* synthetic */ boolean lambda$getNotificationsForItem$0(String str, String[] strArr, NotificationKeyData notificationKeyData) {
        if (notificationKeyData.shortcutId != null) {
            return notificationKeyData.shortcutId.equals(str);
        }
        if (notificationKeyData.personKeysFromNotification.length != 0) {
            return Arrays.equals(notificationKeyData.personKeysFromNotification, strArr);
        }
        return false;
    }

    public void dump(String prefix, PrintWriter writer) {
        writer.println(prefix + "PopupDataProvider:");
        writer.println(prefix + "\tmPackageUserToDotInfos:" + this.mPackageUserToDotInfos);
    }
}

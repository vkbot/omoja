package com.android.launcher3.notification;

import android.app.Notification;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.core.app.NotificationCompat;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.SecureSettingsObserver;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class NotificationListener extends NotificationListenerService {
    private static final int MSG_CANCEL_NOTIFICATION = 4;
    private static final int MSG_NOTIFICATION_FULL_REFRESH = 3;
    private static final int MSG_NOTIFICATION_POSTED = 1;
    private static final int MSG_NOTIFICATION_REMOVED = 2;
    private static final int MSG_RANKING_UPDATE = 5;
    public static final String TAG = "NotificationListener";
    private static boolean sIsConnected;
    private static NotificationListener sNotificationListenerInstance;
    private static NotificationsChangedListener sNotificationsChangedListener;
    private String mLastKeyDismissedByLauncher;
    private SecureSettingsObserver mNotificationDotsObserver;
    private final NotificationListenerService.Ranking mTempRanking = new NotificationListenerService.Ranking();
    private final Map<String, NotificationGroup> mNotificationGroupMap = new HashMap();
    private final Map<String, String> mNotificationGroupKeyMap = new HashMap();
    private final Handler mWorkerHandler = new Handler(Executors.MODEL_EXECUTOR.getLooper(), new Handler.Callback() { // from class: com.android.launcher3.notification.NotificationListener$$ExternalSyntheticLambda4
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return this.f$0.handleWorkerMessage(message);
        }
    });
    private final Handler mUiHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.android.launcher3.notification.NotificationListener$$ExternalSyntheticLambda5
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return this.f$0.handleUiMessage(message);
        }
    });

    public interface NotificationsChangedListener {
        void onNotificationFullRefresh(List<StatusBarNotification> activeNotifications);

        void onNotificationPosted(PackageUserKey postedPackageUserKey, NotificationKeyData notificationKey);

        void onNotificationRemoved(PackageUserKey removedPackageUserKey, NotificationKeyData notificationKey);
    }

    public static NotificationListener getInstanceIfConnected() {
        if (sIsConnected) {
            return sNotificationListenerInstance;
        }
        return null;
    }

    public static void removeNotificationsChangedListener() {
        sNotificationsChangedListener = null;
    }

    public NotificationListener() {
        sNotificationListenerInstance = this;
    }

    public static void setNotificationsChangedListener(final NotificationsChangedListener listener) {
        sNotificationsChangedListener = listener;
        NotificationListener instanceIfConnected = getInstanceIfConnected();
        if (instanceIfConnected != null) {
            instanceIfConnected.onNotificationFullRefresh();
        } else {
            Executors.MODEL_EXECUTOR.submit(new Callable() { // from class: com.android.launcher3.notification.NotificationListener$$ExternalSyntheticLambda6
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return Executors.MAIN_EXECUTOR.submit(new Runnable() { // from class: com.android.launcher3.notification.NotificationListener$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            notificationsChangedListener.onNotificationFullRefresh(Collections.emptyList());
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleWorkerMessage(Message message) {
        Object arrayList;
        int i = message.what;
        if (i == 1) {
            StatusBarNotification statusBarNotification = (StatusBarNotification) message.obj;
            this.mUiHandler.obtainMessage(notificationIsValidForUI(statusBarNotification) ? 1 : 2, toKeyPair(statusBarNotification)).sendToTarget();
            return true;
        }
        if (i == 2) {
            StatusBarNotification statusBarNotification2 = (StatusBarNotification) message.obj;
            this.mUiHandler.obtainMessage(2, toKeyPair(statusBarNotification2)).sendToTarget();
            NotificationGroup notificationGroup = this.mNotificationGroupMap.get(statusBarNotification2.getGroupKey());
            String key = statusBarNotification2.getKey();
            if (notificationGroup != null) {
                notificationGroup.removeChildKey(key);
                if (notificationGroup.isEmpty()) {
                    if (key.equals(this.mLastKeyDismissedByLauncher)) {
                        cancelNotification(notificationGroup.getGroupSummaryKey());
                    }
                    this.mNotificationGroupMap.remove(statusBarNotification2.getGroupKey());
                }
            }
            if (key.equals(this.mLastKeyDismissedByLauncher)) {
                this.mLastKeyDismissedByLauncher = null;
            }
            return true;
        }
        if (i == 3) {
            if (sIsConnected) {
                try {
                    arrayList = (List) Arrays.stream(getActiveNotifications()).filter(new Predicate() { // from class: com.android.launcher3.notification.NotificationListener$$ExternalSyntheticLambda7
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return this.f$0.notificationIsValidForUI((StatusBarNotification) obj);
                        }
                    }).collect(Collectors.toList());
                } catch (SecurityException unused) {
                    Log.e(TAG, "SecurityException: failed to fetch notifications");
                    arrayList = new ArrayList();
                }
            } else {
                arrayList = new ArrayList();
            }
            this.mUiHandler.obtainMessage(message.what, arrayList).sendToTarget();
            return true;
        }
        if (i == 4) {
            String str = (String) message.obj;
            this.mLastKeyDismissedByLauncher = str;
            cancelNotification(str);
            return true;
        }
        if (i != 5) {
            return false;
        }
        for (StatusBarNotification statusBarNotification3 : getActiveNotifications(((NotificationListenerService.RankingMap) message.obj).getOrderedKeys())) {
            updateGroupKeyIfNecessary(statusBarNotification3);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleUiMessage(Message message) {
        NotificationsChangedListener notificationsChangedListener;
        int i = message.what;
        if (i != 1) {
            if (i != 2) {
                if (i == 3 && (notificationsChangedListener = sNotificationsChangedListener) != null) {
                    notificationsChangedListener.onNotificationFullRefresh((List) message.obj);
                }
            } else if (sNotificationsChangedListener != null) {
                Pair pair = (Pair) message.obj;
                sNotificationsChangedListener.onNotificationRemoved((PackageUserKey) pair.first, (NotificationKeyData) pair.second);
            }
        } else if (sNotificationsChangedListener != null) {
            Pair pair2 = (Pair) message.obj;
            sNotificationsChangedListener.onNotificationPosted((PackageUserKey) pair2.first, (NotificationKeyData) pair2.second);
        }
        return true;
    }

    @Override // android.service.notification.NotificationListenerService
    public void onListenerConnected() {
        super.onListenerConnected();
        sIsConnected = true;
        SecureSettingsObserver secureSettingsObserverNewNotificationSettingsObserver = SecureSettingsObserver.newNotificationSettingsObserver(this, new SecureSettingsObserver.OnChangeListener() { // from class: com.android.launcher3.notification.NotificationListener$$ExternalSyntheticLambda0
            @Override // com.android.launcher3.util.SecureSettingsObserver.OnChangeListener
            public final void onSettingsChanged(boolean z) {
                this.f$0.onNotificationSettingsChanged(z);
            }
        });
        this.mNotificationDotsObserver = secureSettingsObserverNewNotificationSettingsObserver;
        secureSettingsObserverNewNotificationSettingsObserver.register();
        this.mNotificationDotsObserver.dispatchOnChange();
        onNotificationFullRefresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNotificationSettingsChanged(boolean areNotificationDotsEnabled) {
        if (areNotificationDotsEnabled || !sIsConnected) {
            return;
        }
        requestUnbind();
    }

    private void onNotificationFullRefresh() {
        this.mWorkerHandler.obtainMessage(3).sendToTarget();
    }

    @Override // android.service.notification.NotificationListenerService
    public void onListenerDisconnected() {
        super.onListenerDisconnected();
        sIsConnected = false;
        SecureSettingsObserver secureSettingsObserver = this.mNotificationDotsObserver;
        if (secureSettingsObserver != null) {
            secureSettingsObserver.unregister();
        }
        onNotificationFullRefresh();
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationPosted(final StatusBarNotification sbn) {
        if (sbn != null) {
            this.mWorkerHandler.obtainMessage(1, sbn).sendToTarget();
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationRemoved(final StatusBarNotification sbn) {
        if (sbn != null) {
            this.mWorkerHandler.obtainMessage(2, sbn).sendToTarget();
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationRankingUpdate(NotificationListenerService.RankingMap rankingMap) {
        this.mWorkerHandler.obtainMessage(5, rankingMap).sendToTarget();
    }

    public void cancelNotificationFromLauncher(String key) {
        this.mWorkerHandler.obtainMessage(4, key).sendToTarget();
    }

    private void updateGroupKeyIfNecessary(StatusBarNotification sbn) {
        String key = sbn.getKey();
        String str = this.mNotificationGroupKeyMap.get(key);
        String groupKey = sbn.getGroupKey();
        if (str == null || !str.equals(groupKey)) {
            this.mNotificationGroupKeyMap.put(key, groupKey);
            if (str != null && this.mNotificationGroupMap.containsKey(str)) {
                NotificationGroup notificationGroup = this.mNotificationGroupMap.get(str);
                notificationGroup.removeChildKey(key);
                if (notificationGroup.isEmpty()) {
                    this.mNotificationGroupMap.remove(str);
                }
            }
        }
        if (!sbn.isGroup() || groupKey == null) {
            return;
        }
        NotificationGroup notificationGroup2 = this.mNotificationGroupMap.get(groupKey);
        if (notificationGroup2 == null) {
            notificationGroup2 = new NotificationGroup();
            this.mNotificationGroupMap.put(groupKey, notificationGroup2);
        }
        if ((sbn.getNotification().flags & 512) != 0) {
            notificationGroup2.setGroupSummaryKey(key);
        } else {
            notificationGroup2.addChildKey(key);
        }
    }

    static /* synthetic */ String[] lambda$getNotificationsForKeys$3(int i) {
        return new String[i];
    }

    public List<StatusBarNotification> getNotificationsForKeys(List<NotificationKeyData> keys) {
        StatusBarNotification[] activeNotifications = getActiveNotifications((String[]) keys.stream().map(new Function() { // from class: com.android.launcher3.notification.NotificationListener$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((NotificationKeyData) obj).notificationKey;
            }
        }).toArray(new IntFunction() { // from class: com.android.launcher3.notification.NotificationListener$$ExternalSyntheticLambda2
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return NotificationListener.lambda$getNotificationsForKeys$3(i);
            }
        }));
        return activeNotifications == null ? Collections.emptyList() : Arrays.asList(activeNotifications);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean notificationIsValidForUI(StatusBarNotification sbn) {
        Notification notification = sbn.getNotification();
        updateGroupKeyIfNecessary(sbn);
        getCurrentRanking().getRanking(sbn.getKey(), this.mTempRanking);
        if (!this.mTempRanking.canShowBadge()) {
            return false;
        }
        if (!this.mTempRanking.getChannel().getId().equals("miscellaneous") || (notification.flags & 2) == 0) {
            return (notification.flags & 512) == 0 && !(TextUtils.isEmpty(notification.extras.getCharSequence(NotificationCompat.EXTRA_TITLE)) && TextUtils.isEmpty(notification.extras.getCharSequence(NotificationCompat.EXTRA_TEXT)));
        }
        return false;
    }

    private static Pair<PackageUserKey, NotificationKeyData> toKeyPair(StatusBarNotification sbn) {
        return Pair.create(PackageUserKey.fromNotification(sbn), NotificationKeyData.fromNotification(sbn));
    }
}

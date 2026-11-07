package com.android.server.people.data;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.Person;
import android.app.prediction.AppTarget;
import android.app.prediction.AppTargetEvent;
import android.app.usage.UsageEvents;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.content.pm.ShortcutServiceInternal;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.provider.Telephony;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.telecom.TelecomManager;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.content.PackageMonitor;
import com.android.internal.os.BackgroundThread;
import com.android.internal.telephony.SmsApplication;
import com.android.server.LocalServices;
import com.android.server.notification.NotificationManagerInternal;
import com.android.server.notification.ShortcutHelper;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.usb.descriptors.UsbTerminalTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public class DataManager {
    private static final long QUERY_EVENTS_MAX_AGE_MS = 300000;
    private static final String TAG = "DataManager";
    private static final long USAGE_STATS_QUERY_INTERVAL_SEC = 120;
    private final SparseArray<BroadcastReceiver> mBroadcastReceivers;
    private ContentObserver mCallLogContentObserver;
    private final SparseArray<ContentObserver> mContactsContentObservers;
    private final Context mContext;
    private final Injector mInjector;
    private final Object mLock;
    private ContentObserver mMmsSmsContentObserver;
    private final SparseArray<NotificationListener> mNotificationListeners;
    private NotificationManagerInternal mNotificationManagerInternal;
    private PackageManagerInternal mPackageManagerInternal;
    private final SparseArray<PackageMonitor> mPackageMonitors;
    private final ScheduledExecutorService mScheduledExecutor;
    private ShortcutServiceInternal mShortcutServiceInternal;
    private final SparseArray<ScheduledFuture<?>> mUsageStatsQueryFutures;
    private final SparseArray<UserData> mUserDataArray;
    private UserManager mUserManager;

    public DataManager(Context context) {
        this(context, new Injector());
    }

    DataManager(Context context, Injector injector) {
        this.mLock = new Object();
        this.mUserDataArray = new SparseArray<>();
        this.mBroadcastReceivers = new SparseArray<>();
        this.mContactsContentObservers = new SparseArray<>();
        this.mUsageStatsQueryFutures = new SparseArray<>();
        this.mNotificationListeners = new SparseArray<>();
        this.mPackageMonitors = new SparseArray<>();
        this.mContext = context;
        this.mInjector = injector;
        this.mScheduledExecutor = injector.createScheduledExecutor();
    }

    public void initialize() {
        this.mShortcutServiceInternal = (ShortcutServiceInternal) LocalServices.getService(ShortcutServiceInternal.class);
        this.mPackageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        this.mNotificationManagerInternal = (NotificationManagerInternal) LocalServices.getService(NotificationManagerInternal.class);
        this.mUserManager = (UserManager) this.mContext.getSystemService(UserManager.class);
        this.mShortcutServiceInternal.addShortcutChangeCallback(new ShortcutServiceCallback());
        IntentFilter shutdownIntentFilter = new IntentFilter("android.intent.action.ACTION_SHUTDOWN");
        BroadcastReceiver shutdownBroadcastReceiver = new ShutdownBroadcastReceiver();
        this.mContext.registerReceiver(shutdownBroadcastReceiver, shutdownIntentFilter);
    }

    public void onUserUnlocked(final int userId) {
        synchronized (this.mLock) {
            UserData userData = this.mUserDataArray.get(userId);
            if (userData == null) {
                userData = new UserData(userId, this.mScheduledExecutor);
                this.mUserDataArray.put(userId, userData);
            }
            userData.setUserUnlocked();
        }
        this.mScheduledExecutor.execute(new Runnable() { // from class: com.android.server.people.data.-$$Lambda$DataManager$ceDzy5VXjXt37sO3OJ89MHniTpY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onUserUnlocked$0$DataManager(userId);
            }
        });
    }

    public void onUserStopping(final int userId) {
        synchronized (this.mLock) {
            UserData userData = this.mUserDataArray.get(userId);
            if (userData != null) {
                userData.setUserStopped();
            }
        }
        this.mScheduledExecutor.execute(new Runnable() { // from class: com.android.server.people.data.-$$Lambda$DataManager$9_cqwu_v_T9xr29OyOFsOM1JRW4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onUserStopping$1$DataManager(userId);
            }
        });
    }

    void forPackagesInProfile(int callingUserId, Consumer<PackageData> consumer) {
        List<UserInfo> users = this.mUserManager.getEnabledProfiles(callingUserId);
        for (UserInfo userInfo : users) {
            UserData userData = getUnlockedUserData(userInfo.id);
            if (userData != null) {
                userData.forAllPackages(consumer);
            }
        }
    }

    public PackageData getPackage(String packageName, int userId) {
        UserData userData = getUnlockedUserData(userId);
        if (userData != null) {
            return userData.getPackageData(packageName);
        }
        return null;
    }

    public ShortcutInfo getShortcut(String packageName, int userId, String shortcutId) {
        List<ShortcutInfo> shortcuts = getShortcuts(packageName, userId, Collections.singletonList(shortcutId));
        if (shortcuts != null && !shortcuts.isEmpty()) {
            return shortcuts.get(0);
        }
        return null;
    }

    public List<ShortcutManager.ShareShortcutInfo> getShareShortcuts(IntentFilter intentFilter, int callingUserId) {
        return this.mShortcutServiceInternal.getShareTargets(this.mContext.getPackageName(), intentFilter, callingUserId);
    }

    public void reportShareTargetEvent(AppTargetEvent event, IntentFilter intentFilter) {
        UserData userData;
        EventHistoryImpl eventHistory;
        AppTarget appTarget = event.getTarget();
        if (appTarget == null || event.getAction() != 1 || (userData = getUnlockedUserData(appTarget.getUser().getIdentifier())) == null) {
            return;
        }
        PackageData packageData = userData.getOrCreatePackageData(appTarget.getPackageName());
        int eventType = mimeTypeToShareEventType(intentFilter.getDataType(0));
        if ("direct_share".equals(event.getLaunchLocation())) {
            if (appTarget.getShortcutInfo() == null) {
                return;
            }
            String shortcutId = appTarget.getShortcutInfo().getId();
            if ("chooser_target".equals(shortcutId)) {
                return;
            }
            if (packageData.getConversationStore().getConversation(shortcutId) == null) {
                addOrUpdateConversationInfo(appTarget.getShortcutInfo());
            }
            eventHistory = packageData.getEventStore().getOrCreateEventHistory(0, shortcutId);
        } else {
            eventHistory = packageData.getEventStore().getOrCreateEventHistory(4, appTarget.getClassName());
        }
        eventHistory.addEvent(new Event(System.currentTimeMillis(), eventType));
    }

    public List<UsageEvents.Event> queryAppMovingToForegroundEvents(int callingUserId, long startTime, long endTime) {
        return UsageStatsQueryHelper.queryAppMovingToForegroundEvents(callingUserId, startTime, endTime);
    }

    public Map<String, AppUsageStatsData> queryAppUsageStats(int callingUserId, long startTime, long endTime, Set<String> packageNameFilter) {
        return UsageStatsQueryHelper.queryAppUsageStats(callingUserId, startTime, endTime, packageNameFilter);
    }

    public void pruneDataForUser(final int userId, final CancellationSignal signal) {
        UserData userData = getUnlockedUserData(userId);
        if (userData == null || signal.isCanceled()) {
            return;
        }
        pruneUninstalledPackageData(userData);
        final NotificationListener notificationListener = this.mNotificationListeners.get(userId);
        userData.forAllPackages(new Consumer() { // from class: com.android.server.people.data.-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$pruneDataForUser$3$DataManager(signal, notificationListener, userId, (PackageData) obj);
            }
        });
    }

    public /* synthetic */ void lambda$pruneDataForUser$3$DataManager(CancellationSignal signal, final NotificationListener notificationListener, final int userId, PackageData packageData) {
        if (signal.isCanceled()) {
            return;
        }
        packageData.getEventStore().pruneOldEvents();
        if (!packageData.isDefaultDialer()) {
            packageData.getEventStore().deleteEventHistories(2);
        }
        if (!packageData.isDefaultSmsApp()) {
            packageData.getEventStore().deleteEventHistories(3);
        }
        packageData.pruneOrphanEvents();
        if (notificationListener != null) {
            final String packageName = packageData.getPackageName();
            packageData.forAllConversations(new Consumer() { // from class: com.android.server.people.data.-$$Lambda$DataManager$akbINi4xsuEKLfuSG3NmPgKChR0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$pruneDataForUser$2$DataManager(notificationListener, packageName, userId, (ConversationInfo) obj);
                }
            });
        }
    }

    public /* synthetic */ void lambda$pruneDataForUser$2$DataManager(NotificationListener notificationListener, String packageName, int userId, ConversationInfo conversationInfo) {
        if (conversationInfo.isShortcutCachedForNotification() && conversationInfo.getNotificationChannelId() == null && !notificationListener.hasActiveNotifications(packageName, conversationInfo.getShortcutId())) {
            this.mShortcutServiceInternal.uncacheShortcuts(userId, this.mContext.getPackageName(), packageName, Collections.singletonList(conversationInfo.getShortcutId()), userId, 16384);
        }
    }

    public byte[] getBackupPayload(int userId) {
        UserData userData = getUnlockedUserData(userId);
        if (userData == null) {
            return null;
        }
        return userData.getBackupPayload();
    }

    public void restore(int userId, byte[] payload) throws IOException {
        UserData userData = getUnlockedUserData(userId);
        if (userData == null) {
            return;
        }
        userData.restore(payload);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setupUser, reason: merged with bridge method [inline-methods] */
    public void lambda$onUserUnlocked$0$DataManager(int userId) {
        synchronized (this.mLock) {
            UserData userData = getUnlockedUserData(userId);
            if (userData == null) {
                return;
            }
            userData.loadUserData();
            updateDefaultDialer(userData);
            updateDefaultSmsApp(userData);
            ScheduledFuture<?> scheduledFuture = this.mScheduledExecutor.scheduleAtFixedRate(new UsageStatsQueryRunnable(userId), 1L, 120L, TimeUnit.SECONDS);
            this.mUsageStatsQueryFutures.put(userId, scheduledFuture);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.telecom.action.DEFAULT_DIALER_CHANGED");
            intentFilter.addAction("android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL");
            BroadcastReceiver broadcastReceiver = new PerUserBroadcastReceiver(userId);
            this.mBroadcastReceivers.put(userId, broadcastReceiver);
            this.mContext.registerReceiverAsUser(broadcastReceiver, UserHandle.of(userId), intentFilter, null, null);
            ContentObserver contactsContentObserver = new ContactsContentObserver(BackgroundThread.getHandler());
            this.mContactsContentObservers.put(userId, contactsContentObserver);
            this.mContext.getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, contactsContentObserver, userId);
            NotificationListener notificationListener = new NotificationListener(userId);
            this.mNotificationListeners.put(userId, notificationListener);
            try {
                notificationListener.registerAsSystemService(this.mContext, new ComponentName(this.mContext, getClass()), userId);
            } catch (RemoteException e) {
            }
            PackageMonitor packageMonitor = new PerUserPackageMonitor();
            packageMonitor.register(this.mContext, (Looper) null, UserHandle.of(userId), true);
            this.mPackageMonitors.put(userId, packageMonitor);
            if (userId == 0) {
                this.mCallLogContentObserver = new CallLogContentObserver(BackgroundThread.getHandler());
                this.mContext.getContentResolver().registerContentObserver(CallLog.CONTENT_URI, true, this.mCallLogContentObserver, 0);
                this.mMmsSmsContentObserver = new MmsSmsContentObserver(BackgroundThread.getHandler());
                this.mContext.getContentResolver().registerContentObserver(Telephony.MmsSms.CONTENT_URI, false, this.mMmsSmsContentObserver, 0);
            }
            DataMaintenanceService.scheduleJob(this.mContext, userId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: cleanupUser, reason: merged with bridge method [inline-methods] */
    public void lambda$onUserStopping$1$DataManager(int userId) {
        synchronized (this.mLock) {
            UserData userData = this.mUserDataArray.get(userId);
            if (userData != null && !userData.isUnlocked()) {
                ContentResolver contentResolver = this.mContext.getContentResolver();
                if (this.mUsageStatsQueryFutures.indexOfKey(userId) >= 0) {
                    this.mUsageStatsQueryFutures.get(userId).cancel(true);
                }
                if (this.mBroadcastReceivers.indexOfKey(userId) >= 0) {
                    this.mContext.unregisterReceiver(this.mBroadcastReceivers.get(userId));
                }
                if (this.mContactsContentObservers.indexOfKey(userId) >= 0) {
                    contentResolver.unregisterContentObserver(this.mContactsContentObservers.get(userId));
                }
                if (this.mNotificationListeners.indexOfKey(userId) >= 0) {
                    try {
                        this.mNotificationListeners.get(userId).unregisterAsSystemService();
                    } catch (RemoteException e) {
                    }
                }
                if (this.mPackageMonitors.indexOfKey(userId) >= 0) {
                    this.mPackageMonitors.get(userId).unregister();
                }
                if (userId == 0) {
                    if (this.mCallLogContentObserver != null) {
                        contentResolver.unregisterContentObserver(this.mCallLogContentObserver);
                        this.mCallLogContentObserver = null;
                    }
                    if (this.mMmsSmsContentObserver != null) {
                        contentResolver.unregisterContentObserver(this.mMmsSmsContentObserver);
                        this.mCallLogContentObserver = null;
                    }
                }
                DataMaintenanceService.cancelJob(this.mContext, userId);
            }
        }
    }

    public int mimeTypeToShareEventType(String mimeType) {
        if (mimeType == null) {
            return 7;
        }
        if (mimeType.startsWith("text/")) {
            return 4;
        }
        if (mimeType.startsWith("image/")) {
            return 5;
        }
        if (!mimeType.startsWith("video/")) {
            return 7;
        }
        return 6;
    }

    private void pruneUninstalledPackageData(UserData userData) {
        final Set<String> installApps = new ArraySet<>();
        this.mPackageManagerInternal.forEachInstalledPackage(new Consumer() { // from class: com.android.server.people.data.-$$Lambda$DataManager$mWCVyURwIeNAvD7ynykJ39tK8Jk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                installApps.add(((AndroidPackage) obj).getPackageName());
            }
        }, userData.getUserId());
        final List<String> packagesToDelete = new ArrayList<>();
        userData.forAllPackages(new Consumer() { // from class: com.android.server.people.data.-$$Lambda$DataManager$YnDwXtnP77jr7PM94uALUi26a2s
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DataManager.lambda$pruneUninstalledPackageData$5(installApps, packagesToDelete, (PackageData) obj);
            }
        });
        for (String packageName : packagesToDelete) {
            userData.deletePackageData(packageName);
        }
    }

    static /* synthetic */ void lambda$pruneUninstalledPackageData$5(Set installApps, List packagesToDelete, PackageData packageData) {
        if (!installApps.contains(packageData.getPackageName())) {
            packagesToDelete.add(packageData.getPackageName());
        }
    }

    private List<ShortcutInfo> getShortcuts(String packageName, int userId, List<String> shortcutIds) {
        return this.mShortcutServiceInternal.getShortcuts(0, this.mContext.getPackageName(), 0L, packageName, shortcutIds, (List) null, (ComponentName) null, UsbTerminalTypes.TERMINAL_BIDIR_SKRPHONE, userId, Process.myPid(), Process.myUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forAllUnlockedUsers(Consumer<UserData> consumer) {
        for (int i = 0; i < this.mUserDataArray.size(); i++) {
            int userId = this.mUserDataArray.keyAt(i);
            UserData userData = this.mUserDataArray.get(userId);
            if (userData.isUnlocked()) {
                consumer.accept(userData);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UserData getUnlockedUserData(int userId) {
        UserData userData = this.mUserDataArray.get(userId);
        if (userData == null || !userData.isUnlocked()) {
            return null;
        }
        return userData;
    }

    private void updateDefaultDialer(UserData userData) {
        String defaultDialer;
        TelecomManager telecomManager = (TelecomManager) this.mContext.getSystemService(TelecomManager.class);
        if (telecomManager != null) {
            defaultDialer = telecomManager.getDefaultDialerPackage(new UserHandle(userData.getUserId()));
        } else {
            defaultDialer = null;
        }
        userData.setDefaultDialer(defaultDialer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDefaultSmsApp(UserData userData) {
        ComponentName component = SmsApplication.getDefaultSmsApplicationAsUser(this.mContext, false, userData.getUserId());
        String defaultSmsApp = component != null ? component.getPackageName() : null;
        userData.setDefaultSmsApp(defaultSmsApp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PackageData getPackageIfConversationExists(StatusBarNotification sbn, Consumer<ConversationInfo> conversationConsumer) {
        PackageData packageData;
        ConversationInfo conversationInfo;
        Notification notification = sbn.getNotification();
        String shortcutId = notification.getShortcutId();
        if (shortcutId == null || (packageData = getPackage(sbn.getPackageName(), sbn.getUser().getIdentifier())) == null || (conversationInfo = packageData.getConversationStore().getConversation(shortcutId)) == null) {
            return null;
        }
        conversationConsumer.accept(conversationInfo);
        return packageData;
    }

    void addOrUpdateConversationInfo(ShortcutInfo shortcutInfo) {
        ConversationInfo.Builder builder;
        UserData userData = getUnlockedUserData(shortcutInfo.getUserId());
        if (userData == null) {
            return;
        }
        PackageData packageData = userData.getOrCreatePackageData(shortcutInfo.getPackage());
        ConversationStore conversationStore = packageData.getConversationStore();
        ConversationInfo oldConversationInfo = conversationStore.getConversation(shortcutInfo.getId());
        if (oldConversationInfo != null) {
            builder = new ConversationInfo.Builder(oldConversationInfo);
        } else {
            builder = new ConversationInfo.Builder();
        }
        builder.setShortcutId(shortcutInfo.getId());
        builder.setLocusId(shortcutInfo.getLocusId());
        builder.setShortcutFlags(shortcutInfo.getFlags());
        builder.setContactUri(null);
        builder.setContactPhoneNumber(null);
        builder.setContactStarred(false);
        if (shortcutInfo.getPersons() != null && shortcutInfo.getPersons().length != 0) {
            Person person = shortcutInfo.getPersons()[0];
            builder.setPersonImportant(person.isImportant());
            builder.setPersonBot(person.isBot());
            String contactUri = person.getUri();
            if (contactUri != null) {
                ContactsQueryHelper helper = this.mInjector.createContactsQueryHelper(this.mContext);
                if (helper.query(contactUri)) {
                    builder.setContactUri(helper.getContactUri());
                    builder.setContactStarred(helper.isStarred());
                    builder.setContactPhoneNumber(helper.getPhoneNumber());
                }
            }
        }
        conversationStore.addOrUpdate(builder.build());
    }

    ContentObserver getContactsContentObserverForTesting(int userId) {
        return this.mContactsContentObservers.get(userId);
    }

    ContentObserver getCallLogContentObserverForTesting() {
        return this.mCallLogContentObserver;
    }

    ContentObserver getMmsSmsContentObserverForTesting() {
        return this.mMmsSmsContentObserver;
    }

    NotificationListenerService getNotificationListenerServiceForTesting(int userId) {
        return this.mNotificationListeners.get(userId);
    }

    PackageMonitor getPackageMonitorForTesting(int userId) {
        return this.mPackageMonitors.get(userId);
    }

    UserData getUserDataForTesting(int userId) {
        return this.mUserDataArray.get(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ContactsContentObserver extends ContentObserver {
        private long mLastUpdatedTimestamp;

        private ContactsContentObserver(Handler handler) {
            super(handler);
            this.mLastUpdatedTimestamp = System.currentTimeMillis();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri, int userId) {
            ContactsQueryHelper helper = DataManager.this.mInjector.createContactsQueryHelper(DataManager.this.mContext);
            if (!helper.querySince(this.mLastUpdatedTimestamp)) {
                return;
            }
            final Uri contactUri = helper.getContactUri();
            final ConversationSelector conversationSelector = new ConversationSelector();
            UserData userData = DataManager.this.getUnlockedUserData(userId);
            if (userData == null) {
                return;
            }
            userData.forAllPackages(new Consumer() { // from class: com.android.server.people.data.-$$Lambda$DataManager$ContactsContentObserver$wv19gIIQIhM79fILSTcdGXPmrF0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DataManager.ContactsContentObserver.lambda$onChange$0(contactUri, conversationSelector, (PackageData) obj);
                }
            });
            if (conversationSelector.mConversationInfo == null) {
                return;
            }
            ConversationInfo.Builder builder = new ConversationInfo.Builder(conversationSelector.mConversationInfo);
            builder.setContactStarred(helper.isStarred());
            builder.setContactPhoneNumber(helper.getPhoneNumber());
            conversationSelector.mConversationStore.addOrUpdate(builder.build());
            this.mLastUpdatedTimestamp = helper.getLastUpdatedTimestamp();
        }

        static /* synthetic */ void lambda$onChange$0(Uri contactUri, ConversationSelector conversationSelector, PackageData packageData) {
            ConversationInfo ci = packageData.getConversationStore().getConversationByContactUri(contactUri);
            if (ci == null) {
                return;
            }
            conversationSelector.mConversationStore = packageData.getConversationStore();
            conversationSelector.mConversationInfo = ci;
        }

        /* JADX INFO: Access modifiers changed from: private */
        class ConversationSelector {
            private ConversationInfo mConversationInfo;
            private ConversationStore mConversationStore;

            private ConversationSelector() {
                this.mConversationStore = null;
                this.mConversationInfo = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class CallLogContentObserver extends ContentObserver implements BiConsumer<String, Event> {
        private final CallLogQueryHelper mCallLogQueryHelper;
        private long mLastCallTimestamp;

        private CallLogContentObserver(Handler handler) {
            super(handler);
            this.mCallLogQueryHelper = DataManager.this.mInjector.createCallLogQueryHelper(DataManager.this.mContext, this);
            this.mLastCallTimestamp = System.currentTimeMillis() - 300000;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            if (this.mCallLogQueryHelper.querySince(this.mLastCallTimestamp)) {
                this.mLastCallTimestamp = this.mCallLogQueryHelper.getLastCallTimestamp();
            }
        }

        @Override // java.util.function.BiConsumer
        public void accept(final String phoneNumber, final Event event) {
            DataManager.this.forAllUnlockedUsers(new Consumer() { // from class: com.android.server.people.data.-$$Lambda$DataManager$CallLogContentObserver$F795P2fXEZGvzLUih_SIpFcsyic
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DataManager.CallLogContentObserver.lambda$accept$0(phoneNumber, event, (UserData) obj);
                }
            });
        }

        static /* synthetic */ void lambda$accept$0(String phoneNumber, Event event, UserData userData) {
            PackageData defaultDialer = userData.getDefaultDialer();
            if (defaultDialer == null) {
                return;
            }
            ConversationStore conversationStore = defaultDialer.getConversationStore();
            if (conversationStore.getConversationByPhoneNumber(phoneNumber) == null) {
                return;
            }
            EventStore eventStore = defaultDialer.getEventStore();
            eventStore.getOrCreateEventHistory(2, phoneNumber).addEvent(event);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class MmsSmsContentObserver extends ContentObserver implements BiConsumer<String, Event> {
        private long mLastMmsTimestamp;
        private long mLastSmsTimestamp;
        private final MmsQueryHelper mMmsQueryHelper;
        private final SmsQueryHelper mSmsQueryHelper;

        private MmsSmsContentObserver(Handler handler) {
            super(handler);
            this.mMmsQueryHelper = DataManager.this.mInjector.createMmsQueryHelper(DataManager.this.mContext, this);
            this.mSmsQueryHelper = DataManager.this.mInjector.createSmsQueryHelper(DataManager.this.mContext, this);
            long jCurrentTimeMillis = System.currentTimeMillis() - 300000;
            this.mLastMmsTimestamp = jCurrentTimeMillis;
            this.mLastSmsTimestamp = jCurrentTimeMillis;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            if (this.mMmsQueryHelper.querySince(this.mLastMmsTimestamp)) {
                this.mLastMmsTimestamp = this.mMmsQueryHelper.getLastMessageTimestamp();
            }
            if (this.mSmsQueryHelper.querySince(this.mLastSmsTimestamp)) {
                this.mLastSmsTimestamp = this.mSmsQueryHelper.getLastMessageTimestamp();
            }
        }

        @Override // java.util.function.BiConsumer
        public void accept(final String phoneNumber, final Event event) {
            DataManager.this.forAllUnlockedUsers(new Consumer() { // from class: com.android.server.people.data.-$$Lambda$DataManager$MmsSmsContentObserver$UfeTRftTDIcNo1iUJLeOD5s_XmM
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DataManager.MmsSmsContentObserver.lambda$accept$0(phoneNumber, event, (UserData) obj);
                }
            });
        }

        static /* synthetic */ void lambda$accept$0(String phoneNumber, Event event, UserData userData) {
            PackageData defaultSmsApp = userData.getDefaultSmsApp();
            if (defaultSmsApp == null) {
                return;
            }
            ConversationStore conversationStore = defaultSmsApp.getConversationStore();
            if (conversationStore.getConversationByPhoneNumber(phoneNumber) == null) {
                return;
            }
            EventStore eventStore = defaultSmsApp.getEventStore();
            eventStore.getOrCreateEventHistory(3, phoneNumber).addEvent(event);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ShortcutServiceCallback implements LauncherApps.ShortcutChangeCallback {
        private ShortcutServiceCallback() {
        }

        public void onShortcutsAddedOrUpdated(String packageName, final List<ShortcutInfo> shortcuts, final UserHandle user) {
            DataManager.this.mInjector.getBackgroundExecutor().execute(new Runnable() { // from class: com.android.server.people.data.-$$Lambda$DataManager$ShortcutServiceCallback$3zX8eFCXMRsa9FCp12VzBp7G-nQ
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShortcutsAddedOrUpdated$0$DataManager$ShortcutServiceCallback(shortcuts, user);
                }
            });
        }

        public /* synthetic */ void lambda$onShortcutsAddedOrUpdated$0$DataManager$ShortcutServiceCallback(List shortcuts, UserHandle user) {
            Iterator it = shortcuts.iterator();
            while (it.hasNext()) {
                ShortcutInfo shortcut = (ShortcutInfo) it.next();
                if (ShortcutHelper.isConversationShortcut(shortcut, DataManager.this.mShortcutServiceInternal, user.getIdentifier())) {
                    DataManager.this.addOrUpdateConversationInfo(shortcut);
                }
            }
        }

        public void onShortcutsRemoved(final String packageName, final List<ShortcutInfo> shortcuts, final UserHandle user) {
            DataManager.this.mInjector.getBackgroundExecutor().execute(new Runnable() { // from class: com.android.server.people.data.-$$Lambda$DataManager$ShortcutServiceCallback$VlSKlwPMxQPMmAu4nKkqwOu9-pY
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShortcutsRemoved$1$DataManager$ShortcutServiceCallback(packageName, user, shortcuts);
                }
            });
        }

        public /* synthetic */ void lambda$onShortcutsRemoved$1$DataManager$ShortcutServiceCallback(String packageName, UserHandle user, List shortcuts) {
            int uid = -1;
            try {
                uid = DataManager.this.mContext.getPackageManager().getPackageUidAsUser(packageName, user.getIdentifier());
            } catch (PackageManager.NameNotFoundException e) {
                Slog.e(DataManager.TAG, "Package not found: " + packageName, e);
            }
            PackageData packageData = DataManager.this.getPackage(packageName, user.getIdentifier());
            Iterator it = shortcuts.iterator();
            while (it.hasNext()) {
                ShortcutInfo shortcutInfo = (ShortcutInfo) it.next();
                if (packageData != null) {
                    packageData.deleteDataForConversation(shortcutInfo.getId());
                }
                if (uid != -1) {
                    DataManager.this.mNotificationManagerInternal.onConversationRemoved(shortcutInfo.getPackage(), uid, shortcutInfo.getId());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class NotificationListener extends NotificationListenerService {
        private final Map<Pair<String, String>, Integer> mActiveNotifCounts;
        private final int mUserId;

        private NotificationListener(int userId) {
            this.mActiveNotifCounts = new ArrayMap();
            this.mUserId = userId;
        }

        @Override // android.service.notification.NotificationListenerService
        public void onNotificationPosted(final StatusBarNotification sbn) {
            if (sbn.getUser().getIdentifier() != this.mUserId) {
                return;
            }
            final String shortcutId = sbn.getNotification().getShortcutId();
            PackageData packageData = DataManager.this.getPackageIfConversationExists(sbn, new Consumer() { // from class: com.android.server.people.data.-$$Lambda$DataManager$NotificationListener$xCkMi638l4piHGkJ8fRSKeCSmQ4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$onNotificationPosted$0$DataManager$NotificationListener(sbn, shortcutId, (ConversationInfo) obj);
                }
            });
            if (packageData != null) {
                EventHistoryImpl eventHistory = packageData.getEventStore().getOrCreateEventHistory(0, shortcutId);
                eventHistory.addEvent(new Event(sbn.getPostTime(), 2));
            }
        }

        public /* synthetic */ void lambda$onNotificationPosted$0$DataManager$NotificationListener(StatusBarNotification sbn, String shortcutId, ConversationInfo conversationInfo) {
            synchronized (this) {
                this.mActiveNotifCounts.merge(Pair.create(sbn.getPackageName(), shortcutId), 1, new BiFunction() { // from class: com.android.server.people.data.-$$Lambda$LrkJFe4YP5g-sc0rXJgTGXS3PRE
                    @Override // java.util.function.BiFunction
                    public final Object apply(Object obj, Object obj2) {
                        return Integer.valueOf(Integer.sum(((Integer) obj).intValue(), ((Integer) obj2).intValue()));
                    }
                });
            }
        }

        @Override // android.service.notification.NotificationListenerService
        public synchronized void onNotificationRemoved(final StatusBarNotification sbn, NotificationListenerService.RankingMap rankingMap, int reason) {
            if (sbn.getUser().getIdentifier() != this.mUserId) {
                return;
            }
            final String shortcutId = sbn.getNotification().getShortcutId();
            PackageData packageData = DataManager.this.getPackageIfConversationExists(sbn, new Consumer() { // from class: com.android.server.people.data.-$$Lambda$DataManager$NotificationListener$ooyQ8do-cYyX4B7R7wsqmT53_NU
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$onNotificationRemoved$1$DataManager$NotificationListener(sbn, shortcutId, (ConversationInfo) obj);
                }
            });
            if (reason == 1 && packageData != null) {
                EventHistoryImpl eventHistory = packageData.getEventStore().getOrCreateEventHistory(0, shortcutId);
                long currentTime = System.currentTimeMillis();
                eventHistory.addEvent(new Event(currentTime, 3));
            }
        }

        public /* synthetic */ void lambda$onNotificationRemoved$1$DataManager$NotificationListener(StatusBarNotification sbn, String shortcutId, ConversationInfo conversationInfo) {
            Pair<String, String> conversationKey = Pair.create(sbn.getPackageName(), shortcutId);
            synchronized (this) {
                int count = this.mActiveNotifCounts.getOrDefault(conversationKey, 0).intValue() - 1;
                if (count <= 0) {
                    this.mActiveNotifCounts.remove(conversationKey);
                    if (conversationInfo.isShortcutCachedForNotification() && conversationInfo.getNotificationChannelId() == null) {
                        DataManager.this.mShortcutServiceInternal.uncacheShortcuts(this.mUserId, DataManager.this.mContext.getPackageName(), sbn.getPackageName(), Collections.singletonList(conversationInfo.getShortcutId()), this.mUserId, 16384);
                    }
                } else {
                    this.mActiveNotifCounts.put(conversationKey, Integer.valueOf(count));
                }
            }
        }

        @Override // android.service.notification.NotificationListenerService
        public void onNotificationChannelModified(String pkg, UserHandle user, NotificationChannel channel, int modificationType) {
            ConversationStore conversationStore;
            ConversationInfo conversationInfo;
            if (user.getIdentifier() != this.mUserId) {
                return;
            }
            PackageData packageData = DataManager.this.getPackage(pkg, user.getIdentifier());
            String shortcutId = channel.getConversationId();
            if (packageData == null || shortcutId == null || (conversationInfo = (conversationStore = packageData.getConversationStore()).getConversation(shortcutId)) == null) {
                return;
            }
            ConversationInfo.Builder builder = new ConversationInfo.Builder(conversationInfo);
            if (modificationType == 1 || modificationType == 2) {
                builder.setNotificationChannelId(channel.getId());
                builder.setImportant(channel.isImportantConversation());
                builder.setDemoted(channel.isDemoted());
                builder.setNotificationSilenced(channel.getImportance() <= 2);
                builder.setBubbled(channel.canBubble());
            } else if (modificationType == 3) {
                builder.setNotificationChannelId(null);
                builder.setImportant(false);
                builder.setDemoted(false);
                builder.setNotificationSilenced(false);
                builder.setBubbled(false);
            }
            conversationStore.addOrUpdate(builder.build());
        }

        synchronized void cleanupCachedShortcuts() {
            for (Pair<String, String> conversationKey : this.mActiveNotifCounts.keySet()) {
                String packageName = (String) conversationKey.first;
                String shortcutId = (String) conversationKey.second;
                PackageData packageData = DataManager.this.getPackage(packageName, this.mUserId);
                ConversationInfo conversationInfo = packageData != null ? packageData.getConversationInfo(shortcutId) : null;
                if (conversationInfo != null && conversationInfo.isShortcutCachedForNotification() && conversationInfo.getNotificationChannelId() == null) {
                    DataManager.this.mShortcutServiceInternal.uncacheShortcuts(this.mUserId, DataManager.this.mContext.getPackageName(), packageName, Collections.singletonList(shortcutId), this.mUserId, 16384);
                }
            }
        }

        synchronized boolean hasActiveNotifications(String packageName, String shortcutId) {
            return this.mActiveNotifCounts.containsKey(Pair.create(packageName, shortcutId));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class UsageStatsQueryRunnable implements Runnable {
        private long mLastEventTimestamp;
        private final UsageStatsQueryHelper mUsageStatsQueryHelper;

        private UsageStatsQueryRunnable(final int userId) {
            this.mUsageStatsQueryHelper = DataManager.this.mInjector.createUsageStatsQueryHelper(userId, new Function() { // from class: com.android.server.people.data.-$$Lambda$DataManager$UsageStatsQueryRunnable$XYAxcpC9us0TDcNCO-NIcs5ajqQ
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return this.f$0.lambda$new$0$DataManager$UsageStatsQueryRunnable(userId, (String) obj);
                }
            });
            this.mLastEventTimestamp = System.currentTimeMillis() - 300000;
        }

        public /* synthetic */ PackageData lambda$new$0$DataManager$UsageStatsQueryRunnable(int userId, String packageName) {
            return DataManager.this.getPackage(packageName, userId);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mUsageStatsQueryHelper.querySince(this.mLastEventTimestamp)) {
                this.mLastEventTimestamp = this.mUsageStatsQueryHelper.getLastEventTimestamp();
            }
        }
    }

    private class PerUserBroadcastReceiver extends BroadcastReceiver {
        private final int mUserId;

        private PerUserBroadcastReceiver(int userId) {
            this.mUserId = userId;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UserData userData = DataManager.this.getUnlockedUserData(this.mUserId);
            if (userData == null) {
                return;
            }
            if ("android.telecom.action.DEFAULT_DIALER_CHANGED".equals(intent.getAction())) {
                String defaultDialer = intent.getStringExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME");
                userData.setDefaultDialer(defaultDialer);
            } else if ("android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL".equals(intent.getAction())) {
                DataManager.this.updateDefaultSmsApp(userData);
            }
        }
    }

    private class PerUserPackageMonitor extends PackageMonitor {
        private PerUserPackageMonitor() {
        }

        public void onPackageRemoved(String packageName, int uid) {
            super.onPackageRemoved(packageName, uid);
            int userId = getChangingUserId();
            UserData userData = DataManager.this.getUnlockedUserData(userId);
            if (userData != null) {
                userData.deletePackageData(packageName);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ShutdownBroadcastReceiver extends BroadcastReceiver {
        private ShutdownBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DataManager.this.forAllUnlockedUsers(new Consumer() { // from class: com.android.server.people.data.-$$Lambda$DataManager$ShutdownBroadcastReceiver$aRsBzypxwxnyM2MmxQLyAevgelY
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$onReceive$0$DataManager$ShutdownBroadcastReceiver((UserData) obj);
                }
            });
        }

        public /* synthetic */ void lambda$onReceive$0$DataManager$ShutdownBroadcastReceiver(UserData userData) {
            NotificationListener listener = (NotificationListener) DataManager.this.mNotificationListeners.get(userData.getUserId());
            if (listener != null) {
                listener.cleanupCachedShortcuts();
            }
            userData.forAllPackages(new Consumer() { // from class: com.android.server.people.data.-$$Lambda$bkfsFF2Vc2A9q-5JeJQbUu98BkQ
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((PackageData) obj).saveToDisk();
                }
            });
        }
    }

    static class Injector {
        Injector() {
        }

        ScheduledExecutorService createScheduledExecutor() {
            return Executors.newSingleThreadScheduledExecutor();
        }

        Executor getBackgroundExecutor() {
            return BackgroundThread.getExecutor();
        }

        ContactsQueryHelper createContactsQueryHelper(Context context) {
            return new ContactsQueryHelper(context);
        }

        CallLogQueryHelper createCallLogQueryHelper(Context context, BiConsumer<String, Event> eventConsumer) {
            return new CallLogQueryHelper(context, eventConsumer);
        }

        MmsQueryHelper createMmsQueryHelper(Context context, BiConsumer<String, Event> eventConsumer) {
            return new MmsQueryHelper(context, eventConsumer);
        }

        SmsQueryHelper createSmsQueryHelper(Context context, BiConsumer<String, Event> eventConsumer) {
            return new SmsQueryHelper(context, eventConsumer);
        }

        UsageStatsQueryHelper createUsageStatsQueryHelper(int userId, Function<String, PackageData> packageDataGetter) {
            return new UsageStatsQueryHelper(userId, packageDataGetter);
        }
    }
}

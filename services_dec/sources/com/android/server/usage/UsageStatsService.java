package com.android.server.usage;

import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.IUidObserver;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManagerInternal;
import android.app.usage.AppStandbyInfo;
import android.app.usage.ConfigurationStats;
import android.app.usage.EventStats;
import android.app.usage.IUsageStatsManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.app.usage.UsageStatsManagerInternal;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.LocusId;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ParceledListSlice;
import android.content.pm.ShortcutServiceInternal;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.os.Binder;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.android.internal.content.PackageMonitor;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.pm.PackageManagerService;
import com.android.server.slice.SliceClientPermissions;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class UsageStatsService extends SystemService implements UserUsageStatsService.StatsUpdatedListener {
    static final boolean COMPRESS_TIME = false;
    static final boolean DEBUG = false;
    private static final boolean ENABLE_KERNEL_UPDATES = true;
    private static final long FLUSH_INTERVAL = 1200000;
    private static final boolean KEEP_LEGACY_DIR = false;
    static final int MSG_FLUSH_TO_DISK = 1;
    static final int MSG_PACKAGE_REMOVED = 6;
    static final int MSG_REMOVE_USER = 2;
    static final int MSG_REPORT_EVENT = 0;
    static final int MSG_REPORT_EVENT_TO_ALL_USERID = 4;
    static final int MSG_UID_STATE_CHANGED = 3;
    static final int MSG_UNLOCKED_USER = 5;
    static final String TAG = "UsageStatsService";
    private static final long TEN_SECONDS = 10000;
    static final long TIME_CHANGE_THRESHOLD_MILLIS = 2000;
    private static final char TOKEN_DELIMITER = '/';
    private static final long TWENTY_MINUTES = 1200000;
    AppOpsManager mAppOps;
    AppStandbyInternal mAppStandby;
    AppTimeLimitController mAppTimeLimit;
    DevicePolicyManagerInternal mDpmInternal;
    Handler mHandler;
    private final Object mLock;
    PackageManager mPackageManager;
    PackageManagerInternal mPackageManagerInternal;
    private final PackageMonitor mPackageMonitor;
    private final SparseArray<LinkedList<UsageEvents.Event>> mReportedEvents;
    ShortcutServiceInternal mShortcutServiceInternal;
    private AppStandbyInternal.AppIdleStateChangeListener mStandbyChangeListener;
    private final IUidObserver mUidObserver;
    private final SparseIntArray mUidToKernelCounter;
    final SparseArray<ArraySet<String>> mUsageReporters;
    int mUsageSource;
    UserManager mUserManager;
    private final SparseArray<UserUsageStatsService> mUserState;
    private final SparseBooleanArray mUserUnlockedStates;
    final SparseArray<ActivityData> mVisibleActivities;
    public static final boolean ENABLE_TIME_CHANGE_CORRECTION = SystemProperties.getBoolean("persist.debug.time_correction", true);
    private static final File KERNEL_COUNTER_FILE = new File("/proc/uid_procstat/set");
    private static final File USAGE_STATS_LEGACY_DIR = new File(Environment.getDataSystemDirectory(), "usagestats");

    private static class ActivityData {
        public int lastEvent;
        private final String mTaskRootClass;
        private final String mTaskRootPackage;

        private ActivityData(String taskRootPackage, String taskRootClass) {
            this.lastEvent = 0;
            this.mTaskRootPackage = taskRootPackage;
            this.mTaskRootClass = taskRootClass;
        }
    }

    public UsageStatsService(Context context) {
        super(context);
        this.mLock = new Object();
        this.mUserState = new SparseArray<>();
        this.mUserUnlockedStates = new SparseBooleanArray();
        this.mUidToKernelCounter = new SparseIntArray();
        this.mPackageMonitor = new MyPackageMonitor();
        this.mReportedEvents = new SparseArray<>();
        this.mUsageReporters = new SparseArray<>();
        this.mVisibleActivities = new SparseArray<>();
        this.mStandbyChangeListener = new AppStandbyInternal.AppIdleStateChangeListener() { // from class: com.android.server.usage.UsageStatsService.1
            public void onAppIdleStateChanged(String packageName, int userId, boolean idle, int bucket, int reason) {
                UsageEvents.Event event = new UsageEvents.Event(11, SystemClock.elapsedRealtime());
                event.mBucketAndReason = (bucket << 16) | (65535 & reason);
                event.mPackage = packageName;
                UsageStatsService.this.reportEventOrAddToQueue(userId, event);
            }
        };
        this.mUidObserver = new IUidObserver.Stub() { // from class: com.android.server.usage.UsageStatsService.3
            public void onUidStateChanged(int uid, int procState, long procStateSeq, int capability) {
                UsageStatsService.this.mHandler.obtainMessage(3, uid, procState).sendToTarget();
            }

            public void onUidIdle(int uid, boolean disabled) {
            }

            public void onUidGone(int uid, boolean disabled) {
                onUidStateChanged(uid, 20, 0L, 0);
            }

            public void onUidActive(int uid) {
            }

            public void onUidCachedChanged(int uid, boolean cached) {
            }
        };
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        this.mAppOps = (AppOpsManager) getContext().getSystemService("appops");
        this.mUserManager = (UserManager) getContext().getSystemService("user");
        this.mPackageManager = getContext().getPackageManager();
        this.mPackageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        this.mHandler = new H(BackgroundThread.get().getLooper());
        this.mAppStandby = AppStandbyInternal.newAppStandbyController(UsageStatsService.class.getClassLoader(), getContext(), BackgroundThread.get().getLooper());
        this.mAppTimeLimit = new AppTimeLimitController(new AppTimeLimitController.TimeLimitCallbackListener() { // from class: com.android.server.usage.UsageStatsService.2
            @Override // com.android.server.usage.AppTimeLimitController.TimeLimitCallbackListener
            public void onLimitReached(int observerId, int userId, long timeLimit, long timeElapsed, PendingIntent callbackIntent) {
                if (callbackIntent == null) {
                    return;
                }
                Intent intent = new Intent();
                intent.putExtra("android.app.usage.extra.OBSERVER_ID", observerId);
                intent.putExtra("android.app.usage.extra.TIME_LIMIT", timeLimit);
                intent.putExtra("android.app.usage.extra.TIME_USED", timeElapsed);
                try {
                    callbackIntent.send(UsageStatsService.this.getContext(), 0, intent);
                } catch (PendingIntent.CanceledException e) {
                    Slog.w(UsageStatsService.TAG, "Couldn't deliver callback: " + callbackIntent);
                }
            }

            @Override // com.android.server.usage.AppTimeLimitController.TimeLimitCallbackListener
            public void onSessionEnd(int observerId, int userId, long timeElapsed, PendingIntent callbackIntent) {
                if (callbackIntent == null) {
                    return;
                }
                Intent intent = new Intent();
                intent.putExtra("android.app.usage.extra.OBSERVER_ID", observerId);
                intent.putExtra("android.app.usage.extra.TIME_USED", timeElapsed);
                try {
                    callbackIntent.send(UsageStatsService.this.getContext(), 0, intent);
                } catch (PendingIntent.CanceledException e) {
                    Slog.w(UsageStatsService.TAG, "Couldn't deliver callback: " + callbackIntent);
                }
            }
        }, this.mHandler.getLooper());
        this.mAppStandby.addListener(this.mStandbyChangeListener);
        this.mPackageMonitor.register(getContext(), (Looper) null, UserHandle.ALL, true);
        IntentFilter filter = new IntentFilter("android.intent.action.USER_REMOVED");
        filter.addAction("android.intent.action.USER_STARTED");
        getContext().registerReceiverAsUser(new UserActionsReceiver(), UserHandle.ALL, filter, null, this.mHandler);
        publishLocalService(UsageStatsManagerInternal.class, new LocalService());
        publishLocalService(AppStandbyInternal.class, this.mAppStandby);
        publishBinderService("usagestats", new BinderService());
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        this.mAppStandby.onBootPhase(phase);
        if (phase == 500) {
            getDpmInternal();
            getShortcutServiceInternal();
            if (KERNEL_COUNTER_FILE.exists()) {
                try {
                    ActivityManager.getService().registerUidObserver(this.mUidObserver, 3, -1, (String) null);
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            } else {
                Slog.w(TAG, "Missing procfs interface: " + KERNEL_COUNTER_FILE);
            }
            readUsageSourceSetting();
        }
    }

    @Override // com.android.server.SystemService
    public void onStartUser(UserInfo userInfo) {
        this.mUserState.put(userInfo.id, null);
        super.onStartUser(userInfo);
    }

    @Override // com.android.server.SystemService
    public void onUnlockUser(UserInfo userInfo) {
        this.mHandler.obtainMessage(5, userInfo.id, 0).sendToTarget();
        super.onUnlockUser(userInfo);
    }

    @Override // com.android.server.SystemService
    public void onStopUser(UserInfo userInfo) {
        synchronized (this.mLock) {
            if (!this.mUserUnlockedStates.get(userInfo.id)) {
                persistPendingEventsLocked(userInfo.id);
                super.onStopUser(userInfo);
                return;
            }
            UsageEvents.Event event = new UsageEvents.Event(29, SystemClock.elapsedRealtime());
            event.mPackage = PackageManagerService.PLATFORM_PACKAGE_NAME;
            reportEvent(event, userInfo.id);
            UserUsageStatsService userService = this.mUserState.get(userInfo.id);
            if (userService != null) {
                userService.userStopped();
            }
            this.mUserUnlockedStates.put(userInfo.id, false);
            this.mUserState.put(userInfo.id, null);
            super.onStopUser(userInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUserUnlocked(int userId) {
        HashMap<String, Long> installedPackages = getInstalledPackages(userId);
        if (userId == 0) {
            UsageStatsIdleService.scheduleUpdateMappingsJob(getContext());
        }
        boolean deleteObsoleteData = shouldDeleteObsoleteData(UserHandle.of(userId));
        synchronized (this.mLock) {
            UsageEvents.Event unlockEvent = new UsageEvents.Event(28, SystemClock.elapsedRealtime());
            unlockEvent.mPackage = PackageManagerService.PLATFORM_PACKAGE_NAME;
            migrateStatsToSystemCeIfNeededLocked(userId);
            LinkedList<UsageEvents.Event> pendingEvents = new LinkedList<>();
            loadPendingEventsLocked(userId, pendingEvents);
            LinkedList<UsageEvents.Event> eventsInMem = this.mReportedEvents.get(userId);
            if (eventsInMem != null) {
                pendingEvents.addAll(eventsInMem);
            }
            boolean needToFlush = !pendingEvents.isEmpty();
            initializeUserUsageStatsServiceLocked(userId, System.currentTimeMillis(), installedPackages, deleteObsoleteData);
            this.mUserUnlockedStates.put(userId, true);
            UserUsageStatsService userService = getUserUsageStatsServiceLocked(userId);
            if (userService == null) {
                Slog.i(TAG, "Attempted to unlock stopped or removed user " + userId);
                return;
            }
            while (pendingEvents.peek() != null) {
                reportEvent(pendingEvents.poll(), userId);
            }
            reportEvent(unlockEvent, userId);
            this.mReportedEvents.remove(userId);
            deleteRecursively(new File(Environment.getDataSystemDeDirectory(userId), "usagestats"));
            if (needToFlush) {
                userService.persistActiveStats();
            }
        }
    }

    private HashMap<String, Long> getInstalledPackages(int userId) {
        PackageManager packageManager = this.mPackageManager;
        if (packageManager == null) {
            return null;
        }
        List<PackageInfo> installedPackages = packageManager.getInstalledPackagesAsUser(8192, userId);
        HashMap<String, Long> packagesMap = new HashMap<>();
        for (int i = installedPackages.size() - 1; i >= 0; i--) {
            PackageInfo packageInfo = installedPackages.get(i);
            packagesMap.put(packageInfo.packageName, Long.valueOf(packageInfo.firstInstallTime));
        }
        return packagesMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DevicePolicyManagerInternal getDpmInternal() {
        if (this.mDpmInternal == null) {
            this.mDpmInternal = (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
        }
        return this.mDpmInternal;
    }

    private ShortcutServiceInternal getShortcutServiceInternal() {
        if (this.mShortcutServiceInternal == null) {
            this.mShortcutServiceInternal = (ShortcutServiceInternal) LocalServices.getService(ShortcutServiceInternal.class);
        }
        return this.mShortcutServiceInternal;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readUsageSourceSetting() {
        synchronized (this.mLock) {
            this.mUsageSource = Settings.Global.getInt(getContext().getContentResolver(), "app_time_limit_usage_source", 1);
        }
    }

    private class UserActionsReceiver extends BroadcastReceiver {
        private UserActionsReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int userId = intent.getIntExtra("android.intent.extra.user_handle", -1);
            String action = intent.getAction();
            if ("android.intent.action.USER_REMOVED".equals(action)) {
                if (userId >= 0) {
                    UsageStatsService.this.mHandler.obtainMessage(2, userId, 0).sendToTarget();
                }
            } else if ("android.intent.action.USER_STARTED".equals(action) && userId >= 0) {
                UsageStatsService.this.mAppStandby.postCheckIdleStates(userId);
            }
        }
    }

    @Override // com.android.server.usage.UserUsageStatsService.StatsUpdatedListener
    public void onStatsUpdated() {
        this.mHandler.sendEmptyMessageDelayed(1, 1200000L);
    }

    @Override // com.android.server.usage.UserUsageStatsService.StatsUpdatedListener
    public void onStatsReloaded() {
        this.mAppStandby.postOneTimeCheckIdleStates();
    }

    @Override // com.android.server.usage.UserUsageStatsService.StatsUpdatedListener
    public void onNewUpdate(int userId) {
        this.mAppStandby.initializeDefaultsForSystemApps(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldObfuscateInstantAppsForCaller(int callingUid, int userId) {
        return !this.mPackageManagerInternal.canAccessInstantApps(callingUid, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldHideShortcutInvocationEvents(int userId, String callingPackage, int callingPid, int callingUid) {
        ShortcutServiceInternal shortcutServiceInternal = getShortcutServiceInternal();
        if (shortcutServiceInternal != null) {
            return true ^ shortcutServiceInternal.hasShortcutHostPermission(userId, callingPackage, callingPid, callingUid);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldHideLocusIdEvents(int callingPid, int callingUid) {
        return (callingUid == 1000 || getContext().checkPermission("android.permission.ACCESS_LOCUS_ID_USAGE_STATS", callingPid, callingUid) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldObfuscateNotificationEvents(int callingPid, int callingUid) {
        return (callingUid == 1000 || getContext().checkPermission("android.permission.MANAGE_NOTIFICATIONS", callingPid, callingUid) == 0) ? false : true;
    }

    private static void deleteRecursively(File f) {
        File[] files = f.listFiles();
        if (files != null) {
            for (File subFile : files) {
                deleteRecursively(subFile);
            }
        }
        if (f.exists() && !f.delete()) {
            Slog.e(TAG, "Failed to delete " + f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UserUsageStatsService getUserUsageStatsServiceLocked(int userId) {
        UserUsageStatsService service = this.mUserState.get(userId);
        if (service == null) {
            Slog.wtf(TAG, "Failed to fetch usage stats service for user " + userId + ". The user might not have been initialized yet.");
        }
        return service;
    }

    private void initializeUserUsageStatsServiceLocked(int userId, long currentTimeMillis, HashMap<String, Long> installedPackages, boolean deleteObsoleteData) throws Exception {
        File usageStatsDir = new File(Environment.getDataSystemCeDirectory(userId), "usagestats");
        UserUsageStatsService service = new UserUsageStatsService(getContext(), userId, usageStatsDir, this);
        try {
            service.init(currentTimeMillis, installedPackages, deleteObsoleteData);
            this.mUserState.put(userId, service);
        } catch (Exception e) {
            if (this.mUserManager.isUserUnlocked(userId)) {
                Slog.w(TAG, "Failed to initialized unlocked user " + userId);
                throw e;
            }
            Slog.w(TAG, "Attempted to initialize service for stopped or removed user " + userId);
        }
    }

    private void migrateStatsToSystemCeIfNeededLocked(int userId) {
        File usageStatsDir = new File(Environment.getDataSystemCeDirectory(userId), "usagestats");
        if (!usageStatsDir.mkdirs() && !usageStatsDir.exists()) {
            throw new IllegalStateException("Usage stats directory does not exist: " + usageStatsDir.getAbsolutePath());
        }
        File migrated = new File(usageStatsDir, "migrated");
        if (migrated.exists()) {
            try {
                BufferedReader reader = new BufferedReader(new FileReader(migrated));
                try {
                    int previousVersion = Integer.parseInt(reader.readLine());
                    if (previousVersion >= 4) {
                        deleteLegacyDir(userId);
                        reader.close();
                        return;
                    }
                    reader.close();
                } catch (Throwable th) {
                    try {
                        reader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException | NumberFormatException e) {
                Slog.e(TAG, "Failed to read migration status file, possibly corrupted.");
                deleteRecursively(usageStatsDir);
                if (usageStatsDir.exists()) {
                    Slog.e(TAG, "Unable to delete usage stats CE directory.");
                    throw new RuntimeException(e);
                }
                if (!usageStatsDir.mkdirs() && !usageStatsDir.exists()) {
                    throw new IllegalStateException("Usage stats directory does not exist: " + usageStatsDir.getAbsolutePath());
                }
            }
        }
        Slog.i(TAG, "Starting migration to system CE for user " + userId);
        File legacyUserDir = new File(USAGE_STATS_LEGACY_DIR, Integer.toString(userId));
        if (legacyUserDir.exists()) {
            copyRecursively(usageStatsDir, legacyUserDir);
        }
        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter(migrated));
            try {
                writer.write(Integer.toString(4));
                writer.write("\n");
                writer.flush();
                writer.close();
                Slog.i(TAG, "Finished migration to system CE for user " + userId);
                deleteLegacyDir(userId);
            } catch (Throwable th3) {
                try {
                    writer.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException e2) {
            Slog.e(TAG, "Failed to write migrated status file, IOException:" + e2.getMessage());
            Slog.e(TAG, "ignored the FATAL RuntimeException of writing /data/system_ce/0/usagestats/migrated");
        }
    }

    private static void copyRecursively(File parent, File f) {
        File[] files = f.listFiles();
        if (files == null) {
            try {
                Files.copy(f.toPath(), new File(parent, f.getName()).toPath(), StandardCopyOption.REPLACE_EXISTING);
                return;
            } catch (IOException e) {
                Slog.e(TAG, "Failed to move usage stats file : " + f.toString());
                throw new RuntimeException(e);
            }
        }
        for (int i = files.length - 1; i >= 0; i--) {
            File newParent = parent;
            if (files[i].isDirectory()) {
                newParent = new File(parent, files[i].getName());
                boolean mkdirSuccess = newParent.mkdirs();
                if (!mkdirSuccess && !newParent.exists()) {
                    throw new IllegalStateException("Failed to create usage stats directory during migration: " + newParent.getAbsolutePath());
                }
            }
            copyRecursively(newParent, files[i]);
        }
    }

    private void deleteLegacyDir(int userId) {
        File legacyUserDir = new File(USAGE_STATS_LEGACY_DIR, Integer.toString(userId));
        if (legacyUserDir.exists()) {
            deleteRecursively(legacyUserDir);
            if (legacyUserDir.exists()) {
                Slog.w(TAG, "Error occurred while attempting to delete legacy usage stats dir for user " + userId);
            }
            if (USAGE_STATS_LEGACY_DIR.list() != null && USAGE_STATS_LEGACY_DIR.list().length == 0 && !USAGE_STATS_LEGACY_DIR.delete()) {
                Slog.w(TAG, "Error occurred while attempting to delete legacy usage stats dir");
            }
        }
    }

    void shutdown() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(0);
            UsageEvents.Event event = new UsageEvents.Event(26, SystemClock.elapsedRealtime());
            event.mPackage = PackageManagerService.PLATFORM_PACKAGE_NAME;
            reportEventToAllUserId(event);
            flushToDiskLocked();
        }
        this.mAppStandby.flushToDisk();
    }

    void prepareForPossibleShutdown() {
        UsageEvents.Event event = new UsageEvents.Event(26, SystemClock.elapsedRealtime());
        event.mPackage = PackageManagerService.PLATFORM_PACKAGE_NAME;
        this.mHandler.obtainMessage(4, event).sendToTarget();
        this.mHandler.sendEmptyMessage(1);
    }

    private void loadPendingEventsLocked(int userId, LinkedList<UsageEvents.Event> pendingEvents) {
        File usageStatsDeDir = new File(Environment.getDataSystemDeDirectory(userId), "usagestats");
        File[] pendingEventsFiles = usageStatsDeDir.listFiles();
        if (pendingEventsFiles == null || pendingEventsFiles.length == 0) {
            return;
        }
        Arrays.sort(pendingEventsFiles);
        int numFiles = pendingEventsFiles.length;
        for (int i = 0; i < numFiles; i++) {
            AtomicFile af = new AtomicFile(pendingEventsFiles[i]);
            LinkedList<UsageEvents.Event> tmpEvents = new LinkedList<>();
            try {
                FileInputStream in = af.openRead();
                try {
                    UsageStatsProtoV2.readPendingEvents(in, tmpEvents);
                    if (in != null) {
                        in.close();
                    }
                    pendingEvents.addAll(tmpEvents);
                } catch (Throwable th) {
                    if (in != null) {
                        try {
                            in.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Exception e) {
                Slog.e(TAG, "Could not read " + pendingEventsFiles[i] + " for user " + userId);
            }
        }
    }

    private void persistPendingEventsLocked(int userId) {
        LinkedList<UsageEvents.Event> pendingEvents = this.mReportedEvents.get(userId);
        if (pendingEvents == null || pendingEvents.isEmpty()) {
            return;
        }
        File usageStatsDeDir = new File(Environment.getDataSystemDeDirectory(userId), "usagestats");
        if (!usageStatsDeDir.mkdirs() && !usageStatsDeDir.exists()) {
            throw new IllegalStateException("Usage stats DE directory does not exist: " + usageStatsDeDir.getAbsolutePath());
        }
        File pendingEventsFile = new File(usageStatsDeDir, "pendingevents_" + System.currentTimeMillis());
        AtomicFile af = new AtomicFile(pendingEventsFile);
        FileOutputStream fos = null;
        try {
            try {
                FileOutputStream fos2 = af.startWrite();
                UsageStatsProtoV2.writePendingEvents(fos2, pendingEvents);
                af.finishWrite(fos2);
                fos = null;
                pendingEvents.clear();
            } catch (Exception e) {
                Slog.e(TAG, "Failed to write " + pendingEventsFile.getAbsolutePath() + " for user " + userId);
            }
        } finally {
            af.failWrite(fos);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportEventOrAddToQueue(int userId, UsageEvents.Event event) {
        synchronized (this.mLock) {
            if (this.mUserUnlockedStates.get(userId)) {
                this.mHandler.obtainMessage(0, userId, 0, event).sendToTarget();
                return;
            }
            LinkedList<UsageEvents.Event> events = this.mReportedEvents.get(userId, new LinkedList<>());
            events.add(event);
            if (this.mReportedEvents.get(userId) == null) {
                this.mReportedEvents.put(userId, events);
            }
            if (events.size() == 1) {
                this.mHandler.sendEmptyMessageDelayed(1, 1200000L);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:88:0x01cd A[Catch: all -> 0x01d9, DONT_GENERATE, TryCatch #3 {, blocks: (B:15:0x002e, B:17:0x0036, B:18:0x0079, B:20:0x007b, B:86:0x01c7, B:88:0x01cd, B:90:0x01cf, B:91:0x01d2, B:27:0x008b, B:28:0x008d, B:30:0x0099, B:32:0x009b, B:34:0x009f, B:35:0x00a6, B:36:0x00a8, B:40:0x00b6, B:53:0x00ee, B:54:0x00ef, B:56:0x00f3, B:57:0x00ff, B:59:0x0103, B:60:0x010b, B:63:0x0116, B:67:0x0121, B:68:0x0122, B:70:0x012e, B:74:0x017c, B:71:0x016a, B:73:0x0170, B:75:0x0184, B:78:0x0196, B:79:0x01a9, B:81:0x01ad, B:82:0x01b5, B:85:0x01bf, B:41:0x00b7, B:43:0x00be, B:44:0x00c4, B:48:0x00e7, B:47:0x00d1, B:49:0x00ea, B:37:0x00a9, B:38:0x00b3), top: B:105:0x002e, inners: #0, #1, #4, #5 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01cf A[Catch: all -> 0x01d9, TryCatch #3 {, blocks: (B:15:0x002e, B:17:0x0036, B:18:0x0079, B:20:0x007b, B:86:0x01c7, B:88:0x01cd, B:90:0x01cf, B:91:0x01d2, B:27:0x008b, B:28:0x008d, B:30:0x0099, B:32:0x009b, B:34:0x009f, B:35:0x00a6, B:36:0x00a8, B:40:0x00b6, B:53:0x00ee, B:54:0x00ef, B:56:0x00f3, B:57:0x00ff, B:59:0x0103, B:60:0x010b, B:63:0x0116, B:67:0x0121, B:68:0x0122, B:70:0x012e, B:74:0x017c, B:71:0x016a, B:73:0x0170, B:75:0x0184, B:78:0x0196, B:79:0x01a9, B:81:0x01ad, B:82:0x01b5, B:85:0x01bf, B:41:0x00b7, B:43:0x00be, B:44:0x00c4, B:48:0x00e7, B:47:0x00d1, B:49:0x00ea, B:37:0x00a9, B:38:0x00b3), top: B:105:0x002e, inners: #0, #1, #4, #5 }] */
    void reportEvent(UsageEvents.Event event, int userId) {
        int uid;
        UserUsageStatsService service;
        ArraySet<String> tokens;
        int i = event.mEventType;
        if (i == 1 || i == 2 || i == 23) {
            uid = this.mPackageManagerInternal.getPackageUid(event.mPackage, 0, userId);
        } else {
            uid = 0;
        }
        if (event.mPackage != null && this.mPackageManagerInternal.isPackageEphemeral(userId, event.mPackage)) {
            event.mFlags |= 1;
        }
        synchronized (this.mLock) {
            if (!this.mUserUnlockedStates.get(userId)) {
                Slog.wtf(TAG, "Failed to report event for locked user " + userId + " (" + event.mPackage + SliceClientPermissions.SliceAuthority.DELIMITER + event.mClass + " eventType:" + event.mEventType + " instanceId:" + event.mInstanceId + ")");
                return;
            }
            int i2 = event.mEventType;
            if (i2 == 1) {
                FrameworkStatsLog.write(269, uid, event.mPackage, event.mClass, 1);
                if (this.mVisibleActivities.get(event.mInstanceId) == null) {
                    ActivityData resumedData = new ActivityData(event.mTaskRootPackage, event.mTaskRootClass);
                    resumedData.lastEvent = 1;
                    this.mVisibleActivities.put(event.mInstanceId, resumedData);
                    try {
                        if (this.mUsageSource == 2) {
                            this.mAppTimeLimit.noteUsageStart(event.mPackage, userId);
                        } else {
                            this.mAppTimeLimit.noteUsageStart(event.mTaskRootPackage, userId);
                        }
                    } catch (IllegalArgumentException iae) {
                        Slog.e(TAG, "Failed to note usage start", iae);
                    }
                }
                service = getUserUsageStatsServiceLocked(userId);
                if (service == null) {
                    return;
                }
                service.reportEvent(event);
                this.mAppStandby.reportEvent(event, userId);
            }
            if (i2 == 2) {
                ActivityData pausedData = this.mVisibleActivities.get(event.mInstanceId);
                if (pausedData == null) {
                    Slog.w(TAG, "Unexpected activity event reported! (" + event.mPackage + SliceClientPermissions.SliceAuthority.DELIMITER + event.mClass + " event : " + event.mEventType + " instanceId : " + event.mInstanceId + ")");
                } else {
                    pausedData.lastEvent = 2;
                    if (event.mTaskRootPackage == null) {
                        event.mTaskRootPackage = pausedData.mTaskRootPackage;
                        event.mTaskRootClass = pausedData.mTaskRootClass;
                    }
                }
                FrameworkStatsLog.write(269, uid, event.mPackage, event.mClass, 2);
            } else {
                if (i2 != 23) {
                    if (i2 == 24) {
                        event.mEventType = 23;
                    }
                }
                ActivityData prevData = (ActivityData) this.mVisibleActivities.removeReturnOld(event.mInstanceId);
                if (prevData == null) {
                    return;
                }
                if (prevData.lastEvent != 2) {
                    FrameworkStatsLog.write(269, uid, event.mPackage, event.mClass, 2);
                }
                synchronized (this.mUsageReporters) {
                    tokens = (ArraySet) this.mUsageReporters.removeReturnOld(event.mInstanceId);
                }
                if (tokens != null) {
                    synchronized (tokens) {
                        int size = tokens.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            String token = tokens.valueAt(i3);
                            try {
                                this.mAppTimeLimit.noteUsageStop(buildFullToken(event.mPackage, token), userId);
                            } catch (IllegalArgumentException iae2) {
                                Slog.w(TAG, "Failed to stop usage for during reporter death: " + iae2);
                            }
                        }
                    }
                }
                if (event.mTaskRootPackage == null) {
                    event.mTaskRootPackage = prevData.mTaskRootPackage;
                    event.mTaskRootClass = prevData.mTaskRootClass;
                }
                try {
                    if (this.mUsageSource == 2) {
                        this.mAppTimeLimit.noteUsageStop(event.mPackage, userId);
                    } else {
                        this.mAppTimeLimit.noteUsageStop(event.mTaskRootPackage, userId);
                    }
                } catch (IllegalArgumentException iae3) {
                    Slog.w(TAG, "Failed to note usage stop", iae3);
                }
            }
            service = getUserUsageStatsServiceLocked(userId);
            if (service == null) {
                return;
            }
            service.reportEvent(event);
            this.mAppStandby.reportEvent(event, userId);
        }
    }

    void reportEventToAllUserId(UsageEvents.Event event) {
        synchronized (this.mLock) {
            int userCount = this.mUserState.size();
            for (int i = 0; i < userCount; i++) {
                UsageEvents.Event copy = new UsageEvents.Event(event);
                reportEventOrAddToQueue(this.mUserState.keyAt(i), copy);
            }
        }
    }

    void flushToDisk() {
        synchronized (this.mLock) {
            UsageEvents.Event event = new UsageEvents.Event(25, SystemClock.elapsedRealtime());
            event.mPackage = PackageManagerService.PLATFORM_PACKAGE_NAME;
            reportEventToAllUserId(event);
            flushToDiskLocked();
        }
        this.mAppStandby.flushToDisk();
    }

    void onUserRemoved(int userId) {
        synchronized (this.mLock) {
            Slog.i(TAG, "Removing user " + userId + " and all data.");
            this.mUserState.remove(userId);
            this.mAppTimeLimit.onUserRemoved(userId);
        }
        this.mAppStandby.onUserRemoved(userId);
        UsageStatsIdleService.cancelJob(getContext(), userId);
        UsageStatsIdleService.cancelUpdateMappingsJob(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPackageRemoved(int userId, String packageName) {
        synchronized (this.mLock) {
            long timeRemoved = System.currentTimeMillis();
            if (this.mUserUnlockedStates.get(userId)) {
                UserUsageStatsService userService = this.mUserState.get(userId);
                if (userService == null) {
                    return;
                }
                int tokenRemoved = userService.onPackageRemoved(packageName, timeRemoved);
                if (tokenRemoved != -1) {
                    UsageStatsIdleService.scheduleJob(getContext(), userId);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean pruneUninstalledPackagesData(int userId) {
        synchronized (this.mLock) {
            if (!this.mUserUnlockedStates.get(userId)) {
                return false;
            }
            UserUsageStatsService userService = this.mUserState.get(userId);
            if (userService == null) {
                return false;
            }
            return userService.pruneUninstalledPackagesData();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updatePackageMappingsData() {
        if (!shouldDeleteObsoleteData(UserHandle.SYSTEM)) {
            return true;
        }
        HashMap<String, Long> installedPkgs = getInstalledPackages(0);
        synchronized (this.mLock) {
            if (!this.mUserUnlockedStates.get(0)) {
                return false;
            }
            UserUsageStatsService userService = this.mUserState.get(0);
            if (userService == null) {
                return false;
            }
            return userService.updatePackageMappingsLocked(installedPkgs);
        }
    }

    List<UsageStats> queryUsageStats(int userId, int bucketType, long beginTime, long endTime, boolean obfuscateInstantApps) {
        synchronized (this.mLock) {
            if (!this.mUserUnlockedStates.get(userId)) {
                Slog.w(TAG, "Failed to query usage stats for locked user " + userId);
                return null;
            }
            UserUsageStatsService service = getUserUsageStatsServiceLocked(userId);
            if (service == null) {
                return null;
            }
            List<UsageStats> list = service.queryUsageStats(bucketType, beginTime, endTime);
            if (list == null) {
                return null;
            }
            if (obfuscateInstantApps) {
                for (int i = list.size() - 1; i >= 0; i--) {
                    UsageStats stats = list.get(i);
                    if (this.mPackageManagerInternal.isPackageEphemeral(userId, stats.mPackageName)) {
                        list.set(i, stats.getObfuscatedForInstantApp());
                    }
                }
            }
            return list;
        }
    }

    List<ConfigurationStats> queryConfigurationStats(int userId, int bucketType, long beginTime, long endTime) {
        synchronized (this.mLock) {
            if (!this.mUserUnlockedStates.get(userId)) {
                Slog.w(TAG, "Failed to query configuration stats for locked user " + userId);
                return null;
            }
            UserUsageStatsService service = getUserUsageStatsServiceLocked(userId);
            if (service == null) {
                return null;
            }
            return service.queryConfigurationStats(bucketType, beginTime, endTime);
        }
    }

    List<EventStats> queryEventStats(int userId, int bucketType, long beginTime, long endTime) {
        synchronized (this.mLock) {
            if (!this.mUserUnlockedStates.get(userId)) {
                Slog.w(TAG, "Failed to query event stats for locked user " + userId);
                return null;
            }
            UserUsageStatsService service = getUserUsageStatsServiceLocked(userId);
            if (service == null) {
                return null;
            }
            return service.queryEventStats(bucketType, beginTime, endTime);
        }
    }

    UsageEvents queryEvents(int userId, long beginTime, long endTime, int flags) {
        synchronized (this.mLock) {
            if (!this.mUserUnlockedStates.get(userId)) {
                Slog.w(TAG, "Failed to query events for locked user " + userId);
                return null;
            }
            UserUsageStatsService service = getUserUsageStatsServiceLocked(userId);
            if (service == null) {
                return null;
            }
            return service.queryEvents(beginTime, endTime, flags);
        }
    }

    UsageEvents queryEventsForPackage(int userId, long beginTime, long endTime, String packageName, boolean includeTaskRoot) {
        synchronized (this.mLock) {
            if (!this.mUserUnlockedStates.get(userId)) {
                Slog.w(TAG, "Failed to query package events for locked user " + userId);
                return null;
            }
            UserUsageStatsService service = getUserUsageStatsServiceLocked(userId);
            if (service == null) {
                return null;
            }
            return service.queryEventsForPackage(beginTime, endTime, packageName, includeTaskRoot);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldDeleteObsoleteData(UserHandle userHandle) {
        DevicePolicyManagerInternal dpmInternal = getDpmInternal();
        return dpmInternal == null || dpmInternal.getProfileOwnerOrDeviceOwnerSupervisionComponent(userHandle) == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String buildFullToken(String packageName, String token) {
        StringBuilder sb = new StringBuilder(packageName.length() + token.length() + 1);
        sb.append(packageName);
        sb.append(TOKEN_DELIMITER);
        sb.append(token);
        return sb.toString();
    }

    private void flushToDiskLocked() {
        int userCount = this.mUserState.size();
        for (int i = 0; i < userCount; i++) {
            int userId = this.mUserState.keyAt(i);
            if (!this.mUserUnlockedStates.get(userId)) {
                persistPendingEventsLocked(userId);
            } else {
                UserUsageStatsService service = this.mUserState.get(userId);
                if (service != null) {
                    service.persistActiveStats();
                }
            }
        }
        this.mHandler.removeMessages(1);
    }

    void dump(String[] args, PrintWriter pw) {
        boolean compact;
        boolean checkin;
        int[] userIds;
        IndentingPrintWriter idpw = new IndentingPrintWriter(pw, "  ");
        ArrayList<String> pkgs = new ArrayList<>();
        String[] strArr = null;
        if (args == null) {
            compact = false;
            checkin = false;
        } else {
            int i = 0;
            compact = false;
            checkin = false;
            while (i < args.length) {
                String arg = args[i];
                if ("--checkin".equals(arg)) {
                    checkin = true;
                } else if ("-c".equals(arg)) {
                    compact = true;
                } else {
                    if ("flush".equals(arg)) {
                        synchronized (this.mLock) {
                            flushToDiskLocked();
                        }
                        this.mAppStandby.flushToDisk();
                        pw.println("Flushed stats to disk");
                        return;
                    }
                    if ("is-app-standby-enabled".equals(arg)) {
                        pw.println(this.mAppStandby.isAppIdleEnabled());
                        return;
                    }
                    if ("apptimelimit".equals(arg)) {
                        synchronized (this.mLock) {
                            if (i + 1 >= args.length) {
                                this.mAppTimeLimit.dump(strArr, pw);
                            } else {
                                String[] remainingArgs = (String[]) Arrays.copyOfRange(args, i + 1, args.length);
                                this.mAppTimeLimit.dump(remainingArgs, pw);
                            }
                        }
                        return;
                    }
                    if ("file".equals(arg)) {
                        IndentingPrintWriter ipw = new IndentingPrintWriter(pw, "  ");
                        synchronized (this.mLock) {
                            if (i + 1 >= args.length) {
                                int numUsers = this.mUserState.size();
                                for (int user = 0; user < numUsers; user++) {
                                    int userId = this.mUserState.keyAt(user);
                                    if (this.mUserUnlockedStates.get(userId)) {
                                        ipw.println("user=" + userId);
                                        ipw.increaseIndent();
                                        this.mUserState.valueAt(user).dumpFile(ipw, null);
                                        ipw.decreaseIndent();
                                    }
                                }
                            } else {
                                int user2 = parseUserIdFromArgs(args, i, ipw);
                                if (user2 != -10000) {
                                    String[] remainingArgs2 = (String[]) Arrays.copyOfRange(args, i + 2, args.length);
                                    this.mUserState.get(user2).dumpFile(ipw, remainingArgs2);
                                }
                            }
                        }
                        return;
                    }
                    if ("database-info".equals(arg)) {
                        IndentingPrintWriter ipw2 = new IndentingPrintWriter(pw, "  ");
                        synchronized (this.mLock) {
                            if (i + 1 >= args.length) {
                                int numUsers2 = this.mUserState.size();
                                for (int user3 = 0; user3 < numUsers2; user3++) {
                                    int userId2 = this.mUserState.keyAt(user3);
                                    if (this.mUserUnlockedStates.get(userId2)) {
                                        ipw2.println("user=" + userId2);
                                        ipw2.increaseIndent();
                                        this.mUserState.valueAt(user3).dumpDatabaseInfo(ipw2);
                                        ipw2.decreaseIndent();
                                    }
                                }
                            } else {
                                int user4 = parseUserIdFromArgs(args, i, ipw2);
                                if (user4 != -10000) {
                                    this.mUserState.get(user4).dumpDatabaseInfo(ipw2);
                                }
                            }
                        }
                        return;
                    }
                    if ("appstandby".equals(arg)) {
                        this.mAppStandby.dumpState(args, pw);
                        return;
                    }
                    if ("stats-directory".equals(arg)) {
                        IndentingPrintWriter ipw3 = new IndentingPrintWriter(pw, "  ");
                        synchronized (this.mLock) {
                            int userId3 = parseUserIdFromArgs(args, i, ipw3);
                            if (userId3 != -10000) {
                                ipw3.println(new File(Environment.getDataSystemCeDirectory(userId3), "usagestats").getAbsolutePath());
                            }
                        }
                        return;
                    }
                    if ("mappings".equals(arg)) {
                        IndentingPrintWriter ipw4 = new IndentingPrintWriter(pw, "  ");
                        int userId4 = parseUserIdFromArgs(args, i, ipw4);
                        synchronized (this.mLock) {
                            if (userId4 != -10000) {
                                this.mUserState.get(userId4).dumpMappings(ipw4);
                            }
                        }
                        return;
                    }
                    if (arg != null && !arg.startsWith("-")) {
                        pkgs.add(arg);
                    }
                }
                i++;
                strArr = null;
            }
        }
        synchronized (this.mLock) {
            int userCount = this.mUserState.size();
            userIds = new int[userCount];
            for (int i2 = 0; i2 < userCount; i2++) {
                int userId5 = this.mUserState.keyAt(i2);
                userIds[i2] = userId5;
                idpw.printPair("user", Integer.valueOf(userId5));
                idpw.println();
                idpw.increaseIndent();
                if (this.mUserUnlockedStates.get(userId5)) {
                    if (checkin) {
                        this.mUserState.valueAt(i2).checkin(idpw);
                    } else {
                        this.mUserState.valueAt(i2).dump(idpw, pkgs, compact);
                        idpw.println();
                    }
                }
                idpw.decreaseIndent();
            }
            idpw.println();
            idpw.printPair("Usage Source", UsageStatsManager.usageSourceToString(this.mUsageSource));
            idpw.println();
            this.mAppTimeLimit.dump(null, pw);
        }
        this.mAppStandby.dumpUsers(idpw, userIds, pkgs);
        if (CollectionUtils.isEmpty(pkgs)) {
            pw.println();
            this.mAppStandby.dumpState(args, pw);
        }
    }

    private int parseUserIdFromArgs(String[] args, int index, IndentingPrintWriter ipw) {
        try {
            int userId = Integer.parseInt(args[index + 1]);
            if (this.mUserState.indexOfKey(userId) < 0) {
                ipw.println("the specified user does not exist.");
                return -10000;
            }
            if (!this.mUserUnlockedStates.get(userId)) {
                ipw.println("the specified user is currently in a locked state.");
                return -10000;
            }
            return userId;
        } catch (ArrayIndexOutOfBoundsException | NumberFormatException e) {
            ipw.println("invalid user specified.");
            return -10000;
        }
    }

    class H extends Handler {
        public H(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) throws Exception {
            switch (msg.what) {
                case 0:
                    UsageStatsService.this.reportEvent((UsageEvents.Event) msg.obj, msg.arg1);
                    return;
                case 1:
                    UsageStatsService.this.flushToDisk();
                    return;
                case 2:
                    UsageStatsService.this.onUserRemoved(msg.arg1);
                    return;
                case 3:
                    int uid = msg.arg1;
                    int procState = msg.arg2;
                    int newCounter = procState <= 2 ? 0 : 1;
                    synchronized (UsageStatsService.this.mUidToKernelCounter) {
                        int oldCounter = UsageStatsService.this.mUidToKernelCounter.get(uid, 0);
                        if (newCounter != oldCounter) {
                            UsageStatsService.this.mUidToKernelCounter.put(uid, newCounter);
                            try {
                                FileUtils.stringToFile(UsageStatsService.KERNEL_COUNTER_FILE, uid + " " + newCounter);
                            } catch (IOException e) {
                                Slog.w(UsageStatsService.TAG, "Failed to update counter set: " + e);
                            }
                        }
                        break;
                    }
                    return;
                case 4:
                    UsageStatsService.this.reportEventToAllUserId((UsageEvents.Event) msg.obj);
                    return;
                case 5:
                    try {
                        UsageStatsService.this.onUserUnlocked(msg.arg1);
                        return;
                    } catch (Exception e2) {
                        if (UsageStatsService.this.mUserManager.isUserUnlocked(msg.arg1)) {
                            throw e2;
                        }
                        Slog.w(UsageStatsService.TAG, "Attempted to unlock stopped or removed user " + msg.arg1);
                        return;
                    }
                case 6:
                    UsageStatsService.this.onPackageRemoved(msg.arg1, (String) msg.obj);
                    return;
                default:
                    super.handleMessage(msg);
                    return;
            }
        }
    }

    private final class BinderService extends IUsageStatsManager.Stub {
        private BinderService() {
        }

        private boolean hasPermission(String callingPackage) {
            int callingUid = Binder.getCallingUid();
            if (callingUid == 1000) {
                return true;
            }
            int mode = UsageStatsService.this.mAppOps.noteOp(43, callingUid, callingPackage);
            if (mode == 3) {
                return UsageStatsService.this.getContext().checkCallingPermission("android.permission.PACKAGE_USAGE_STATS") == 0;
            }
            return mode == 0;
        }

        private boolean hasObserverPermission() {
            int callingUid = Binder.getCallingUid();
            DevicePolicyManagerInternal dpmInternal = UsageStatsService.this.getDpmInternal();
            return callingUid == 1000 || (dpmInternal != null && dpmInternal.isActiveAdminWithPolicy(callingUid, -1)) || UsageStatsService.this.getContext().checkCallingPermission("android.permission.OBSERVE_APP_USAGE") == 0;
        }

        private boolean hasPermissions(String callingPackage, String... permissions) {
            int callingUid = Binder.getCallingUid();
            if (callingUid == 1000) {
                return true;
            }
            boolean hasPermissions = true;
            Context context = UsageStatsService.this.getContext();
            for (String str : permissions) {
                hasPermissions = hasPermissions && context.checkCallingPermission(str) == 0;
            }
            return hasPermissions;
        }

        private void checkCallerIsSystemOrSameApp(String pkg) {
            if (isCallingUidSystem()) {
                return;
            }
            checkCallerIsSameApp(pkg);
        }

        private void checkCallerIsSameApp(String pkg) {
            int callingUid = Binder.getCallingUid();
            int callingUserId = UserHandle.getUserId(callingUid);
            if (UsageStatsService.this.mPackageManagerInternal.getPackageUid(pkg, 0, callingUserId) != callingUid) {
                throw new SecurityException("Calling uid " + callingUid + " cannot query eventsfor package " + pkg);
            }
        }

        private boolean isCallingUidSystem() {
            int uid = UserHandle.getAppId(Binder.getCallingUid());
            return uid == 1000;
        }

        public ParceledListSlice<UsageStats> queryUsageStats(int bucketType, long beginTime, long endTime, String callingPackage) {
            if (!hasPermission(callingPackage)) {
                return null;
            }
            boolean obfuscateInstantApps = UsageStatsService.this.shouldObfuscateInstantAppsForCaller(Binder.getCallingUid(), UserHandle.getCallingUserId());
            int userId = UserHandle.getCallingUserId();
            long token = Binder.clearCallingIdentity();
            try {
                List<UsageStats> results = UsageStatsService.this.queryUsageStats(userId, bucketType, beginTime, endTime, obfuscateInstantApps);
                if (results != null) {
                    return new ParceledListSlice<>(results);
                }
                return null;
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public ParceledListSlice<ConfigurationStats> queryConfigurationStats(int bucketType, long beginTime, long endTime, String callingPackage) throws RemoteException {
            if (!hasPermission(callingPackage)) {
                return null;
            }
            int userId = UserHandle.getCallingUserId();
            long token = Binder.clearCallingIdentity();
            try {
                List<ConfigurationStats> results = UsageStatsService.this.queryConfigurationStats(userId, bucketType, beginTime, endTime);
                if (results != null) {
                    return new ParceledListSlice<>(results);
                }
                return null;
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public ParceledListSlice<EventStats> queryEventStats(int bucketType, long beginTime, long endTime, String callingPackage) throws RemoteException {
            if (!hasPermission(callingPackage)) {
                return null;
            }
            int userId = UserHandle.getCallingUserId();
            long token = Binder.clearCallingIdentity();
            try {
                List<EventStats> results = UsageStatsService.this.queryEventStats(userId, bucketType, beginTime, endTime);
                if (results != null) {
                    return new ParceledListSlice<>(results);
                }
                return null;
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public UsageEvents queryEvents(long beginTime, long endTime, String callingPackage) {
            if (!hasPermission(callingPackage)) {
                return null;
            }
            int userId = UserHandle.getCallingUserId();
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            boolean obfuscateInstantApps = UsageStatsService.this.shouldObfuscateInstantAppsForCaller(callingUid, userId);
            long token = Binder.clearCallingIdentity();
            try {
                boolean hideShortcutInvocationEvents = UsageStatsService.this.shouldHideShortcutInvocationEvents(userId, callingPackage, callingPid, callingUid);
                boolean hideLocusIdEvents = UsageStatsService.this.shouldHideLocusIdEvents(callingPid, callingUid);
                boolean obfuscateNotificationEvents = UsageStatsService.this.shouldObfuscateNotificationEvents(callingPid, callingUid);
                int flags = obfuscateInstantApps ? 0 | 1 : 0;
                if (hideShortcutInvocationEvents) {
                    flags |= 2;
                }
                if (hideLocusIdEvents) {
                    flags |= 8;
                }
                if (obfuscateNotificationEvents) {
                    flags |= 4;
                }
                return UsageStatsService.this.queryEvents(userId, beginTime, endTime, flags);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public UsageEvents queryEventsForPackage(long beginTime, long endTime, String callingPackage) {
            int callingUid = Binder.getCallingUid();
            int callingUserId = UserHandle.getUserId(callingUid);
            checkCallerIsSameApp(callingPackage);
            boolean includeTaskRoot = hasPermission(callingPackage);
            long token = Binder.clearCallingIdentity();
            try {
                return UsageStatsService.this.queryEventsForPackage(callingUserId, beginTime, endTime, callingPackage, includeTaskRoot);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public UsageEvents queryEventsForUser(long beginTime, long endTime, int userId, String callingPackage) {
            if (!hasPermission(callingPackage)) {
                return null;
            }
            int callingUserId = UserHandle.getCallingUserId();
            if (userId != callingUserId) {
                UsageStatsService.this.getContext().enforceCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "No permission to query usage stats for this user");
            }
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            boolean obfuscateInstantApps = UsageStatsService.this.shouldObfuscateInstantAppsForCaller(callingUid, callingUserId);
            long token = Binder.clearCallingIdentity();
            try {
                boolean hideShortcutInvocationEvents = UsageStatsService.this.shouldHideShortcutInvocationEvents(userId, callingPackage, callingPid, callingUid);
                boolean obfuscateNotificationEvents = UsageStatsService.this.shouldObfuscateNotificationEvents(callingPid, callingUid);
                boolean hideLocusIdEvents = UsageStatsService.this.shouldHideLocusIdEvents(callingPid, callingUid);
                int flags = obfuscateInstantApps ? 0 | 1 : 0;
                if (hideShortcutInvocationEvents) {
                    flags |= 2;
                }
                if (hideLocusIdEvents) {
                    flags |= 8;
                }
                if (obfuscateNotificationEvents) {
                    flags |= 4;
                }
                return UsageStatsService.this.queryEvents(userId, beginTime, endTime, flags);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public UsageEvents queryEventsForPackageForUser(long beginTime, long endTime, int userId, String pkg, String callingPackage) {
            if (!hasPermission(callingPackage)) {
                return null;
            }
            if (userId != UserHandle.getCallingUserId()) {
                UsageStatsService.this.getContext().enforceCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "No permission to query usage stats for this user");
            }
            checkCallerIsSystemOrSameApp(pkg);
            long token = Binder.clearCallingIdentity();
            try {
                return UsageStatsService.this.queryEventsForPackage(userId, beginTime, endTime, pkg, true);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public boolean isAppInactive(String packageName, int userId, String callingPackage) {
            int callingUid = Binder.getCallingUid();
            try {
                int userId2 = ActivityManager.getService().handleIncomingUser(Binder.getCallingPid(), callingUid, userId, false, false, "isAppInactive", (String) null);
                if (packageName.equals(callingPackage)) {
                    int actualCallingUid = UsageStatsService.this.mPackageManagerInternal.getPackageUidInternal(callingPackage, 0, userId2);
                    if (actualCallingUid != callingUid) {
                        return false;
                    }
                } else if (!hasPermission(callingPackage)) {
                    return false;
                }
                boolean obfuscateInstantApps = UsageStatsService.this.shouldObfuscateInstantAppsForCaller(callingUid, userId2);
                long token = Binder.clearCallingIdentity();
                try {
                    return UsageStatsService.this.mAppStandby.isAppIdleFiltered(packageName, userId2, SystemClock.elapsedRealtime(), obfuscateInstantApps);
                } finally {
                    Binder.restoreCallingIdentity(token);
                }
            } catch (RemoteException re) {
                throw re.rethrowFromSystemServer();
            }
        }

        public void setAppInactive(String packageName, boolean idle, int userId) {
            int callingUid = Binder.getCallingUid();
            try {
                int userId2 = ActivityManager.getService().handleIncomingUser(Binder.getCallingPid(), callingUid, userId, false, true, "setAppInactive", (String) null);
                UsageStatsService.this.getContext().enforceCallingPermission("android.permission.CHANGE_APP_IDLE_STATE", "No permission to change app idle state");
                long token = Binder.clearCallingIdentity();
                try {
                    int appId = UsageStatsService.this.mAppStandby.getAppId(packageName);
                    if (appId < 0) {
                        return;
                    }
                    UsageStatsService.this.mAppStandby.setAppIdleAsync(packageName, idle, userId2);
                } finally {
                    Binder.restoreCallingIdentity(token);
                }
            } catch (RemoteException re) {
                throw re.rethrowFromSystemServer();
            }
        }

        public int getAppStandbyBucket(String packageName, String callingPackage, int userId) {
            int callingUid = Binder.getCallingUid();
            try {
                int userId2 = ActivityManager.getService().handleIncomingUser(Binder.getCallingPid(), callingUid, userId, false, false, "getAppStandbyBucket", (String) null);
                int packageUid = UsageStatsService.this.mPackageManagerInternal.getPackageUid(packageName, 0, userId2);
                if (packageUid != callingUid && !hasPermission(callingPackage)) {
                    throw new SecurityException("Don't have permission to query app standby bucket");
                }
                if (packageUid >= 0) {
                    boolean obfuscateInstantApps = UsageStatsService.this.shouldObfuscateInstantAppsForCaller(callingUid, userId2);
                    long token = Binder.clearCallingIdentity();
                    try {
                        return UsageStatsService.this.mAppStandby.getAppStandbyBucket(packageName, userId2, SystemClock.elapsedRealtime(), obfuscateInstantApps);
                    } finally {
                        Binder.restoreCallingIdentity(token);
                    }
                }
                throw new IllegalArgumentException("Cannot get standby bucket for non existent package (" + packageName + ")");
            } catch (RemoteException re) {
                throw re.rethrowFromSystemServer();
            }
        }

        public void setAppStandbyBucket(String packageName, int bucket, int userId) {
            UsageStatsService.this.getContext().enforceCallingPermission("android.permission.CHANGE_APP_IDLE_STATE", "No permission to change app standby state");
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            long token = Binder.clearCallingIdentity();
            try {
                UsageStatsService.this.mAppStandby.setAppStandbyBucket(packageName, bucket, userId, callingUid, callingPid);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public ParceledListSlice<AppStandbyInfo> getAppStandbyBuckets(String callingPackageName, int userId) {
            int callingUid = Binder.getCallingUid();
            try {
                int userId2 = ActivityManager.getService().handleIncomingUser(Binder.getCallingPid(), callingUid, userId, false, false, "getAppStandbyBucket", (String) null);
                if (!hasPermission(callingPackageName)) {
                    throw new SecurityException("Don't have permission to query app standby bucket");
                }
                long token = Binder.clearCallingIdentity();
                try {
                    List<AppStandbyInfo> standbyBucketList = UsageStatsService.this.mAppStandby.getAppStandbyBuckets(userId2);
                    return standbyBucketList == null ? ParceledListSlice.emptyList() : new ParceledListSlice<>(standbyBucketList);
                } finally {
                    Binder.restoreCallingIdentity(token);
                }
            } catch (RemoteException re) {
                throw re.rethrowFromSystemServer();
            }
        }

        public void setAppStandbyBuckets(ParceledListSlice appBuckets, int userId) {
            UsageStatsService.this.getContext().enforceCallingPermission("android.permission.CHANGE_APP_IDLE_STATE", "No permission to change app standby state");
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            long token = Binder.clearCallingIdentity();
            try {
                UsageStatsService.this.mAppStandby.setAppStandbyBuckets(appBuckets.getList(), userId, callingUid, callingPid);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void onCarrierPrivilegedAppsChanged() {
            UsageStatsService.this.getContext().enforceCallingOrSelfPermission("android.permission.BIND_CARRIER_SERVICES", "onCarrierPrivilegedAppsChanged can only be called by privileged apps.");
            UsageStatsService.this.mAppStandby.clearCarrierPrivilegedApps();
        }

        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpAndUsageStatsPermission(UsageStatsService.this.getContext(), UsageStatsService.TAG, pw)) {
                UsageStatsService.this.dump(args, pw);
            }
        }

        public void reportChooserSelection(String packageName, int userId, String contentType, String[] annotations, String action) {
            if (packageName == null) {
                Slog.w(UsageStatsService.TAG, "Event report user selecting a null package");
                return;
            }
            UsageEvents.Event event = new UsageEvents.Event(9, SystemClock.elapsedRealtime());
            event.mPackage = packageName;
            event.mAction = action;
            event.mContentType = contentType;
            event.mContentAnnotations = annotations;
            UsageStatsService.this.reportEventOrAddToQueue(userId, event);
        }

        public void registerAppUsageObserver(int observerId, String[] packages, long timeLimitMs, PendingIntent callbackIntent, String callingPackage) {
            if (!hasObserverPermission()) {
                throw new SecurityException("Caller doesn't have OBSERVE_APP_USAGE permission");
            }
            if (packages == null || packages.length == 0) {
                throw new IllegalArgumentException("Must specify at least one package");
            }
            if (callbackIntent == null) {
                throw new NullPointerException("callbackIntent can't be null");
            }
            int callingUid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(callingUid);
            long token = Binder.clearCallingIdentity();
            try {
                UsageStatsService.this.registerAppUsageObserver(callingUid, observerId, packages, timeLimitMs, callbackIntent, userId);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void unregisterAppUsageObserver(int observerId, String callingPackage) {
            if (!hasObserverPermission()) {
                throw new SecurityException("Caller doesn't have OBSERVE_APP_USAGE permission");
            }
            int callingUid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(callingUid);
            long token = Binder.clearCallingIdentity();
            try {
                UsageStatsService.this.unregisterAppUsageObserver(callingUid, observerId, userId);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void registerUsageSessionObserver(int sessionObserverId, String[] observed, long timeLimitMs, long sessionThresholdTimeMs, PendingIntent limitReachedCallbackIntent, PendingIntent sessionEndCallbackIntent, String callingPackage) {
            if (!hasObserverPermission()) {
                throw new SecurityException("Caller doesn't have OBSERVE_APP_USAGE permission");
            }
            if (observed == null || observed.length == 0) {
                throw new IllegalArgumentException("Must specify at least one observed entity");
            }
            if (limitReachedCallbackIntent == null) {
                throw new NullPointerException("limitReachedCallbackIntent can't be null");
            }
            int callingUid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(callingUid);
            long token = Binder.clearCallingIdentity();
            try {
                UsageStatsService.this.registerUsageSessionObserver(callingUid, sessionObserverId, observed, timeLimitMs, sessionThresholdTimeMs, limitReachedCallbackIntent, sessionEndCallbackIntent, userId);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void unregisterUsageSessionObserver(int sessionObserverId, String callingPackage) {
            if (!hasObserverPermission()) {
                throw new SecurityException("Caller doesn't have OBSERVE_APP_USAGE permission");
            }
            int callingUid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(callingUid);
            long token = Binder.clearCallingIdentity();
            try {
                UsageStatsService.this.unregisterUsageSessionObserver(callingUid, sessionObserverId, userId);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void registerAppUsageLimitObserver(int observerId, String[] packages, long timeLimitMs, long timeUsedMs, PendingIntent callbackIntent, String callingPackage) {
            int callingUid = Binder.getCallingUid();
            DevicePolicyManagerInternal dpmInternal = UsageStatsService.this.getDpmInternal();
            if (!hasPermissions(callingPackage, "android.permission.SUSPEND_APPS", "android.permission.OBSERVE_APP_USAGE") && (dpmInternal == null || !dpmInternal.isActiveSupervisionApp(callingUid))) {
                throw new SecurityException("Caller must be the active supervision app or it must have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions");
            }
            if (packages == null || packages.length == 0) {
                throw new IllegalArgumentException("Must specify at least one package");
            }
            if (callbackIntent == null && timeUsedMs < timeLimitMs) {
                throw new NullPointerException("callbackIntent can't be null");
            }
            int userId = UserHandle.getUserId(callingUid);
            long token = Binder.clearCallingIdentity();
            try {
                UsageStatsService.this.registerAppUsageLimitObserver(callingUid, observerId, packages, timeLimitMs, timeUsedMs, callbackIntent, userId);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void unregisterAppUsageLimitObserver(int observerId, String callingPackage) {
            int callingUid = Binder.getCallingUid();
            DevicePolicyManagerInternal dpmInternal = UsageStatsService.this.getDpmInternal();
            if (!hasPermissions(callingPackage, "android.permission.SUSPEND_APPS", "android.permission.OBSERVE_APP_USAGE") && (dpmInternal == null || !dpmInternal.isActiveSupervisionApp(callingUid))) {
                throw new SecurityException("Caller must be the active supervision app or it must have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions");
            }
            int userId = UserHandle.getUserId(callingUid);
            long token = Binder.clearCallingIdentity();
            try {
                UsageStatsService.this.unregisterAppUsageLimitObserver(callingUid, observerId, userId);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void reportUsageStart(IBinder activity, String token, String callingPackage) {
            reportPastUsageStart(activity, token, 0L, callingPackage);
        }

        public void reportPastUsageStart(IBinder activity, String token, long timeAgoMs, String callingPackage) {
            ArraySet<String> tokens;
            int callingUid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(callingUid);
            long binderToken = Binder.clearCallingIdentity();
            try {
                synchronized (UsageStatsService.this.mUsageReporters) {
                    tokens = UsageStatsService.this.mUsageReporters.get(activity.hashCode());
                    if (tokens == null) {
                        tokens = new ArraySet<>();
                        UsageStatsService.this.mUsageReporters.put(activity.hashCode(), tokens);
                    }
                }
                synchronized (tokens) {
                    if (!tokens.add(token)) {
                        throw new IllegalArgumentException(token + " for " + callingPackage + " is already reported as started for this activity");
                    }
                }
                UsageStatsService.this.mAppTimeLimit.noteUsageStart(UsageStatsService.this.buildFullToken(callingPackage, token), userId, timeAgoMs);
                Binder.restoreCallingIdentity(binderToken);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(binderToken);
                throw th;
            }
        }

        public void reportUsageStop(IBinder activity, String token, String callingPackage) {
            ArraySet<String> tokens;
            int callingUid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(callingUid);
            long binderToken = Binder.clearCallingIdentity();
            try {
                synchronized (UsageStatsService.this.mUsageReporters) {
                    tokens = UsageStatsService.this.mUsageReporters.get(activity.hashCode());
                    if (tokens == null) {
                        throw new IllegalArgumentException("Unknown reporter trying to stop token " + token + " for " + callingPackage);
                    }
                }
                synchronized (tokens) {
                    if (!tokens.remove(token)) {
                        throw new IllegalArgumentException(token + " for " + callingPackage + " is already reported as stopped for this activity");
                    }
                }
                UsageStatsService.this.mAppTimeLimit.noteUsageStop(UsageStatsService.this.buildFullToken(callingPackage, token), userId);
                Binder.restoreCallingIdentity(binderToken);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(binderToken);
                throw th;
            }
        }

        public int getUsageSource() {
            int i;
            if (hasObserverPermission()) {
                synchronized (UsageStatsService.this.mLock) {
                    i = UsageStatsService.this.mUsageSource;
                }
                return i;
            }
            throw new SecurityException("Caller doesn't have OBSERVE_APP_USAGE permission");
        }

        public void forceUsageSourceSettingRead() {
            UsageStatsService.this.readUsageSourceSetting();
        }
    }

    void registerAppUsageObserver(int callingUid, int observerId, String[] packages, long timeLimitMs, PendingIntent callbackIntent, int userId) throws Throwable {
        this.mAppTimeLimit.addAppUsageObserver(callingUid, observerId, packages, timeLimitMs, callbackIntent, userId);
    }

    void unregisterAppUsageObserver(int callingUid, int observerId, int userId) {
        this.mAppTimeLimit.removeAppUsageObserver(callingUid, observerId, userId);
    }

    void registerUsageSessionObserver(int callingUid, int observerId, String[] observed, long timeLimitMs, long sessionThresholdTime, PendingIntent limitReachedCallbackIntent, PendingIntent sessionEndCallbackIntent, int userId) throws Throwable {
        this.mAppTimeLimit.addUsageSessionObserver(callingUid, observerId, observed, timeLimitMs, sessionThresholdTime, limitReachedCallbackIntent, sessionEndCallbackIntent, userId);
    }

    void unregisterUsageSessionObserver(int callingUid, int sessionObserverId, int userId) {
        this.mAppTimeLimit.removeUsageSessionObserver(callingUid, sessionObserverId, userId);
    }

    void registerAppUsageLimitObserver(int callingUid, int observerId, String[] packages, long timeLimitMs, long timeUsedMs, PendingIntent callbackIntent, int userId) throws Throwable {
        this.mAppTimeLimit.addAppUsageLimitObserver(callingUid, observerId, packages, timeLimitMs, timeUsedMs, callbackIntent, userId);
    }

    void unregisterAppUsageLimitObserver(int callingUid, int observerId, int userId) {
        this.mAppTimeLimit.removeAppUsageLimitObserver(callingUid, observerId, userId);
    }

    private final class LocalService extends UsageStatsManagerInternal {
        private LocalService() {
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void reportEvent(ComponentName component, int userId, int eventType, int instanceId, ComponentName taskRoot) {
            if (component == null) {
                Slog.w(UsageStatsService.TAG, "Event reported without a component name");
                return;
            }
            UsageEvents.Event event = new UsageEvents.Event(eventType, SystemClock.elapsedRealtime());
            event.mPackage = component.getPackageName();
            event.mClass = component.getClassName();
            event.mInstanceId = instanceId;
            if (taskRoot == null) {
                event.mTaskRootPackage = null;
                event.mTaskRootClass = null;
            } else {
                event.mTaskRootPackage = taskRoot.getPackageName();
                event.mTaskRootClass = taskRoot.getClassName();
            }
            UsageStatsService.this.reportEventOrAddToQueue(userId, event);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void reportEvent(String packageName, int userId, int eventType) {
            if (packageName == null) {
                Slog.w(UsageStatsService.TAG, "Event reported without a package name, eventType:" + eventType);
                return;
            }
            UsageEvents.Event event = new UsageEvents.Event(eventType, SystemClock.elapsedRealtime());
            event.mPackage = packageName;
            UsageStatsService.this.reportEventOrAddToQueue(userId, event);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void reportConfigurationChange(Configuration config, int userId) {
            if (config == null) {
                Slog.w(UsageStatsService.TAG, "Configuration event reported with a null config");
                return;
            }
            UsageEvents.Event event = new UsageEvents.Event(5, SystemClock.elapsedRealtime());
            event.mPackage = PackageManagerService.PLATFORM_PACKAGE_NAME;
            event.mConfiguration = new Configuration(config);
            UsageStatsService.this.reportEventOrAddToQueue(userId, event);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void reportInterruptiveNotification(String packageName, String channelId, int userId) {
            if (packageName == null || channelId == null) {
                Slog.w(UsageStatsService.TAG, "Event reported without a package name or a channel ID");
                return;
            }
            UsageEvents.Event event = new UsageEvents.Event(12, SystemClock.elapsedRealtime());
            event.mPackage = packageName.intern();
            event.mNotificationChannelId = channelId.intern();
            UsageStatsService.this.reportEventOrAddToQueue(userId, event);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void reportShortcutUsage(String packageName, String shortcutId, int userId) {
            if (packageName == null || shortcutId == null) {
                Slog.w(UsageStatsService.TAG, "Event reported without a package name or a shortcut ID");
                return;
            }
            UsageEvents.Event event = new UsageEvents.Event(8, SystemClock.elapsedRealtime());
            event.mPackage = packageName.intern();
            event.mShortcutId = shortcutId.intern();
            UsageStatsService.this.reportEventOrAddToQueue(userId, event);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void reportLocusUpdate(ComponentName activity, int userId, LocusId locusId, IBinder appToken) {
            UsageEvents.Event event = new UsageEvents.Event(30, SystemClock.elapsedRealtime());
            event.mLocusId = locusId.getId();
            event.mPackage = activity.getPackageName();
            event.mClass = activity.getClassName();
            event.mInstanceId = appToken.hashCode();
            UsageStatsService.this.reportEventOrAddToQueue(userId, event);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void reportContentProviderUsage(String name, String packageName, int userId) {
            UsageStatsService.this.mAppStandby.postReportContentProviderUsage(name, packageName, userId);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public boolean isAppIdle(String packageName, int uidForAppId, int userId) {
            return UsageStatsService.this.mAppStandby.isAppIdleFiltered(packageName, uidForAppId, userId, SystemClock.elapsedRealtime());
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public int getAppStandbyBucket(String packageName, int userId, long nowElapsed) {
            return UsageStatsService.this.mAppStandby.getAppStandbyBucket(packageName, userId, nowElapsed, false);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public int[] getIdleUidsForUser(int userId) {
            return UsageStatsService.this.mAppStandby.getIdleUidsForUser(userId);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void prepareShutdown() {
            UsageStatsService.this.shutdown();
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void prepareForPossibleShutdown() {
            UsageStatsService.this.prepareForPossibleShutdown();
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public byte[] getBackupPayload(int user, String key) {
            synchronized (UsageStatsService.this.mLock) {
                if (!UsageStatsService.this.mUserUnlockedStates.get(user)) {
                    Slog.w(UsageStatsService.TAG, "Failed to get backup payload for locked user " + user);
                    return null;
                }
                if (user != 0) {
                    return null;
                }
                UserUsageStatsService userStats = UsageStatsService.this.getUserUsageStatsServiceLocked(user);
                if (userStats == null) {
                    return null;
                }
                return userStats.getBackupPayload(key);
            }
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void applyRestoredPayload(int user, String key, byte[] payload) {
            synchronized (UsageStatsService.this.mLock) {
                if (!UsageStatsService.this.mUserUnlockedStates.get(user)) {
                    Slog.w(UsageStatsService.TAG, "Failed to apply restored payload for locked user " + user);
                    return;
                }
                if (user == 0) {
                    UserUsageStatsService userStats = UsageStatsService.this.getUserUsageStatsServiceLocked(user);
                    if (userStats == null) {
                    } else {
                        userStats.applyRestoredPayload(key, payload);
                    }
                }
            }
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public List<UsageStats> queryUsageStatsForUser(int userId, int intervalType, long beginTime, long endTime, boolean obfuscateInstantApps) {
            return UsageStatsService.this.queryUsageStats(userId, intervalType, beginTime, endTime, obfuscateInstantApps);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public UsageEvents queryEventsForUser(int userId, long beginTime, long endTime, int flags) {
            return UsageStatsService.this.queryEvents(userId, beginTime, endTime, flags);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void setLastJobRunTime(String packageName, int userId, long elapsedRealtime) {
            UsageStatsService.this.mAppStandby.setLastJobRunTime(packageName, userId, elapsedRealtime);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public long getTimeSinceLastJobRun(String packageName, int userId) {
            return UsageStatsService.this.mAppStandby.getTimeSinceLastJobRun(packageName, userId);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void reportAppJobState(String packageName, int userId, int numDeferredJobs, long timeSinceLastJobRun) {
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void onActiveAdminAdded(String packageName, int userId) {
            UsageStatsService.this.mAppStandby.addActiveDeviceAdmin(packageName, userId);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void setActiveAdminApps(Set<String> packageNames, int userId) {
            UsageStatsService.this.mAppStandby.setActiveAdminApps(packageNames, userId);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void setAdminProtectedPackages(Set<String> packageNames, int userId) {
            UsageStatsService.this.mAppStandby.setAdminProtectedPackages(packageNames, userId);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void onAdminDataAvailable() {
            UsageStatsService.this.mAppStandby.onAdminDataAvailable();
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void reportSyncScheduled(String packageName, int userId, boolean exempted) {
            UsageStatsService.this.mAppStandby.postReportSyncScheduled(packageName, userId, exempted);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public void reportExemptedSyncStart(String packageName, int userId) {
            UsageStatsService.this.mAppStandby.postReportExemptedSyncStart(packageName, userId);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public UsageStatsManagerInternal.AppUsageLimitData getAppUsageLimit(String packageName, UserHandle user) {
            return UsageStatsService.this.mAppTimeLimit.getAppUsageLimit(packageName, user);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public boolean pruneUninstalledPackagesData(int userId) {
            return UsageStatsService.this.pruneUninstalledPackagesData(userId);
        }

        @Override // android.app.usage.UsageStatsManagerInternal
        public boolean updatePackageMappingsData() {
            return UsageStatsService.this.updatePackageMappingsData();
        }
    }

    private class MyPackageMonitor extends PackageMonitor {
        private MyPackageMonitor() {
        }

        public void onPackageRemoved(String packageName, int uid) {
            int changingUserId = getChangingUserId();
            if (UsageStatsService.this.shouldDeleteObsoleteData(UserHandle.of(changingUserId))) {
                UsageStatsService.this.mHandler.obtainMessage(6, changingUserId, 0, packageName).sendToTarget();
            }
            super.onPackageRemoved(packageName, uid);
        }
    }
}

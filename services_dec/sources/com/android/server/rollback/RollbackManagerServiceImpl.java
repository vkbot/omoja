package com.android.server.rollback;

import android.app.AppOpsManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.ModuleInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackageParser;
import android.content.pm.ParceledListSlice;
import android.content.pm.UserInfo;
import android.content.pm.VersionedPackage;
import android.content.pm.parsing.ApkLiteParseUtils;
import android.content.pm.parsing.result.ParseResult;
import android.content.pm.parsing.result.ParseTypeImpl;
import android.content.rollback.IRollbackManager;
import android.content.rollback.RollbackInfo;
import android.os.Binder;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.ext.SdkExtensions;
import android.provider.DeviceConfig;
import android.util.IntArray;
import android.util.Log;
import android.util.LongArrayQueue;
import android.util.Slog;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.LocalServices;
import com.android.server.PackageWatchdog;
import com.android.server.SystemConfig;
import com.android.server.Watchdog;
import com.android.server.pm.ApexManager;
import com.android.server.pm.Installer;
import com.android.server.pm.Settings;
import java.io.File;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.security.SecureRandom;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class RollbackManagerServiceImpl extends IRollbackManager.Stub {
    private final AppDataRollbackHelper mAppDataRollbackHelper;
    private final Context mContext;
    private final Executor mExecutor;
    private final HandlerThread mHandlerThread;
    private final Installer mInstaller;
    private final RollbackPackageHealthObserver mPackageHealthObserver;
    private final RollbackStore mRollbackStore;
    private final List<Rollback> mRollbacks;
    private static final String TAG = "RollbackManager";
    private static final boolean LOCAL_LOGV = Log.isLoggable(TAG, 2);
    private static final long DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS = TimeUnit.DAYS.toMillis(14);
    private static final long HANDLER_THREAD_TIMEOUT_DURATION_MILLIS = TimeUnit.MINUTES.toMillis(10);
    private final Object mLock = new Object();
    private long mRollbackLifetimeDurationInMillis = DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS;
    private final Random mRandom = new SecureRandom();
    private final SparseBooleanArray mAllocatedRollbackIds = new SparseBooleanArray();
    private final IntArray mOrphanedApkSessionIds = new IntArray();
    private final Runnable mRunExpiration = new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$0HibeeAepjXymkK7UmEMFrp6FJs
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.runExpiration();
        }
    };
    private final LongArrayQueue mSleepDuration = new LongArrayQueue();
    private long mRelativeBootTime = calculateRelativeBootTime();

    RollbackManagerServiceImpl(Context context) {
        this.mContext = context;
        Installer installer = new Installer(context);
        this.mInstaller = installer;
        installer.onStart();
        this.mRollbackStore = new RollbackStore(new File(Environment.getDataDirectory(), "rollback"));
        this.mPackageHealthObserver = new RollbackPackageHealthObserver(this.mContext);
        this.mAppDataRollbackHelper = new AppDataRollbackHelper(this.mInstaller);
        synchronized (this.mLock) {
            this.mRollbacks = this.mRollbackStore.loadRollbacks();
            if (!context.getPackageManager().isDeviceUpgrading()) {
                for (Rollback rollback : this.mRollbacks) {
                    this.mAllocatedRollbackIds.put(rollback.info.getRollbackId(), true);
                }
            } else {
                for (Rollback rollback2 : this.mRollbacks) {
                    rollback2.delete(this.mAppDataRollbackHelper);
                }
                this.mRollbacks.clear();
            }
        }
        HandlerThread handlerThread = new HandlerThread("RollbackManagerServiceHandler");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        Watchdog.getInstance().addThread(getHandler(), HANDLER_THREAD_TIMEOUT_DURATION_MILLIS);
        this.mExecutor = new HandlerExecutor(getHandler());
        for (UserInfo userInfo : UserManager.get(this.mContext).getUsers(true)) {
            registerUserCallbacks(userInfo.getUserHandle());
        }
        IntentFilter enableRollbackFilter = new IntentFilter();
        enableRollbackFilter.addAction("android.intent.action.PACKAGE_ENABLE_ROLLBACK");
        try {
            enableRollbackFilter.addDataType("application/vnd.android.package-archive");
        } catch (IntentFilter.MalformedMimeTypeException e) {
            Slog.e(TAG, "addDataType", e);
        }
        this.mContext.registerReceiver(new AnonymousClass1(), enableRollbackFilter, null, getHandler());
        IntentFilter enableRollbackTimedOutFilter = new IntentFilter();
        enableRollbackTimedOutFilter.addAction("android.intent.action.CANCEL_ENABLE_ROLLBACK");
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.rollback.RollbackManagerServiceImpl.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.CANCEL_ENABLE_ROLLBACK".equals(intent.getAction())) {
                    int sessionId = intent.getIntExtra(PackageManagerInternal.EXTRA_ENABLE_ROLLBACK_SESSION_ID, -1);
                    if (RollbackManagerServiceImpl.LOCAL_LOGV) {
                        Slog.v(RollbackManagerServiceImpl.TAG, "broadcast=ACTION_CANCEL_ENABLE_ROLLBACK id=" + sessionId);
                    }
                    synchronized (RollbackManagerServiceImpl.this.mLock) {
                        Rollback rollback3 = RollbackManagerServiceImpl.this.getRollbackForSessionLocked(sessionId);
                        if (rollback3 != null && rollback3.isEnabling()) {
                            RollbackManagerServiceImpl.this.mRollbacks.remove(rollback3);
                            rollback3.delete(RollbackManagerServiceImpl.this.mAppDataRollbackHelper);
                        }
                    }
                }
            }
        }, enableRollbackTimedOutFilter, null, getHandler());
        IntentFilter userAddedIntentFilter = new IntentFilter("android.intent.action.USER_ADDED");
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.rollback.RollbackManagerServiceImpl.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                int newUserId;
                if ("android.intent.action.USER_ADDED".equals(intent.getAction()) && (newUserId = intent.getIntExtra("android.intent.extra.user_handle", -1)) != -1) {
                    RollbackManagerServiceImpl.this.registerUserCallbacks(UserHandle.of(newUserId));
                }
            }
        }, userAddedIntentFilter, null, getHandler());
        registerTimeChangeReceiver();
    }

    /* JADX INFO: renamed from: com.android.server.rollback.RollbackManagerServiceImpl$1, reason: invalid class name */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.PACKAGE_ENABLE_ROLLBACK".equals(intent.getAction())) {
                final int token = intent.getIntExtra(PackageManagerInternal.EXTRA_ENABLE_ROLLBACK_TOKEN, -1);
                final int sessionId = intent.getIntExtra(PackageManagerInternal.EXTRA_ENABLE_ROLLBACK_SESSION_ID, -1);
                RollbackManagerServiceImpl.this.queueSleepIfNeeded();
                RollbackManagerServiceImpl.this.getHandler().post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$1$whIhaWpnqJBe6ocQeiVgI5ygyCA
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onReceive$0$RollbackManagerServiceImpl$1(sessionId, token);
                    }
                });
                abortBroadcast();
            }
        }

        public /* synthetic */ void lambda$onReceive$0$RollbackManagerServiceImpl$1(int sessionId, int token) {
            boolean success = RollbackManagerServiceImpl.this.enableRollback(sessionId);
            int ret = 1;
            if (!success) {
                ret = -1;
            }
            PackageManagerInternal pm = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            pm.setEnableRollbackCode(token, ret);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerUserCallbacks(UserHandle user) {
        Context context = getContextAsUser(user);
        if (context == null) {
            Slog.e(TAG, "Unable to register user callbacks for user " + user);
            return;
        }
        context.getPackageManager().getPackageInstaller().registerSessionCallback(new SessionCallback(this, null), getHandler());
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_REPLACED");
        filter.addAction("android.intent.action.PACKAGE_FULLY_REMOVED");
        filter.addDataScheme(Settings.ATTR_PACKAGE);
        context.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.rollback.RollbackManagerServiceImpl.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if ("android.intent.action.PACKAGE_REPLACED".equals(action)) {
                    String packageName = intent.getData().getSchemeSpecificPart();
                    if (RollbackManagerServiceImpl.LOCAL_LOGV) {
                        Slog.v(RollbackManagerServiceImpl.TAG, "broadcast=ACTION_PACKAGE_REPLACED pkg=" + packageName);
                    }
                    RollbackManagerServiceImpl.this.onPackageReplaced(packageName);
                }
                if ("android.intent.action.PACKAGE_FULLY_REMOVED".equals(action)) {
                    String packageName2 = intent.getData().getSchemeSpecificPart();
                    Slog.i(RollbackManagerServiceImpl.TAG, "broadcast=ACTION_PACKAGE_FULLY_REMOVED pkg=" + packageName2);
                    RollbackManagerServiceImpl.this.onPackageFullyRemoved(packageName2);
                }
            }
        }, filter, null, getHandler());
    }

    public ParceledListSlice getAvailableRollbacks() {
        ParceledListSlice parceledListSlice;
        enforceManageRollbacks("getAvailableRollbacks");
        synchronized (this.mLock) {
            List<RollbackInfo> rollbacks = new ArrayList<>();
            for (int i = 0; i < this.mRollbacks.size(); i++) {
                Rollback rollback = this.mRollbacks.get(i);
                if (rollback.isAvailable()) {
                    rollbacks.add(rollback.info);
                }
            }
            parceledListSlice = new ParceledListSlice(rollbacks);
        }
        return parceledListSlice;
    }

    public ParceledListSlice<RollbackInfo> getRecentlyCommittedRollbacks() {
        ParceledListSlice<RollbackInfo> parceledListSlice;
        enforceManageRollbacks("getRecentlyCommittedRollbacks");
        synchronized (this.mLock) {
            List<RollbackInfo> rollbacks = new ArrayList<>();
            for (int i = 0; i < this.mRollbacks.size(); i++) {
                Rollback rollback = this.mRollbacks.get(i);
                if (rollback.isCommitted()) {
                    rollbacks.add(rollback.info);
                }
            }
            parceledListSlice = new ParceledListSlice<>(rollbacks);
        }
        return parceledListSlice;
    }

    public void commitRollback(final int rollbackId, final ParceledListSlice causePackages, final String callerPackageName, final IntentSender statusReceiver) {
        enforceManageRollbacks("commitRollback");
        int callingUid = Binder.getCallingUid();
        AppOpsManager appOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        appOps.checkPackage(callingUid, callerPackageName);
        getHandler().post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$commitRollback$0$RollbackManagerServiceImpl(rollbackId, causePackages, callerPackageName, statusReceiver);
            }
        });
    }

    public /* synthetic */ void lambda$commitRollback$0$RollbackManagerServiceImpl(int rollbackId, ParceledListSlice causePackages, String callerPackageName, IntentSender statusReceiver) {
        commitRollbackInternal(rollbackId, causePackages.getList(), callerPackageName, statusReceiver);
    }

    private void registerTimeChangeReceiver() {
        BroadcastReceiver timeChangeIntentReceiver = new BroadcastReceiver() { // from class: com.android.server.rollback.RollbackManagerServiceImpl.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                long oldRelativeBootTime = RollbackManagerServiceImpl.this.mRelativeBootTime;
                RollbackManagerServiceImpl.this.mRelativeBootTime = RollbackManagerServiceImpl.calculateRelativeBootTime();
                long timeDifference = RollbackManagerServiceImpl.this.mRelativeBootTime - oldRelativeBootTime;
                synchronized (RollbackManagerServiceImpl.this.mLock) {
                    for (Rollback rollback : RollbackManagerServiceImpl.this.mRollbacks) {
                        rollback.setTimestamp(rollback.getTimestamp().plusMillis(timeDifference));
                    }
                }
            }
        };
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.TIME_SET");
        this.mContext.registerReceiver(timeChangeIntentReceiver, filter, null, getHandler());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long calculateRelativeBootTime() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    private void commitRollbackInternal(int rollbackId, List<VersionedPackage> causePackages, String callerPackageName, IntentSender statusReceiver) {
        Slog.i(TAG, "commitRollback id=" + rollbackId + " caller=" + callerPackageName);
        Rollback rollback = getRollbackForId(rollbackId);
        if (rollback == null) {
            sendFailure(this.mContext, statusReceiver, 2, "Rollback unavailable");
        } else {
            rollback.commit(this.mContext, causePackages, callerPackageName, statusReceiver);
        }
    }

    public void reloadPersistedData() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.TEST_MANAGE_ROLLBACKS", "reloadPersistedData");
        final CountDownLatch latch = new CountDownLatch(1);
        getHandler().post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$K_I_qP9ed2R4xbW7mnGjXH6B7Yc
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$reloadPersistedData$1$RollbackManagerServiceImpl(latch);
            }
        });
        try {
            latch.await();
        } catch (InterruptedException e) {
            throw new IllegalStateException("RollbackManagerHandlerThread interrupted");
        }
    }

    public /* synthetic */ void lambda$reloadPersistedData$1$RollbackManagerServiceImpl(CountDownLatch latch) {
        synchronized (this.mLock) {
            this.mRollbacks.clear();
            this.mRollbacks.addAll(this.mRollbackStore.loadRollbacks());
        }
        latch.countDown();
    }

    public void expireRollbackForPackage(String packageName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.TEST_MANAGE_ROLLBACKS", "expireRollbackForPackage");
        synchronized (this.mLock) {
            Iterator<Rollback> iter = this.mRollbacks.iterator();
            while (iter.hasNext()) {
                Rollback rollback = iter.next();
                if (rollback.includesPackage(packageName)) {
                    iter.remove();
                    rollback.delete(this.mAppDataRollbackHelper);
                }
            }
        }
    }

    public void blockRollbackManager(final long millis) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.TEST_MANAGE_ROLLBACKS", "blockRollbackManager");
        getHandler().post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$Oa5w5-KGpmVbVAVYjUwNItCBRqg
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$blockRollbackManager$2$RollbackManagerServiceImpl(millis);
            }
        });
    }

    public /* synthetic */ void lambda$blockRollbackManager$2$RollbackManagerServiceImpl(long millis) {
        this.mSleepDuration.addLast(millis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queueSleepIfNeeded() {
        if (this.mSleepDuration.size() == 0) {
            return;
        }
        final long millis = this.mSleepDuration.removeFirst();
        if (millis <= 0) {
            return;
        }
        getHandler().post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$mLT_D8xDNyND2xOtKDtfeJiTkqI
            @Override // java.lang.Runnable
            public final void run() {
                RollbackManagerServiceImpl.lambda$queueSleepIfNeeded$3(millis);
            }
        });
    }

    static /* synthetic */ void lambda$queueSleepIfNeeded$3(long millis) {
        try {
            Thread.sleep(millis);
        } catch (InterruptedException e) {
            throw new IllegalStateException("RollbackManagerHandlerThread interrupted");
        }
    }

    void onUnlockUser(final int userId) {
        if (LOCAL_LOGV) {
            Slog.v(TAG, "onUnlockUser id=" + userId);
        }
        final CountDownLatch latch = new CountDownLatch(1);
        getHandler().post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$Be1hJgd8PbSLFX_uKif2yCGhtKo
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onUnlockUser$4$RollbackManagerServiceImpl(userId, latch);
            }
        });
        try {
            latch.await();
        } catch (InterruptedException e) {
            throw new IllegalStateException("RollbackManagerHandlerThread interrupted");
        }
    }

    public /* synthetic */ void lambda$onUnlockUser$4$RollbackManagerServiceImpl(int userId, CountDownLatch latch) {
        List<Rollback> rollbacks;
        synchronized (this.mLock) {
            rollbacks = new ArrayList<>(this.mRollbacks);
        }
        for (int i = 0; i < rollbacks.size(); i++) {
            Rollback rollback = rollbacks.get(i);
            rollback.commitPendingBackupAndRestoreForUser(userId, this.mAppDataRollbackHelper);
        }
        latch.countDown();
        destroyCeSnapshotsForExpiredRollbacks(userId);
    }

    private void destroyCeSnapshotsForExpiredRollbacks(int userId) {
        int[] rollbackIds = new int[this.mRollbacks.size()];
        for (int i = 0; i < rollbackIds.length; i++) {
            rollbackIds[i] = this.mRollbacks.get(i).info.getRollbackId();
        }
        ApexManager.getInstance().destroyCeSnapshotsNotSpecified(userId, rollbackIds);
        try {
            this.mInstaller.destroyCeSnapshotsNotSpecified(userId, rollbackIds);
        } catch (Installer.InstallerException ie) {
            Slog.e(TAG, "Failed to delete snapshots for user: " + userId, ie);
        }
    }

    private void updateRollbackLifetimeDurationInMillis() {
        long j = DeviceConfig.getLong("rollback_boot", "rollback_lifetime_in_millis", DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS);
        this.mRollbackLifetimeDurationInMillis = j;
        if (j < 0) {
            this.mRollbackLifetimeDurationInMillis = DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS;
        }
        Slog.d(TAG, "mRollbackLifetimeDurationInMillis=" + this.mRollbackLifetimeDurationInMillis);
        runExpiration();
    }

    void onBootCompleted() {
        DeviceConfig.addOnPropertiesChangedListener("rollback_boot", this.mExecutor, new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$UZ6heBvW792l5X1X86VJbao61T4
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                this.f$0.lambda$onBootCompleted$5$RollbackManagerServiceImpl(properties);
            }
        });
        getHandler().post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$5VimxC3UlEV_IzyoBdYlrATzYd8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onBootCompleted$6$RollbackManagerServiceImpl();
            }
        });
    }

    public /* synthetic */ void lambda$onBootCompleted$5$RollbackManagerServiceImpl(DeviceConfig.Properties properties) {
        updateRollbackLifetimeDurationInMillis();
    }

    public /* synthetic */ void lambda$onBootCompleted$6$RollbackManagerServiceImpl() {
        updateRollbackLifetimeDurationInMillis();
        runExpiration();
        List<Rollback> enabling = new ArrayList<>();
        List<Rollback> restoreInProgress = new ArrayList<>();
        Set<String> apexPackageNames = new HashSet<>();
        synchronized (this.mLock) {
            Iterator<Rollback> iter = this.mRollbacks.iterator();
            while (iter.hasNext()) {
                Rollback rollback = iter.next();
                if (rollback.isStaged()) {
                    PackageInstaller.SessionInfo session = this.mContext.getPackageManager().getPackageInstaller().getSessionInfo(rollback.getStagedSessionId());
                    if (session == null || session.isStagedSessionFailed()) {
                        if (rollback.isEnabling()) {
                            iter.remove();
                            rollback.delete(this.mAppDataRollbackHelper);
                        }
                    } else {
                        if (session.isStagedSessionApplied()) {
                            if (rollback.isEnabling()) {
                                enabling.add(rollback);
                            } else if (rollback.isRestoreUserDataInProgress()) {
                                restoreInProgress.add(rollback);
                            }
                        }
                        apexPackageNames.addAll(rollback.getApexPackageNames());
                    }
                }
            }
        }
        for (Rollback rollback2 : enabling) {
            makeRollbackAvailable(rollback2);
        }
        for (Rollback rollback3 : restoreInProgress) {
            rollback3.setRestoreUserDataInProgress(false);
        }
        for (String apexPackageName : apexPackageNames) {
            onPackageReplaced(apexPackageName);
        }
        synchronized (this.mLock) {
            this.mOrphanedApkSessionIds.clear();
        }
        this.mPackageHealthObserver.onBootCompletedAsync();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPackageReplaced(String packageName) {
        long installedVersion = getInstalledPackageVersion(packageName);
        synchronized (this.mLock) {
            Iterator<Rollback> iter = this.mRollbacks.iterator();
            while (iter.hasNext()) {
                Rollback rollback = iter.next();
                if ((rollback.isEnabling() || rollback.isAvailable()) && rollback.includesPackageWithDifferentVersion(packageName, installedVersion)) {
                    iter.remove();
                    rollback.delete(this.mAppDataRollbackHelper);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPackageFullyRemoved(String packageName) {
        expireRollbackForPackage(packageName);
    }

    static void sendFailure(Context context, IntentSender statusReceiver, int status, String message) {
        Slog.e(TAG, message);
        try {
            Intent fillIn = new Intent();
            fillIn.putExtra("android.content.rollback.extra.STATUS", status);
            fillIn.putExtra("android.content.rollback.extra.STATUS_MESSAGE", message);
            statusReceiver.sendIntent(context, 0, fillIn, null, null);
        } catch (IntentSender.SendIntentException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runExpiration() {
        getHandler().removeCallbacks(this.mRunExpiration);
        Instant now = Instant.now();
        Instant oldest = null;
        synchronized (this.mLock) {
            Iterator<Rollback> iter = this.mRollbacks.iterator();
            while (iter.hasNext()) {
                Rollback rollback = iter.next();
                if (rollback.isAvailable()) {
                    Instant rollbackTimestamp = rollback.getTimestamp();
                    if (!now.isBefore(rollbackTimestamp.plusMillis(this.mRollbackLifetimeDurationInMillis))) {
                        Slog.i(TAG, "runExpiration id=" + rollback.info.getRollbackId());
                        iter.remove();
                        rollback.delete(this.mAppDataRollbackHelper);
                    } else if (oldest == null || oldest.isAfter(rollbackTimestamp)) {
                        oldest = rollbackTimestamp;
                    }
                }
            }
        }
        if (oldest != null) {
            long delay = now.until(oldest.plusMillis(this.mRollbackLifetimeDurationInMillis), ChronoUnit.MILLIS);
            getHandler().postDelayed(this.mRunExpiration, delay);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Handler getHandler() {
        return this.mHandlerThread.getThreadHandler();
    }

    private Context getContextAsUser(UserHandle user) {
        try {
            return this.mContext.createPackageContextAsUser(this.mContext.getPackageName(), 0, user);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean enableRollback(int sessionId) {
        Rollback newRollback;
        if (LOCAL_LOGV) {
            Slog.v(TAG, "enableRollback sessionId=" + sessionId);
        }
        PackageInstaller installer = this.mContext.getPackageManager().getPackageInstaller();
        PackageInstaller.SessionInfo packageSession = installer.getSessionInfo(sessionId);
        if (packageSession == null) {
            Slog.e(TAG, "Unable to find session for enabled rollback.");
            return false;
        }
        PackageInstaller.SessionInfo parentSession = packageSession.hasParentSessionId() ? installer.getSessionInfo(packageSession.getParentSessionId()) : packageSession;
        if (parentSession == null) {
            Slog.e(TAG, "Unable to find parent session for enabled rollback.");
            return false;
        }
        synchronized (this.mLock) {
            for (int i = 0; i < this.mRollbacks.size(); i++) {
                Rollback rollback = this.mRollbacks.get(i);
                if (rollback.getApkSessionId() == parentSession.getSessionId()) {
                    return true;
                }
            }
            synchronized (this.mLock) {
                if (this.mOrphanedApkSessionIds.indexOf(parentSession.getSessionId()) != -1) {
                    Slog.w(TAG, "Not enabling rollback for apk as no matching staged session rollback exists");
                    return false;
                }
                synchronized (this.mLock) {
                    newRollback = getRollbackForSessionLocked(packageSession.getSessionId());
                    if (newRollback == null) {
                        newRollback = createNewRollbackLocked(parentSession);
                    }
                }
                return enableRollbackForPackageSession(newRollback, packageSession);
            }
        }
    }

    private boolean enableRollbackForPackageSession(Rollback rollback, PackageInstaller.SessionInfo session) {
        RollbackManagerServiceImpl rollbackManagerServiceImpl = this;
        int installFlags = session.installFlags;
        if ((262144 & installFlags) == 0) {
            Slog.e(TAG, "Rollback is not enabled.");
            return false;
        }
        if ((installFlags & 2048) != 0) {
            Slog.e(TAG, "Rollbacks not supported for instant app install");
            return false;
        }
        if (session.resolvedBaseCodePath == null) {
            Slog.e(TAG, "Session code path has not been resolved.");
            return false;
        }
        ParseTypeImpl input = ParseTypeImpl.forDefaultParsing();
        ParseResult<PackageParser.ApkLite> parseResult = ApkLiteParseUtils.parseApkLite(input.reset(), new File(session.resolvedBaseCodePath), 0);
        if (parseResult.isError()) {
            Slog.e(TAG, "Unable to parse new package: " + parseResult.getErrorMessage(), parseResult.getException());
            return false;
        }
        PackageParser.ApkLite newPackage = (PackageParser.ApkLite) parseResult.getResult();
        String packageName = newPackage.packageName;
        Slog.i(TAG, "Enabling rollback for install of " + packageName + ", session:" + session.sessionId);
        String installerPackageName = session.getInstallerPackageName();
        if (!rollbackManagerServiceImpl.enableRollbackAllowed(installerPackageName, packageName)) {
            Slog.e(TAG, "Installer " + installerPackageName + " is not allowed to enable rollback on " + packageName);
            return false;
        }
        boolean isApex = (131072 & installFlags) != 0;
        try {
            PackageInfo pkgInfo = rollbackManagerServiceImpl.getPackageInfo(packageName);
            if (isApex) {
                PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                List<String> apksInApex = pmi.getApksInApex(packageName);
                Iterator<String> it = apksInApex.iterator();
                while (it.hasNext()) {
                    String apkInApex = it.next();
                    try {
                        PackageInfo apkPkgInfo = rollbackManagerServiceImpl.getPackageInfo(apkInApex);
                        ParseTypeImpl input2 = input;
                        Iterator<String> it2 = it;
                        if (!rollback.enableForPackageInApex(apkInApex, apkPkgInfo.getLongVersionCode(), session.rollbackDataPolicy)) {
                            return false;
                        }
                        rollbackManagerServiceImpl = this;
                        it = it2;
                        input = input2;
                    } catch (PackageManager.NameNotFoundException e) {
                        Slog.e(TAG, apkInApex + " is not installed");
                        return false;
                    }
                }
            }
            ApplicationInfo appInfo = pkgInfo.applicationInfo;
            return rollback.enableForPackage(packageName, newPackage.versionCode, pkgInfo.getLongVersionCode(), isApex, appInfo.sourceDir, appInfo.splitSourceDirs, session.rollbackDataPolicy);
        } catch (PackageManager.NameNotFoundException e2) {
            Slog.e(TAG, packageName + " is not installed");
            return false;
        }
    }

    public void snapshotAndRestoreUserData(final String packageName, final int[] userIds, final int appId, long ceDataInode, final String seInfo, final int token) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("snapshotAndRestoreUserData may only be called by the system.");
        }
        getHandler().post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$snapshotAndRestoreUserData$7$RollbackManagerServiceImpl(packageName, userIds, appId, seInfo, token);
            }
        });
    }

    public /* synthetic */ void lambda$snapshotAndRestoreUserData$7$RollbackManagerServiceImpl(String packageName, int[] userIds, int appId, String seInfo, int token) {
        snapshotUserDataInternal(packageName, userIds);
        restoreUserDataInternal(packageName, userIds, appId, seInfo);
        if (token > 0) {
            PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            pmi.finishPackageInstall(token, false);
        }
    }

    private void snapshotUserDataInternal(String packageName, int[] userIds) {
        if (LOCAL_LOGV) {
            Slog.v(TAG, "snapshotUserData pkg=" + packageName + " users=" + Arrays.toString(userIds));
        }
        synchronized (this.mLock) {
            for (int i = 0; i < this.mRollbacks.size(); i++) {
                Rollback rollback = this.mRollbacks.get(i);
                rollback.snapshotUserData(packageName, userIds, this.mAppDataRollbackHelper);
            }
        }
    }

    private void restoreUserDataInternal(String packageName, int[] userIds, int appId, String seInfo) {
        if (LOCAL_LOGV) {
            Slog.v(TAG, "restoreUserData pkg=" + packageName + " users=" + Arrays.toString(userIds));
        }
        synchronized (this.mLock) {
            for (int i = 0; i < this.mRollbacks.size(); i++) {
                Rollback rollback = this.mRollbacks.get(i);
                if (rollback.restoreUserDataForPackageIfInProgress(packageName, userIds, appId, seInfo, this.mAppDataRollbackHelper)) {
                    return;
                }
            }
        }
    }

    public int notifyStagedSession(final int sessionId) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("notifyStagedSession may only be called by the system.");
        }
        final LinkedBlockingQueue<Integer> result = new LinkedBlockingQueue<>();
        getHandler().post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$nKgo614yKB7ibKKY1a7J5CTtlEU
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyStagedSession$8$RollbackManagerServiceImpl(sessionId, result);
            }
        });
        try {
            return result.take().intValue();
        } catch (InterruptedException e) {
            Slog.e(TAG, "Interrupted while waiting for notifyStagedSession response");
            return -1;
        }
    }

    public /* synthetic */ void lambda$notifyStagedSession$8$RollbackManagerServiceImpl(int sessionId, LinkedBlockingQueue result) {
        Rollback newRollback;
        PackageInstaller installer = this.mContext.getPackageManager().getPackageInstaller();
        PackageInstaller.SessionInfo session = installer.getSessionInfo(sessionId);
        if (session == null) {
            Slog.e(TAG, "No matching install session for: " + sessionId);
            result.offer(-1);
            return;
        }
        synchronized (this.mLock) {
            newRollback = createNewRollbackLocked(session);
        }
        if (!session.isMultiPackage()) {
            if (!enableRollbackForPackageSession(newRollback, session)) {
                Slog.e(TAG, "Unable to enable rollback for session: " + sessionId);
            }
        } else {
            for (int childSessionId : session.getChildSessionIds()) {
                PackageInstaller.SessionInfo childSession = installer.getSessionInfo(childSessionId);
                if (childSession == null) {
                    Slog.e(TAG, "No matching child install session for: " + childSessionId);
                    break;
                }
                if (!enableRollbackForPackageSession(newRollback, childSession)) {
                    Slog.e(TAG, "Unable to enable rollback for session: " + sessionId);
                    break;
                }
            }
        }
        if (!completeEnableRollback(newRollback)) {
            result.offer(-1);
        } else {
            result.offer(Integer.valueOf(newRollback.info.getRollbackId()));
        }
    }

    public void notifyStagedApkSession(final int originalSessionId, final int apkSessionId) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("notifyStagedApkSession may only be called by the system.");
        }
        getHandler().post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackManagerServiceImpl$dvtbDBER69x5DgQh73U5EpSi4qk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyStagedApkSession$9$RollbackManagerServiceImpl(originalSessionId, apkSessionId);
            }
        });
    }

    public /* synthetic */ void lambda$notifyStagedApkSession$9$RollbackManagerServiceImpl(int originalSessionId, int apkSessionId) {
        Rollback rollback = null;
        synchronized (this.mLock) {
            for (int i = 0; i < this.mRollbacks.size(); i++) {
                Rollback candidate = this.mRollbacks.get(i);
                if (candidate.getStagedSessionId() == originalSessionId) {
                    rollback = candidate;
                    break;
                }
            }
            if (rollback == null) {
                Slog.e(TAG, "notifyStagedApkSession did not find rollback for session " + originalSessionId + ". Adding orphaned apk session " + apkSessionId);
                this.mOrphanedApkSessionIds.add(apkSessionId);
            }
        }
        if (rollback != null) {
            rollback.setApkSessionId(apkSessionId);
        }
    }

    private boolean enableRollbackAllowed(String installerPackageName, String packageName) {
        if (installerPackageName == null) {
            return false;
        }
        PackageManager pm = this.mContext.getPackageManager();
        boolean manageRollbacksGranted = pm.checkPermission("android.permission.MANAGE_ROLLBACKS", installerPackageName) == 0;
        boolean testManageRollbacksGranted = pm.checkPermission("android.permission.TEST_MANAGE_ROLLBACKS", installerPackageName) == 0;
        return (isRollbackWhitelisted(packageName) && manageRollbacksGranted) || testManageRollbacksGranted;
    }

    private boolean isRollbackWhitelisted(String packageName) {
        return SystemConfig.getInstance().getRollbackWhitelistedPackages().contains(packageName) || isModule(packageName);
    }

    private boolean isModule(String packageName) {
        PackageManager pm = this.mContext.getPackageManager();
        try {
            ModuleInfo moduleInfo = pm.getModuleInfo(packageName, 0);
            return moduleInfo != null;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    private long getInstalledPackageVersion(String packageName) {
        try {
            PackageInfo pkgInfo = getPackageInfo(packageName);
            return pkgInfo.getLongVersionCode();
        } catch (PackageManager.NameNotFoundException e) {
            return -1L;
        }
    }

    private PackageInfo getPackageInfo(String packageName) throws PackageManager.NameNotFoundException {
        PackageManager pm = this.mContext.getPackageManager();
        try {
            return pm.getPackageInfo(packageName, 4194304);
        } catch (PackageManager.NameNotFoundException e) {
            return pm.getPackageInfo(packageName, 1073741824);
        }
    }

    private class SessionCallback extends PackageInstaller.SessionCallback {
        private SessionCallback() {
        }

        /* synthetic */ SessionCallback(RollbackManagerServiceImpl x0, AnonymousClass1 x1) {
            this();
        }

        @Override // android.content.pm.PackageInstaller.SessionCallback
        public void onCreated(int sessionId) {
        }

        @Override // android.content.pm.PackageInstaller.SessionCallback
        public void onBadgingChanged(int sessionId) {
        }

        @Override // android.content.pm.PackageInstaller.SessionCallback
        public void onActiveChanged(int sessionId, boolean active) {
        }

        @Override // android.content.pm.PackageInstaller.SessionCallback
        public void onProgressChanged(int sessionId, float progress) {
        }

        @Override // android.content.pm.PackageInstaller.SessionCallback
        public void onFinished(int sessionId, boolean success) {
            Rollback rollback;
            if (RollbackManagerServiceImpl.LOCAL_LOGV) {
                Slog.v(RollbackManagerServiceImpl.TAG, "SessionCallback.onFinished id=" + sessionId + " success=" + success);
            }
            if (success) {
                synchronized (RollbackManagerServiceImpl.this.mLock) {
                    rollback = RollbackManagerServiceImpl.this.getRollbackForSessionLocked(sessionId);
                }
                if (rollback != null && !rollback.isStaged() && rollback.isEnabling() && rollback.notifySessionWithSuccess() && RollbackManagerServiceImpl.this.completeEnableRollback(rollback)) {
                    RollbackManagerServiceImpl.this.makeRollbackAvailable(rollback);
                    return;
                }
                return;
            }
            synchronized (RollbackManagerServiceImpl.this.mLock) {
                Rollback rollback2 = RollbackManagerServiceImpl.this.getRollbackForSessionLocked(sessionId);
                if (rollback2 != null && rollback2.isEnabling()) {
                    Slog.w(RollbackManagerServiceImpl.TAG, "Delete rollback id=" + rollback2.info.getRollbackId() + " for failed session id=" + sessionId);
                    RollbackManagerServiceImpl.this.mRollbacks.remove(rollback2);
                    rollback2.delete(RollbackManagerServiceImpl.this.mAppDataRollbackHelper);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean completeEnableRollback(Rollback rollback) {
        if (LOCAL_LOGV) {
            Slog.v(TAG, "completeEnableRollback id=" + rollback.info.getRollbackId());
        }
        if (!rollback.allPackagesEnabled()) {
            Slog.e(TAG, "Failed to enable rollback for all packages in session.");
            this.mRollbacks.remove(rollback);
            rollback.delete(this.mAppDataRollbackHelper);
            return false;
        }
        rollback.saveRollback();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void makeRollbackAvailable(Rollback rollback) {
        Slog.i(TAG, "makeRollbackAvailable id=" + rollback.info.getRollbackId());
        rollback.makeAvailable();
        this.mPackageHealthObserver.startObservingHealth(rollback.getPackageNames(), this.mRollbackLifetimeDurationInMillis);
        runExpiration();
    }

    private Rollback getRollbackForId(int rollbackId) {
        synchronized (this.mLock) {
            for (int i = 0; i < this.mRollbacks.size(); i++) {
                Rollback rollback = this.mRollbacks.get(i);
                if (rollback.info.getRollbackId() == rollbackId) {
                    return rollback;
                }
            }
            return null;
        }
    }

    private int allocateRollbackIdLocked() {
        int n = 0;
        while (true) {
            int rollbackId = this.mRandom.nextInt(2147483646) + 1;
            if (!this.mAllocatedRollbackIds.get(rollbackId, false)) {
                this.mAllocatedRollbackIds.put(rollbackId, true);
                return rollbackId;
            }
            int n2 = n + 1;
            if (n >= 32) {
                throw new IllegalStateException("Failed to allocate rollback ID");
            }
            n = n2;
        }
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            IndentingPrintWriter ipw = new IndentingPrintWriter(pw, "  ");
            synchronized (this.mLock) {
                for (Rollback rollback : this.mRollbacks) {
                    rollback.dump(ipw);
                }
                ipw.println();
                PackageWatchdog.getInstance(this.mContext).dump(ipw);
            }
        }
    }

    private void enforceManageRollbacks(String message) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MANAGE_ROLLBACKS") != 0 && this.mContext.checkCallingOrSelfPermission("android.permission.TEST_MANAGE_ROLLBACKS") != 0) {
            throw new SecurityException(message + " requires android.permission.MANAGE_ROLLBACKS or android.permission.TEST_MANAGE_ROLLBACKS");
        }
    }

    private Rollback createNewRollbackLocked(PackageInstaller.SessionInfo parentSession) {
        int userId;
        int[] packageSessionIds;
        Rollback rollback;
        int rollbackId = allocateRollbackIdLocked();
        if (parentSession.getUser() == UserHandle.ALL) {
            userId = 0;
        } else {
            userId = parentSession.getUser().getIdentifier();
        }
        String installerPackageName = parentSession.getInstallerPackageName();
        int parentSessionId = parentSession.getSessionId();
        if (LOCAL_LOGV) {
            Slog.v(TAG, "createNewRollback id=" + rollbackId + " user=" + userId + " installer=" + installerPackageName);
        }
        if (parentSession.isMultiPackage()) {
            packageSessionIds = parentSession.getChildSessionIds();
        } else {
            packageSessionIds = new int[]{parentSessionId};
        }
        if (parentSession.isStaged()) {
            rollback = this.mRollbackStore.createStagedRollback(rollbackId, parentSessionId, userId, installerPackageName, packageSessionIds, getExtensionVersions());
        } else {
            rollback = this.mRollbackStore.createNonStagedRollback(rollbackId, userId, installerPackageName, packageSessionIds, getExtensionVersions());
        }
        this.mRollbacks.add(rollback);
        return rollback;
    }

    private SparseIntArray getExtensionVersions() {
        int[] relevantSdkVersions = {30};
        SparseIntArray result = new SparseIntArray(relevantSdkVersions.length);
        for (int i = 0; i < relevantSdkVersions.length; i++) {
            result.put(relevantSdkVersions[i], SdkExtensions.getExtensionVersion(relevantSdkVersions[i]));
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rollback getRollbackForSessionLocked(int sessionId) {
        for (int i = 0; i < this.mRollbacks.size(); i++) {
            Rollback rollback = this.mRollbacks.get(i);
            if (rollback.getStagedSessionId() == sessionId || rollback.containsSessionId(sessionId)) {
                return rollback;
            }
        }
        return null;
    }
}

package com.android.server.usage;

import android.R;
import android.app.ActivityManager;
import android.app.AppGlobals;
import android.app.usage.AppStandbyInfo;
import android.app.usage.UsageEvents;
import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.CrossProfileAppsInternal;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ParceledListSlice;
import android.database.ContentObserver;
import android.hardware.display.DisplayManager;
import android.net.NetworkScoreManager;
import android.os.BatteryManager;
import android.os.Environment;
import android.os.Handler;
import android.os.IDeviceIdleController;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.telephony.TelephonyManager;
import android.util.ArraySet;
import android.util.KeyValueListParser;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TimeUtils;
import com.android.internal.app.IBatteryStats;
import com.android.internal.os.SomeArgs;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.ConcurrentUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.LocalServices;
import com.android.server.integrity.parser.RuleMetadataParser;
import com.android.server.job.JobPackageTracker;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.Settings;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.usb.descriptors.UsbTerminalTypes;
import java.io.File;
import java.io.PrintWriter;
import java.time.Duration;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes2.dex */
public class AppStandbyController implements AppStandbyInternal {
    static final boolean COMPRESS_TIME = false;
    static final boolean DEBUG = false;
    private static final long DEFAULT_PREDICTION_TIMEOUT = 43200000;
    private static final int HEADLESS_APP_CHECK_FLAGS = 786945;
    static final int MSG_CHECK_IDLE_STATES = 5;
    static final int MSG_CHECK_PACKAGE_IDLE_STATE = 11;
    static final int MSG_FORCE_IDLE_STATE = 4;
    static final int MSG_INFORM_LISTENERS = 3;
    static final int MSG_ONE_TIME_CHECK_IDLE_STATES = 10;
    static final int MSG_PAROLE_STATE_CHANGED = 9;
    static final int MSG_REPORT_CONTENT_PROVIDER_USAGE = 8;
    static final int MSG_REPORT_EXEMPTED_SYNC_START = 13;
    static final int MSG_REPORT_SYNC_SCHEDULED = 12;
    private static final long NETWORK_SCORER_CACHE_DURATION_MILLIS = 5000;
    private static final long ONE_DAY = 86400000;
    private static final long ONE_HOUR = 3600000;
    private static final long ONE_MINUTE = 60000;
    private static final String TAG = "AppStandbyController";
    private static final long WAIT_FOR_ADMIN_DATA_TIMEOUT_MS = 10000;
    private final SparseArray<Set<String>> mActiveAdminApps;
    private final CountDownLatch mAdminDataAvailableLatch;
    private final SparseArray<Set<String>> mAdminProtectedPackages;
    private boolean mAllowRestrictedBucket;
    private volatile boolean mAppIdleEnabled;
    private AppIdleHistory mAppIdleHistory;
    private final Object mAppIdleLock;
    long[] mAppStandbyElapsedThresholds;
    long[] mAppStandbyScreenThresholds;
    private AppWidgetManager mAppWidgetManager;
    private volatile String mCachedNetworkScorer;
    private volatile long mCachedNetworkScorerAtMillis;
    private List<String> mCarrierPrivilegedApps;
    long mCheckIdleIntervalMillis;
    private final Context mContext;
    private final DisplayManager.DisplayListener mDisplayListener;
    long mExemptedSyncScheduledDozeTimeoutMillis;
    long mExemptedSyncScheduledNonDozeTimeoutMillis;
    long mExemptedSyncStartTimeoutMillis;
    private final AppStandbyHandler mHandler;
    private boolean mHaveCarrierPrivilegedApps;
    private final ArraySet<String> mHeadlessSystemApps;
    long mInitialForegroundServiceStartTimeoutMillis;
    Injector mInjector;
    private boolean mIsCharging;
    boolean mLinkCrossProfileApps;
    long mNotificationSeenTimeoutMillis;
    private final ArrayList<AppStandbyInternal.AppIdleStateChangeListener> mPackageAccessListeners;
    private PackageManager mPackageManager;
    private boolean mPendingInitializeDefaults;
    private volatile boolean mPendingOneTimeCheckIdleStates;
    long mPredictionTimeoutMillis;
    long mStrongUsageTimeoutMillis;
    long mSyncAdapterTimeoutMillis;
    long mSystemInteractionTimeoutMillis;
    private boolean mSystemServicesReady;
    long mSystemUpdateUsageTimeoutMillis;
    long mUnexemptedSyncScheduledTimeoutMillis;
    private static final long[] SCREEN_TIME_THRESHOLDS = {0, 0, 3600000, SettingsObserver.DEFAULT_SYSTEM_UPDATE_TIMEOUT, 21600000};
    private static final long[] MINIMUM_SCREEN_TIME_THRESHOLDS = {0, 0, 0, 1800000, 3600000};
    private static final long[] ELAPSED_TIME_THRESHOLDS = {0, 43200000, 86400000, 172800000, UnixCalendar.MONTH_IN_MILLIS};
    private static final long[] MINIMUM_ELAPSED_TIME_THRESHOLDS = {0, 3600000, 3600000, SettingsObserver.DEFAULT_SYSTEM_UPDATE_TIMEOUT, 345600000};
    private static final int[] THRESHOLD_BUCKETS = {10, 20, 30, 40, 45};
    static final ArrayList<StandbyUpdateRecord> sStandbyUpdatePool = new ArrayList<>(4);

    static class Lock {
        Lock() {
        }
    }

    public static class StandbyUpdateRecord {
        int bucket;
        boolean isUserInteraction;
        String packageName;
        int reason;
        int userId;

        StandbyUpdateRecord(String pkgName, int userId, int bucket, int reason, boolean isInteraction) {
            this.packageName = pkgName;
            this.userId = userId;
            this.bucket = bucket;
            this.reason = reason;
            this.isUserInteraction = isInteraction;
        }

        public static StandbyUpdateRecord obtain(String pkgName, int userId, int bucket, int reason, boolean isInteraction) {
            synchronized (AppStandbyController.sStandbyUpdatePool) {
                int size = AppStandbyController.sStandbyUpdatePool.size();
                if (size < 1) {
                    return new StandbyUpdateRecord(pkgName, userId, bucket, reason, isInteraction);
                }
                StandbyUpdateRecord r = AppStandbyController.sStandbyUpdatePool.remove(size - 1);
                r.packageName = pkgName;
                r.userId = userId;
                r.bucket = bucket;
                r.reason = reason;
                r.isUserInteraction = isInteraction;
                return r;
            }
        }

        public void recycle() {
            synchronized (AppStandbyController.sStandbyUpdatePool) {
                AppStandbyController.sStandbyUpdatePool.add(this);
            }
        }
    }

    public AppStandbyController(Context context, Looper looper) {
        this(new Injector(context, looper));
    }

    AppStandbyController(Injector injector) {
        this.mAppIdleLock = new Lock();
        this.mPackageAccessListeners = new ArrayList<>();
        this.mActiveAdminApps = new SparseArray<>();
        this.mAdminProtectedPackages = new SparseArray<>();
        this.mHeadlessSystemApps = new ArraySet<>();
        this.mAdminDataAvailableLatch = new CountDownLatch(1);
        this.mCachedNetworkScorer = null;
        this.mCachedNetworkScorerAtMillis = 0L;
        this.mAppStandbyScreenThresholds = SCREEN_TIME_THRESHOLDS;
        this.mAppStandbyElapsedThresholds = ELAPSED_TIME_THRESHOLDS;
        this.mSystemServicesReady = false;
        this.mDisplayListener = new DisplayManager.DisplayListener() { // from class: com.android.server.usage.AppStandbyController.1
            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayAdded(int displayId) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int displayId) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int displayId) {
                if (displayId == 0) {
                    boolean displayOn = AppStandbyController.this.isDisplayOn();
                    synchronized (AppStandbyController.this.mAppIdleLock) {
                        AppStandbyController.this.mAppIdleHistory.updateDisplay(displayOn, AppStandbyController.this.mInjector.elapsedRealtime());
                    }
                }
            }
        };
        this.mInjector = injector;
        this.mContext = injector.getContext();
        this.mHandler = new AppStandbyHandler(this.mInjector.getLooper());
        this.mPackageManager = this.mContext.getPackageManager();
        DeviceStateReceiver deviceStateReceiver = new DeviceStateReceiver();
        IntentFilter deviceStates = new IntentFilter("android.os.action.CHARGING");
        deviceStates.addAction("android.os.action.DISCHARGING");
        deviceStates.addAction("android.os.action.POWER_SAVE_WHITELIST_CHANGED");
        this.mContext.registerReceiver(deviceStateReceiver, deviceStates);
        synchronized (this.mAppIdleLock) {
            this.mAppIdleHistory = new AppIdleHistory(this.mInjector.getDataSystemDirectory(), this.mInjector.elapsedRealtime());
        }
        IntentFilter packageFilter = new IntentFilter();
        packageFilter.addAction("android.intent.action.PACKAGE_ADDED");
        packageFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        packageFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        packageFilter.addDataScheme(Settings.ATTR_PACKAGE);
        this.mContext.registerReceiverAsUser(new PackageReceiver(), UserHandle.ALL, packageFilter, null, this.mHandler);
    }

    void setAppIdleEnabled(boolean enabled) {
        synchronized (this.mAppIdleLock) {
            if (this.mAppIdleEnabled != enabled) {
                boolean oldParoleState = isInParole();
                this.mAppIdleEnabled = enabled;
                if (isInParole() != oldParoleState) {
                    postParoleStateChanged();
                }
            }
        }
    }

    public boolean isAppIdleEnabled() {
        return this.mAppIdleEnabled;
    }

    public void onBootPhase(int phase) throws Throwable {
        boolean userFileExists;
        this.mInjector.onBootPhase(phase);
        if (phase == 500) {
            Slog.d(TAG, "Setting app idle enabled state");
            SettingsObserver settingsObserver = new SettingsObserver(this.mHandler);
            settingsObserver.registerObserver();
            settingsObserver.updateSettings();
            this.mAppWidgetManager = (AppWidgetManager) this.mContext.getSystemService(AppWidgetManager.class);
            this.mInjector.registerDisplayListener(this.mDisplayListener, this.mHandler);
            synchronized (this.mAppIdleLock) {
                this.mAppIdleHistory.updateDisplay(isDisplayOn(), this.mInjector.elapsedRealtime());
            }
            this.mSystemServicesReady = true;
            synchronized (this.mAppIdleLock) {
                userFileExists = this.mAppIdleHistory.userFileExists(0);
            }
            if (this.mPendingInitializeDefaults || !userFileExists) {
                initializeDefaultsForSystemApps(0);
            }
            if (this.mPendingOneTimeCheckIdleStates) {
                postOneTimeCheckIdleStates();
                return;
            }
            return;
        }
        if (phase == 1000) {
            setChargingState(this.mInjector.isCharging());
            this.mHandler.post(new Runnable() { // from class: com.android.server.usage.-$$Lambda$AppStandbyController$J3RrF9pXWs15TjJGaLdogSJkcZI
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updatePowerWhitelistCache();
                }
            });
            this.mHandler.post(new Runnable() { // from class: com.android.server.usage.-$$Lambda$AppStandbyController$eFYmNoFgBdX9ZGJEOAzlovFS3-c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.loadHeadlessSystemAppCache();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:? -> B:23:0x0065). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public void reportContentProviderUsage(java.lang.String r25, java.lang.String r26, int r27) throws java.lang.Throwable {
        /*
            r24 = this;
            r11 = r24
            r12 = r27
            boolean r0 = r11.mAppIdleEnabled
            if (r0 != 0) goto L9
            return
        L9:
            r13 = r25
            java.lang.String[] r14 = android.content.ContentResolver.getSyncAdapterPackagesForAuthorityAsUser(r13, r12)
            com.android.server.usage.AppStandbyController$Injector r0 = r11.mInjector
            long r15 = r0.elapsedRealtime()
            int r8 = r14.length
            r0 = 0
            r9 = r0
        L18:
            if (r9 >= r8) goto L94
            r6 = r14[r9]
            android.content.pm.PackageManager r0 = r11.mPackageManager     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L88
            r1 = 1048576(0x100000, float:1.469368E-39)
            android.content.pm.PackageInfo r0 = r0.getPackageInfoAsUser(r6, r1, r12)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L88
            r7 = r0
            if (r7 == 0) goto L7f
            android.content.pm.ApplicationInfo r0 = r7.applicationInfo     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L88
            if (r0 != 0) goto L34
            r17 = r6
            r21 = r7
            r22 = r8
            r23 = r9
            goto L87
        L34:
            r5 = r26
            boolean r0 = r6.equals(r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L88
            if (r0 != 0) goto L76
            java.util.List r10 = r11.getCrossProfileTargets(r6, r12)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L88
            java.lang.Object r4 = r11.mAppIdleLock     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L88
            monitor-enter(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L88
            r0 = 10
            r17 = 8
            long r2 = r11.mSyncAdapterTimeoutMillis     // Catch: java.lang.Throwable -> L67
            r1 = r24
            r18 = r2
            r2 = r6
            r3 = r27
            r20 = r4
            r4 = r0
            r5 = r17
            r17 = r6
            r21 = r7
            r6 = r15
            r22 = r8
            r23 = r9
            r8 = r18
            r1.reportNoninteractiveUsageCrossUserLocked(r2, r3, r4, r5, r6, r8, r10)     // Catch: java.lang.Throwable -> L65
            monitor-exit(r20)     // Catch: java.lang.Throwable -> L65
            goto L7e
        L65:
            r0 = move-exception
            goto L72
        L67:
            r0 = move-exception
            r20 = r4
            r17 = r6
            r21 = r7
            r22 = r8
            r23 = r9
        L72:
            monitor-exit(r20)     // Catch: java.lang.Throwable -> L65
            throw r0     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L74
        L74:
            r0 = move-exception
            goto L8f
        L76:
            r17 = r6
            r21 = r7
            r22 = r8
            r23 = r9
        L7e:
            goto L8f
        L7f:
            r17 = r6
            r21 = r7
            r22 = r8
            r23 = r9
        L87:
            goto L8f
        L88:
            r0 = move-exception
            r17 = r6
            r22 = r8
            r23 = r9
        L8f:
            int r9 = r23 + 1
            r8 = r22
            goto L18
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.usage.AppStandbyController.reportContentProviderUsage(java.lang.String, java.lang.String, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportExemptedSyncScheduled(String packageName, int userId) {
        int bucketToPromote;
        int usageReason;
        long durationMillis;
        if (this.mAppIdleEnabled) {
            if (!this.mInjector.isDeviceIdleMode()) {
                bucketToPromote = 10;
                usageReason = 11;
                durationMillis = this.mExemptedSyncScheduledNonDozeTimeoutMillis;
            } else {
                bucketToPromote = 20;
                usageReason = 12;
                durationMillis = this.mExemptedSyncScheduledDozeTimeoutMillis;
            }
            long elapsedRealtime = this.mInjector.elapsedRealtime();
            List<UserHandle> linkedProfiles = getCrossProfileTargets(packageName, userId);
            synchronized (this.mAppIdleLock) {
                reportNoninteractiveUsageCrossUserLocked(packageName, userId, bucketToPromote, usageReason, elapsedRealtime, durationMillis, linkedProfiles);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportUnexemptedSyncScheduled(String packageName, int userId) throws Throwable {
        if (this.mAppIdleEnabled) {
            long elapsedRealtime = this.mInjector.elapsedRealtime();
            synchronized (this.mAppIdleLock) {
                try {
                    try {
                        int currentBucket = this.mAppIdleHistory.getAppStandbyBucket(packageName, userId, elapsedRealtime);
                        if (currentBucket == 50) {
                            List<UserHandle> linkedProfiles = getCrossProfileTargets(packageName, userId);
                            reportNoninteractiveUsageCrossUserLocked(packageName, userId, 20, 14, elapsedRealtime, this.mUnexemptedSyncScheduledTimeoutMillis, linkedProfiles);
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportExemptedSyncStart(String packageName, int userId) {
        if (this.mAppIdleEnabled) {
            long elapsedRealtime = this.mInjector.elapsedRealtime();
            List<UserHandle> linkedProfiles = getCrossProfileTargets(packageName, userId);
            synchronized (this.mAppIdleLock) {
                reportNoninteractiveUsageCrossUserLocked(packageName, userId, 10, 13, elapsedRealtime, this.mExemptedSyncStartTimeoutMillis, linkedProfiles);
            }
        }
    }

    private void reportNoninteractiveUsageCrossUserLocked(String packageName, int userId, int bucket, int subReason, long elapsedRealtime, long nextCheckDelay, List<UserHandle> otherProfiles) throws Throwable {
        reportNoninteractiveUsageLocked(packageName, userId, bucket, subReason, elapsedRealtime, nextCheckDelay);
        int size = otherProfiles.size();
        for (int profileIndex = 0; profileIndex < size; profileIndex++) {
            int otherUserId = otherProfiles.get(profileIndex).getIdentifier();
            reportNoninteractiveUsageLocked(packageName, otherUserId, bucket, subReason, elapsedRealtime, nextCheckDelay);
        }
    }

    private void reportNoninteractiveUsageLocked(String packageName, int userId, int bucket, int subReason, long elapsedRealtime, long nextCheckDelay) throws Throwable {
        AppIdleHistory.AppUsageHistory appUsage = this.mAppIdleHistory.reportUsage(packageName, userId, bucket, subReason, 0L, elapsedRealtime + nextCheckDelay);
        AppStandbyHandler appStandbyHandler = this.mHandler;
        appStandbyHandler.sendMessageDelayed(appStandbyHandler.obtainMessage(11, userId, -1, packageName), nextCheckDelay);
        maybeInformListeners(packageName, userId, elapsedRealtime, appUsage.currentBucket, appUsage.bucketingReason, false);
    }

    void setChargingState(boolean isCharging) {
        synchronized (this.mAppIdleLock) {
            if (this.mIsCharging != isCharging) {
                this.mIsCharging = isCharging;
                postParoleStateChanged();
            }
        }
    }

    public boolean isInParole() {
        return !this.mAppIdleEnabled || this.mIsCharging;
    }

    private void postParoleStateChanged() {
        this.mHandler.removeMessages(9);
        this.mHandler.sendEmptyMessage(9);
    }

    public void postCheckIdleStates(int userId) {
        AppStandbyHandler appStandbyHandler = this.mHandler;
        appStandbyHandler.sendMessage(appStandbyHandler.obtainMessage(5, userId, 0));
    }

    public void postOneTimeCheckIdleStates() {
        if (this.mInjector.getBootPhase() < 500) {
            this.mPendingOneTimeCheckIdleStates = true;
        } else {
            this.mHandler.sendEmptyMessage(10);
            this.mPendingOneTimeCheckIdleStates = false;
        }
    }

    boolean checkIdleStates(int checkUserId) throws Throwable {
        if (!this.mAppIdleEnabled) {
            return false;
        }
        try {
            int[] runningUserIds = this.mInjector.getRunningUserIds();
            if (checkUserId != -1 && !ArrayUtils.contains(runningUserIds, checkUserId)) {
                return false;
            }
            long elapsedRealtime = this.mInjector.elapsedRealtime();
            for (int userId : runningUserIds) {
                if (checkUserId == -1 || checkUserId == userId) {
                    List<PackageInfo> packages = this.mPackageManager.getInstalledPackagesAsUser(512, userId);
                    int packageCount = packages.size();
                    for (int p = 0; p < packageCount; p++) {
                        PackageInfo pi = packages.get(p);
                        String packageName = pi.packageName;
                        checkAndUpdateStandbyState(packageName, userId, pi.applicationInfo.uid, elapsedRealtime);
                    }
                }
            }
            return true;
        } catch (RemoteException re) {
            throw re.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndUpdateStandbyState(String packageName, int userId, int uid, long elapsedRealtime) throws Throwable {
        int uid2;
        int reason;
        int i;
        int reason2;
        int newBucket;
        int newBucket2;
        if (uid > 0) {
            uid2 = uid;
        } else {
            try {
                uid2 = this.mPackageManager.getPackageUidAsUser(packageName, userId);
            } catch (PackageManager.NameNotFoundException e) {
                return;
            }
        }
        int minBucket = getAppMinBucket(packageName, UserHandle.getAppId(uid2), userId);
        if (minBucket <= 10) {
            synchronized (this.mAppIdleLock) {
                this.mAppIdleHistory.setAppStandbyBucket(packageName, userId, elapsedRealtime, minBucket, 256);
            }
            maybeInformListeners(packageName, userId, elapsedRealtime, minBucket, 256, false);
            return;
        }
        synchronized (this.mAppIdleLock) {
            try {
                try {
                    AppIdleHistory.AppUsageHistory app = this.mAppIdleHistory.getAppUsageHistory(packageName, userId, elapsedRealtime);
                    int reason3 = app.bucketingReason;
                    int oldMainReason = reason3 & JobPackageTracker.EVENT_STOP_REASON_MASK;
                    if (oldMainReason == 1024) {
                        return;
                    }
                    int oldBucket = app.currentBucket;
                    if (oldBucket == 50) {
                        return;
                    }
                    int newBucket3 = Math.max(oldBucket, 10);
                    boolean predictionLate = predictionTimedOut(app, elapsedRealtime);
                    if (oldMainReason == 256 || oldMainReason == 768 || oldMainReason == 512 || predictionLate) {
                        if (!predictionLate && app.lastPredictedBucket >= 10 && app.lastPredictedBucket <= 40) {
                            newBucket3 = app.lastPredictedBucket;
                            reason3 = UsbTerminalTypes.TERMINAL_TELE_PHONELINE;
                        } else {
                            newBucket3 = getBucketForLocked(packageName, userId, elapsedRealtime);
                            reason3 = 512;
                        }
                    }
                    long elapsedTimeAdjusted = this.mAppIdleHistory.getElapsedTime(elapsedRealtime);
                    if (newBucket3 >= 10 && app.bucketActiveTimeoutTime > elapsedTimeAdjusted) {
                        newBucket3 = 10;
                        reason = app.bucketingReason;
                    } else if (newBucket3 >= 20 && app.bucketWorkingSetTimeoutTime > elapsedTimeAdjusted) {
                        newBucket3 = 20;
                        if (20 == oldBucket) {
                            i = app.bucketingReason;
                        } else {
                            i = UsbTerminalTypes.TERMINAL_OUT_LFSPEAKER;
                        }
                        reason = i;
                    } else {
                        reason = reason3;
                    }
                    int reason4 = reason;
                    int newBucket4 = newBucket3;
                    if (app.lastRestrictAttemptElapsedTime > app.lastUsedByUserElapsedTime && elapsedTimeAdjusted - app.lastUsedByUserElapsedTime >= this.mInjector.getAutoRestrictedBucketDelayMs()) {
                        newBucket = 45;
                        reason2 = app.lastRestrictReason;
                    } else {
                        reason2 = reason4;
                        newBucket = newBucket4;
                    }
                    if (newBucket == 45 && !this.mAllowRestrictedBucket) {
                        newBucket = 40;
                    }
                    if (newBucket <= minBucket) {
                        newBucket2 = newBucket;
                    } else {
                        newBucket2 = minBucket;
                    }
                    if (oldBucket != newBucket2 || predictionLate) {
                        int newBucket5 = newBucket2;
                        this.mAppIdleHistory.setAppStandbyBucket(packageName, userId, elapsedRealtime, newBucket5, reason2);
                        maybeInformListeners(packageName, userId, elapsedRealtime, newBucket5, reason2, false);
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    private boolean predictionTimedOut(AppIdleHistory.AppUsageHistory app, long elapsedRealtime) {
        return app.lastPredictedTime > 0 && this.mAppIdleHistory.getElapsedTime(elapsedRealtime) - app.lastPredictedTime > this.mPredictionTimeoutMillis;
    }

    private void maybeInformListeners(String packageName, int userId, long elapsedRealtime, int bucket, int reason, boolean userStartedInteracting) {
        synchronized (this.mAppIdleLock) {
            if (this.mAppIdleHistory.shouldInformListeners(packageName, userId, elapsedRealtime, bucket)) {
                StandbyUpdateRecord r = StandbyUpdateRecord.obtain(packageName, userId, bucket, reason, userStartedInteracting);
                this.mHandler.sendMessage(this.mHandler.obtainMessage(3, r));
            }
        }
    }

    private int getBucketForLocked(String packageName, int userId, long elapsedRealtime) throws Throwable {
        int bucketIndex = this.mAppIdleHistory.getThresholdIndex(packageName, userId, elapsedRealtime, this.mAppStandbyScreenThresholds, this.mAppStandbyElapsedThresholds);
        return THRESHOLD_BUCKETS[bucketIndex];
    }

    private void notifyBatteryStats(String packageName, int userId, boolean idle) {
        try {
            int uid = this.mPackageManager.getPackageUidAsUser(packageName, 8192, userId);
            if (idle) {
                this.mInjector.noteEvent(15, packageName, uid);
            } else {
                this.mInjector.noteEvent(16, packageName, uid);
            }
        } catch (PackageManager.NameNotFoundException | RemoteException e) {
        }
    }

    public void reportEvent(UsageEvents.Event event, int userId) throws Throwable {
        if (this.mAppIdleEnabled) {
            int eventType = event.getEventType();
            if (eventType == 1 || eventType == 2 || eventType == 6 || eventType == 7 || eventType == 10 || eventType == 14 || eventType == 13 || eventType == 19) {
                String pkg = event.getPackageName();
                List<UserHandle> linkedProfiles = getCrossProfileTargets(pkg, userId);
                Object obj = this.mAppIdleLock;
                synchronized (obj) {
                    try {
                        try {
                            long elapsedRealtime = this.mInjector.elapsedRealtime();
                            reportEventLocked(pkg, eventType, elapsedRealtime, userId);
                            int size = linkedProfiles.size();
                            int profileIndex = 0;
                            while (profileIndex < size) {
                                int linkedUserId = linkedProfiles.get(profileIndex).getIdentifier();
                                List<UserHandle> linkedProfiles2 = linkedProfiles;
                                Object obj2 = obj;
                                reportEventLocked(pkg, eventType, elapsedRealtime, linkedUserId);
                                profileIndex++;
                                linkedProfiles = linkedProfiles2;
                                obj = obj2;
                            }
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        Object obj3 = obj;
                        throw th;
                    }
                }
            }
        }
    }

    private void reportEventLocked(String pkg, int eventType, long elapsedRealtime, int userId) throws Throwable {
        long nextCheckDelay;
        boolean previouslyIdle = this.mAppIdleHistory.isIdle(pkg, userId, elapsedRealtime);
        AppIdleHistory.AppUsageHistory appHistory = this.mAppIdleHistory.getAppUsageHistory(pkg, userId, elapsedRealtime);
        int prevBucket = appHistory.currentBucket;
        int prevBucketReason = appHistory.bucketingReason;
        int subReason = usageEventToSubReason(eventType);
        int reason = subReason | 768;
        int prevBucketReason2 = 10;
        if (eventType == 10 || eventType == 14) {
            this.mAppIdleHistory.reportUsage(appHistory, pkg, userId, 20, subReason, 0L, elapsedRealtime + this.mNotificationSeenTimeoutMillis);
            nextCheckDelay = this.mNotificationSeenTimeoutMillis;
        } else if (eventType == 6) {
            prevBucketReason = prevBucketReason;
            prevBucketReason2 = 10;
            reason = reason;
            this.mAppIdleHistory.reportUsage(appHistory, pkg, userId, 10, subReason, 0L, elapsedRealtime + this.mSystemInteractionTimeoutMillis);
            nextCheckDelay = this.mSystemInteractionTimeoutMillis;
        } else {
            prevBucketReason = prevBucketReason;
            prevBucketReason2 = 10;
            reason = reason;
            if (eventType != 19) {
                this.mAppIdleHistory.reportUsage(appHistory, pkg, userId, 10, subReason, elapsedRealtime, elapsedRealtime + this.mStrongUsageTimeoutMillis);
                nextCheckDelay = this.mStrongUsageTimeoutMillis;
            } else {
                if (prevBucket != 50) {
                    return;
                }
                this.mAppIdleHistory.reportUsage(appHistory, pkg, userId, 10, subReason, 0L, elapsedRealtime + this.mInitialForegroundServiceStartTimeoutMillis);
                nextCheckDelay = this.mInitialForegroundServiceStartTimeoutMillis;
            }
        }
        if (appHistory.currentBucket != prevBucket) {
            AppStandbyHandler appStandbyHandler = this.mHandler;
            appStandbyHandler.sendMessageDelayed(appStandbyHandler.obtainMessage(11, userId, -1, pkg), nextCheckDelay);
            boolean userStartedInteracting = appHistory.currentBucket == prevBucketReason2 && (prevBucketReason & JobPackageTracker.EVENT_STOP_REASON_MASK) != 768;
            maybeInformListeners(pkg, userId, elapsedRealtime, appHistory.currentBucket, reason, userStartedInteracting);
        }
        if (previouslyIdle) {
            notifyBatteryStats(pkg, userId, false);
        }
    }

    private List<UserHandle> getCrossProfileTargets(String pkg, int userId) {
        synchronized (this.mAppIdleLock) {
            if (this.mLinkCrossProfileApps) {
                return this.mInjector.getValidCrossProfileTargets(pkg, userId);
            }
            return Collections.emptyList();
        }
    }

    private int usageEventToSubReason(int eventType) {
        if (eventType == 1) {
            return 4;
        }
        if (eventType == 2) {
            return 5;
        }
        if (eventType == 6) {
            return 1;
        }
        if (eventType == 7) {
            return 3;
        }
        if (eventType == 10) {
            return 2;
        }
        if (eventType == 19) {
            return 15;
        }
        if (eventType == 13) {
            return 10;
        }
        if (eventType == 14) {
            return 9;
        }
        return 0;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0060 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void forceIdleState(java.lang.String r20, int r21, boolean r22) throws java.lang.Throwable {
        /*
            r19 = this;
            r15 = r19
            boolean r0 = r15.mAppIdleEnabled
            if (r0 != 0) goto L7
            return
        L7:
            int r16 = r19.getAppId(r20)
            if (r16 >= 0) goto Le
            return
        Le:
            com.android.server.usage.AppStandbyController$Injector r0 = r15.mInjector
            long r17 = r0.elapsedRealtime()
            r1 = r19
            r2 = r20
            r3 = r16
            r4 = r21
            r5 = r17
            boolean r14 = r1.isAppIdleFiltered(r2, r3, r4, r5)
            java.lang.Object r7 = r15.mAppIdleLock
            monitor-enter(r7)
            com.android.server.usage.AppIdleHistory r1 = r15.mAppIdleHistory     // Catch: java.lang.Throwable -> L5c
            r2 = r20
            r3 = r21
            r4 = r22
            r5 = r17
            int r12 = r1.setIdle(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L5c
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L5c
            r1 = r19
            r2 = r20
            r3 = r16
            r4 = r21
            r5 = r17
            boolean r0 = r1.isAppIdleFiltered(r2, r3, r4, r5)
            if (r14 == r0) goto L5a
            r13 = 1024(0x400, float:1.435E-42)
            r1 = 0
            r7 = r19
            r8 = r20
            r9 = r21
            r10 = r17
            r2 = r14
            r14 = r1
            r7.maybeInformListeners(r8, r9, r10, r12, r13, r14)
            if (r0 != 0) goto L5b
            r19.notifyBatteryStats(r20, r21, r22)
            goto L5b
        L5a:
            r2 = r14
        L5b:
            return
        L5c:
            r0 = move-exception
            r2 = r14
        L5e:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L60
            throw r0
        L60:
            r0 = move-exception
            goto L5e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.usage.AppStandbyController.forceIdleState(java.lang.String, int, boolean):void");
    }

    public void setLastJobRunTime(String packageName, int userId, long elapsedRealtime) {
        synchronized (this.mAppIdleLock) {
            this.mAppIdleHistory.setLastJobRunTime(packageName, userId, elapsedRealtime);
        }
    }

    public long getTimeSinceLastJobRun(String packageName, int userId) {
        long timeSinceLastJobRun;
        long elapsedRealtime = this.mInjector.elapsedRealtime();
        synchronized (this.mAppIdleLock) {
            timeSinceLastJobRun = this.mAppIdleHistory.getTimeSinceLastJobRun(packageName, userId, elapsedRealtime);
        }
        return timeSinceLastJobRun;
    }

    public void onUserRemoved(int userId) {
        synchronized (this.mAppIdleLock) {
            this.mAppIdleHistory.onUserRemoved(userId);
            synchronized (this.mActiveAdminApps) {
                this.mActiveAdminApps.remove(userId);
            }
            synchronized (this.mAdminProtectedPackages) {
                this.mAdminProtectedPackages.remove(userId);
            }
        }
    }

    private boolean isAppIdleUnfiltered(String packageName, int userId, long elapsedRealtime) {
        boolean zIsIdle;
        synchronized (this.mAppIdleLock) {
            zIsIdle = this.mAppIdleHistory.isIdle(packageName, userId, elapsedRealtime);
        }
        return zIsIdle;
    }

    public void addListener(AppStandbyInternal.AppIdleStateChangeListener listener) {
        synchronized (this.mPackageAccessListeners) {
            if (!this.mPackageAccessListeners.contains(listener)) {
                this.mPackageAccessListeners.add(listener);
            }
        }
    }

    public void removeListener(AppStandbyInternal.AppIdleStateChangeListener listener) {
        synchronized (this.mPackageAccessListeners) {
            this.mPackageAccessListeners.remove(listener);
        }
    }

    public int getAppId(String packageName) {
        try {
            ApplicationInfo ai = this.mPackageManager.getApplicationInfo(packageName, 4194816);
            return ai.uid;
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        }
    }

    public boolean isAppIdleFiltered(String packageName, int userId, long elapsedRealtime, boolean shouldObfuscateInstantApps) {
        if (shouldObfuscateInstantApps && this.mInjector.isPackageEphemeral(userId, packageName)) {
            return false;
        }
        return isAppIdleFiltered(packageName, getAppId(packageName), userId, elapsedRealtime);
    }

    private int getAppMinBucket(String packageName, int userId) {
        try {
            int uid = this.mPackageManager.getPackageUidAsUser(packageName, userId);
            return getAppMinBucket(packageName, UserHandle.getAppId(uid), userId);
        } catch (PackageManager.NameNotFoundException e) {
            return 50;
        }
    }

    private int getAppMinBucket(String packageName, int appId, int userId) {
        if (packageName == null) {
            return 50;
        }
        if (!this.mAppIdleEnabled || appId < 10000 || packageName.equals(PackageManagerService.PLATFORM_PACKAGE_NAME)) {
            return 5;
        }
        if (this.mSystemServicesReady) {
            if (this.mInjector.isNonIdleWhitelisted(packageName) || isActiveDeviceAdmin(packageName, userId) || isAdminProtectedPackages(packageName, userId) || isActiveNetworkScorer(packageName)) {
                return 5;
            }
            AppWidgetManager appWidgetManager = this.mAppWidgetManager;
            if (appWidgetManager != null && this.mInjector.isBoundWidgetPackage(appWidgetManager, packageName, userId)) {
                return 10;
            }
            if (isDeviceProvisioningPackage(packageName)) {
                return 5;
            }
            if (this.mInjector.isWellbeingPackage(packageName)) {
                return 20;
            }
        }
        if (isCarrierApp(packageName)) {
            return 5;
        }
        return isHeadlessSystemApp(packageName) ? 10 : 50;
    }

    private boolean isHeadlessSystemApp(String packageName) {
        boolean zContains;
        synchronized (this.mHeadlessSystemApps) {
            zContains = this.mHeadlessSystemApps.contains(packageName);
        }
        return zContains;
    }

    public boolean isAppIdleFiltered(String packageName, int appId, int userId, long elapsedRealtime) {
        if (getAppMinBucket(packageName, appId, userId) < 40) {
            return false;
        }
        synchronized (this.mAppIdleLock) {
            if (this.mAppIdleEnabled && !this.mIsCharging) {
                return isAppIdleUnfiltered(packageName, userId, elapsedRealtime);
            }
            return false;
        }
    }

    static boolean isUserUsage(int reason) {
        if ((65280 & reason) != 768) {
            return false;
        }
        int subReason = reason & 255;
        return subReason == 3 || subReason == 4;
    }

    public int[] getIdleUidsForUser(int userId) {
        if (!this.mAppIdleEnabled) {
            return new int[0];
        }
        Trace.traceBegin(64L, "getIdleUidsForUser");
        long elapsedRealtime = this.mInjector.elapsedRealtime();
        try {
            try {
                ParceledListSlice<ApplicationInfo> slice = AppGlobals.getPackageManager().getInstalledApplications(0, userId);
                if (slice == null) {
                    return new int[0];
                }
                List<ApplicationInfo> apps = slice.getList();
                SparseIntArray uidStates = new SparseIntArray();
                for (int i = apps.size() - 1; i >= 0; i--) {
                    ApplicationInfo ai = apps.get(i);
                    boolean idle = isAppIdleFiltered(ai.packageName, UserHandle.getAppId(ai.uid), userId, elapsedRealtime);
                    int index = uidStates.indexOfKey(ai.uid);
                    if (index < 0) {
                        uidStates.put(ai.uid, (idle ? 65536 : 0) + 1);
                    } else {
                        uidStates.setValueAt(index, uidStates.valueAt(index) + 1 + (idle ? 65536 : 0));
                    }
                }
                int numIdle = 0;
                for (int i2 = uidStates.size() - 1; i2 >= 0; i2--) {
                    int value = uidStates.valueAt(i2);
                    if ((value & 32767) == (value >> 16)) {
                        numIdle++;
                    }
                }
                int[] res = new int[numIdle];
                int numIdle2 = 0;
                for (int i3 = uidStates.size() - 1; i3 >= 0; i3--) {
                    int value2 = uidStates.valueAt(i3);
                    if ((value2 & 32767) == (value2 >> 16)) {
                        res[numIdle2] = uidStates.keyAt(i3);
                        numIdle2++;
                    }
                }
                Trace.traceEnd(64L);
                return res;
            } catch (RemoteException e) {
                e = e;
                throw e.rethrowFromSystemServer();
            }
        } catch (RemoteException e2) {
            e = e2;
        }
    }

    public void setAppIdleAsync(String str, boolean z, int i) {
        if (str == null || !this.mAppIdleEnabled) {
            return;
        }
        this.mHandler.obtainMessage(4, i, z ? 1 : 0, str).sendToTarget();
    }

    public int getAppStandbyBucket(String packageName, int userId, long elapsedRealtime, boolean shouldObfuscateInstantApps) {
        int appStandbyBucket;
        if (this.mAppIdleEnabled) {
            if (shouldObfuscateInstantApps && this.mInjector.isPackageEphemeral(userId, packageName)) {
                return 10;
            }
            synchronized (this.mAppIdleLock) {
                appStandbyBucket = this.mAppIdleHistory.getAppStandbyBucket(packageName, userId, elapsedRealtime);
            }
            return appStandbyBucket;
        }
        return 10;
    }

    int getAppStandbyBucketReason(String packageName, int userId, long elapsedRealtime) {
        int appStandbyReason;
        synchronized (this.mAppIdleLock) {
            appStandbyReason = this.mAppIdleHistory.getAppStandbyReason(packageName, userId, elapsedRealtime);
        }
        return appStandbyReason;
    }

    public List<AppStandbyInfo> getAppStandbyBuckets(int userId) {
        ArrayList<AppStandbyInfo> appStandbyBuckets;
        synchronized (this.mAppIdleLock) {
            appStandbyBuckets = this.mAppIdleHistory.getAppStandbyBuckets(userId, this.mAppIdleEnabled);
        }
        return appStandbyBuckets;
    }

    public void restrictApp(String packageName, int userId, int restrictReason) throws Throwable {
        if (!this.mInjector.isPackageInstalled(packageName, 0, userId)) {
            Slog.e(TAG, "Tried to restrict uninstalled app: " + packageName);
            return;
        }
        int reason = (restrictReason & 255) | 1536;
        long nowElapsed = this.mInjector.elapsedRealtime();
        int bucket = this.mAllowRestrictedBucket ? 45 : 40;
        setAppStandbyBucket(packageName, userId, bucket, reason, nowElapsed, false);
    }

    public void setAppStandbyBucket(String packageName, int bucket, int userId, int callingUid, int callingPid) throws Throwable {
        setAppStandbyBuckets(Collections.singletonList(new AppStandbyInfo(packageName, bucket)), userId, callingUid, callingPid);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    public void setAppStandbyBuckets(List<AppStandbyInfo> appBuckets, int userId, int callingUid, int callingPid) throws Throwable {
        int reason;
        AppStandbyController appStandbyController = this;
        int userId2 = ActivityManager.handleIncomingUser(callingPid, callingUid, userId, false, true, "setAppStandbyBucket", null);
        boolean shellCaller = callingUid == 0 || callingUid == 2000;
        if (UserHandle.isSameApp(callingUid, 1000) && callingPid != Process.myPid()) {
            reason = 1024;
        } else if (shellCaller) {
            reason = 1024;
        } else if (UserHandle.isCore(callingUid)) {
            reason = 1536;
        } else {
            reason = 1280;
        }
        int numApps = appBuckets.size();
        long elapsedRealtime = appStandbyController.mInjector.elapsedRealtime();
        int i = 0;
        while (i < numApps) {
            AppStandbyInfo bucketInfo = appBuckets.get(i);
            String packageName = bucketInfo.mPackageName;
            int bucket = bucketInfo.mStandbyBucket;
            if (bucket < 10 || bucket > 50) {
                throw new IllegalArgumentException("Cannot set the standby bucket to " + bucket);
            }
            int packageUid = appStandbyController.mInjector.getPackageManagerInternal().getPackageUid(packageName, 4980736, userId2);
            if (packageUid == callingUid) {
                throw new IllegalArgumentException("Cannot set your own standby bucket");
            }
            if (packageUid < 0) {
                throw new IllegalArgumentException("Cannot set standby bucket for non existent package (" + packageName + ")");
            }
            setAppStandbyBucket(packageName, userId2, bucket, reason, elapsedRealtime, shellCaller);
            i++;
            appStandbyController = this;
        }
    }

    void setAppStandbyBucket(String packageName, int userId, int newBucket, int reason) throws Throwable {
        setAppStandbyBucket(packageName, userId, newBucket, reason, this.mInjector.elapsedRealtime(), false);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0226 */
    /* JADX WARN: Code duplicated, block: B:104:0x01af  */
    /* JADX WARN: Code duplicated, block: B:106:0x01b3 A[Catch: all -> 0x021c, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:115:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:117:0x01cd A[Catch: all -> 0x021c, TRY_ENTER, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:123:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:21:0x004c  */
    /* JADX WARN: Code duplicated, block: B:24:0x005d  */
    /* JADX WARN: Code duplicated, block: B:25:0x005f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0068 A[Catch: all -> 0x021c, DONT_GENERATE, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:30:0x006a A[Catch: all -> 0x021c, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:38:0x007d  */
    /* JADX WARN: Code duplicated, block: B:39:0x007f  */
    /* JADX WARN: Code duplicated, block: B:49:0x0093  */
    /* JADX WARN: Code duplicated, block: B:50:0x0095  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:69:0x00e0 A[Catch: all -> 0x021c, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:75:0x00ed A[Catch: all -> 0x021c, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:77:0x00f3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:81:0x00f9 A[Catch: all -> 0x021c, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:83:0x010b A[Catch: all -> 0x021c, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:85:0x010f A[Catch: all -> 0x021c, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0132 A[Catch: all -> 0x021c, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:87:0x014b A[Catch: all -> 0x021c, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:89:0x015d A[Catch: all -> 0x021c, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:92:0x018b  */
    /* JADX WARN: Code duplicated, block: B:94:0x018e A[Catch: all -> 0x021c, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:96:0x019d A[Catch: all -> 0x021c, TRY_LEAVE, TryCatch #7 {all -> 0x021c, blocks: (B:22:0x004d, B:26:0x0060, B:28:0x0068, B:30:0x006a, B:36:0x0076, B:42:0x0086, B:45:0x008d, B:47:0x008f, B:51:0x0096, B:55:0x00a0, B:67:0x00da, B:69:0x00e0, B:73:0x00eb, B:75:0x00ed, B:78:0x00f5, B:81:0x00f9, B:83:0x010b, B:85:0x010f, B:94:0x018e, B:96:0x019d, B:106:0x01b3, B:117:0x01cd, B:119:0x01d1, B:86:0x0132, B:87:0x014b, B:89:0x015d, B:90:0x0189, B:34:0x0074), top: B:158:0x004d }] */
    /* JADX WARN: Instruction removed from duplicated block: B:86:0x0132, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:89:0x015d, please report this as an issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setAppStandbyBucket(java.lang.String r24, int r25, int r26, int r27, long r28, boolean r30) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.usage.AppStandbyController.setAppStandbyBucket(java.lang.String, int, int, int, long, boolean):void");
    }

    boolean isActiveDeviceAdmin(String packageName, int userId) {
        boolean z;
        synchronized (this.mActiveAdminApps) {
            Set<String> adminPkgs = this.mActiveAdminApps.get(userId);
            z = adminPkgs != null && adminPkgs.contains(packageName);
        }
        return z;
    }

    private boolean isAdminProtectedPackages(String packageName, int userId) {
        synchronized (this.mAdminProtectedPackages) {
            boolean z = true;
            if (this.mAdminProtectedPackages.contains(-1) && this.mAdminProtectedPackages.get(-1).contains(packageName)) {
                return true;
            }
            if (!this.mAdminProtectedPackages.contains(userId) || !this.mAdminProtectedPackages.get(userId).contains(packageName)) {
                z = false;
            }
            return z;
        }
    }

    public void addActiveDeviceAdmin(String adminPkg, int userId) {
        synchronized (this.mActiveAdminApps) {
            Set<String> adminPkgs = this.mActiveAdminApps.get(userId);
            if (adminPkgs == null) {
                adminPkgs = new ArraySet();
                this.mActiveAdminApps.put(userId, adminPkgs);
            }
            adminPkgs.add(adminPkg);
        }
    }

    public void setActiveAdminApps(Set<String> adminPkgs, int userId) {
        synchronized (this.mActiveAdminApps) {
            try {
                if (adminPkgs == null) {
                    this.mActiveAdminApps.remove(userId);
                } else {
                    this.mActiveAdminApps.put(userId, adminPkgs);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setAdminProtectedPackages(Set<String> packageNames, int userId) {
        synchronized (this.mAdminProtectedPackages) {
            if (packageNames == null) {
                this.mAdminProtectedPackages.remove(userId);
            } else if (packageNames.isEmpty()) {
                this.mAdminProtectedPackages.remove(userId);
            } else {
                this.mAdminProtectedPackages.put(userId, packageNames);
            }
            throw th;
        }
    }

    public void onAdminDataAvailable() {
        this.mAdminDataAvailableLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void waitForAdminData() {
        if (this.mContext.getPackageManager().hasSystemFeature("android.software.device_admin")) {
            ConcurrentUtils.waitForCountDownNoInterrupt(this.mAdminDataAvailableLatch, 10000L, "Wait for admin data");
        }
    }

    Set<String> getActiveAdminAppsForTest(int userId) {
        Set<String> set;
        synchronized (this.mActiveAdminApps) {
            set = this.mActiveAdminApps.get(userId);
        }
        return set;
    }

    Set<String> getAdminProtectedPackagesForTest(int userId) {
        Set<String> set;
        synchronized (this.mAdminProtectedPackages) {
            set = this.mAdminProtectedPackages.get(userId);
        }
        return set;
    }

    private boolean isDeviceProvisioningPackage(String packageName) {
        String deviceProvisioningPackage = this.mContext.getResources().getString(R.string.config_ethernet_iface_regex);
        return deviceProvisioningPackage != null && deviceProvisioningPackage.equals(packageName);
    }

    private boolean isCarrierApp(String packageName) {
        synchronized (this.mAppIdleLock) {
            if (!this.mHaveCarrierPrivilegedApps) {
                fetchCarrierPrivilegedAppsLocked();
            }
            if (this.mCarrierPrivilegedApps != null) {
                return this.mCarrierPrivilegedApps.contains(packageName);
            }
            return false;
        }
    }

    public void clearCarrierPrivilegedApps() {
        synchronized (this.mAppIdleLock) {
            this.mHaveCarrierPrivilegedApps = false;
            this.mCarrierPrivilegedApps = null;
        }
    }

    private void fetchCarrierPrivilegedAppsLocked() {
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService(TelephonyManager.class);
        this.mCarrierPrivilegedApps = telephonyManager.getCarrierPrivilegedPackagesForAllActiveSubscriptions();
        this.mHaveCarrierPrivilegedApps = true;
    }

    private boolean isActiveNetworkScorer(String packageName) {
        long now = SystemClock.elapsedRealtime();
        if (this.mCachedNetworkScorer == null || this.mCachedNetworkScorerAtMillis < now - NETWORK_SCORER_CACHE_DURATION_MILLIS) {
            this.mCachedNetworkScorer = this.mInjector.getActiveNetworkScorer();
            this.mCachedNetworkScorerAtMillis = now;
        }
        return packageName != null && packageName.equals(this.mCachedNetworkScorer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void informListeners(String packageName, int userId, int bucket, int reason, boolean userInteraction) {
        boolean idle = bucket >= 40;
        synchronized (this.mPackageAccessListeners) {
            for (AppStandbyInternal.AppIdleStateChangeListener listener : this.mPackageAccessListeners) {
                listener.onAppIdleStateChanged(packageName, userId, idle, bucket, reason);
                if (userInteraction) {
                    listener.onUserInteractionStarted(packageName, userId);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void informParoleStateChanged() {
        boolean paroled = isInParole();
        synchronized (this.mPackageAccessListeners) {
            for (AppStandbyInternal.AppIdleStateChangeListener listener : this.mPackageAccessListeners) {
                listener.onParoleStateChanged(paroled);
            }
        }
    }

    public void flushToDisk() {
        synchronized (this.mAppIdleLock) {
            this.mAppIdleHistory.writeAppIdleTimes();
            this.mAppIdleHistory.writeAppIdleDurations();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDisplayOn() {
        return this.mInjector.isDefaultDisplayOn();
    }

    void clearAppIdleForPackage(String packageName, int userId) {
        synchronized (this.mAppIdleLock) {
            this.mAppIdleHistory.clearUsage(packageName, userId);
        }
    }

    void maybeUnrestrictBuggyApp(String packageName, int userId) {
        int newBucket;
        int newReason;
        synchronized (this.mAppIdleLock) {
            long elapsedRealtime = this.mInjector.elapsedRealtime();
            AppIdleHistory.AppUsageHistory app = this.mAppIdleHistory.getAppUsageHistory(packageName, userId, elapsedRealtime);
            if (app.currentBucket == 45 && (app.bucketingReason & JobPackageTracker.EVENT_STOP_REASON_MASK) == 1536) {
                if ((app.bucketingReason & 255) == 4) {
                    newBucket = 40;
                    newReason = 257;
                } else {
                    newBucket = 45;
                    newReason = app.bucketingReason & (-5);
                }
                this.mAppIdleHistory.setAppStandbyBucket(packageName, userId, elapsedRealtime, newBucket, newReason);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePowerWhitelistCache() {
        if (this.mInjector.getBootPhase() < 500) {
            return;
        }
        this.mInjector.updatePowerWhitelistCache();
        postCheckIdleStates(-1);
    }

    private class PackageReceiver extends BroadcastReceiver {
        private PackageReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            String pkgName = intent.getData().getSchemeSpecificPart();
            int userId = getSendingUserId();
            if ("android.intent.action.PACKAGE_ADDED".equals(action) || "android.intent.action.PACKAGE_CHANGED".equals(action)) {
                AppStandbyController.this.clearCarrierPrivilegedApps();
                AppStandbyController.this.evaluateSystemAppException(pkgName, userId);
                AppStandbyController.this.mHandler.obtainMessage(11, userId, -1, pkgName).sendToTarget();
            }
            if ("android.intent.action.PACKAGE_REMOVED".equals(action) || "android.intent.action.PACKAGE_ADDED".equals(action)) {
                if (intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                    AppStandbyController.this.maybeUnrestrictBuggyApp(pkgName, userId);
                } else {
                    AppStandbyController.this.clearAppIdleForPackage(pkgName, userId);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void evaluateSystemAppException(String packageName, int userId) {
        if (!this.mSystemServicesReady) {
            return;
        }
        try {
            PackageInfo pi = this.mPackageManager.getPackageInfoAsUser(packageName, HEADLESS_APP_CHECK_FLAGS, userId);
            evaluateSystemAppException(pi);
        } catch (PackageManager.NameNotFoundException e) {
            synchronized (this.mHeadlessSystemApps) {
                this.mHeadlessSystemApps.remove(packageName);
            }
        }
    }

    private boolean evaluateSystemAppException(PackageInfo pkgInfo) {
        if (pkgInfo != null && pkgInfo.applicationInfo != null) {
            if (!pkgInfo.applicationInfo.isSystemApp() && !pkgInfo.applicationInfo.isUpdatedSystemApp()) {
                return false;
            }
            synchronized (this.mHeadlessSystemApps) {
                if (pkgInfo.activities != null && pkgInfo.activities.length != 0) {
                    return this.mHeadlessSystemApps.remove(pkgInfo.packageName);
                }
                return this.mHeadlessSystemApps.add(pkgInfo.packageName);
            }
        }
        return false;
    }

    public void initializeDefaultsForSystemApps(int userId) throws Throwable {
        Object obj;
        if (!this.mSystemServicesReady) {
            this.mPendingInitializeDefaults = true;
            return;
        }
        Slog.d(TAG, "Initializing defaults for system apps on user " + userId + ", appIdleEnabled=" + this.mAppIdleEnabled);
        long elapsedRealtime = this.mInjector.elapsedRealtime();
        List<PackageInfo> packages = this.mPackageManager.getInstalledPackagesAsUser(512, userId);
        int packageCount = packages.size();
        Object obj2 = this.mAppIdleLock;
        synchronized (obj2) {
            int i = 0;
            while (i < packageCount) {
                try {
                    PackageInfo pi = packages.get(i);
                    String packageName = pi.packageName;
                    if (pi.applicationInfo != null && pi.applicationInfo.isSystemApp()) {
                        obj = obj2;
                        try {
                            this.mAppIdleHistory.reportUsage(packageName, userId, 10, 6, 0L, elapsedRealtime + this.mSystemUpdateUsageTimeoutMillis);
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } else {
                        obj = obj2;
                    }
                    i++;
                    obj2 = obj;
                } catch (Throwable th2) {
                    th = th2;
                    obj = obj2;
                }
            }
            Object obj3 = obj2;
            this.mAppIdleHistory.writeAppIdleTimes(userId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadHeadlessSystemAppCache() {
        Slog.d(TAG, "Loading headless system app cache. appIdleEnabled=" + this.mAppIdleEnabled);
        List<PackageInfo> packages = this.mPackageManager.getInstalledPackagesAsUser(HEADLESS_APP_CHECK_FLAGS, 0);
        int packageCount = packages.size();
        for (int i = 0; i < packageCount; i++) {
            PackageInfo pkgInfo = packages.get(i);
            if (pkgInfo != null && evaluateSystemAppException(pkgInfo)) {
                this.mHandler.obtainMessage(11, 0, -1, pkgInfo.packageName).sendToTarget();
            }
        }
    }

    public void postReportContentProviderUsage(String name, String packageName, int userId) {
        SomeArgs args = SomeArgs.obtain();
        args.arg1 = name;
        args.arg2 = packageName;
        args.arg3 = Integer.valueOf(userId);
        this.mHandler.obtainMessage(8, args).sendToTarget();
    }

    public void postReportSyncScheduled(String str, int i, boolean z) {
        this.mHandler.obtainMessage(12, i, z ? 1 : 0, str).sendToTarget();
    }

    public void postReportExemptedSyncStart(String packageName, int userId) {
        this.mHandler.obtainMessage(13, userId, 0, packageName).sendToTarget();
    }

    public void dumpUsers(IndentingPrintWriter idpw, int[] userIds, List<String> pkgs) {
        synchronized (this.mAppIdleLock) {
            this.mAppIdleHistory.dumpUsers(idpw, userIds, pkgs);
        }
    }

    public void dumpState(String[] args, PrintWriter pw) {
        synchronized (this.mAppIdleLock) {
            pw.println("Carrier privileged apps (have=" + this.mHaveCarrierPrivilegedApps + "): " + this.mCarrierPrivilegedApps);
        }
        pw.println();
        pw.println("Settings:");
        pw.print("  mCheckIdleIntervalMillis=");
        TimeUtils.formatDuration(this.mCheckIdleIntervalMillis, pw);
        pw.println();
        pw.print("  mStrongUsageTimeoutMillis=");
        TimeUtils.formatDuration(this.mStrongUsageTimeoutMillis, pw);
        pw.println();
        pw.print("  mNotificationSeenTimeoutMillis=");
        TimeUtils.formatDuration(this.mNotificationSeenTimeoutMillis, pw);
        pw.println();
        pw.print("  mSyncAdapterTimeoutMillis=");
        TimeUtils.formatDuration(this.mSyncAdapterTimeoutMillis, pw);
        pw.println();
        pw.print("  mSystemInteractionTimeoutMillis=");
        TimeUtils.formatDuration(this.mSystemInteractionTimeoutMillis, pw);
        pw.println();
        pw.print("  mInitialForegroundServiceStartTimeoutMillis=");
        TimeUtils.formatDuration(this.mInitialForegroundServiceStartTimeoutMillis, pw);
        pw.println();
        pw.print("  mPredictionTimeoutMillis=");
        TimeUtils.formatDuration(this.mPredictionTimeoutMillis, pw);
        pw.println();
        pw.print("  mExemptedSyncScheduledNonDozeTimeoutMillis=");
        TimeUtils.formatDuration(this.mExemptedSyncScheduledNonDozeTimeoutMillis, pw);
        pw.println();
        pw.print("  mExemptedSyncScheduledDozeTimeoutMillis=");
        TimeUtils.formatDuration(this.mExemptedSyncScheduledDozeTimeoutMillis, pw);
        pw.println();
        pw.print("  mExemptedSyncStartTimeoutMillis=");
        TimeUtils.formatDuration(this.mExemptedSyncStartTimeoutMillis, pw);
        pw.println();
        pw.print("  mUnexemptedSyncScheduledTimeoutMillis=");
        TimeUtils.formatDuration(this.mUnexemptedSyncScheduledTimeoutMillis, pw);
        pw.println();
        pw.print("  mSystemUpdateUsageTimeoutMillis=");
        TimeUtils.formatDuration(this.mSystemUpdateUsageTimeoutMillis, pw);
        pw.println();
        pw.println();
        pw.print("mAppIdleEnabled=");
        pw.print(this.mAppIdleEnabled);
        pw.print(" mAllowRestrictedBucket=");
        pw.print(this.mAllowRestrictedBucket);
        pw.print(" mIsCharging=");
        pw.print(this.mIsCharging);
        pw.println();
        pw.print("mScreenThresholds=");
        pw.println(Arrays.toString(this.mAppStandbyScreenThresholds));
        pw.print("mElapsedThresholds=");
        pw.println(Arrays.toString(this.mAppStandbyElapsedThresholds));
        pw.println();
        pw.println("mHeadlessSystemApps=[");
        synchronized (this.mHeadlessSystemApps) {
            for (int i = this.mHeadlessSystemApps.size() - 1; i >= 0; i--) {
                pw.print("  ");
                pw.print(this.mHeadlessSystemApps.valueAt(i));
                pw.println(",");
            }
        }
        pw.println("]");
        pw.println();
        this.mInjector.dump(pw);
    }

    static class Injector {
        private BatteryManager mBatteryManager;
        private IBatteryStats mBatteryStats;
        int mBootPhase;
        private final Context mContext;
        private CrossProfileAppsInternal mCrossProfileAppsInternal;
        private IDeviceIdleController mDeviceIdleController;
        private DisplayManager mDisplayManager;
        private final Looper mLooper;
        private PackageManagerInternal mPackageManagerInternal;
        private PowerManager mPowerManager;
        long mAutoRestrictedBucketDelayMs = 86400000;
        private final ArraySet<String> mPowerWhitelistedApps = new ArraySet<>();
        private String mWellbeingApp = null;

        Injector(Context context, Looper looper) {
            this.mContext = context;
            this.mLooper = looper;
        }

        Context getContext() {
            return this.mContext;
        }

        Looper getLooper() {
            return this.mLooper;
        }

        void onBootPhase(int phase) {
            if (phase == 500) {
                this.mDeviceIdleController = IDeviceIdleController.Stub.asInterface(ServiceManager.getService("deviceidle"));
                this.mBatteryStats = IBatteryStats.Stub.asInterface(ServiceManager.getService("batterystats"));
                this.mPackageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                this.mDisplayManager = (DisplayManager) this.mContext.getSystemService("display");
                this.mPowerManager = (PowerManager) this.mContext.getSystemService(PowerManager.class);
                this.mBatteryManager = (BatteryManager) this.mContext.getSystemService(BatteryManager.class);
                this.mCrossProfileAppsInternal = (CrossProfileAppsInternal) LocalServices.getService(CrossProfileAppsInternal.class);
                ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
                if (activityManager.isLowRamDevice() || ActivityManager.isSmallBatteryDevice()) {
                    this.mAutoRestrictedBucketDelayMs = 43200000L;
                }
                PackageManager packageManager = this.mContext.getPackageManager();
                this.mWellbeingApp = packageManager.getWellbeingPackageName();
            }
            this.mBootPhase = phase;
        }

        int getBootPhase() {
            return this.mBootPhase;
        }

        long elapsedRealtime() {
            return SystemClock.elapsedRealtime();
        }

        long currentTimeMillis() {
            return System.currentTimeMillis();
        }

        boolean isAppIdleEnabled() {
            boolean buildFlag = this.mContext.getResources().getBoolean(R.bool.config_cecPowerControlModeBroadcast_default);
            boolean runtimeFlag = android.provider.Settings.Global.getInt(this.mContext.getContentResolver(), "app_standby_enabled", 1) == 1 && android.provider.Settings.Global.getInt(this.mContext.getContentResolver(), "adaptive_battery_management_enabled", 1) == 1;
            return buildFlag && runtimeFlag;
        }

        boolean isCharging() {
            return this.mBatteryManager.isCharging();
        }

        boolean isNonIdleWhitelisted(String packageName) {
            boolean zContains;
            if (this.mBootPhase < 500) {
                return false;
            }
            synchronized (this.mPowerWhitelistedApps) {
                zContains = this.mPowerWhitelistedApps.contains(packageName);
            }
            return zContains;
        }

        boolean isWellbeingPackage(String packageName) {
            String str = this.mWellbeingApp;
            return str != null && str.equals(packageName);
        }

        void updatePowerWhitelistCache() {
            try {
                String[] whitelistedPkgs = this.mDeviceIdleController.getFullPowerWhitelistExceptIdle();
                synchronized (this.mPowerWhitelistedApps) {
                    this.mPowerWhitelistedApps.clear();
                    for (String str : whitelistedPkgs) {
                        this.mPowerWhitelistedApps.add(str);
                    }
                }
            } catch (RemoteException e) {
                Slog.wtf(AppStandbyController.TAG, "Failed to get power whitelist", e);
            }
        }

        boolean isRestrictedBucketEnabled() {
            return android.provider.Settings.Global.getInt(this.mContext.getContentResolver(), "enable_restricted_bucket", 0) == 1;
        }

        File getDataSystemDirectory() {
            return Environment.getDataSystemDirectory();
        }

        long getAutoRestrictedBucketDelayMs() {
            return this.mAutoRestrictedBucketDelayMs;
        }

        void noteEvent(int event, String packageName, int uid) throws RemoteException {
            this.mBatteryStats.noteEvent(event, packageName, uid);
        }

        PackageManagerInternal getPackageManagerInternal() {
            return this.mPackageManagerInternal;
        }

        boolean isPackageEphemeral(int userId, String packageName) {
            return this.mPackageManagerInternal.isPackageEphemeral(userId, packageName);
        }

        boolean isPackageInstalled(String packageName, int flags, int userId) {
            return this.mPackageManagerInternal.getPackageUid(packageName, flags, userId) >= 0;
        }

        int[] getRunningUserIds() throws RemoteException {
            return ActivityManager.getService().getRunningUserIds();
        }

        boolean isDefaultDisplayOn() {
            return this.mDisplayManager.getDisplay(0).getState() == 2;
        }

        void registerDisplayListener(DisplayManager.DisplayListener listener, Handler handler) {
            this.mDisplayManager.registerDisplayListener(listener, handler);
        }

        String getActiveNetworkScorer() {
            NetworkScoreManager nsm = (NetworkScoreManager) this.mContext.getSystemService("network_score");
            return nsm.getActiveScorerPackage();
        }

        public boolean isBoundWidgetPackage(AppWidgetManager appWidgetManager, String packageName, int userId) {
            return appWidgetManager.isBoundWidgetPackage(packageName, userId);
        }

        String getAppIdleSettings() {
            return android.provider.Settings.Global.getString(this.mContext.getContentResolver(), "app_idle_constants");
        }

        public boolean isDeviceIdleMode() {
            return this.mPowerManager.isDeviceIdleMode();
        }

        public List<UserHandle> getValidCrossProfileTargets(String pkg, int userId) {
            int uid = this.mPackageManagerInternal.getPackageUidInternal(pkg, 0, userId);
            AndroidPackage aPkg = this.mPackageManagerInternal.getPackage(uid);
            if (uid < 0 || aPkg == null || !aPkg.isCrossProfile() || !this.mCrossProfileAppsInternal.verifyUidHasInteractAcrossProfilePermission(pkg, uid)) {
                if (uid >= 0 && aPkg == null) {
                    Slog.wtf(AppStandbyController.TAG, "Null package retrieved for UID " + uid);
                }
                return Collections.emptyList();
            }
            return this.mCrossProfileAppsInternal.getTargetUserProfiles(pkg, userId);
        }

        void dump(PrintWriter pw) {
            pw.println("mPowerWhitelistedApps=[");
            synchronized (this.mPowerWhitelistedApps) {
                for (int i = this.mPowerWhitelistedApps.size() - 1; i >= 0; i--) {
                    pw.print("  ");
                    pw.print(this.mPowerWhitelistedApps.valueAt(i));
                    pw.println(",");
                }
            }
            pw.println("]");
            pw.println();
        }
    }

    class AppStandbyHandler extends Handler {
        AppStandbyHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) throws Throwable {
            switch (msg.what) {
                case 3:
                    StandbyUpdateRecord r = (StandbyUpdateRecord) msg.obj;
                    AppStandbyController.this.informListeners(r.packageName, r.userId, r.bucket, r.reason, r.isUserInteraction);
                    r.recycle();
                    break;
                case 4:
                    AppStandbyController.this.forceIdleState((String) msg.obj, msg.arg1, msg.arg2 == 1);
                    break;
                case 5:
                    if (AppStandbyController.this.checkIdleStates(msg.arg1) && AppStandbyController.this.mAppIdleEnabled) {
                        AppStandbyController.this.mHandler.sendMessageDelayed(AppStandbyController.this.mHandler.obtainMessage(5, msg.arg1, 0), AppStandbyController.this.mCheckIdleIntervalMillis);
                        break;
                    }
                    break;
                case 6:
                case 7:
                default:
                    super.handleMessage(msg);
                    break;
                case 8:
                    SomeArgs args = (SomeArgs) msg.obj;
                    AppStandbyController.this.reportContentProviderUsage((String) args.arg1, (String) args.arg2, ((Integer) args.arg3).intValue());
                    args.recycle();
                    break;
                case 9:
                    AppStandbyController.this.informParoleStateChanged();
                    break;
                case 10:
                    AppStandbyController.this.mHandler.removeMessages(10);
                    AppStandbyController.this.waitForAdminData();
                    AppStandbyController.this.checkIdleStates(-1);
                    break;
                case 11:
                    AppStandbyController.this.checkAndUpdateStandbyState((String) msg.obj, msg.arg1, msg.arg2, AppStandbyController.this.mInjector.elapsedRealtime());
                    break;
                case 12:
                    boolean exempted = msg.arg2 > 0;
                    if (exempted) {
                        AppStandbyController.this.reportExemptedSyncScheduled((String) msg.obj, msg.arg1);
                    } else {
                        AppStandbyController.this.reportUnexemptedSyncScheduled((String) msg.obj, msg.arg1);
                    }
                    break;
                case 13:
                    AppStandbyController.this.reportExemptedSyncStart((String) msg.obj, msg.arg1);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class DeviceStateReceiver extends BroadcastReceiver {
        private DeviceStateReceiver() {
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0039  */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            byte b;
            String action = intent.getAction();
            int iHashCode = action.hashCode();
            if (iHashCode != -65633567) {
                if (iHashCode != -54942926) {
                    if (iHashCode == 948344062 && action.equals("android.os.action.CHARGING")) {
                        b = 0;
                    } else {
                        b = -1;
                    }
                } else if (action.equals("android.os.action.DISCHARGING")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (action.equals("android.os.action.POWER_SAVE_WHITELIST_CHANGED")) {
                b = 2;
            } else {
                b = -1;
            }
            if (b == 0) {
                AppStandbyController.this.setChargingState(true);
                return;
            }
            if (b != 1) {
                if (b == 2 && AppStandbyController.this.mSystemServicesReady) {
                    AppStandbyHandler appStandbyHandler = AppStandbyController.this.mHandler;
                    final AppStandbyController appStandbyController = AppStandbyController.this;
                    appStandbyHandler.post(new Runnable() { // from class: com.android.server.usage.-$$Lambda$AppStandbyController$DeviceStateReceiver$RN_jp43kPH7Xnk2Lb7iMS9-lEWs
                        @Override // java.lang.Runnable
                        public final void run() {
                            appStandbyController.updatePowerWhitelistCache();
                        }
                    });
                    return;
                }
                return;
            }
            AppStandbyController.this.setChargingState(false);
        }
    }

    private class SettingsObserver extends ContentObserver {
        public static final long DEFAULT_AUTO_RESTRICTED_BUCKET_DELAY_MS = 86400000;
        public static final boolean DEFAULT_CROSS_PROFILE_APPS_SHARE_STANDBY_BUCKETS = true;
        public static final long DEFAULT_EXEMPTED_SYNC_SCHEDULED_DOZE_TIMEOUT = 14400000;
        public static final long DEFAULT_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_TIMEOUT = 600000;
        public static final long DEFAULT_EXEMPTED_SYNC_START_TIMEOUT = 600000;
        public static final long DEFAULT_INITIAL_FOREGROUND_SERVICE_START_TIMEOUT = 1800000;
        public static final long DEFAULT_NOTIFICATION_TIMEOUT = 43200000;
        public static final long DEFAULT_STRONG_USAGE_TIMEOUT = 3600000;
        public static final long DEFAULT_SYNC_ADAPTER_TIMEOUT = 600000;
        public static final long DEFAULT_SYSTEM_INTERACTION_TIMEOUT = 600000;
        public static final long DEFAULT_SYSTEM_UPDATE_TIMEOUT = 7200000;
        public static final long DEFAULT_UNEXEMPTED_SYNC_SCHEDULED_TIMEOUT = 600000;
        private static final String KEY_AUTO_RESTRICTED_BUCKET_DELAY_MS = "auto_restricted_bucket_delay_ms";
        private static final String KEY_CROSS_PROFILE_APPS_SHARE_STANDBY_BUCKETS = "cross_profile_apps_share_standby_buckets";
        private static final String KEY_ELAPSED_TIME_THRESHOLDS = "elapsed_thresholds";
        private static final String KEY_EXEMPTED_SYNC_SCHEDULED_DOZE_HOLD_DURATION = "exempted_sync_scheduled_d_duration";
        private static final String KEY_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_HOLD_DURATION = "exempted_sync_scheduled_nd_duration";
        private static final String KEY_EXEMPTED_SYNC_START_HOLD_DURATION = "exempted_sync_start_duration";
        private static final String KEY_INITIAL_FOREGROUND_SERVICE_START_HOLD_DURATION = "initial_foreground_service_start_duration";
        private static final String KEY_NOTIFICATION_SEEN_HOLD_DURATION = "notification_seen_duration";
        private static final String KEY_PREDICTION_TIMEOUT = "prediction_timeout";
        private static final String KEY_SCREEN_TIME_THRESHOLDS = "screen_thresholds";
        private static final String KEY_STRONG_USAGE_HOLD_DURATION = "strong_usage_duration";
        private static final String KEY_SYNC_ADAPTER_HOLD_DURATION = "sync_adapter_duration";
        private static final String KEY_SYSTEM_INTERACTION_HOLD_DURATION = "system_interaction_duration";
        private static final String KEY_SYSTEM_UPDATE_HOLD_DURATION = "system_update_usage_duration";
        private static final String KEY_UNEXEMPTED_SYNC_SCHEDULED_HOLD_DURATION = "unexempted_sync_scheduled_duration";
        private final KeyValueListParser mParser;

        SettingsObserver(Handler handler) {
            super(handler);
            this.mParser = new KeyValueListParser(',');
        }

        void registerObserver() {
            ContentResolver cr = AppStandbyController.this.mContext.getContentResolver();
            cr.registerContentObserver(android.provider.Settings.Global.getUriFor("app_idle_constants"), false, this);
            cr.registerContentObserver(android.provider.Settings.Global.getUriFor("app_standby_enabled"), false, this);
            cr.registerContentObserver(android.provider.Settings.Global.getUriFor("enable_restricted_bucket"), false, this);
            cr.registerContentObserver(android.provider.Settings.Global.getUriFor("adaptive_battery_management_enabled"), false, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            updateSettings();
            AppStandbyController.this.postOneTimeCheckIdleStates();
        }

        void updateSettings() {
            try {
                this.mParser.setString(AppStandbyController.this.mInjector.getAppIdleSettings());
            } catch (IllegalArgumentException e) {
                Slog.e(AppStandbyController.TAG, "Bad value for app idle settings: " + e.getMessage());
            }
            synchronized (AppStandbyController.this.mAppIdleLock) {
                String screenThresholdsValue = this.mParser.getString(KEY_SCREEN_TIME_THRESHOLDS, (String) null);
                AppStandbyController.this.mAppStandbyScreenThresholds = parseLongArray(screenThresholdsValue, AppStandbyController.SCREEN_TIME_THRESHOLDS, AppStandbyController.MINIMUM_SCREEN_TIME_THRESHOLDS);
                String elapsedThresholdsValue = this.mParser.getString(KEY_ELAPSED_TIME_THRESHOLDS, (String) null);
                AppStandbyController.this.mAppStandbyElapsedThresholds = parseLongArray(elapsedThresholdsValue, AppStandbyController.ELAPSED_TIME_THRESHOLDS, AppStandbyController.MINIMUM_ELAPSED_TIME_THRESHOLDS);
                AppStandbyController.this.mCheckIdleIntervalMillis = Math.min(AppStandbyController.this.mAppStandbyElapsedThresholds[1] / 4, 14400000L);
                AppStandbyController.this.mStrongUsageTimeoutMillis = this.mParser.getDurationMillis(KEY_STRONG_USAGE_HOLD_DURATION, 3600000L);
                AppStandbyController.this.mNotificationSeenTimeoutMillis = this.mParser.getDurationMillis(KEY_NOTIFICATION_SEEN_HOLD_DURATION, 43200000L);
                AppStandbyController.this.mSystemUpdateUsageTimeoutMillis = this.mParser.getDurationMillis(KEY_SYSTEM_UPDATE_HOLD_DURATION, DEFAULT_SYSTEM_UPDATE_TIMEOUT);
                AppStandbyController.this.mPredictionTimeoutMillis = this.mParser.getDurationMillis(KEY_PREDICTION_TIMEOUT, 43200000L);
                AppStandbyController.this.mSyncAdapterTimeoutMillis = this.mParser.getDurationMillis(KEY_SYNC_ADAPTER_HOLD_DURATION, 600000L);
                AppStandbyController.this.mExemptedSyncScheduledNonDozeTimeoutMillis = this.mParser.getDurationMillis(KEY_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_HOLD_DURATION, 600000L);
                AppStandbyController.this.mExemptedSyncScheduledDozeTimeoutMillis = this.mParser.getDurationMillis(KEY_EXEMPTED_SYNC_SCHEDULED_DOZE_HOLD_DURATION, 14400000L);
                AppStandbyController.this.mExemptedSyncStartTimeoutMillis = this.mParser.getDurationMillis(KEY_EXEMPTED_SYNC_START_HOLD_DURATION, 600000L);
                AppStandbyController.this.mUnexemptedSyncScheduledTimeoutMillis = this.mParser.getDurationMillis(KEY_UNEXEMPTED_SYNC_SCHEDULED_HOLD_DURATION, 600000L);
                AppStandbyController.this.mSystemInteractionTimeoutMillis = this.mParser.getDurationMillis(KEY_SYSTEM_INTERACTION_HOLD_DURATION, 600000L);
                AppStandbyController.this.mInitialForegroundServiceStartTimeoutMillis = this.mParser.getDurationMillis(KEY_INITIAL_FOREGROUND_SERVICE_START_HOLD_DURATION, 1800000L);
                AppStandbyController.this.mInjector.mAutoRestrictedBucketDelayMs = Math.max(DEFAULT_SYSTEM_UPDATE_TIMEOUT, this.mParser.getDurationMillis(KEY_AUTO_RESTRICTED_BUCKET_DELAY_MS, 86400000L));
                AppStandbyController.this.mLinkCrossProfileApps = this.mParser.getBoolean(KEY_CROSS_PROFILE_APPS_SHARE_STANDBY_BUCKETS, true);
                AppStandbyController.this.mAllowRestrictedBucket = AppStandbyController.this.mInjector.isRestrictedBucketEnabled();
            }
            AppStandbyController appStandbyController = AppStandbyController.this;
            appStandbyController.setAppIdleEnabled(appStandbyController.mInjector.isAppIdleEnabled());
        }

        long[] parseLongArray(String values, long[] defaults, long[] minValues) {
            if (values == null || values.isEmpty()) {
                return defaults;
            }
            String[] thresholds = values.split(SliceClientPermissions.SliceAuthority.DELIMITER);
            if (thresholds.length == AppStandbyController.THRESHOLD_BUCKETS.length) {
                if (minValues.length != AppStandbyController.THRESHOLD_BUCKETS.length) {
                    Slog.wtf(AppStandbyController.TAG, "minValues array is the wrong size");
                    minValues = new long[AppStandbyController.THRESHOLD_BUCKETS.length];
                }
                long[] array = new long[AppStandbyController.THRESHOLD_BUCKETS.length];
                for (int i = 0; i < AppStandbyController.THRESHOLD_BUCKETS.length; i++) {
                    try {
                        if (thresholds[i].startsWith(RuleMetadataParser.RULE_PROVIDER_TAG) || thresholds[i].startsWith("p")) {
                            array[i] = Math.max(minValues[i], Duration.parse(thresholds[i]).toMillis());
                        } else {
                            array[i] = Math.max(minValues[i], Long.parseLong(thresholds[i]));
                        }
                    } catch (NumberFormatException | DateTimeParseException e) {
                        return defaults;
                    }
                }
                return array;
            }
            return defaults;
        }
    }
}

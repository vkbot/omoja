package com.android.server;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.VersionedPackage;
import android.net.ConnectivityModuleConnector;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.DeviceConfig;
import android.service.watchdog.ExplicitHealthCheckService;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.LongArrayQueue;
import android.util.MathUtils;
import android.util.Slog;
import android.util.Xml;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.XmlUtils;
import com.android.server.job.controllers.JobStatus;
import com.android.server.notification.SnoozeHelper;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class PackageWatchdog {
    private static final String ATTR_DURATION = "duration";
    private static final String ATTR_EXPLICIT_HEALTH_CHECK_DURATION = "health-check-duration";
    private static final String ATTR_NAME = "name";
    private static final String ATTR_PASSED_HEALTH_CHECK = "passed-health-check";
    private static final String ATTR_VERSION = "version";
    private static final int DB_VERSION = 1;
    static final int DEFAULT_BOOT_LOOP_TRIGGER_COUNT = 5;
    private static final boolean DEFAULT_EXPLICIT_HEALTH_CHECK_ENABLED = true;
    static final int DEFAULT_TRIGGER_FAILURE_COUNT = 5;
    public static final int FAILURE_REASON_APP_CRASH = 3;
    public static final int FAILURE_REASON_APP_NOT_RESPONDING = 4;
    public static final int FAILURE_REASON_EXPLICIT_HEALTH_CHECK = 2;
    public static final int FAILURE_REASON_NATIVE_CRASH = 1;
    public static final int FAILURE_REASON_UNKNOWN = 0;
    static final String PROPERTY_WATCHDOG_EXPLICIT_HEALTH_CHECK_ENABLED = "watchdog_explicit_health_check_enabled";
    static final String PROPERTY_WATCHDOG_TRIGGER_DURATION_MILLIS = "watchdog_trigger_failure_duration_millis";
    static final String PROPERTY_WATCHDOG_TRIGGER_FAILURE_COUNT = "watchdog_trigger_failure_count";
    private static final String PROP_RESCUE_BOOT_COUNT = "sys.rescue_boot_count";
    private static final String PROP_RESCUE_BOOT_START = "sys.rescue_boot_start";
    private static final String TAG = "PackageWatchdog";
    private static final String TAG_OBSERVER = "observer";
    private static final String TAG_PACKAGE = "package";
    private static final String TAG_PACKAGE_WATCHDOG = "package-watchdog";
    private static PackageWatchdog sPackageWatchdog;
    private final ArrayMap<String, ObserverInternal> mAllObservers;
    private final BootThreshold mBootThreshold;
    private final ConnectivityModuleConnector mConnectivityModuleConnector;
    private final Context mContext;
    private final ExplicitHealthCheckController mHealthCheckController;
    private boolean mIsHealthCheckEnabled;
    private boolean mIsPackagesReady;
    private final Object mLock;
    private final Handler mLongTaskHandler;
    private long mNumberOfNativeCrashPollsRemaining;
    private final AtomicFile mPolicyFile;
    private Set<String> mRequestedHealthCheckPackages;
    private final Runnable mSaveToFile;
    private final Handler mShortTaskHandler;
    private final Runnable mSyncRequests;
    private boolean mSyncRequired;
    private final Runnable mSyncStateWithScheduledReason;
    private final SystemClock mSystemClock;
    private int mTriggerFailureCount;
    private int mTriggerFailureDurationMs;
    private long mUptimeAtLastStateSync;
    private static final long NATIVE_CRASH_POLLING_INTERVAL_MILLIS = TimeUnit.SECONDS.toMillis(30);
    static final int DEFAULT_TRIGGER_FAILURE_DURATION_MS = (int) TimeUnit.MINUTES.toMillis(1);
    static final long DEFAULT_OBSERVING_DURATION_MS = TimeUnit.DAYS.toMillis(2);
    private static final long NUMBER_OF_NATIVE_CRASH_POLLS = 10;
    static final long DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS = TimeUnit.MINUTES.toMillis(NUMBER_OF_NATIVE_CRASH_POLLS);

    @Retention(RetentionPolicy.SOURCE)
    public @interface FailureReasons {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface HealthCheckState {
        public static final int ACTIVE = 0;
        public static final int FAILED = 3;
        public static final int INACTIVE = 1;
        public static final int PASSED = 2;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PackageHealthObserverImpact {
        public static final int USER_IMPACT_HIGH = 5;
        public static final int USER_IMPACT_LOW = 1;
        public static final int USER_IMPACT_MEDIUM = 3;
        public static final int USER_IMPACT_NONE = 0;
    }

    @FunctionalInterface
    interface SystemClock {
        long uptimeMillis();
    }

    private PackageWatchdog(Context context) {
        this(context, new AtomicFile(new File(new File(Environment.getDataDirectory(), "system"), "package-watchdog.xml")), new Handler(Looper.myLooper()), BackgroundThread.getHandler(), new ExplicitHealthCheckController(context), ConnectivityModuleConnector.getInstance(), new SystemClock() { // from class: com.android.server.-$$Lambda$u6uWKONNslLDvDcMfFfe2etQmKg
            @Override // com.android.server.PackageWatchdog.SystemClock
            public final long uptimeMillis() {
                return SystemClock.uptimeMillis();
            }
        });
    }

    PackageWatchdog(Context context, AtomicFile policyFile, Handler shortTaskHandler, Handler longTaskHandler, ExplicitHealthCheckController controller, ConnectivityModuleConnector connectivityModuleConnector, SystemClock clock) {
        this.mLock = new Object();
        this.mAllObservers = new ArrayMap<>();
        this.mSyncRequests = new Runnable() { // from class: com.android.server.-$$Lambda$PackageWatchdog$CQuOnXthwwBaxcS5WoAlJJAz8Tk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.syncRequests();
            }
        };
        this.mSyncStateWithScheduledReason = new Runnable() { // from class: com.android.server.-$$Lambda$PackageWatchdog$vRKcIrucEj03dz6ypRVINZtns1s
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.syncStateWithScheduledReason();
            }
        };
        this.mSaveToFile = new Runnable() { // from class: com.android.server.-$$Lambda$PackageWatchdog$Q0WI2EJpRFO1jF_7_YDaj1eGHas
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.saveToFile();
            }
        };
        this.mRequestedHealthCheckPackages = new ArraySet();
        this.mIsHealthCheckEnabled = true;
        this.mTriggerFailureDurationMs = DEFAULT_TRIGGER_FAILURE_DURATION_MS;
        this.mTriggerFailureCount = 5;
        this.mSyncRequired = false;
        this.mContext = context;
        this.mPolicyFile = policyFile;
        this.mShortTaskHandler = shortTaskHandler;
        this.mLongTaskHandler = longTaskHandler;
        this.mHealthCheckController = controller;
        this.mConnectivityModuleConnector = connectivityModuleConnector;
        this.mSystemClock = clock;
        this.mNumberOfNativeCrashPollsRemaining = NUMBER_OF_NATIVE_CRASH_POLLS;
        this.mBootThreshold = new BootThreshold(5, DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS);
        loadFromFile();
        sPackageWatchdog = this;
    }

    public static PackageWatchdog getInstance(Context context) {
        PackageWatchdog packageWatchdog;
        synchronized (PackageWatchdog.class) {
            if (sPackageWatchdog == null) {
                new PackageWatchdog(context);
            }
            packageWatchdog = sPackageWatchdog;
        }
        return packageWatchdog;
    }

    public void onPackagesReady() {
        synchronized (this.mLock) {
            this.mIsPackagesReady = true;
            this.mHealthCheckController.setCallbacks(new Consumer() { // from class: com.android.server.-$$Lambda$PackageWatchdog$nOS9OaZO4hPsSe0I8skPT1UgQoo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$onPackagesReady$0$PackageWatchdog((String) obj);
                }
            }, new Consumer() { // from class: com.android.server.-$$Lambda$PackageWatchdog$uFI2R7Ip9Bh1wQPJqJ5H5A0soVU
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$onPackagesReady$1$PackageWatchdog((List) obj);
                }
            }, new Runnable() { // from class: com.android.server.-$$Lambda$PackageWatchdog$07YAng9lcuyRJuBYy9Jk3p2pWVY
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPackagesReady$2$PackageWatchdog();
                }
            });
            setPropertyChangedListenerLocked();
            updateConfigs();
            registerConnectivityModuleHealthListener();
        }
    }

    public /* synthetic */ void lambda$onPackagesReady$2$PackageWatchdog() {
        syncRequestsAsync();
        this.mSyncRequired = true;
    }

    public void registerHealthObserver(PackageHealthObserver observer) {
        synchronized (this.mLock) {
            ObserverInternal internalObserver = this.mAllObservers.get(observer.getName());
            if (internalObserver != null) {
                internalObserver.registeredObserver = observer;
            } else {
                ObserverInternal internalObserver2 = new ObserverInternal(observer.getName(), new ArrayList());
                internalObserver2.registeredObserver = observer;
                this.mAllObservers.put(observer.getName(), internalObserver2);
                syncState("added new observer");
            }
        }
    }

    public void startObservingHealth(final PackageHealthObserver observer, final List<String> packageNames, long durationMs) {
        if (packageNames.isEmpty()) {
            Slog.wtf(TAG, "No packages to observe, " + observer.getName());
            return;
        }
        if (durationMs < 1) {
            Slog.wtf(TAG, "Invalid duration " + durationMs + "ms for observer " + observer.getName() + ". Not observing packages " + packageNames);
            durationMs = DEFAULT_OBSERVING_DURATION_MS;
        }
        final List<MonitoredPackage> packages = new ArrayList<>();
        for (int i = 0; i < packageNames.size(); i++) {
            MonitoredPackage pkg = newMonitoredPackage(packageNames.get(i), durationMs, false);
            if (pkg != null) {
                packages.add(pkg);
            }
        }
        if (packages.isEmpty()) {
            return;
        }
        this.mLongTaskHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$PackageWatchdog$jINplDIdLxNaZiKt8dCCJn1Cx6c
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startObservingHealth$3$PackageWatchdog(observer, packageNames, packages);
            }
        });
    }

    public /* synthetic */ void lambda$startObservingHealth$3$PackageWatchdog(PackageHealthObserver observer, List packageNames, List packages) {
        syncState("observing new packages");
        synchronized (this.mLock) {
            ObserverInternal oldObserver = this.mAllObservers.get(observer.getName());
            if (oldObserver == null) {
                Slog.d(TAG, observer.getName() + " started monitoring health of packages " + packageNames);
                this.mAllObservers.put(observer.getName(), new ObserverInternal(observer.getName(), packages));
            } else {
                Slog.d(TAG, observer.getName() + " added the following packages to monitor " + packageNames);
                oldObserver.updatePackagesLocked(packages);
            }
        }
        registerHealthObserver(observer);
        syncState("updated observers");
    }

    public void unregisterHealthObserver(PackageHealthObserver observer) {
        synchronized (this.mLock) {
            this.mAllObservers.remove(observer.getName());
        }
        syncState("unregistering observer: " + observer.getName());
    }

    public void onPackageFailure(final List<VersionedPackage> packages, final int failureReason) {
        if (packages == null) {
            Slog.w(TAG, "Could not resolve a list of failing packages");
        } else {
            this.mLongTaskHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$PackageWatchdog$Ya4lYGbdDy3Dda20wvc2AHBqIMM
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPackageFailure$4$PackageWatchdog(failureReason, packages);
                }
            });
        }
    }

    public /* synthetic */ void lambda$onPackageFailure$4$PackageWatchdog(int failureReason, List packages) {
        int impact;
        synchronized (this.mLock) {
            if (this.mAllObservers.isEmpty()) {
                return;
            }
            boolean requiresImmediateAction = true;
            if (failureReason != 1 && failureReason != 2) {
                requiresImmediateAction = false;
            }
            if (requiresImmediateAction) {
                handleFailureImmediately(packages, failureReason);
            } else {
                for (int pIndex = 0; pIndex < packages.size(); pIndex++) {
                    VersionedPackage versionedPackage = (VersionedPackage) packages.get(pIndex);
                    PackageHealthObserver currentObserverToNotify = null;
                    int currentObserverImpact = Integer.MAX_VALUE;
                    for (int oIndex = 0; oIndex < this.mAllObservers.size(); oIndex++) {
                        ObserverInternal observer = this.mAllObservers.valueAt(oIndex);
                        PackageHealthObserver registeredObserver = observer.registeredObserver;
                        if (registeredObserver != null && observer.onPackageFailureLocked(versionedPackage.getPackageName()) && (impact = registeredObserver.onHealthCheckFailed(versionedPackage, failureReason)) != 0 && impact < currentObserverImpact) {
                            currentObserverToNotify = registeredObserver;
                            currentObserverImpact = impact;
                        }
                    }
                    if (currentObserverToNotify != null) {
                        currentObserverToNotify.execute(versionedPackage, failureReason);
                    }
                }
            }
        }
    }

    private void handleFailureImmediately(List<VersionedPackage> packages, int failureReason) {
        int impact;
        VersionedPackage failingPackage = packages.size() > 0 ? packages.get(0) : null;
        PackageHealthObserver currentObserverToNotify = null;
        int currentObserverImpact = Integer.MAX_VALUE;
        for (ObserverInternal observer : this.mAllObservers.values()) {
            PackageHealthObserver registeredObserver = observer.registeredObserver;
            if (registeredObserver != null && (impact = registeredObserver.onHealthCheckFailed(failingPackage, failureReason)) != 0 && impact < currentObserverImpact) {
                currentObserverToNotify = registeredObserver;
                currentObserverImpact = impact;
            }
        }
        if (currentObserverToNotify != null) {
            currentObserverToNotify.execute(failingPackage, failureReason);
        }
    }

    public void noteBoot() {
        int impact;
        synchronized (this.mLock) {
            if (this.mBootThreshold.incrementAndTest()) {
                this.mBootThreshold.reset();
                PackageHealthObserver currentObserverToNotify = null;
                int currentObserverImpact = Integer.MAX_VALUE;
                for (int i = 0; i < this.mAllObservers.size(); i++) {
                    ObserverInternal observer = this.mAllObservers.valueAt(i);
                    PackageHealthObserver registeredObserver = observer.registeredObserver;
                    if (registeredObserver != null && (impact = registeredObserver.onBootLoop()) != 0 && impact < currentObserverImpact) {
                        currentObserverToNotify = registeredObserver;
                        currentObserverImpact = impact;
                    }
                }
                if (currentObserverToNotify != null) {
                    currentObserverToNotify.executeBootLoopMitigation();
                }
            }
        }
    }

    public void writeNow() {
        synchronized (this.mLock) {
            if (!this.mAllObservers.isEmpty()) {
                this.mLongTaskHandler.removeCallbacks(this.mSaveToFile);
                pruneObserversLocked();
                saveToFile();
                Slog.i(TAG, "Last write to update package durations");
            }
        }
    }

    private void setExplicitHealthCheckEnabled(boolean enabled) {
        synchronized (this.mLock) {
            this.mIsHealthCheckEnabled = enabled;
            this.mHealthCheckController.setEnabled(enabled);
            StringBuilder sb = new StringBuilder();
            sb.append("health check state ");
            sb.append(enabled ? "enabled" : "disabled");
            syncState(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: checkAndMitigateNativeCrashes, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$scheduleCheckAndMitigateNativeCrashes$6$PackageWatchdog() {
        this.mNumberOfNativeCrashPollsRemaining--;
        if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get("sys.init.updatable_crashing"))) {
            onPackageFailure(Collections.EMPTY_LIST, 1);
        } else if (this.mNumberOfNativeCrashPollsRemaining > 0) {
            this.mShortTaskHandler.postDelayed(new Runnable() { // from class: com.android.server.-$$Lambda$PackageWatchdog$wEbB54PjC3ae7wMN2BshwaF0OhE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkAndMitigateNativeCrashes$5$PackageWatchdog();
                }
            }, NATIVE_CRASH_POLLING_INTERVAL_MILLIS);
        }
    }

    public void scheduleCheckAndMitigateNativeCrashes() {
        Slog.i(TAG, "Scheduling " + this.mNumberOfNativeCrashPollsRemaining + " polls to check and mitigate native crashes");
        this.mShortTaskHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$PackageWatchdog$t3rKD-cTKjWjowHB0sDvYPa95Fc
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scheduleCheckAndMitigateNativeCrashes$6$PackageWatchdog();
            }
        });
    }

    public interface PackageHealthObserver {
        boolean execute(VersionedPackage versionedPackage, int i);

        String getName();

        int onHealthCheckFailed(VersionedPackage versionedPackage, int i);

        default int onBootLoop() {
            return 0;
        }

        default boolean executeBootLoopMitigation() {
            return false;
        }

        default boolean isPersistent() {
            return false;
        }

        default boolean mayObservePackage(String packageName) {
            return false;
        }
    }

    long getTriggerFailureCount() {
        long j;
        synchronized (this.mLock) {
            j = this.mTriggerFailureCount;
        }
        return j;
    }

    private void syncRequestsAsync() {
        this.mShortTaskHandler.removeCallbacks(this.mSyncRequests);
        this.mShortTaskHandler.post(this.mSyncRequests);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncRequests() {
        boolean syncRequired = false;
        synchronized (this.mLock) {
            if (this.mIsPackagesReady) {
                Set<String> packages = getPackagesPendingHealthChecksLocked();
                if (this.mSyncRequired || !packages.equals(this.mRequestedHealthCheckPackages) || packages.isEmpty()) {
                    syncRequired = true;
                    this.mRequestedHealthCheckPackages = packages;
                }
            }
        }
        if (syncRequired) {
            Slog.i(TAG, "Syncing health check requests for packages: " + this.mRequestedHealthCheckPackages);
            this.mHealthCheckController.syncRequests(this.mRequestedHealthCheckPackages);
            this.mSyncRequired = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onHealthCheckPassed, reason: merged with bridge method [inline-methods] */
    public void lambda$onPackagesReady$0$PackageWatchdog(String packageName) {
        Slog.i(TAG, "Health check passed for package: " + packageName);
        boolean isStateChanged = false;
        synchronized (this.mLock) {
            for (int observerIdx = 0; observerIdx < this.mAllObservers.size(); observerIdx++) {
                ObserverInternal observer = this.mAllObservers.valueAt(observerIdx);
                MonitoredPackage monitoredPackage = observer.packages.get(packageName);
                if (monitoredPackage != null) {
                    int oldState = monitoredPackage.getHealthCheckStateLocked();
                    int newState = monitoredPackage.tryPassHealthCheckLocked();
                    isStateChanged |= oldState != newState;
                }
            }
        }
        if (isStateChanged) {
            syncState("health check passed for " + packageName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onSupportedPackages, reason: merged with bridge method [inline-methods] */
    public void lambda$onPackagesReady$1$PackageWatchdog(List<ExplicitHealthCheckService.PackageConfig> supportedPackages) {
        int newState;
        boolean isStateChanged = false;
        Map<String, Long> supportedPackageTimeouts = new ArrayMap<>();
        for (ExplicitHealthCheckService.PackageConfig info : supportedPackages) {
            supportedPackageTimeouts.put(info.getPackageName(), Long.valueOf(info.getHealthCheckTimeoutMillis()));
        }
        synchronized (this.mLock) {
            Slog.d(TAG, "Received supported packages " + supportedPackages);
            Iterator<ObserverInternal> oit = this.mAllObservers.values().iterator();
            while (oit.hasNext()) {
                for (MonitoredPackage monitoredPackage : oit.next().packages.values()) {
                    String packageName = monitoredPackage.getName();
                    int oldState = monitoredPackage.getHealthCheckStateLocked();
                    if (supportedPackageTimeouts.containsKey(packageName)) {
                        newState = monitoredPackage.setHealthCheckActiveLocked(supportedPackageTimeouts.get(packageName).longValue());
                    } else {
                        newState = monitoredPackage.tryPassHealthCheckLocked();
                    }
                    isStateChanged |= oldState != newState;
                }
            }
        }
        if (isStateChanged) {
            syncState("updated health check supported packages " + supportedPackages);
        }
    }

    private Set<String> getPackagesPendingHealthChecksLocked() {
        Slog.d(TAG, "Getting all observed packages pending health checks");
        Set<String> packages = new ArraySet<>();
        for (ObserverInternal observer : this.mAllObservers.values()) {
            for (MonitoredPackage monitoredPackage : observer.packages.values()) {
                String packageName = monitoredPackage.getName();
                if (monitoredPackage.isPendingHealthChecksLocked()) {
                    packages.add(packageName);
                }
            }
        }
        return packages;
    }

    private void syncState(String reason) {
        synchronized (this.mLock) {
            Slog.i(TAG, "Syncing state, reason: " + reason);
            pruneObserversLocked();
            saveToFileAsync();
            syncRequestsAsync();
            scheduleNextSyncStateLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncStateWithScheduledReason() {
        syncState("scheduled");
    }

    private void scheduleNextSyncStateLocked() {
        long durationMs = getNextStateSyncMillisLocked();
        this.mShortTaskHandler.removeCallbacks(this.mSyncStateWithScheduledReason);
        if (durationMs == JobStatus.NO_LATEST_RUNTIME) {
            Slog.i(TAG, "Cancelling state sync, nothing to sync");
            this.mUptimeAtLastStateSync = 0L;
            return;
        }
        Slog.i(TAG, "Scheduling next state sync in " + durationMs + "ms");
        this.mUptimeAtLastStateSync = this.mSystemClock.uptimeMillis();
        this.mShortTaskHandler.postDelayed(this.mSyncStateWithScheduledReason, durationMs);
    }

    private long getNextStateSyncMillisLocked() {
        long shortestDurationMs = JobStatus.NO_LATEST_RUNTIME;
        for (int oIndex = 0; oIndex < this.mAllObservers.size(); oIndex++) {
            ArrayMap<String, MonitoredPackage> packages = this.mAllObservers.valueAt(oIndex).packages;
            for (int pIndex = 0; pIndex < packages.size(); pIndex++) {
                MonitoredPackage mp = packages.valueAt(pIndex);
                long duration = mp.getShortestScheduleDurationMsLocked();
                if (duration < shortestDurationMs) {
                    shortestDurationMs = duration;
                }
            }
        }
        return shortestDurationMs;
    }

    private void pruneObserversLocked() {
        long elapsedMs = this.mUptimeAtLastStateSync == 0 ? 0L : this.mSystemClock.uptimeMillis() - this.mUptimeAtLastStateSync;
        if (elapsedMs <= 0) {
            Slog.i(TAG, "Not pruning observers, elapsed time: " + elapsedMs + "ms");
            return;
        }
        Slog.i(TAG, "Removing " + elapsedMs + "ms from all packages on all observers");
        Iterator<ObserverInternal> it = this.mAllObservers.values().iterator();
        while (it.hasNext()) {
            ObserverInternal observer = it.next();
            Set<MonitoredPackage> failedPackages = observer.prunePackagesLocked(elapsedMs);
            if (!failedPackages.isEmpty()) {
                onHealthCheckFailed(observer, failedPackages);
            }
            if (observer.packages.isEmpty() && (observer.registeredObserver == null || !observer.registeredObserver.isPersistent())) {
                Slog.i(TAG, "Discarding observer " + observer.name + ". All packages expired");
                it.remove();
            }
        }
    }

    private void onHealthCheckFailed(final ObserverInternal observer, final Set<MonitoredPackage> failedPackages) {
        this.mLongTaskHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$PackageWatchdog$GB6yAhRLhCGS-ufDzSN8j7GHmGo
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onHealthCheckFailed$7$PackageWatchdog(observer, failedPackages);
            }
        });
    }

    public /* synthetic */ void lambda$onHealthCheckFailed$7$PackageWatchdog(ObserverInternal observer, Set failedPackages) {
        synchronized (this.mLock) {
            PackageHealthObserver registeredObserver = observer.registeredObserver;
            if (registeredObserver != null) {
                Iterator<MonitoredPackage> it = failedPackages.iterator();
                while (it.hasNext()) {
                    VersionedPackage versionedPkg = it.next().mPackage;
                    Slog.i(TAG, "Explicit health check failed for package " + versionedPkg);
                    registeredObserver.execute(versionedPkg, 2);
                }
            }
        }
    }

    private VersionedPackage getVersionedPackage(String packageName) {
        PackageManager pm = this.mContext.getPackageManager();
        if (pm == null || TextUtils.isEmpty(packageName)) {
            return null;
        }
        try {
            long versionCode = pm.getPackageInfo(packageName, 0).getLongVersionCode();
            return new VersionedPackage(packageName, versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    private void loadFromFile() {
        InputStream infile = null;
        this.mAllObservers.clear();
        try {
            infile = this.mPolicyFile.openRead();
            XmlPullParser parser = Xml.newPullParser();
            parser.setInput(infile, StandardCharsets.UTF_8.name());
            XmlUtils.beginDocument(parser, TAG_PACKAGE_WATCHDOG);
            int outerDepth = parser.getDepth();
            while (XmlUtils.nextElementWithin(parser, outerDepth)) {
                ObserverInternal observer = ObserverInternal.read(parser, this);
                if (observer != null) {
                    this.mAllObservers.put(observer.name, observer);
                }
            }
        } catch (FileNotFoundException e) {
        } catch (IOException | NumberFormatException | XmlPullParserException e2) {
            Slog.wtf(TAG, "Unable to read monitored packages, deleting file", e2);
            this.mPolicyFile.delete();
        } finally {
            IoUtils.closeQuietly(infile);
        }
    }

    private void setPropertyChangedListenerLocked() {
        DeviceConfig.addOnPropertiesChangedListener("rollback", this.mContext.getMainExecutor(), new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.-$$Lambda$PackageWatchdog$c6DeFAaAsEUAlPf0Sv5YyUydmCk
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                this.f$0.lambda$setPropertyChangedListenerLocked$8$PackageWatchdog(properties);
            }
        });
    }

    public /* synthetic */ void lambda$setPropertyChangedListenerLocked$8$PackageWatchdog(DeviceConfig.Properties properties) {
        if (!"rollback".equals(properties.getNamespace())) {
            return;
        }
        updateConfigs();
    }

    private void updateConfigs() {
        synchronized (this.mLock) {
            int i = DeviceConfig.getInt("rollback", PROPERTY_WATCHDOG_TRIGGER_FAILURE_COUNT, 5);
            this.mTriggerFailureCount = i;
            if (i <= 0) {
                this.mTriggerFailureCount = 5;
            }
            int i2 = DeviceConfig.getInt("rollback", PROPERTY_WATCHDOG_TRIGGER_DURATION_MILLIS, DEFAULT_TRIGGER_FAILURE_DURATION_MS);
            this.mTriggerFailureDurationMs = i2;
            if (i2 <= 0) {
                this.mTriggerFailureDurationMs = DEFAULT_TRIGGER_FAILURE_DURATION_MS;
            }
            setExplicitHealthCheckEnabled(DeviceConfig.getBoolean("rollback", PROPERTY_WATCHDOG_EXPLICIT_HEALTH_CHECK_ENABLED, true));
        }
    }

    private void registerConnectivityModuleHealthListener() {
        this.mConnectivityModuleConnector.registerHealthListener(new ConnectivityModuleConnector.ConnectivityModuleHealthListener() { // from class: com.android.server.-$$Lambda$PackageWatchdog$l0t57Hik0VChZk77GfFE4tnfo0g
            @Override // android.net.ConnectivityModuleConnector.ConnectivityModuleHealthListener
            public final void onNetworkStackFailure(String str) {
                this.f$0.lambda$registerConnectivityModuleHealthListener$9$PackageWatchdog(str);
            }
        });
    }

    public /* synthetic */ void lambda$registerConnectivityModuleHealthListener$9$PackageWatchdog(String packageName) {
        VersionedPackage pkg = getVersionedPackage(packageName);
        if (pkg == null) {
            Slog.wtf(TAG, "NetworkStack failed but could not find its package");
        } else {
            List<VersionedPackage> pkgList = Collections.singletonList(pkg);
            onPackageFailure(pkgList, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveToFile() {
        Slog.i(TAG, "Saving observer state to file");
        synchronized (this.mLock) {
            try {
                try {
                    FileOutputStream stream = this.mPolicyFile.startWrite();
                    try {
                        try {
                            XmlSerializer out = new FastXmlSerializer();
                            out.setOutput(stream, StandardCharsets.UTF_8.name());
                            out.startDocument(null, true);
                            out.startTag(null, TAG_PACKAGE_WATCHDOG);
                            out.attribute(null, ATTR_VERSION, Integer.toString(1));
                            for (int oIndex = 0; oIndex < this.mAllObservers.size(); oIndex++) {
                                this.mAllObservers.valueAt(oIndex).writeLocked(out);
                            }
                            out.endTag(null, TAG_PACKAGE_WATCHDOG);
                            out.endDocument();
                            this.mPolicyFile.finishWrite(stream);
                            IoUtils.closeQuietly(stream);
                        } catch (IOException e) {
                            Slog.w(TAG, "Failed to save monitored packages, restoring backup", e);
                            this.mPolicyFile.failWrite(stream);
                            IoUtils.closeQuietly(stream);
                            return false;
                        }
                    } catch (Throwable th) {
                        IoUtils.closeQuietly(stream);
                        throw th;
                    }
                } catch (IOException e2) {
                    Slog.w(TAG, "Cannot update monitored packages", e2);
                    return false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return true;
    }

    private void saveToFileAsync() {
        if (!this.mLongTaskHandler.hasCallbacks(this.mSaveToFile)) {
            this.mLongTaskHandler.post(this.mSaveToFile);
        }
    }

    public void dump(IndentingPrintWriter pw) {
        pw.println("Package Watchdog status");
        pw.increaseIndent();
        synchronized (this.mLock) {
            for (String observerName : this.mAllObservers.keySet()) {
                pw.println("Observer name: " + observerName);
                pw.increaseIndent();
                ObserverInternal observerInternal = this.mAllObservers.get(observerName);
                observerInternal.dump(pw);
                pw.decreaseIndent();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class ObserverInternal {
        public final String name;
        public final ArrayMap<String, MonitoredPackage> packages = new ArrayMap<>();
        public PackageHealthObserver registeredObserver;

        ObserverInternal(String name, List<MonitoredPackage> packages) {
            this.name = name;
            updatePackagesLocked(packages);
        }

        public boolean writeLocked(XmlSerializer out) {
            try {
                out.startTag(null, PackageWatchdog.TAG_OBSERVER);
                out.attribute(null, "name", this.name);
                for (int i = 0; i < this.packages.size(); i++) {
                    MonitoredPackage p = this.packages.valueAt(i);
                    p.writeLocked(out);
                }
                out.endTag(null, PackageWatchdog.TAG_OBSERVER);
                return true;
            } catch (IOException e) {
                Slog.w(PackageWatchdog.TAG, "Cannot save observer", e);
                return false;
            }
        }

        public void updatePackagesLocked(List<MonitoredPackage> packages) {
            for (int pIndex = 0; pIndex < packages.size(); pIndex++) {
                MonitoredPackage p = packages.get(pIndex);
                MonitoredPackage existingPackage = this.packages.get(p.getName());
                if (existingPackage != null) {
                    existingPackage.updateHealthCheckDuration(p.mDurationMs);
                } else {
                    this.packages.put(p.getName(), p);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Set<MonitoredPackage> prunePackagesLocked(long elapsedMs) {
            Set<MonitoredPackage> failedPackages = new ArraySet<>();
            Iterator<MonitoredPackage> it = this.packages.values().iterator();
            while (it.hasNext()) {
                MonitoredPackage p = it.next();
                int oldState = p.getHealthCheckStateLocked();
                int newState = p.handleElapsedTimeLocked(elapsedMs);
                if (oldState != 3 && newState == 3) {
                    Slog.i(PackageWatchdog.TAG, "Package " + p.getName() + " failed health check");
                    failedPackages.add(p);
                }
                if (p.isExpiredLocked()) {
                    it.remove();
                }
            }
            return failedPackages;
        }

        public boolean onPackageFailureLocked(String packageName) {
            if (this.packages.get(packageName) == null && this.registeredObserver.isPersistent() && this.registeredObserver.mayObservePackage(packageName)) {
                this.packages.put(packageName, PackageWatchdog.sPackageWatchdog.newMonitoredPackage(packageName, PackageWatchdog.DEFAULT_OBSERVING_DURATION_MS, false));
            }
            MonitoredPackage p = this.packages.get(packageName);
            if (p != null) {
                return p.onFailureLocked();
            }
            return false;
        }

        public static ObserverInternal read(XmlPullParser parser, PackageWatchdog watchdog) {
            String observerName = null;
            if (PackageWatchdog.TAG_OBSERVER.equals(parser.getName())) {
                observerName = parser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(observerName)) {
                    Slog.wtf(PackageWatchdog.TAG, "Unable to read observer name");
                    return null;
                }
            }
            List<MonitoredPackage> packages = new ArrayList<>();
            int innerDepth = parser.getDepth();
            while (XmlUtils.nextElementWithin(parser, innerDepth)) {
                try {
                    if ("package".equals(parser.getName())) {
                        try {
                            String packageName = parser.getAttributeValue(null, "name");
                            long duration = Long.parseLong(parser.getAttributeValue(null, PackageWatchdog.ATTR_DURATION));
                            long healthCheckDuration = Long.parseLong(parser.getAttributeValue(null, PackageWatchdog.ATTR_EXPLICIT_HEALTH_CHECK_DURATION));
                            boolean hasPassedHealthCheck = Boolean.parseBoolean(parser.getAttributeValue(null, PackageWatchdog.ATTR_PASSED_HEALTH_CHECK));
                            MonitoredPackage pkg = watchdog.newMonitoredPackage(packageName, duration, healthCheckDuration, hasPassedHealthCheck);
                            if (pkg != null) {
                                packages.add(pkg);
                            }
                        } catch (NumberFormatException e) {
                            Slog.wtf(PackageWatchdog.TAG, "Skipping package for observer " + observerName, e);
                        }
                    }
                } catch (IOException | XmlPullParserException e2) {
                    Slog.wtf(PackageWatchdog.TAG, "Unable to read observer " + observerName, e2);
                    return null;
                }
            }
            if (packages.isEmpty()) {
                return null;
            }
            return new ObserverInternal(observerName, packages);
        }

        public void dump(IndentingPrintWriter pw) {
            PackageHealthObserver packageHealthObserver = this.registeredObserver;
            boolean isPersistent = packageHealthObserver != null && packageHealthObserver.isPersistent();
            pw.println("Persistent: " + isPersistent);
            for (String packageName : this.packages.keySet()) {
                MonitoredPackage p = this.packages.get(packageName);
                pw.println(packageName + ": ");
                pw.increaseIndent();
                pw.println("# Failures: " + p.mFailureHistory.size());
                pw.println("Monitoring duration remaining: " + p.mDurationMs + "ms");
                pw.println("Explicit health check duration: " + p.mHealthCheckDurationMs + "ms");
                StringBuilder sb = new StringBuilder();
                sb.append("Health check state: ");
                sb.append(p.toString(p.mHealthCheckState));
                pw.println(sb.toString());
                pw.decreaseIndent();
            }
        }
    }

    MonitoredPackage newMonitoredPackage(String name, long durationMs, boolean hasPassedHealthCheck) {
        return newMonitoredPackage(name, durationMs, JobStatus.NO_LATEST_RUNTIME, hasPassedHealthCheck);
    }

    MonitoredPackage newMonitoredPackage(String name, long durationMs, long healthCheckDurationMs, boolean hasPassedHealthCheck) {
        VersionedPackage pkg = getVersionedPackage(name);
        if (pkg == null) {
            return null;
        }
        return new MonitoredPackage(pkg, durationMs, healthCheckDurationMs, hasPassedHealthCheck);
    }

    class MonitoredPackage {
        private long mDurationMs;
        private final LongArrayQueue mFailureHistory;
        private boolean mHasPassedHealthCheck;
        private long mHealthCheckDurationMs;
        private int mHealthCheckState;
        private final VersionedPackage mPackage;

        private MonitoredPackage(VersionedPackage pkg, long durationMs, long healthCheckDurationMs, boolean hasPassedHealthCheck) {
            this.mFailureHistory = new LongArrayQueue();
            this.mHealthCheckState = 1;
            this.mHealthCheckDurationMs = JobStatus.NO_LATEST_RUNTIME;
            this.mPackage = pkg;
            this.mDurationMs = durationMs;
            this.mHealthCheckDurationMs = healthCheckDurationMs;
            this.mHasPassedHealthCheck = hasPassedHealthCheck;
            updateHealthCheckStateLocked();
        }

        public void writeLocked(XmlSerializer out) throws IOException {
            out.startTag(null, "package");
            out.attribute(null, "name", getName());
            out.attribute(null, PackageWatchdog.ATTR_DURATION, String.valueOf(this.mDurationMs));
            out.attribute(null, PackageWatchdog.ATTR_EXPLICIT_HEALTH_CHECK_DURATION, String.valueOf(this.mHealthCheckDurationMs));
            out.attribute(null, PackageWatchdog.ATTR_PASSED_HEALTH_CHECK, String.valueOf(this.mHasPassedHealthCheck));
            out.endTag(null, "package");
        }

        public boolean onFailureLocked() {
            long now = PackageWatchdog.this.mSystemClock.uptimeMillis();
            this.mFailureHistory.addLast(now);
            while (now - this.mFailureHistory.peekFirst() > PackageWatchdog.this.mTriggerFailureDurationMs) {
                this.mFailureHistory.removeFirst();
            }
            boolean failed = this.mFailureHistory.size() >= PackageWatchdog.this.mTriggerFailureCount;
            if (failed) {
                this.mFailureHistory.clear();
            }
            return failed;
        }

        public int setHealthCheckActiveLocked(long initialHealthCheckDurationMs) {
            if (initialHealthCheckDurationMs <= 0) {
                Slog.wtf(PackageWatchdog.TAG, "Cannot set non-positive health check duration " + initialHealthCheckDurationMs + "ms for package " + getName() + ". Using total duration " + this.mDurationMs + "ms instead");
                initialHealthCheckDurationMs = this.mDurationMs;
            }
            if (this.mHealthCheckState == 1) {
                this.mHealthCheckDurationMs = initialHealthCheckDurationMs;
            }
            return updateHealthCheckStateLocked();
        }

        public int handleElapsedTimeLocked(long elapsedMs) {
            if (elapsedMs <= 0) {
                Slog.w(PackageWatchdog.TAG, "Cannot handle non-positive elapsed time for package " + getName());
                return this.mHealthCheckState;
            }
            this.mDurationMs -= elapsedMs;
            if (this.mHealthCheckState == 0) {
                this.mHealthCheckDurationMs -= elapsedMs;
            }
            return updateHealthCheckStateLocked();
        }

        public void updateHealthCheckDuration(long newDurationMs) {
            this.mDurationMs = newDurationMs;
        }

        public int tryPassHealthCheckLocked() {
            if (this.mHealthCheckState != 3) {
                this.mHasPassedHealthCheck = true;
            }
            return updateHealthCheckStateLocked();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getName() {
            return this.mPackage.getPackageName();
        }

        public int getHealthCheckStateLocked() {
            return this.mHealthCheckState;
        }

        public long getShortestScheduleDurationMsLocked() {
            return Math.min(toPositive(this.mDurationMs), isPendingHealthChecksLocked() ? toPositive(this.mHealthCheckDurationMs) : JobStatus.NO_LATEST_RUNTIME);
        }

        public boolean isExpiredLocked() {
            return this.mDurationMs <= 0;
        }

        public boolean isPendingHealthChecksLocked() {
            int i = this.mHealthCheckState;
            return i == 0 || i == 1;
        }

        private int updateHealthCheckStateLocked() {
            int oldState = this.mHealthCheckState;
            if (this.mHasPassedHealthCheck) {
                this.mHealthCheckState = 2;
            } else {
                long j = this.mHealthCheckDurationMs;
                if (j <= 0 || this.mDurationMs <= 0) {
                    this.mHealthCheckState = 3;
                } else if (j == JobStatus.NO_LATEST_RUNTIME) {
                    this.mHealthCheckState = 1;
                } else {
                    this.mHealthCheckState = 0;
                }
            }
            Slog.i(PackageWatchdog.TAG, "Updated health check state for package " + getName() + ": " + toString(oldState) + " -> " + toString(this.mHealthCheckState));
            return this.mHealthCheckState;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String toString(int state) {
            if (state == 0) {
                return "ACTIVE";
            }
            if (state == 1) {
                return "INACTIVE";
            }
            if (state == 2) {
                return "PASSED";
            }
            if (state == 3) {
                return "FAILED";
            }
            return "UNKNOWN";
        }

        private long toPositive(long value) {
            return value > 0 ? value : JobStatus.NO_LATEST_RUNTIME;
        }
    }

    static class BootThreshold {
        private final int mBootTriggerCount;
        private final long mTriggerWindow;

        BootThreshold(int bootTriggerCount, long triggerWindow) {
            this.mBootTriggerCount = bootTriggerCount;
            this.mTriggerWindow = triggerWindow;
        }

        public void reset() {
            setStart(0L);
            setCount(0);
        }

        private int getCount() {
            return SystemProperties.getInt(PackageWatchdog.PROP_RESCUE_BOOT_COUNT, 0);
        }

        private void setCount(int count) {
            SystemProperties.set(PackageWatchdog.PROP_RESCUE_BOOT_COUNT, Integer.toString(count));
        }

        public long getStart() {
            return SystemProperties.getLong(PackageWatchdog.PROP_RESCUE_BOOT_START, 0L);
        }

        public void setStart(long start) {
            long now = android.os.SystemClock.elapsedRealtime();
            long newStart = MathUtils.constrain(start, 0L, now);
            SystemProperties.set(PackageWatchdog.PROP_RESCUE_BOOT_START, Long.toString(newStart));
        }

        public boolean incrementAndTest() {
            long now = android.os.SystemClock.elapsedRealtime();
            if (now - getStart() < 0) {
                Slog.e(PackageWatchdog.TAG, "Window was less than zero. Resetting start to current time.");
                setStart(now);
            }
            long window = now - getStart();
            if (window >= this.mTriggerWindow) {
                setCount(1);
                setStart(now);
                return false;
            }
            int count = getCount() + 1;
            setCount(count);
            EventLogTags.writeRescueNote(0, count, window);
            return count >= this.mBootTriggerCount;
        }
    }
}

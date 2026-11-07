package com.android.server.pm;

import android.R;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.os.Environment;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.storage.StorageManager;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.LocalServices;
import com.android.server.PinnerService;
import com.android.server.job.controllers.JobStatus;
import com.android.server.pm.dex.DexManager;
import com.android.server.pm.dex.DexoptOptions;
import com.android.server.usb.descriptors.UsbTerminalTypes;
import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class BackgroundDexOptService extends JobService {
    private static final boolean DEBUG;
    private static final long IDLE_OPTIMIZATION_PERIOD;
    private static final int JOB_IDLE_OPTIMIZE = 800;
    private static final int JOB_POST_BOOT_UPDATE = 801;
    private static final int LOW_THRESHOLD_MULTIPLIER_FOR_DOWNGRADE = 2;
    private static final int OPTIMIZE_ABORT_BY_JOB_SCHEDULER = 2;
    private static final int OPTIMIZE_ABORT_NO_SPACE_LEFT = 3;
    private static final int OPTIMIZE_CONTINUE = 1;
    private static final int OPTIMIZE_PROCESSED = 0;
    private static final String TAG = "BackgroundDexOptService";
    private static final long mDowngradeUnusedAppsThresholdInMillis;
    private static ComponentName sDexoptServiceName;
    static final ArraySet<String> sFailedPackageNamesPrimary;
    static final ArraySet<String> sFailedPackageNamesSecondary;
    private static List<PackagesUpdatedListener> sPackagesUpdatedListeners;
    private final AtomicBoolean mAbortPostBootUpdate = new AtomicBoolean(false);
    private final AtomicBoolean mAbortIdleOptimization = new AtomicBoolean(false);
    private final AtomicBoolean mExitPostBootUpdate = new AtomicBoolean(false);
    private final File mDataDir = Environment.getDataDirectory();

    public interface PackagesUpdatedListener {
        void onPackagesUpdated(ArraySet<String> arraySet);
    }

    static {
        boolean zIsLoggable = Log.isLoggable(TAG, 3);
        DEBUG = zIsLoggable;
        IDLE_OPTIMIZATION_PERIOD = zIsLoggable ? TimeUnit.MINUTES.toMillis(1L) : TimeUnit.DAYS.toMillis(1L);
        sDexoptServiceName = new ComponentName(PackageManagerService.PLATFORM_PACKAGE_NAME, BackgroundDexOptService.class.getName());
        sFailedPackageNamesPrimary = new ArraySet<>();
        sFailedPackageNamesSecondary = new ArraySet<>();
        mDowngradeUnusedAppsThresholdInMillis = getDowngradeUnusedAppsThresholdInMillis();
        sPackagesUpdatedListeners = new ArrayList();
    }

    public static void schedule(Context context) {
        if (isBackgroundDexoptDisabled()) {
            return;
        }
        JobScheduler js = (JobScheduler) context.getSystemService("jobscheduler");
        js.schedule(new JobInfo.Builder(JOB_POST_BOOT_UPDATE, sDexoptServiceName).setMinimumLatency(TimeUnit.MINUTES.toMillis(1L)).setOverrideDeadline(TimeUnit.MINUTES.toMillis(1L)).build());
        js.schedule(new JobInfo.Builder(JOB_IDLE_OPTIMIZE, sDexoptServiceName).setRequiresDeviceIdle(true).setRequiresCharging(true).setPeriodic(IDLE_OPTIMIZATION_PERIOD).build());
    }

    public static void notifyPackageChanged(String packageName) {
        synchronized (sFailedPackageNamesPrimary) {
            sFailedPackageNamesPrimary.remove(packageName);
        }
        synchronized (sFailedPackageNamesSecondary) {
            sFailedPackageNamesSecondary.remove(packageName);
        }
    }

    private int getBatteryLevel() {
        IntentFilter filter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        Intent intent = registerReceiver(null, filter);
        int level = intent.getIntExtra("level", -1);
        int scale = intent.getIntExtra("scale", -1);
        boolean present = intent.getBooleanExtra("present", true);
        if (!present) {
            return 100;
        }
        if (level < 0 || scale <= 0) {
            return 0;
        }
        return (level * 100) / scale;
    }

    private long getLowStorageThreshold(Context context) {
        long lowThreshold = StorageManager.from(context).getStorageLowBytes(this.mDataDir);
        if (lowThreshold == 0) {
            Log.e(TAG, "Invalid low storage threshold");
        }
        return lowThreshold;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.server.pm.BackgroundDexOptService$1] */
    private boolean runPostBootUpdate(final JobParameters jobParams, final PackageManagerService pm, final ArraySet<String> pkgs) {
        if (this.mExitPostBootUpdate.get()) {
            return false;
        }
        new Thread("BackgroundDexOptService_PostBootUpdate") { // from class: com.android.server.pm.BackgroundDexOptService.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                BackgroundDexOptService.this.postBootUpdate(jobParams, pm, pkgs);
            }
        }.start();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postBootUpdate(JobParameters jobParams, PackageManagerService pm, ArraySet<String> pkgs) {
        int lowBatteryThreshold = getResources().getInteger(R.integer.auto_data_switch_performance_stability_time_threshold_millis);
        long lowThreshold = getLowStorageThreshold(this);
        this.mAbortPostBootUpdate.set(false);
        ArraySet<String> updatedPackages = new ArraySet<>();
        for (String pkg : pkgs) {
            if (this.mAbortPostBootUpdate.get()) {
                return;
            }
            if (this.mExitPostBootUpdate.get() || getBatteryLevel() < lowBatteryThreshold) {
                break;
            }
            long usableSpace = this.mDataDir.getUsableSpace();
            if (usableSpace < lowThreshold) {
                Log.w(TAG, "Aborting background dex opt job due to low storage: " + usableSpace);
                break;
            }
            int result = pm.performDexOptWithStatus(new DexoptOptions(pkg, 1, 4));
            if (result == 1) {
                updatedPackages.add(pkg);
            }
        }
        notifyPinService(updatedPackages);
        notifyPackagesUpdated(updatedPackages);
        jobFinished(jobParams, false);
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [com.android.server.pm.BackgroundDexOptService$2] */
    private boolean runIdleOptimization(final JobParameters jobParams, final PackageManagerService pm, final ArraySet<String> pkgs) {
        new Thread("BackgroundDexOptService_IdleOptimization") { // from class: com.android.server.pm.BackgroundDexOptService.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws Throwable {
                BackgroundDexOptService backgroundDexOptService = BackgroundDexOptService.this;
                int result = backgroundDexOptService.idleOptimization(pm, pkgs, backgroundDexOptService);
                if (result == 0) {
                    Log.i(BackgroundDexOptService.TAG, "Idle optimizations completed.");
                } else if (result == 3) {
                    Log.w(BackgroundDexOptService.TAG, "Idle optimizations aborted because of space constraints.");
                } else if (result == 2) {
                    Log.w(BackgroundDexOptService.TAG, "Idle optimizations aborted by job scheduler.");
                } else {
                    Log.w(BackgroundDexOptService.TAG, "Idle optimizations ended with unexpected code: " + result);
                }
                if (result != 2) {
                    BackgroundDexOptService.this.jobFinished(jobParams, false);
                }
            }
        }.start();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int idleOptimization(PackageManagerService pm, ArraySet<String> pkgs, Context context) throws Throwable {
        Log.i(TAG, "Performing idle optimizations");
        this.mExitPostBootUpdate.set(true);
        this.mAbortIdleOptimization.set(false);
        long lowStorageThreshold = getLowStorageThreshold(context);
        int result = idleOptimizePackages(pm, pkgs, lowStorageThreshold);
        return result;
    }

    private long getDirectorySize(File f) {
        long size = 0;
        if (f.isDirectory()) {
            for (File file : f.listFiles()) {
                size += getDirectorySize(file);
            }
            return size;
        }
        long size2 = f.length();
        return size2;
    }

    private long getPackageSize(PackageManagerService pm, String pkg) {
        PackageInfo info = pm.getPackageInfo(pkg, 0, 0);
        if (info != null && info.applicationInfo != null) {
            File path = Paths.get(info.applicationInfo.sourceDir, new String[0]).toFile();
            if (path.isFile()) {
                path = path.getParentFile();
            }
            long size = 0 + getDirectorySize(path);
            if (!ArrayUtils.isEmpty(info.applicationInfo.splitSourceDirs)) {
                for (String splitSourceDir : info.applicationInfo.splitSourceDirs) {
                    File path2 = Paths.get(splitSourceDir, new String[0]).toFile();
                    if (path2.isFile()) {
                        path2 = path2.getParentFile();
                    }
                    size += getDirectorySize(path2);
                }
            }
            return size;
        }
        return 0L;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:51:0x00db A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x00de  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e5  */
    private int idleOptimizePackages(PackageManagerService pm, ArraySet<String> pkgs, long lowStorageThreshold) throws Throwable {
        ArraySet<String> updatedPackages;
        ArraySet<String> pkgs2;
        int primaryResult;
        ArraySet<String> updatedPackages2 = new ArraySet<>();
        ArraySet<String> updatedPackagesDueToSecondaryDex = new ArraySet<>();
        try {
            boolean supportSecondaryDex = supportSecondaryDex();
            if (supportSecondaryDex) {
                try {
                    int result = reconcileSecondaryDexFiles(pm.getDexManager());
                    if (result == 2) {
                        notifyPinService(updatedPackages2);
                        notifyPackagesUpdated(updatedPackages2);
                        return result;
                    }
                } catch (Throwable th) {
                    th = th;
                    updatedPackages = updatedPackages2;
                    notifyPinService(updatedPackages);
                    notifyPackagesUpdated(updatedPackages);
                    throw th;
                }
            }
            long lowStorageThresholdForDowngrade = lowStorageThreshold * 2;
            boolean shouldDowngrade = shouldDowngrade(lowStorageThresholdForDowngrade);
            Log.d(TAG, "Should Downgrade " + shouldDowngrade);
            try {
                if (shouldDowngrade) {
                    Set<String> unusedPackages = pm.getUnusedPackages(mDowngradeUnusedAppsThresholdInMillis);
                    Log.d(TAG, "Unsused Packages " + String.join(",", unusedPackages));
                    if (!unusedPackages.isEmpty()) {
                        for (String pkg : unusedPackages) {
                            int abortCode = abortIdleOptimizations(-1L);
                            if (abortCode != 1) {
                                notifyPinService(updatedPackages2);
                                notifyPackagesUpdated(updatedPackages2);
                                return abortCode;
                            }
                            if (downgradePackage(pm, pkg, true)) {
                                updatedPackages2.add(pkg);
                            }
                            if (supportSecondaryDex) {
                                downgradePackage(pm, pkg, false);
                            }
                        }
                        try {
                            ArraySet<String> pkgs3 = new ArraySet<>(pkgs);
                            try {
                                pkgs3.removeAll(unusedPackages);
                                pkgs2 = pkgs3;
                                primaryResult = optimizePackages(pm, pkgs2, lowStorageThreshold, true, updatedPackages2);
                                if (primaryResult != 0) {
                                    notifyPinService(updatedPackages2);
                                    notifyPackagesUpdated(updatedPackages2);
                                    return primaryResult;
                                }
                                if (!supportSecondaryDex) {
                                    notifyPinService(updatedPackages2);
                                    notifyPackagesUpdated(updatedPackages2);
                                    return 0;
                                }
                                updatedPackages = updatedPackages2;
                                try {
                                    int secondaryResult = optimizePackages(pm, pkgs2, lowStorageThreshold, false, updatedPackagesDueToSecondaryDex);
                                    notifyPinService(updatedPackages);
                                    notifyPackagesUpdated(updatedPackages);
                                    return secondaryResult;
                                } catch (Throwable th2) {
                                    th = th2;
                                    notifyPinService(updatedPackages);
                                    notifyPackagesUpdated(updatedPackages);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                updatedPackages = updatedPackages2;
                                notifyPinService(updatedPackages);
                                notifyPackagesUpdated(updatedPackages);
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            updatedPackages = updatedPackages2;
                        }
                    }
                }
                primaryResult = optimizePackages(pm, pkgs2, lowStorageThreshold, true, updatedPackages2);
                if (primaryResult != 0) {
                    notifyPinService(updatedPackages2);
                    notifyPackagesUpdated(updatedPackages2);
                    return primaryResult;
                }
                if (!supportSecondaryDex) {
                    notifyPinService(updatedPackages2);
                    notifyPackagesUpdated(updatedPackages2);
                    return 0;
                }
                updatedPackages = updatedPackages2;
                int secondaryResult2 = optimizePackages(pm, pkgs2, lowStorageThreshold, false, updatedPackagesDueToSecondaryDex);
                notifyPinService(updatedPackages);
                notifyPackagesUpdated(updatedPackages);
                return secondaryResult2;
            } catch (Throwable th5) {
                th = th5;
                updatedPackages = updatedPackages2;
            }
            pkgs2 = pkgs;
        } catch (Throwable th6) {
            th = th6;
            updatedPackages = updatedPackages2;
        }
    }

    private int optimizePackages(PackageManagerService pm, ArraySet<String> pkgs, long lowStorageThreshold, boolean isForPrimaryDex, ArraySet<String> updatedPackages) {
        for (String pkg : pkgs) {
            int abortCode = abortIdleOptimizations(lowStorageThreshold);
            if (abortCode != 1) {
                return abortCode;
            }
            boolean dexOptPerformed = optimizePackage(pm, pkg, isForPrimaryDex);
            if (dexOptPerformed) {
                updatedPackages.add(pkg);
            }
        }
        return 0;
    }

    private boolean downgradePackage(PackageManagerService pm, String pkg, boolean isForPrimaryDex) {
        Log.d(TAG, "Downgrading " + pkg);
        boolean dex_opt_performed = false;
        long package_size_before = getPackageSize(pm, pkg);
        if (isForPrimaryDex || PackageManagerService.PLATFORM_PACKAGE_NAME.equals(pkg)) {
            if (!pm.canHaveOatDir(pkg)) {
                pm.deleteOatArtifactsOfPackage(pkg);
            } else {
                dex_opt_performed = performDexOptPrimary(pm, pkg, 5, 548);
            }
        } else {
            dex_opt_performed = performDexOptSecondary(pm, pkg, 5, 548);
        }
        if (dex_opt_performed) {
            FrameworkStatsLog.write(128, pkg, package_size_before, getPackageSize(pm, pkg), false);
        }
        return dex_opt_performed;
    }

    private boolean supportSecondaryDex() {
        return SystemProperties.getBoolean("dalvik.vm.dexopt.secondary", false);
    }

    private int reconcileSecondaryDexFiles(DexManager dm) {
        for (String p : dm.getAllPackagesWithSecondaryDexFiles()) {
            if (this.mAbortIdleOptimization.get()) {
                return 2;
            }
            dm.reconcileSecondaryDexFiles(p);
        }
        return 0;
    }

    private boolean optimizePackage(PackageManagerService pm, String pkg, boolean isForPrimaryDex) {
        if (isForPrimaryDex || PackageManagerService.PLATFORM_PACKAGE_NAME.equals(pkg)) {
            return performDexOptPrimary(pm, pkg, 3, UsbTerminalTypes.TERMINAL_IN_MIC_ARRAY);
        }
        return performDexOptSecondary(pm, pkg, 3, UsbTerminalTypes.TERMINAL_IN_MIC_ARRAY);
    }

    private boolean performDexOptPrimary(final PackageManagerService pm, final String pkg, final int reason, final int dexoptFlags) {
        int result = trackPerformDexOpt(pkg, false, new Supplier() { // from class: com.android.server.pm.-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(pm.performDexOptWithStatus(new DexoptOptions(pkg, reason, dexoptFlags)));
            }
        });
        return result == 1;
    }

    private boolean performDexOptSecondary(final PackageManagerService pm, String pkg, int reason, int dexoptFlags) {
        final DexoptOptions dexoptOptions = new DexoptOptions(pkg, reason, dexoptFlags | 8);
        int result = trackPerformDexOpt(pkg, true, new Supplier() { // from class: com.android.server.pm.-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(pm.performDexOpt(dexoptOptions) ? 1 : -1);
            }
        });
        return result == 1;
    }

    private int trackPerformDexOpt(String pkg, boolean isForPrimaryDex, Supplier<Integer> performDexOptWrapper) {
        ArraySet<String> sFailedPackageNames = isForPrimaryDex ? sFailedPackageNamesPrimary : sFailedPackageNamesSecondary;
        synchronized (sFailedPackageNames) {
            if (sFailedPackageNames.contains(pkg)) {
                return 0;
            }
            sFailedPackageNames.add(pkg);
            int result = performDexOptWrapper.get().intValue();
            if (result != -1) {
                synchronized (sFailedPackageNames) {
                    sFailedPackageNames.remove(pkg);
                }
            }
            return result;
        }
    }

    private int abortIdleOptimizations(long lowStorageThreshold) {
        if (this.mAbortIdleOptimization.get()) {
            return 2;
        }
        long usableSpace = this.mDataDir.getUsableSpace();
        if (usableSpace < lowStorageThreshold) {
            Log.w(TAG, "Aborting background dex opt job due to low storage: " + usableSpace);
            return 3;
        }
        return 1;
    }

    private boolean shouldDowngrade(long lowStorageThresholdForDowngrade) {
        long usableSpace = this.mDataDir.getUsableSpace();
        if (usableSpace < lowStorageThresholdForDowngrade) {
            return true;
        }
        return false;
    }

    public static boolean runIdleOptimizationsNow(PackageManagerService pm, Context context, List<String> packageNames) throws Throwable {
        ArraySet<String> packagesToOptimize;
        BackgroundDexOptService bdos = new BackgroundDexOptService();
        if (packageNames == null) {
            packagesToOptimize = pm.getOptimizablePackages();
        } else {
            packagesToOptimize = new ArraySet<>(packageNames);
        }
        int result = bdos.idleOptimization(pm, packagesToOptimize, context);
        return result == 0;
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters params) {
        PackageManagerService pm = (PackageManagerService) ServiceManager.getService(Settings.ATTR_PACKAGE);
        if (pm.isStorageLow()) {
            return false;
        }
        ArraySet<String> pkgs = pm.getOptimizablePackages();
        if (pkgs.isEmpty()) {
            return false;
        }
        if (params.getJobId() == JOB_POST_BOOT_UPDATE) {
            boolean result = runPostBootUpdate(params, pm, pkgs);
            return result;
        }
        boolean result2 = runIdleOptimization(params, pm, pkgs);
        return result2;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters params) {
        if (params.getJobId() == JOB_POST_BOOT_UPDATE) {
            this.mAbortPostBootUpdate.set(true);
            return false;
        }
        this.mAbortIdleOptimization.set(true);
        return true;
    }

    private void notifyPinService(ArraySet<String> updatedPackages) {
        PinnerService pinnerService = (PinnerService) LocalServices.getService(PinnerService.class);
        if (pinnerService != null) {
            Log.i(TAG, "Pinning optimized code " + updatedPackages);
            pinnerService.update(updatedPackages, false);
        }
    }

    public static void addPackagesUpdatedListener(PackagesUpdatedListener listener) {
        synchronized (sPackagesUpdatedListeners) {
            sPackagesUpdatedListeners.add(listener);
        }
    }

    public static void removePackagesUpdatedListener(PackagesUpdatedListener listener) {
        synchronized (sPackagesUpdatedListeners) {
            sPackagesUpdatedListeners.remove(listener);
        }
    }

    private void notifyPackagesUpdated(ArraySet<String> updatedPackages) {
        synchronized (sPackagesUpdatedListeners) {
            for (PackagesUpdatedListener listener : sPackagesUpdatedListeners) {
                listener.onPackagesUpdated(updatedPackages);
            }
        }
    }

    private static long getDowngradeUnusedAppsThresholdInMillis() {
        String sysPropValue = SystemProperties.get("pm.dexopt.downgrade_after_inactive_days");
        if (sysPropValue == null || sysPropValue.isEmpty()) {
            Log.w(TAG, "SysProp pm.dexopt.downgrade_after_inactive_days not set");
            return JobStatus.NO_LATEST_RUNTIME;
        }
        return TimeUnit.DAYS.toMillis(Long.parseLong(sysPropValue));
    }

    private static boolean isBackgroundDexoptDisabled() {
        return SystemProperties.getBoolean("pm.dexopt.disable_bg_dexopt", false);
    }
}

package com.android.server.rollback;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.VersionedPackage;
import android.content.rollback.PackageRollbackInfo;
import android.content.rollback.RollbackInfo;
import android.content.rollback.RollbackManager;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import android.os.SystemProperties;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseArray;
import com.android.server.LocalServices;
import com.android.server.PackageWatchdog;
import com.android.server.pm.ApexManager;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class RollbackPackageHealthObserver implements PackageWatchdog.PackageHealthObserver {
    private static final String NAME = "rollback-observer";
    private static final String TAG = "RollbackPackageHealthObserver";
    private final ApexManager mApexManager;
    private final Context mContext;
    private final Handler mHandler;
    private final File mLastStagedRollbackIdsFile;
    private final Set<Integer> mPendingStagedRollbackIds = new ArraySet();

    RollbackPackageHealthObserver(Context context) {
        this.mContext = context;
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        this.mHandler = handlerThread.getThreadHandler();
        File dataDir = new File(Environment.getDataDirectory(), NAME);
        dataDir.mkdirs();
        this.mLastStagedRollbackIdsFile = new File(dataDir, "last-staged-rollback-ids");
        PackageWatchdog.getInstance(this.mContext).registerHealthObserver(this);
        this.mApexManager = ApexManager.getInstance();
    }

    @Override // com.android.server.PackageWatchdog.PackageHealthObserver
    public int onHealthCheckFailed(VersionedPackage failedPackage, int failureReason) {
        if ((failureReason == 1 && !((RollbackManager) this.mContext.getSystemService(RollbackManager.class)).getAvailableRollbacks().isEmpty()) || getAvailableRollback(failedPackage) != null) {
            return 3;
        }
        return 0;
    }

    @Override // com.android.server.PackageWatchdog.PackageHealthObserver
    public boolean execute(VersionedPackage failedPackage, int rollbackReason) {
        if (rollbackReason == 1) {
            rollbackAll();
            return true;
        }
        RollbackInfo rollback = getAvailableRollback(failedPackage);
        if (rollback == null) {
            Slog.w(TAG, "Expected rollback but no valid rollback found for " + failedPackage);
            return false;
        }
        rollbackPackage(rollback, failedPackage, rollbackReason);
        return true;
    }

    @Override // com.android.server.PackageWatchdog.PackageHealthObserver
    public String getName() {
        return NAME;
    }

    public void startObservingHealth(List<String> packages, long durationMs) {
        PackageWatchdog.getInstance(this.mContext).startObservingHealth(this, packages, durationMs);
    }

    public void onBootCompletedAsync() {
        this.mHandler.post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackPackageHealthObserver$pi_OhdsKzJHdXoHHtYauaWDdX5A
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onBootCompletedAsync$0$RollbackPackageHealthObserver();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onBootCompleted, reason: merged with bridge method [inline-methods] */
    public void lambda$onBootCompletedAsync$0$RollbackPackageHealthObserver() {
        RollbackManager rollbackManager = (RollbackManager) this.mContext.getSystemService(RollbackManager.class);
        if (!rollbackManager.getAvailableRollbacks().isEmpty()) {
            PackageWatchdog.getInstance(this.mContext).scheduleCheckAndMitigateNativeCrashes();
        }
        SparseArray<String> rollbackIds = popLastStagedRollbackIds();
        for (int i = 0; i < rollbackIds.size(); i++) {
            WatchdogRollbackLogger.logRollbackStatusOnBoot(this.mContext, rollbackIds.keyAt(i), rollbackIds.valueAt(i), rollbackManager.getRecentlyCommittedRollbacks());
        }
    }

    private RollbackInfo getAvailableRollback(VersionedPackage failedPackage) {
        RollbackManager rollbackManager = (RollbackManager) this.mContext.getSystemService(RollbackManager.class);
        for (RollbackInfo rollback : rollbackManager.getAvailableRollbacks()) {
            for (PackageRollbackInfo packageRollback : rollback.getPackages()) {
                if (packageRollback.getVersionRolledBackFrom().equals(failedPackage)) {
                    return rollback;
                }
                if (packageRollback.isApkInApex() && packageRollback.getVersionRolledBackFrom().getPackageName().equals(failedPackage.getPackageName())) {
                    return rollback;
                }
            }
        }
        return null;
    }

    private BroadcastReceiver listenForStagedSessionReady(final RollbackManager rollbackManager, final int rollbackId, final VersionedPackage logPackage) {
        BroadcastReceiver sessionUpdatedReceiver = new BroadcastReceiver() { // from class: com.android.server.rollback.RollbackPackageHealthObserver.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                RollbackPackageHealthObserver.this.handleStagedSessionChange(rollbackManager, rollbackId, this, logPackage);
            }
        };
        IntentFilter sessionUpdatedFilter = new IntentFilter("android.content.pm.action.SESSION_UPDATED");
        this.mContext.registerReceiver(sessionUpdatedReceiver, sessionUpdatedFilter);
        return sessionUpdatedReceiver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStagedSessionChange(RollbackManager rollbackManager, int rollbackId, BroadcastReceiver listener, VersionedPackage logPackage) {
        PackageInstaller packageInstaller = this.mContext.getPackageManager().getPackageInstaller();
        List<RollbackInfo> recentRollbacks = rollbackManager.getRecentlyCommittedRollbacks();
        for (int i = 0; i < recentRollbacks.size(); i++) {
            RollbackInfo recentRollback = recentRollbacks.get(i);
            int sessionId = recentRollback.getCommittedSessionId();
            if (rollbackId == recentRollback.getRollbackId() && sessionId != -1) {
                PackageInstaller.SessionInfo sessionInfo = packageInstaller.getSessionInfo(sessionId);
                if (sessionInfo.isStagedSessionReady() && markStagedSessionHandled(rollbackId)) {
                    this.mContext.unregisterReceiver(listener);
                    saveStagedRollbackId(rollbackId, logPackage);
                    WatchdogRollbackLogger.logEvent(logPackage, 4, 0, "");
                } else if (sessionInfo.isStagedSessionFailed() && markStagedSessionHandled(rollbackId)) {
                    WatchdogRollbackLogger.logEvent(logPackage, 3, 0, "");
                    this.mContext.unregisterReceiver(listener);
                }
            }
        }
        if (isPendingStagedSessionsEmpty()) {
            ((PowerManager) this.mContext.getSystemService(PowerManager.class)).reboot("Rollback staged install");
        }
    }

    private boolean markStagedSessionHandled(int rollbackId) {
        boolean zRemove;
        synchronized (this.mPendingStagedRollbackIds) {
            zRemove = this.mPendingStagedRollbackIds.remove(Integer.valueOf(rollbackId));
        }
        return zRemove;
    }

    private boolean isPendingStagedSessionsEmpty() {
        boolean zIsEmpty;
        synchronized (this.mPendingStagedRollbackIds) {
            zIsEmpty = this.mPendingStagedRollbackIds.isEmpty();
        }
        return zIsEmpty;
    }

    private void saveStagedRollbackId(int stagedRollbackId, VersionedPackage logPackage) {
        writeStagedRollbackId(this.mLastStagedRollbackIdsFile, stagedRollbackId, logPackage);
    }

    static void writeStagedRollbackId(File file, int stagedRollbackId, VersionedPackage logPackage) {
        try {
            FileOutputStream fos = new FileOutputStream(file, true);
            PrintWriter pw = new PrintWriter(fos);
            String logPackageName = logPackage != null ? logPackage.getPackageName() : "";
            pw.append((CharSequence) String.valueOf(stagedRollbackId)).append((CharSequence) ",").append((CharSequence) logPackageName);
            pw.println();
            pw.flush();
            FileUtils.sync(fos);
            pw.close();
        } catch (IOException e) {
            Slog.e(TAG, "Failed to save last staged rollback id", e);
            file.delete();
        }
    }

    private SparseArray<String> popLastStagedRollbackIds() {
        try {
            return readStagedRollbackIds(this.mLastStagedRollbackIdsFile);
        } finally {
            this.mLastStagedRollbackIdsFile.delete();
        }
    }

    static SparseArray<String> readStagedRollbackIds(File file) {
        SparseArray<String> result = new SparseArray<>();
        try {
            BufferedReader reader = new BufferedReader(new FileReader(file));
            while (true) {
                String line = reader.readLine();
                if (line != null) {
                    String[] values = line.trim().split(",");
                    String rollbackId = values[0];
                    String logPackageName = "";
                    if (values.length > 1) {
                        logPackageName = values[1];
                    }
                    result.put(Integer.parseInt(rollbackId), logPackageName);
                } else {
                    return result;
                }
            }
        } catch (Exception e) {
            return new SparseArray<>();
        }
    }

    private boolean isModule(String packageName) {
        String apexPackageName;
        PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        AndroidPackage apkPackage = pmi.getPackage(packageName);
        if (apkPackage != null && (apexPackageName = this.mApexManager.getActiveApexPackageNameContainingPackage(apkPackage)) != null) {
            packageName = apexPackageName;
        }
        PackageManager pm = this.mContext.getPackageManager();
        try {
            return pm.getModuleInfo(packageName, 0) != null;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    private void rollbackPackage(final RollbackInfo rollback, final VersionedPackage failedPackage, int rollbackReason) {
        String failedPackageToLog;
        VersionedPackage logPackageTemp;
        final RollbackManager rollbackManager = (RollbackManager) this.mContext.getSystemService(RollbackManager.class);
        final int reasonToLog = WatchdogRollbackLogger.mapFailureReasonToMetric(rollbackReason);
        if (rollbackReason == 1) {
            failedPackageToLog = SystemProperties.get("sys.init.updatable_crashing_process_name", "");
        } else {
            String failedPackageToLog2 = failedPackage.getPackageName();
            failedPackageToLog = failedPackageToLog2;
        }
        if (!isModule(failedPackage.getPackageName())) {
            logPackageTemp = null;
        } else {
            VersionedPackage logPackageTemp2 = WatchdogRollbackLogger.getLogPackage(this.mContext, failedPackage);
            logPackageTemp = logPackageTemp2;
        }
        final VersionedPackage logPackage = logPackageTemp;
        WatchdogRollbackLogger.logEvent(logPackage, 1, reasonToLog, failedPackageToLog);
        final String str = failedPackageToLog;
        final LocalIntentReceiver rollbackReceiver = new LocalIntentReceiver(new Consumer() { // from class: com.android.server.rollback.-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$rollbackPackage$1$RollbackPackageHealthObserver(rollback, rollbackManager, logPackage, reasonToLog, str, (Intent) obj);
            }
        });
        this.mHandler.post(new Runnable() { // from class: com.android.server.rollback.-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94
            @Override // java.lang.Runnable
            public final void run() {
                rollbackManager.commitRollback(rollback.getRollbackId(), Collections.singletonList(failedPackage), rollbackReceiver.getIntentSender());
            }
        });
    }

    public /* synthetic */ void lambda$rollbackPackage$1$RollbackPackageHealthObserver(RollbackInfo rollback, RollbackManager rollbackManager, VersionedPackage logPackage, int reasonToLog, String failedPackageToLog, Intent result) {
        int status = result.getIntExtra("android.content.rollback.extra.STATUS", 1);
        if (status == 0) {
            if (rollback.isStaged()) {
                int rollbackId = rollback.getRollbackId();
                synchronized (this.mPendingStagedRollbackIds) {
                    this.mPendingStagedRollbackIds.add(Integer.valueOf(rollbackId));
                }
                BroadcastReceiver listener = listenForStagedSessionReady(rollbackManager, rollbackId, logPackage);
                handleStagedSessionChange(rollbackManager, rollbackId, listener, logPackage);
                return;
            }
            WatchdogRollbackLogger.logEvent(logPackage, 2, reasonToLog, failedPackageToLog);
            return;
        }
        if (rollback.isStaged()) {
            markStagedSessionHandled(rollback.getRollbackId());
        }
        WatchdogRollbackLogger.logEvent(logPackage, 3, reasonToLog, failedPackageToLog);
    }

    private void rollbackAll() {
        Slog.i(TAG, "Rolling back all available rollbacks");
        RollbackManager rollbackManager = (RollbackManager) this.mContext.getSystemService(RollbackManager.class);
        List<RollbackInfo> rollbacks = rollbackManager.getAvailableRollbacks();
        synchronized (this.mPendingStagedRollbackIds) {
            for (RollbackInfo rollback : rollbacks) {
                if (rollback.isStaged()) {
                    this.mPendingStagedRollbackIds.add(Integer.valueOf(rollback.getRollbackId()));
                }
            }
        }
        for (RollbackInfo rollback2 : rollbacks) {
            VersionedPackage sample = ((PackageRollbackInfo) rollback2.getPackages().get(0)).getVersionRolledBackFrom();
            rollbackPackage(rollback2, sample, 1);
        }
    }
}

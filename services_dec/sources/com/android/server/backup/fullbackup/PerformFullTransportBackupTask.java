package com.android.server.backup.fullbackup;

import android.app.IBackupAgent;
import android.app.backup.BackupProgress;
import android.app.backup.IBackupCallback;
import android.app.backup.IBackupManagerMonitor;
import android.app.backup.IBackupObserver;
import android.app.backup.IFullBackupRestoreObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.EventLog;
import android.util.Log;
import android.util.Slog;
import com.android.internal.backup.IBackupTransport;
import com.android.server.EventLogTags;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.backup.BackupRestoreTask;
import com.android.server.backup.FullBackupJob;
import com.android.server.backup.TransportManager;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.internal.OnTaskFinishedListener;
import com.android.server.backup.internal.Operation;
import com.android.server.backup.remote.RemoteCall;
import com.android.server.backup.remote.RemoteCallable;
import com.android.server.backup.transport.TransportClient;
import com.android.server.backup.transport.TransportNotAvailableException;
import com.android.server.backup.utils.AppBackupUtils;
import com.android.server.backup.utils.BackupManagerMonitorUtils;
import com.android.server.backup.utils.BackupObserverUtils;
import com.android.server.job.JobSchedulerShellCommand;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public class PerformFullTransportBackupTask extends FullBackupTask implements BackupRestoreTask {
    private static final String TAG = "PFTBT";
    private final BackupAgentTimeoutParameters mAgentTimeoutParameters;
    IBackupObserver mBackupObserver;
    SinglePackageBackupRunner mBackupRunner;
    private final int mBackupRunnerOpToken;
    private volatile boolean mCancelAll;
    private final Object mCancelLock;
    private final int mCurrentOpToken;
    PackageInfo mCurrentPackage;
    private volatile boolean mIsDoingBackup;
    FullBackupJob mJob;
    CountDownLatch mLatch;
    private final OnTaskFinishedListener mListener;
    private IBackupManagerMonitor mMonitor;
    List<PackageInfo> mPackages;
    private final TransportClient mTransportClient;
    boolean mUpdateSchedule;
    private UserBackupManagerService mUserBackupManagerService;
    private final int mUserId;
    boolean mUserInitiated;

    public static PerformFullTransportBackupTask newWithCurrentTransport(UserBackupManagerService backupManagerService, IFullBackupRestoreObserver observer, String[] whichPackages, boolean updateSchedule, FullBackupJob runningJob, CountDownLatch latch, IBackupObserver backupObserver, IBackupManagerMonitor monitor, boolean userInitiated, String caller) {
        final TransportManager transportManager = backupManagerService.getTransportManager();
        final TransportClient transportClient = transportManager.getCurrentTransportClient(caller);
        OnTaskFinishedListener listener = new OnTaskFinishedListener() { // from class: com.android.server.backup.fullbackup.-$$Lambda$PerformFullTransportBackupTask$ymLoQLrsEpmGaMrcudrdAgsU1Zk
            @Override // com.android.server.backup.internal.OnTaskFinishedListener
            public final void onFinished(String str) {
                transportManager.disposeOfTransportClient(transportClient, str);
            }
        };
        return new PerformFullTransportBackupTask(backupManagerService, transportClient, observer, whichPackages, updateSchedule, runningJob, latch, backupObserver, monitor, listener, userInitiated);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PerformFullTransportBackupTask(UserBackupManagerService backupManagerService, TransportClient transportClient, IFullBackupRestoreObserver observer, String[] whichPackages, boolean updateSchedule, FullBackupJob runningJob, CountDownLatch latch, IBackupObserver backupObserver, IBackupManagerMonitor monitor, OnTaskFinishedListener listener, boolean userInitiated) {
        super(observer);
        String[] strArr = whichPackages;
        this.mCancelLock = new Object();
        this.mUserBackupManagerService = backupManagerService;
        this.mTransportClient = transportClient;
        this.mUpdateSchedule = updateSchedule;
        this.mLatch = latch;
        this.mJob = runningJob;
        this.mPackages = new ArrayList(strArr.length);
        this.mBackupObserver = backupObserver;
        this.mMonitor = monitor;
        this.mListener = listener != null ? listener : OnTaskFinishedListener.NOP;
        this.mUserInitiated = userInitiated;
        this.mCurrentOpToken = backupManagerService.generateRandomIntegerToken();
        this.mBackupRunnerOpToken = backupManagerService.generateRandomIntegerToken();
        BackupAgentTimeoutParameters agentTimeoutParameters = backupManagerService.getAgentTimeoutParameters();
        Objects.requireNonNull(agentTimeoutParameters, "Timeout parameters cannot be null");
        this.mAgentTimeoutParameters = agentTimeoutParameters;
        this.mUserId = backupManagerService.getUserId();
        if (backupManagerService.isBackupOperationInProgress()) {
            Slog.d(TAG, "Skipping full backup. A backup is already in progress.");
            this.mCancelAll = true;
            return;
        }
        registerTask();
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            String pkg = strArr[i];
            try {
                PackageManager pm = backupManagerService.getPackageManager();
                PackageInfo info = pm.getPackageInfoAsUser(pkg, AudioFormat.OPUS, this.mUserId);
                this.mCurrentPackage = info;
                if (!AppBackupUtils.appIsEligibleForBackup(info.applicationInfo, this.mUserId)) {
                    this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 9, this.mCurrentPackage, 3, null);
                    BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, pkg, -2001);
                } else if (!AppBackupUtils.appGetsFullBackup(info)) {
                    this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 10, this.mCurrentPackage, 3, null);
                    BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, pkg, -2001);
                } else if (AppBackupUtils.appIsStopped(info.applicationInfo)) {
                    this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 11, this.mCurrentPackage, 3, null);
                    BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, pkg, -2001);
                } else {
                    this.mPackages.add(info);
                }
            } catch (PackageManager.NameNotFoundException e) {
                Slog.i(TAG, "Requested package " + pkg + " not found; ignoring");
                this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 12, this.mCurrentPackage, 3, null);
            }
            i++;
            strArr = whichPackages;
        }
        this.mPackages = backupManagerService.filterUserFacingPackages(this.mPackages);
    }

    private void registerTask() {
        synchronized (this.mUserBackupManagerService.getCurrentOpLock()) {
            Slog.d(TAG, "backupmanager pftbt token=" + Integer.toHexString(this.mCurrentOpToken));
            this.mUserBackupManagerService.getCurrentOperations().put(this.mCurrentOpToken, new Operation(0, this, 2));
        }
    }

    public void unregisterTask() {
        this.mUserBackupManagerService.removeOperation(this.mCurrentOpToken);
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void execute() {
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0019 A[Catch: all -> 0x004c, TryCatch #1 {, blocks: (B:5:0x0005, B:6:0x000c, B:8:0x0010, B:9:0x0017, B:11:0x0019, B:13:0x0020, B:14:0x0027, B:17:0x0034, B:18:0x004a), top: B:25:0x0005, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x0020 A[Catch: all -> 0x004c, TRY_LEAVE, TryCatch #1 {, blocks: (B:5:0x0005, B:6:0x000c, B:8:0x0010, B:9:0x0017, B:11:0x0019, B:13:0x0020, B:14:0x0027, B:17:0x0034, B:18:0x004a), top: B:25:0x0005, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x0010 A[Catch: all -> 0x004c, TryCatch #1 {, blocks: (B:5:0x0005, B:6:0x000c, B:8:0x0010, B:9:0x0017, B:11:0x0019, B:13:0x0020, B:14:0x0027, B:17:0x0034, B:18:0x004a), top: B:25:0x0005, inners: #0 }] */
    @Override // com.android.server.backup.BackupRestoreTask
    public void handleCancel(boolean cancelAll) {
        synchronized (this.mCancelLock) {
            if (!cancelAll) {
                Slog.wtf(TAG, "Expected cancelAll to be true.");
                if (this.mCancelAll) {
                    Slog.d(TAG, "Ignoring duplicate cancel call.");
                    return;
                }
                this.mCancelAll = true;
                if (this.mIsDoingBackup) {
                    this.mUserBackupManagerService.handleCancel(this.mBackupRunnerOpToken, cancelAll);
                    try {
                        IBackupTransport transport = this.mTransportClient.getConnectedTransport("PFTBT.handleCancel()");
                        transport.cancelFullBackup();
                    } catch (RemoteException | TransportNotAvailableException e) {
                        Slog.w(TAG, "Error calling cancelFullBackup() on transport: " + e);
                    }
                }
                return;
            }
            if (this.mCancelAll) {
                Slog.d(TAG, "Ignoring duplicate cancel call.");
                return;
            }
            this.mCancelAll = true;
            if (this.mIsDoingBackup) {
                this.mUserBackupManagerService.handleCancel(this.mBackupRunnerOpToken, cancelAll);
                IBackupTransport transport2 = this.mTransportClient.getConnectedTransport("PFTBT.handleCancel()");
                transport2.cancelFullBackup();
            }
            return;
            throw th;
        }
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void operationComplete(long result) {
    }

    /* JADX WARN: Code duplicated, block: B:337:0x085e  */
    /* JADX WARN: Code duplicated, block: B:340:0x0888  */
    /* JADX WARN: Code duplicated, block: B:347:0x08ab  */
    /* JADX WARN: Code duplicated, block: B:368:0x0894 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public void run() throws Throwable {
        Throwable th;
        Exception e;
        FullBackupJob fullBackupJob;
        ParcelFileDescriptor[] transportPipes;
        long backoff;
        Object obj;
        int backupRunStatus;
        Throwable th2;
        long backoff2;
        PackageInfo currentPackage;
        String packageName;
        char c;
        ParcelFileDescriptor[] enginePipes;
        ParcelFileDescriptor[] transportPipes2;
        String packageName2;
        int backupPackageStatus;
        PackageInfo currentPackage2;
        int nRead;
        Throwable th3;
        String packageName3;
        int backupPackageStatus2;
        Throwable th4;
        ParcelFileDescriptor[] enginePipes2 = null;
        ParcelFileDescriptor[] transportPipes3 = null;
        long backoff3 = 0;
        int backupRunStatus2 = 0;
        SinglePackageBackupRunner singlePackageBackupRunner = null;
        try {
            try {
                if (this.mUserBackupManagerService.isEnabled() && this.mUserBackupManagerService.isSetupComplete()) {
                    IBackupTransport transport = this.mTransportClient.connect("PFTBT.run()");
                    if (transport != null) {
                        int N = this.mPackages.size();
                        byte[] buffer = new byte[8192];
                        int i = 0;
                        long backoff4 = 0;
                        while (true) {
                            if (i >= N) {
                                transportPipes = transportPipes3;
                                break;
                            }
                            try {
                                this.mBackupRunner = singlePackageBackupRunner;
                                PackageInfo currentPackage3 = this.mPackages.get(i);
                                String packageName4 = currentPackage3.packageName;
                                Slog.i(TAG, "Initiating full-data transport backup of " + packageName4 + " token: " + this.mCurrentOpToken);
                                EventLog.writeEvent(EventLogTags.FULL_BACKUP_PACKAGE, packageName4);
                                transportPipes = ParcelFileDescriptor.createPipe();
                                try {
                                    int flags = this.mUserInitiated ? 1 : 0;
                                    Object obj2 = this.mCancelLock;
                                    synchronized (obj2) {
                                        try {
                                            if (this.mCancelAll) {
                                                try {
                                                } catch (Throwable th5) {
                                                    backoff = backoff4;
                                                    obj = obj2;
                                                    backupRunStatus = backupRunStatus2;
                                                    th2 = th5;
                                                }
                                            } else {
                                                int i2 = i;
                                                try {
                                                    int backupPackageStatus3 = transport.performFullBackup(currentPackage3, transportPipes[0], flags);
                                                    if (backupPackageStatus3 == 0) {
                                                        try {
                                                            backoff = backoff4;
                                                            backoff2 = transport.getBackupQuota(currentPackage3.packageName, true);
                                                            try {
                                                                ParcelFileDescriptor[] enginePipes3 = ParcelFileDescriptor.createPipe();
                                                                try {
                                                                    currentPackage = currentPackage3;
                                                                    backupRunStatus = backupRunStatus2;
                                                                    packageName = packageName4;
                                                                    c = 1;
                                                                    obj = obj2;
                                                                    try {
                                                                        this.mBackupRunner = new SinglePackageBackupRunner(enginePipes3[1], currentPackage, this.mTransportClient, backoff2, this.mBackupRunnerOpToken, transport.getTransportFlags());
                                                                        enginePipes3[1].close();
                                                                        enginePipes3[1] = null;
                                                                        this.mIsDoingBackup = true;
                                                                        enginePipes2 = enginePipes3;
                                                                    } catch (Throwable th6) {
                                                                        th2 = th6;
                                                                        enginePipes2 = enginePipes3;
                                                                    }
                                                                } catch (Throwable th7) {
                                                                    obj = obj2;
                                                                    backupRunStatus = backupRunStatus2;
                                                                    enginePipes2 = enginePipes3;
                                                                    th2 = th7;
                                                                }
                                                            } catch (Throwable th8) {
                                                                obj = obj2;
                                                                backupRunStatus = backupRunStatus2;
                                                                th2 = th8;
                                                            }
                                                        } catch (Throwable th9) {
                                                            backoff = backoff4;
                                                            obj = obj2;
                                                            backupRunStatus = backupRunStatus2;
                                                            th2 = th9;
                                                        }
                                                    } else {
                                                        currentPackage = currentPackage3;
                                                        backoff = backoff4;
                                                        obj = obj2;
                                                        backupRunStatus = backupRunStatus2;
                                                        packageName = packageName4;
                                                        c = 1;
                                                        backoff2 = Long.MAX_VALUE;
                                                    }
                                                    try {
                                                        if (backupPackageStatus3 == 0) {
                                                            try {
                                                                transportPipes[0].close();
                                                                transportPipes[0] = null;
                                                                new Thread(this.mBackupRunner, "package-backup-bridge").start();
                                                                FileInputStream in = new FileInputStream(enginePipes2[0].getFileDescriptor());
                                                                FileOutputStream out = new FileOutputStream(transportPipes[c].getFileDescriptor());
                                                                long preflightResult = this.mBackupRunner.getPreflightResultBlocking();
                                                                transportPipes2 = transportPipes;
                                                                if (preflightResult < 0) {
                                                                    try {
                                                                        enginePipes = enginePipes2;
                                                                        try {
                                                                            this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 16, this.mCurrentPackage, 3, BackupManagerMonitorUtils.putMonitoringExtra((Bundle) null, "android.app.backup.extra.LOG_PREFLIGHT_ERROR", preflightResult));
                                                                            nRead = (int) preflightResult;
                                                                            packageName2 = packageName;
                                                                        } catch (Exception e2) {
                                                                            transportPipes3 = transportPipes2;
                                                                            backoff3 = backoff;
                                                                            enginePipes2 = enginePipes;
                                                                            e = e2;
                                                                        } catch (Throwable th10) {
                                                                            transportPipes3 = transportPipes2;
                                                                            backoff3 = backoff;
                                                                            backupRunStatus2 = backupRunStatus;
                                                                            enginePipes2 = enginePipes;
                                                                            th = th10;
                                                                            if (this.mCancelAll) {
                                                                                backupRunStatus2 = -2003;
                                                                            }
                                                                            Slog.i(TAG, "Full backup completed with status: " + backupRunStatus2);
                                                                            BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus2);
                                                                            cleanUpPipes(transportPipes3);
                                                                            cleanUpPipes(enginePipes2);
                                                                            unregisterTask();
                                                                            fullBackupJob = this.mJob;
                                                                            if (fullBackupJob != null) {
                                                                                fullBackupJob.finishBackupPass(this.mUserId);
                                                                            }
                                                                            synchronized (this.mUserBackupManagerService.getQueueLock()) {
                                                                                this.mUserBackupManagerService.setRunningFullBackupTask(null);
                                                                                this.mListener.onFinished("PFTBT.run()");
                                                                                this.mLatch.countDown();
                                                                                if (this.mUpdateSchedule) {
                                                                                    this.mUserBackupManagerService.scheduleNextFullBackupJob(backoff3);
                                                                                }
                                                                                Slog.i(TAG, "Full data backup pass finished.");
                                                                                this.mUserBackupManagerService.getWakelock().release();
                                                                                throw th;
                                                                            }
                                                                        }
                                                                    } catch (Exception e3) {
                                                                        transportPipes3 = transportPipes2;
                                                                        backoff3 = backoff;
                                                                        e = e3;
                                                                    } catch (Throwable th11) {
                                                                        transportPipes3 = transportPipes2;
                                                                        backoff3 = backoff;
                                                                        backupRunStatus2 = backupRunStatus;
                                                                        th = th11;
                                                                    }
                                                                } else {
                                                                    enginePipes = enginePipes2;
                                                                    long totalRead = 0;
                                                                    while (true) {
                                                                        int nRead2 = in.read(buffer);
                                                                        if (nRead2 > 0) {
                                                                            out.write(buffer, 0, nRead2);
                                                                            synchronized (this.mCancelLock) {
                                                                                try {
                                                                                    if (!this.mCancelAll) {
                                                                                        try {
                                                                                            backupPackageStatus3 = transport.sendBackupData(nRead2);
                                                                                        } catch (Throwable th12) {
                                                                                            th4 = th12;
                                                                                            while (true) {
                                                                                                try {
                                                                                                    throw th4;
                                                                                                } catch (Throwable th13) {
                                                                                                    th4 = th13;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    totalRead += (long) nRead2;
                                                                                    if (this.mBackupObserver == null || preflightResult <= 0) {
                                                                                        packageName3 = packageName;
                                                                                    } else {
                                                                                        packageName3 = packageName;
                                                                                        BackupObserverUtils.sendBackupOnUpdate(this.mBackupObserver, packageName3, new BackupProgress(preflightResult, totalRead));
                                                                                    }
                                                                                    backupPackageStatus2 = backupPackageStatus3;
                                                                                } catch (Throwable th14) {
                                                                                    th4 = th14;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            packageName3 = packageName;
                                                                            backupPackageStatus2 = backupPackageStatus3;
                                                                        }
                                                                        if (nRead2 <= 0 || backupPackageStatus2 != 0) {
                                                                            break;
                                                                            break;
                                                                        } else {
                                                                            backupPackageStatus3 = backupPackageStatus2;
                                                                            packageName = packageName3;
                                                                            in = in;
                                                                        }
                                                                    }
                                                                    if (backupPackageStatus2 == -1005) {
                                                                        Slog.w(TAG, "Package hit quota limit in-flight " + packageName3 + ": " + totalRead + " of " + backoff2);
                                                                        packageName2 = packageName3;
                                                                        this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 18, this.mCurrentPackage, 1, null);
                                                                        this.mBackupRunner.sendQuotaExceeded(totalRead, backoff2);
                                                                    } else {
                                                                        packageName2 = packageName3;
                                                                    }
                                                                    nRead = backupPackageStatus2;
                                                                }
                                                                int backupRunnerResult = this.mBackupRunner.getBackupResultBlocking();
                                                                synchronized (this.mCancelLock) {
                                                                    try {
                                                                        this.mIsDoingBackup = false;
                                                                        if (!this.mCancelAll) {
                                                                            if (backupRunnerResult == 0) {
                                                                                try {
                                                                                    int finishResult = transport.finishBackup();
                                                                                    if (nRead == 0) {
                                                                                        nRead = finishResult;
                                                                                    }
                                                                                } catch (Throwable th15) {
                                                                                    th = th15;
                                                                                    while (true) {
                                                                                        throw th3;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                transport.cancelFullBackup();
                                                                            }
                                                                        }
                                                                        if (nRead == 0 && backupRunnerResult != 0) {
                                                                            nRead = backupRunnerResult;
                                                                        }
                                                                        if (nRead != 0) {
                                                                            Slog.w(TAG, "Error " + nRead + " backing up " + packageName2);
                                                                        }
                                                                        backoff3 = transport.requestFullBackupTime();
                                                                        try {
                                                                            int backupPackageStatus4 = nRead;
                                                                            Slog.i(TAG, "Transport suggested backoff=" + backoff3);
                                                                            backoff4 = backoff3;
                                                                            backupPackageStatus = backupPackageStatus4;
                                                                        } catch (Exception e4) {
                                                                            transportPipes3 = transportPipes2;
                                                                            enginePipes2 = enginePipes;
                                                                            e = e4;
                                                                        } catch (Throwable th16) {
                                                                            transportPipes3 = transportPipes2;
                                                                            backupRunStatus2 = backupRunStatus;
                                                                            enginePipes2 = enginePipes;
                                                                            th = th16;
                                                                            if (this.mCancelAll) {
                                                                                backupRunStatus2 = -2003;
                                                                            }
                                                                            Slog.i(TAG, "Full backup completed with status: " + backupRunStatus2);
                                                                            BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus2);
                                                                            cleanUpPipes(transportPipes3);
                                                                            cleanUpPipes(enginePipes2);
                                                                            unregisterTask();
                                                                            fullBackupJob = this.mJob;
                                                                            if (fullBackupJob != null) {
                                                                                fullBackupJob.finishBackupPass(this.mUserId);
                                                                            }
                                                                            synchronized (this.mUserBackupManagerService.getQueueLock()) {
                                                                                this.mUserBackupManagerService.setRunningFullBackupTask(null);
                                                                                this.mListener.onFinished("PFTBT.run()");
                                                                                this.mLatch.countDown();
                                                                                if (this.mUpdateSchedule) {
                                                                                    this.mUserBackupManagerService.scheduleNextFullBackupJob(backoff3);
                                                                                }
                                                                                Slog.i(TAG, "Full data backup pass finished.");
                                                                                this.mUserBackupManagerService.getWakelock().release();
                                                                                throw th;
                                                                            }
                                                                        }
                                                                    } catch (Throwable th17) {
                                                                        th = th17;
                                                                    }
                                                                }
                                                            } catch (Exception e5) {
                                                                transportPipes3 = transportPipes;
                                                                backoff3 = backoff;
                                                                e = e5;
                                                            } catch (Throwable th18) {
                                                                transportPipes3 = transportPipes;
                                                                backoff3 = backoff;
                                                                backupRunStatus2 = backupRunStatus;
                                                                th = th18;
                                                            }
                                                        } else {
                                                            enginePipes = enginePipes2;
                                                            transportPipes2 = transportPipes;
                                                            packageName2 = packageName;
                                                            backupPackageStatus = backupPackageStatus3;
                                                            backoff4 = backoff;
                                                        }
                                                        try {
                                                            if (this.mUpdateSchedule) {
                                                                try {
                                                                    this.mUserBackupManagerService.enqueueFullBackup(packageName2, System.currentTimeMillis());
                                                                } catch (Exception e6) {
                                                                    transportPipes3 = transportPipes2;
                                                                    backoff3 = backoff4;
                                                                    enginePipes2 = enginePipes;
                                                                    e = e6;
                                                                } catch (Throwable th19) {
                                                                    transportPipes3 = transportPipes2;
                                                                    backoff3 = backoff4;
                                                                    backupRunStatus2 = backupRunStatus;
                                                                    enginePipes2 = enginePipes;
                                                                    th = th19;
                                                                    if (this.mCancelAll) {
                                                                        backupRunStatus2 = -2003;
                                                                    }
                                                                    Slog.i(TAG, "Full backup completed with status: " + backupRunStatus2);
                                                                    BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus2);
                                                                    cleanUpPipes(transportPipes3);
                                                                    cleanUpPipes(enginePipes2);
                                                                    unregisterTask();
                                                                    fullBackupJob = this.mJob;
                                                                    if (fullBackupJob != null) {
                                                                        fullBackupJob.finishBackupPass(this.mUserId);
                                                                    }
                                                                    synchronized (this.mUserBackupManagerService.getQueueLock()) {
                                                                        this.mUserBackupManagerService.setRunningFullBackupTask(null);
                                                                    }
                                                                    this.mListener.onFinished("PFTBT.run()");
                                                                    this.mLatch.countDown();
                                                                    if (this.mUpdateSchedule) {
                                                                        this.mUserBackupManagerService.scheduleNextFullBackupJob(backoff3);
                                                                    }
                                                                    Slog.i(TAG, "Full data backup pass finished.");
                                                                    this.mUserBackupManagerService.getWakelock().release();
                                                                    throw th;
                                                                }
                                                            }
                                                            if (backupPackageStatus == -1002) {
                                                                BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, packageName2, JobSchedulerShellCommand.CMD_ERR_CONSTRAINTS);
                                                                Slog.i(TAG, "Transport rejected backup of " + packageName2 + ", skipping");
                                                                EventLog.writeEvent(EventLogTags.FULL_BACKUP_AGENT_FAILURE, packageName2, "transport rejected");
                                                                if (this.mBackupRunner != null) {
                                                                    currentPackage2 = currentPackage;
                                                                    this.mUserBackupManagerService.tearDownAgentAndKill(currentPackage2.applicationInfo);
                                                                } else {
                                                                    currentPackage2 = currentPackage;
                                                                }
                                                            } else {
                                                                currentPackage2 = currentPackage;
                                                                if (backupPackageStatus == -1005) {
                                                                    BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, packageName2, -1005);
                                                                    Slog.i(TAG, "Transport quota exceeded for package: " + packageName2);
                                                                    EventLog.writeEvent(EventLogTags.FULL_BACKUP_QUOTA_EXCEEDED, packageName2);
                                                                    this.mUserBackupManagerService.tearDownAgentAndKill(currentPackage2.applicationInfo);
                                                                } else if (backupPackageStatus == -1003) {
                                                                    BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, packageName2, -1003);
                                                                    Slog.w(TAG, "Application failure for package: " + packageName2);
                                                                    EventLog.writeEvent(EventLogTags.BACKUP_AGENT_FAILURE, packageName2);
                                                                    this.mUserBackupManagerService.tearDownAgentAndKill(currentPackage2.applicationInfo);
                                                                } else if (backupPackageStatus == -2003) {
                                                                    BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, packageName2, -2003);
                                                                    Slog.w(TAG, "Backup cancelled. package=" + packageName2 + ", cancelAll=" + this.mCancelAll);
                                                                    EventLog.writeEvent(EventLogTags.FULL_BACKUP_CANCELLED, packageName2);
                                                                    this.mUserBackupManagerService.tearDownAgentAndKill(currentPackage2.applicationInfo);
                                                                } else if (backupPackageStatus != 0) {
                                                                    BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, packageName2, JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE);
                                                                    Slog.w(TAG, "Transport failed; aborting backup: " + backupPackageStatus);
                                                                    EventLog.writeEvent(EventLogTags.FULL_BACKUP_TRANSPORT_FAILURE, new Object[0]);
                                                                    backupRunStatus2 = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                                                                    try {
                                                                        this.mUserBackupManagerService.tearDownAgentAndKill(currentPackage2.applicationInfo);
                                                                        int backupRunStatus3 = this.mCancelAll ? -2003 : -1000;
                                                                        Slog.i(TAG, "Full backup completed with status: " + backupRunStatus3);
                                                                        BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus3);
                                                                        cleanUpPipes(transportPipes2);
                                                                        cleanUpPipes(enginePipes);
                                                                        unregisterTask();
                                                                        FullBackupJob fullBackupJob2 = this.mJob;
                                                                        if (fullBackupJob2 != null) {
                                                                            fullBackupJob2.finishBackupPass(this.mUserId);
                                                                        }
                                                                        synchronized (this.mUserBackupManagerService.getQueueLock()) {
                                                                            this.mUserBackupManagerService.setRunningFullBackupTask(null);
                                                                        }
                                                                        this.mListener.onFinished("PFTBT.run()");
                                                                        this.mLatch.countDown();
                                                                        if (this.mUpdateSchedule) {
                                                                            this.mUserBackupManagerService.scheduleNextFullBackupJob(backoff4);
                                                                        }
                                                                        Slog.i(TAG, "Full data backup pass finished.");
                                                                        this.mUserBackupManagerService.getWakelock().release();
                                                                        return;
                                                                    } catch (Exception e7) {
                                                                        transportPipes3 = transportPipes2;
                                                                        backoff3 = backoff4;
                                                                        enginePipes2 = enginePipes;
                                                                        e = e7;
                                                                    } catch (Throwable th20) {
                                                                        transportPipes3 = transportPipes2;
                                                                        backoff3 = backoff4;
                                                                        enginePipes2 = enginePipes;
                                                                        th = th20;
                                                                        if (this.mCancelAll) {
                                                                            backupRunStatus2 = -2003;
                                                                        }
                                                                        Slog.i(TAG, "Full backup completed with status: " + backupRunStatus2);
                                                                        BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus2);
                                                                        cleanUpPipes(transportPipes3);
                                                                        cleanUpPipes(enginePipes2);
                                                                        unregisterTask();
                                                                        fullBackupJob = this.mJob;
                                                                        if (fullBackupJob != null) {
                                                                            fullBackupJob.finishBackupPass(this.mUserId);
                                                                        }
                                                                        synchronized (this.mUserBackupManagerService.getQueueLock()) {
                                                                            this.mUserBackupManagerService.setRunningFullBackupTask(null);
                                                                            this.mListener.onFinished("PFTBT.run()");
                                                                            this.mLatch.countDown();
                                                                            if (this.mUpdateSchedule) {
                                                                                this.mUserBackupManagerService.scheduleNextFullBackupJob(backoff3);
                                                                            }
                                                                            Slog.i(TAG, "Full data backup pass finished.");
                                                                            this.mUserBackupManagerService.getWakelock().release();
                                                                            throw th;
                                                                        }
                                                                    }
                                                                } else {
                                                                    BackupObserverUtils.sendBackupOnPackageResult(this.mBackupObserver, packageName2, 0);
                                                                    EventLog.writeEvent(EventLogTags.FULL_BACKUP_SUCCESS, packageName2);
                                                                    this.mUserBackupManagerService.logBackupComplete(packageName2);
                                                                }
                                                            }
                                                            try {
                                                                cleanUpPipes(transportPipes2);
                                                                cleanUpPipes(enginePipes);
                                                                if (currentPackage2.applicationInfo != null) {
                                                                    Slog.i(TAG, "Unbinding agent in " + packageName2);
                                                                    try {
                                                                        this.mUserBackupManagerService.getActivityManager().unbindBackupAgent(currentPackage2.applicationInfo);
                                                                    } catch (RemoteException e8) {
                                                                    }
                                                                }
                                                                i = i2 + 1;
                                                                transportPipes3 = transportPipes2;
                                                                enginePipes2 = enginePipes;
                                                                buffer = buffer;
                                                                N = N;
                                                                backupRunStatus2 = backupRunStatus;
                                                                singlePackageBackupRunner = null;
                                                            } catch (Exception e9) {
                                                                transportPipes3 = transportPipes2;
                                                                backoff3 = backoff4;
                                                                enginePipes2 = enginePipes;
                                                                e = e9;
                                                            } catch (Throwable th21) {
                                                                transportPipes3 = transportPipes2;
                                                                backoff3 = backoff4;
                                                                enginePipes2 = enginePipes;
                                                                backupRunStatus2 = backupRunStatus;
                                                                th = th21;
                                                                if (this.mCancelAll) {
                                                                    backupRunStatus2 = -2003;
                                                                }
                                                                Slog.i(TAG, "Full backup completed with status: " + backupRunStatus2);
                                                                BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus2);
                                                                cleanUpPipes(transportPipes3);
                                                                cleanUpPipes(enginePipes2);
                                                                unregisterTask();
                                                                fullBackupJob = this.mJob;
                                                                if (fullBackupJob != null) {
                                                                    fullBackupJob.finishBackupPass(this.mUserId);
                                                                }
                                                                synchronized (this.mUserBackupManagerService.getQueueLock()) {
                                                                    this.mUserBackupManagerService.setRunningFullBackupTask(null);
                                                                    this.mListener.onFinished("PFTBT.run()");
                                                                    this.mLatch.countDown();
                                                                    if (this.mUpdateSchedule) {
                                                                        this.mUserBackupManagerService.scheduleNextFullBackupJob(backoff3);
                                                                    }
                                                                    Slog.i(TAG, "Full data backup pass finished.");
                                                                    this.mUserBackupManagerService.getWakelock().release();
                                                                    throw th;
                                                                }
                                                            }
                                                        } catch (Exception e10) {
                                                            transportPipes3 = transportPipes2;
                                                            backoff3 = backoff4;
                                                            enginePipes2 = enginePipes;
                                                            e = e10;
                                                        } catch (Throwable th22) {
                                                            transportPipes3 = transportPipes2;
                                                            backoff3 = backoff4;
                                                            enginePipes2 = enginePipes;
                                                            backupRunStatus2 = backupRunStatus;
                                                            th = th22;
                                                        }
                                                    } catch (Throwable th23) {
                                                        th2 = th23;
                                                        while (true) {
                                                            try {
                                                                try {
                                                                    break;
                                                                } catch (Exception e11) {
                                                                    transportPipes3 = transportPipes;
                                                                    backoff3 = backoff;
                                                                    e = e11;
                                                                } catch (Throwable th24) {
                                                                    transportPipes3 = transportPipes;
                                                                    backoff3 = backoff;
                                                                    backupRunStatus2 = backupRunStatus;
                                                                    th = th24;
                                                                    if (this.mCancelAll) {
                                                                        backupRunStatus2 = -2003;
                                                                    }
                                                                    Slog.i(TAG, "Full backup completed with status: " + backupRunStatus2);
                                                                    BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus2);
                                                                    cleanUpPipes(transportPipes3);
                                                                    cleanUpPipes(enginePipes2);
                                                                    unregisterTask();
                                                                    fullBackupJob = this.mJob;
                                                                    if (fullBackupJob != null) {
                                                                        fullBackupJob.finishBackupPass(this.mUserId);
                                                                    }
                                                                    synchronized (this.mUserBackupManagerService.getQueueLock()) {
                                                                        this.mUserBackupManagerService.setRunningFullBackupTask(null);
                                                                        this.mListener.onFinished("PFTBT.run()");
                                                                        this.mLatch.countDown();
                                                                        if (this.mUpdateSchedule) {
                                                                            this.mUserBackupManagerService.scheduleNextFullBackupJob(backoff3);
                                                                        }
                                                                        Slog.i(TAG, "Full data backup pass finished.");
                                                                        this.mUserBackupManagerService.getWakelock().release();
                                                                        throw th;
                                                                    }
                                                                }
                                                            } catch (Throwable th25) {
                                                                th2 = th25;
                                                            }
                                                        }
                                                        throw th2;
                                                    }
                                                } catch (Throwable th26) {
                                                    backoff = backoff4;
                                                    obj = obj2;
                                                    backupRunStatus = backupRunStatus2;
                                                    th2 = th26;
                                                }
                                            }
                                        } catch (Throwable th27) {
                                            backoff = backoff4;
                                            obj = obj2;
                                            backupRunStatus = backupRunStatus2;
                                            th2 = th27;
                                        }
                                        while (true) {
                                            break;
                                            break;
                                        }
                                        throw th2;
                                    }
                                    break;
                                } catch (Exception e12) {
                                    transportPipes3 = transportPipes;
                                    backoff3 = backoff4;
                                    e = e12;
                                } catch (Throwable th28) {
                                    transportPipes3 = transportPipes;
                                    backoff3 = backoff4;
                                    th = th28;
                                }
                            } catch (Exception e13) {
                                e = e13;
                                backoff3 = backoff4;
                            } catch (Throwable th29) {
                                th = th29;
                                backoff3 = backoff4;
                            }
                        }
                        int backupRunStatus4 = this.mCancelAll ? -2003 : backupRunStatus2;
                        Slog.i(TAG, "Full backup completed with status: " + backupRunStatus4);
                        BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus4);
                        cleanUpPipes(transportPipes);
                        cleanUpPipes(enginePipes2);
                        unregisterTask();
                        FullBackupJob fullBackupJob3 = this.mJob;
                        if (fullBackupJob3 != null) {
                            fullBackupJob3.finishBackupPass(this.mUserId);
                        }
                        synchronized (this.mUserBackupManagerService.getQueueLock()) {
                            try {
                                this.mUserBackupManagerService.setRunningFullBackupTask(null);
                            } catch (Throwable th30) {
                                th = th30;
                                while (true) {
                                    throw th;
                                }
                            }
                        }
                        this.mListener.onFinished("PFTBT.run()");
                        this.mLatch.countDown();
                        if (this.mUpdateSchedule) {
                            this.mUserBackupManagerService.scheduleNextFullBackupJob(backoff4);
                        }
                        Slog.i(TAG, "Full data backup pass finished.");
                        this.mUserBackupManagerService.getWakelock().release();
                        return;
                    }
                    try {
                        Slog.w(TAG, "Transport not present; full data backup not performed");
                        this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 15, this.mCurrentPackage, 1, null);
                        int backupRunStatus5 = this.mCancelAll ? -2003 : -1000;
                        Slog.i(TAG, "Full backup completed with status: " + backupRunStatus5);
                        BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus5);
                        cleanUpPipes(null);
                        cleanUpPipes(null);
                        unregisterTask();
                        FullBackupJob fullBackupJob4 = this.mJob;
                        if (fullBackupJob4 != null) {
                            fullBackupJob4.finishBackupPass(this.mUserId);
                        }
                        synchronized (this.mUserBackupManagerService.getQueueLock()) {
                            this.mUserBackupManagerService.setRunningFullBackupTask(null);
                        }
                        this.mListener.onFinished("PFTBT.run()");
                        this.mLatch.countDown();
                        if (this.mUpdateSchedule) {
                            this.mUserBackupManagerService.scheduleNextFullBackupJob(0L);
                        }
                        Slog.i(TAG, "Full data backup pass finished.");
                        this.mUserBackupManagerService.getWakelock().release();
                        return;
                    } catch (Exception e14) {
                        e = e14;
                    }
                } else {
                    try {
                        Slog.i(TAG, "full backup requested but enabled=" + this.mUserBackupManagerService.isEnabled() + " setupComplete=" + this.mUserBackupManagerService.isSetupComplete() + "; ignoring");
                        int monitoringEvent = this.mUserBackupManagerService.isSetupComplete() ? 13 : 14;
                        this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, monitoringEvent, null, 3, null);
                        this.mUpdateSchedule = false;
                        int backupRunStatus6 = this.mCancelAll ? -2003 : -2001;
                        Slog.i(TAG, "Full backup completed with status: " + backupRunStatus6);
                        BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus6);
                        cleanUpPipes(null);
                        cleanUpPipes(null);
                        unregisterTask();
                        FullBackupJob fullBackupJob5 = this.mJob;
                        if (fullBackupJob5 != null) {
                            fullBackupJob5.finishBackupPass(this.mUserId);
                        }
                        synchronized (this.mUserBackupManagerService.getQueueLock()) {
                            this.mUserBackupManagerService.setRunningFullBackupTask(null);
                        }
                        this.mListener.onFinished("PFTBT.run()");
                        this.mLatch.countDown();
                        if (this.mUpdateSchedule) {
                            this.mUserBackupManagerService.scheduleNextFullBackupJob(0L);
                        }
                        Slog.i(TAG, "Full data backup pass finished.");
                        this.mUserBackupManagerService.getWakelock().release();
                        return;
                    } catch (Exception e15) {
                        e = e15;
                    } catch (Throwable th31) {
                        th = th31;
                        backupRunStatus2 = backupRunStatus2;
                        if (this.mCancelAll) {
                            backupRunStatus2 = -2003;
                        }
                        Slog.i(TAG, "Full backup completed with status: " + backupRunStatus2);
                        BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus2);
                        cleanUpPipes(transportPipes3);
                        cleanUpPipes(enginePipes2);
                        unregisterTask();
                        fullBackupJob = this.mJob;
                        if (fullBackupJob != null) {
                            fullBackupJob.finishBackupPass(this.mUserId);
                        }
                        synchronized (this.mUserBackupManagerService.getQueueLock()) {
                            this.mUserBackupManagerService.setRunningFullBackupTask(null);
                            this.mListener.onFinished("PFTBT.run()");
                            this.mLatch.countDown();
                            if (this.mUpdateSchedule) {
                                this.mUserBackupManagerService.scheduleNextFullBackupJob(backoff3);
                            }
                            Slog.i(TAG, "Full data backup pass finished.");
                            this.mUserBackupManagerService.getWakelock().release();
                            throw th;
                        }
                    }
                }
            } catch (Throwable th32) {
                th = th32;
            }
        } catch (Exception e16) {
            e = e16;
        } catch (Throwable th33) {
            th = th33;
        }
        Slog.w(TAG, "Exception trying full transport backup", e);
        this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 19, this.mCurrentPackage, 3, BackupManagerMonitorUtils.putMonitoringExtra((Bundle) null, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP", Log.getStackTraceString(e)));
        int backupRunStatus7 = this.mCancelAll ? -2003 : -1000;
        Slog.i(TAG, "Full backup completed with status: " + backupRunStatus7);
        BackupObserverUtils.sendBackupFinished(this.mBackupObserver, backupRunStatus7);
        cleanUpPipes(transportPipes3);
        cleanUpPipes(enginePipes2);
        unregisterTask();
        FullBackupJob fullBackupJob6 = this.mJob;
        if (fullBackupJob6 != null) {
            fullBackupJob6.finishBackupPass(this.mUserId);
        }
        synchronized (this.mUserBackupManagerService.getQueueLock()) {
            this.mUserBackupManagerService.setRunningFullBackupTask(null);
        }
        this.mListener.onFinished("PFTBT.run()");
        this.mLatch.countDown();
        if (this.mUpdateSchedule) {
            this.mUserBackupManagerService.scheduleNextFullBackupJob(backoff3);
        }
        Slog.i(TAG, "Full data backup pass finished.");
        this.mUserBackupManagerService.getWakelock().release();
    }

    void cleanUpPipes(ParcelFileDescriptor[] pipes) {
        if (pipes != null) {
            if (pipes[0] != null) {
                ParcelFileDescriptor fd = pipes[0];
                pipes[0] = null;
                try {
                    fd.close();
                } catch (IOException e) {
                    Slog.w(TAG, "Unable to close pipe!");
                }
            }
            if (pipes[1] != null) {
                ParcelFileDescriptor fd2 = pipes[1];
                pipes[1] = null;
                try {
                    fd2.close();
                } catch (IOException e2) {
                    Slog.w(TAG, "Unable to close pipe!");
                }
            }
        }
    }

    class SinglePackageBackupPreflight implements BackupRestoreTask, FullBackupPreflight {
        private final int mCurrentOpToken;
        final long mQuota;
        final TransportClient mTransportClient;
        private final int mTransportFlags;
        final AtomicLong mResult = new AtomicLong(-1003);
        final CountDownLatch mLatch = new CountDownLatch(1);

        SinglePackageBackupPreflight(TransportClient transportClient, long quota, int currentOpToken, int transportFlags) {
            this.mTransportClient = transportClient;
            this.mQuota = quota;
            this.mCurrentOpToken = currentOpToken;
            this.mTransportFlags = transportFlags;
        }

        @Override // com.android.server.backup.fullbackup.FullBackupPreflight
        public int preflightFullBackup(PackageInfo pkg, final IBackupAgent agent) {
            long fullBackupAgentTimeoutMillis = PerformFullTransportBackupTask.this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis();
            try {
                PerformFullTransportBackupTask.this.mUserBackupManagerService.prepareOperationTimeout(this.mCurrentOpToken, fullBackupAgentTimeoutMillis, this, 0);
                agent.doMeasureFullBackup(this.mQuota, this.mCurrentOpToken, PerformFullTransportBackupTask.this.mUserBackupManagerService.getBackupManagerBinder(), this.mTransportFlags);
                this.mLatch.await(fullBackupAgentTimeoutMillis, TimeUnit.MILLISECONDS);
                final long totalSize = this.mResult.get();
                if (totalSize < 0) {
                    return (int) totalSize;
                }
                IBackupTransport transport = this.mTransportClient.connectOrThrow("PFTBT$SPBP.preflightFullBackup()");
                int result = transport.checkFullBackupSize(totalSize);
                if (result == -1005) {
                    try {
                        RemoteCall.execute(new RemoteCallable() { // from class: com.android.server.backup.fullbackup.-$$Lambda$PerformFullTransportBackupTask$SinglePackageBackupPreflight$hWbC3_rWMPrteAdbbM5aSW2SKD0
                            @Override // com.android.server.backup.remote.RemoteCallable
                            public final void call(Object obj) throws RemoteException {
                                this.f$0.lambda$preflightFullBackup$0$PerformFullTransportBackupTask$SinglePackageBackupPreflight(agent, totalSize, (IBackupCallback) obj);
                            }
                        }, PerformFullTransportBackupTask.this.mAgentTimeoutParameters.getQuotaExceededTimeoutMillis());
                    } catch (Exception e) {
                        e = e;
                        Slog.w(PerformFullTransportBackupTask.TAG, "Exception preflighting " + pkg.packageName + ": " + e.getMessage());
                        return -1003;
                    }
                }
                return result;
            } catch (Exception e2) {
                e = e2;
            }
        }

        public /* synthetic */ void lambda$preflightFullBackup$0$PerformFullTransportBackupTask$SinglePackageBackupPreflight(IBackupAgent agent, long totalSize, IBackupCallback callback) throws RemoteException {
            agent.doQuotaExceeded(totalSize, this.mQuota, callback);
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void execute() {
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void operationComplete(long result) {
            this.mResult.set(result);
            this.mLatch.countDown();
            PerformFullTransportBackupTask.this.mUserBackupManagerService.removeOperation(this.mCurrentOpToken);
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void handleCancel(boolean cancelAll) {
            this.mResult.set(-1003L);
            this.mLatch.countDown();
            PerformFullTransportBackupTask.this.mUserBackupManagerService.removeOperation(this.mCurrentOpToken);
        }

        @Override // com.android.server.backup.fullbackup.FullBackupPreflight
        public long getExpectedSizeOrErrorCode() {
            long fullBackupAgentTimeoutMillis = PerformFullTransportBackupTask.this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis();
            try {
                this.mLatch.await(fullBackupAgentTimeoutMillis, TimeUnit.MILLISECONDS);
                return this.mResult.get();
            } catch (InterruptedException e) {
                return -1L;
            }
        }
    }

    class SinglePackageBackupRunner implements Runnable, BackupRestoreTask {
        final CountDownLatch mBackupLatch;
        private volatile int mBackupResult;
        private final int mCurrentOpToken;
        private FullBackupEngine mEngine;
        private final int mEphemeralToken;
        private volatile boolean mIsCancelled;
        final ParcelFileDescriptor mOutput;
        final SinglePackageBackupPreflight mPreflight;
        final CountDownLatch mPreflightLatch;
        private volatile int mPreflightResult;
        private final long mQuota;
        final PackageInfo mTarget;
        private final int mTransportFlags;

        SinglePackageBackupRunner(ParcelFileDescriptor output, PackageInfo target, TransportClient transportClient, long quota, int currentOpToken, int transportFlags) throws IOException {
            this.mOutput = ParcelFileDescriptor.dup(output.getFileDescriptor());
            this.mTarget = target;
            this.mCurrentOpToken = currentOpToken;
            int iGenerateRandomIntegerToken = PerformFullTransportBackupTask.this.mUserBackupManagerService.generateRandomIntegerToken();
            this.mEphemeralToken = iGenerateRandomIntegerToken;
            this.mPreflight = PerformFullTransportBackupTask.this.new SinglePackageBackupPreflight(transportClient, quota, iGenerateRandomIntegerToken, transportFlags);
            this.mPreflightLatch = new CountDownLatch(1);
            this.mBackupLatch = new CountDownLatch(1);
            this.mPreflightResult = -1003;
            this.mBackupResult = -1003;
            this.mQuota = quota;
            this.mTransportFlags = transportFlags;
            registerTask();
        }

        void registerTask() {
            synchronized (PerformFullTransportBackupTask.this.mUserBackupManagerService.getCurrentOpLock()) {
                PerformFullTransportBackupTask.this.mUserBackupManagerService.getCurrentOperations().put(this.mCurrentOpToken, new Operation(0, this, 0));
            }
        }

        void unregisterTask() {
            synchronized (PerformFullTransportBackupTask.this.mUserBackupManagerService.getCurrentOpLock()) {
                PerformFullTransportBackupTask.this.mUserBackupManagerService.getCurrentOperations().remove(this.mCurrentOpToken);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            FileOutputStream out = new FileOutputStream(this.mOutput.getFileDescriptor());
            this.mEngine = new FullBackupEngine(PerformFullTransportBackupTask.this.mUserBackupManagerService, out, this.mPreflight, this.mTarget, false, this, this.mQuota, this.mCurrentOpToken, this.mTransportFlags);
            try {
                try {
                    try {
                        try {
                            if (!this.mIsCancelled) {
                                this.mPreflightResult = this.mEngine.preflightCheck();
                            }
                            this.mPreflightLatch.countDown();
                            if (this.mPreflightResult == 0 && !this.mIsCancelled) {
                                this.mBackupResult = this.mEngine.backupOnePackage();
                            }
                            unregisterTask();
                            this.mBackupLatch.countDown();
                            this.mOutput.close();
                        } catch (IOException e) {
                            Slog.w(PerformFullTransportBackupTask.TAG, "Error closing transport pipe in runner");
                        }
                    } catch (Exception e2) {
                        Slog.w(PerformFullTransportBackupTask.TAG, "Exception during full package backup of " + this.mTarget.packageName, e2);
                        unregisterTask();
                        this.mBackupLatch.countDown();
                        this.mOutput.close();
                    }
                } catch (Throwable th) {
                    this.mPreflightLatch.countDown();
                    throw th;
                }
            } catch (Throwable th2) {
                unregisterTask();
                this.mBackupLatch.countDown();
                try {
                    this.mOutput.close();
                } catch (IOException e3) {
                    Slog.w(PerformFullTransportBackupTask.TAG, "Error closing transport pipe in runner");
                }
                throw th2;
            }
        }

        public void sendQuotaExceeded(long backupDataBytes, long quotaBytes) {
            this.mEngine.sendQuotaExceeded(backupDataBytes, quotaBytes);
        }

        long getPreflightResultBlocking() {
            long fullBackupAgentTimeoutMillis = PerformFullTransportBackupTask.this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis();
            try {
                this.mPreflightLatch.await(fullBackupAgentTimeoutMillis, TimeUnit.MILLISECONDS);
                if (this.mIsCancelled) {
                    return -2003L;
                }
                if (this.mPreflightResult == 0) {
                    return this.mPreflight.getExpectedSizeOrErrorCode();
                }
                return this.mPreflightResult;
            } catch (InterruptedException e) {
                return -1003L;
            }
        }

        int getBackupResultBlocking() {
            long fullBackupAgentTimeoutMillis = PerformFullTransportBackupTask.this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis();
            try {
                this.mBackupLatch.await(fullBackupAgentTimeoutMillis, TimeUnit.MILLISECONDS);
                if (this.mIsCancelled) {
                    return -2003;
                }
                return this.mBackupResult;
            } catch (InterruptedException e) {
                return -1003;
            }
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void execute() {
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void operationComplete(long result) {
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void handleCancel(boolean cancelAll) {
            Slog.w(PerformFullTransportBackupTask.TAG, "Full backup cancel of " + this.mTarget.packageName);
            PerformFullTransportBackupTask performFullTransportBackupTask = PerformFullTransportBackupTask.this;
            performFullTransportBackupTask.mMonitor = BackupManagerMonitorUtils.monitorEvent(performFullTransportBackupTask.mMonitor, 4, PerformFullTransportBackupTask.this.mCurrentPackage, 2, null);
            this.mIsCancelled = true;
            PerformFullTransportBackupTask.this.mUserBackupManagerService.handleCancel(this.mEphemeralToken, cancelAll);
            PerformFullTransportBackupTask.this.mUserBackupManagerService.tearDownAgentAndKill(this.mTarget.applicationInfo);
            this.mPreflightLatch.countDown();
            this.mBackupLatch.countDown();
            PerformFullTransportBackupTask.this.mUserBackupManagerService.removeOperation(this.mCurrentOpToken);
        }
    }
}

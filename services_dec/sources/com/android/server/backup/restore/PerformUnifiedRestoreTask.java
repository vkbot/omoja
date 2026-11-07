package com.android.server.backup.restore;

import android.app.IBackupAgent;
import android.app.backup.BackupDataInput;
import android.app.backup.BackupDataOutput;
import android.app.backup.IBackupManagerMonitor;
import android.app.backup.IRestoreObserver;
import android.app.backup.RestoreDescription;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Bundle;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.EventLog;
import android.util.Slog;
import com.android.internal.backup.IBackupTransport;
import com.android.server.AppWidgetBackupBridge;
import com.android.server.EventLogTags;
import com.android.server.LocalServices;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.backup.BackupManagerService;
import com.android.server.backup.BackupRestoreTask;
import com.android.server.backup.BackupUtils;
import com.android.server.backup.PackageManagerBackupAgent;
import com.android.server.backup.TransportManager;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.internal.OnTaskFinishedListener;
import com.android.server.backup.keyvalue.KeyValueBackupTask;
import com.android.server.backup.transport.TransportClient;
import com.android.server.backup.utils.AppBackupUtils;
import com.android.server.backup.utils.BackupManagerMonitorUtils;
import com.android.server.job.JobSchedulerShellCommand;
import com.android.server.pm.PackageManagerService;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class PerformUnifiedRestoreTask implements BackupRestoreTask {
    private UserBackupManagerService backupManagerService;
    private List<PackageInfo> mAcceptSet;
    private IBackupAgent mAgent;
    private final BackupAgentTimeoutParameters mAgentTimeoutParameters;
    private ParcelFileDescriptor mBackupData;
    private File mBackupDataName;
    private int mCount;
    private PackageInfo mCurrentPackage;
    private boolean mDidLaunch;
    private final int mEphemeralOpToken;
    private boolean mFinished;
    private boolean mIsSystemRestore;
    private final OnTaskFinishedListener mListener;
    private IBackupManagerMonitor mMonitor;
    private ParcelFileDescriptor mNewState;
    private File mNewStateName;
    private IRestoreObserver mObserver;
    private PackageManagerBackupAgent mPmAgent;
    private int mPmToken;
    private RestoreDescription mRestoreDescription;
    private File mStageName;
    private long mStartRealtime;
    private UnifiedRestoreState mState;
    private File mStateDir;
    private int mStatus;
    private PackageInfo mTargetPackage;
    private long mToken;
    private final TransportClient mTransportClient;
    private final TransportManager mTransportManager;
    private final int mUserId;
    private byte[] mWidgetData;

    PerformUnifiedRestoreTask(UserBackupManagerService backupManagerService) {
        this.mListener = null;
        this.mAgentTimeoutParameters = null;
        this.mTransportClient = null;
        this.mTransportManager = null;
        this.mEphemeralOpToken = 0;
        this.mUserId = 0;
        this.backupManagerService = backupManagerService;
    }

    public PerformUnifiedRestoreTask(UserBackupManagerService backupManagerService, TransportClient transportClient, IRestoreObserver observer, IBackupManagerMonitor monitor, long restoreSetToken, PackageInfo targetPackage, int pmToken, boolean isFullSystemRestore, String[] filterSet, OnTaskFinishedListener listener) {
        String[] filterSet2;
        this.backupManagerService = backupManagerService;
        this.mUserId = backupManagerService.getUserId();
        this.mTransportManager = backupManagerService.getTransportManager();
        this.mEphemeralOpToken = backupManagerService.generateRandomIntegerToken();
        this.mState = UnifiedRestoreState.INITIAL;
        this.mStartRealtime = SystemClock.elapsedRealtime();
        this.mTransportClient = transportClient;
        this.mObserver = observer;
        this.mMonitor = monitor;
        this.mToken = restoreSetToken;
        this.mPmToken = pmToken;
        this.mTargetPackage = targetPackage;
        this.mIsSystemRestore = isFullSystemRestore;
        this.mFinished = false;
        this.mDidLaunch = false;
        this.mListener = listener;
        BackupAgentTimeoutParameters agentTimeoutParameters = backupManagerService.getAgentTimeoutParameters();
        Objects.requireNonNull(agentTimeoutParameters, "Timeout parameters cannot be null");
        this.mAgentTimeoutParameters = agentTimeoutParameters;
        if (targetPackage != null) {
            ArrayList arrayList = new ArrayList();
            this.mAcceptSet = arrayList;
            arrayList.add(targetPackage);
        } else {
            if (filterSet != null) {
                filterSet2 = filterSet;
            } else {
                List<PackageInfo> apps = PackageManagerBackupAgent.getStorableApplications(backupManagerService.getPackageManager(), this.mUserId);
                filterSet2 = packagesToNames(apps);
                Slog.i(BackupManagerService.TAG, "Full restore; asking about " + filterSet2.length + " apps");
            }
            this.mAcceptSet = new ArrayList(filterSet2.length);
            boolean hasSettings = false;
            boolean hasSystem = false;
            for (String str : filterSet2) {
                try {
                    PackageManager pm = backupManagerService.getPackageManager();
                    PackageInfo info = pm.getPackageInfoAsUser(str, 0, this.mUserId);
                    if (PackageManagerService.PLATFORM_PACKAGE_NAME.equals(info.packageName)) {
                        hasSystem = true;
                    } else if (!UserBackupManagerService.SETTINGS_PACKAGE.equals(info.packageName)) {
                        if (AppBackupUtils.appIsEligibleForBackup(info.applicationInfo, this.mUserId)) {
                            this.mAcceptSet.add(info);
                        }
                    } else {
                        hasSettings = true;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            if (hasSystem) {
                try {
                    this.mAcceptSet.add(0, backupManagerService.getPackageManager().getPackageInfoAsUser(PackageManagerService.PLATFORM_PACKAGE_NAME, 0, this.mUserId));
                } catch (PackageManager.NameNotFoundException e2) {
                }
            }
            if (hasSettings) {
                try {
                    this.mAcceptSet.add(backupManagerService.getPackageManager().getPackageInfoAsUser(UserBackupManagerService.SETTINGS_PACKAGE, 0, this.mUserId));
                } catch (PackageManager.NameNotFoundException e3) {
                }
            }
        }
        this.mAcceptSet = backupManagerService.filterUserFacingPackages(this.mAcceptSet);
    }

    private String[] packagesToNames(List<PackageInfo> apps) {
        int N = apps.size();
        String[] names = new String[N];
        for (int i = 0; i < N; i++) {
            names[i] = apps.get(i).packageName;
        }
        return names;
    }

    /* JADX INFO: renamed from: com.android.server.backup.restore.PerformUnifiedRestoreTask$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$server$backup$restore$UnifiedRestoreState;

        static {
            int[] iArr = new int[UnifiedRestoreState.values().length];
            $SwitchMap$com$android$server$backup$restore$UnifiedRestoreState = iArr;
            try {
                iArr[UnifiedRestoreState.INITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$server$backup$restore$UnifiedRestoreState[UnifiedRestoreState.RUNNING_QUEUE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$android$server$backup$restore$UnifiedRestoreState[UnifiedRestoreState.RESTORE_KEYVALUE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$android$server$backup$restore$UnifiedRestoreState[UnifiedRestoreState.RESTORE_FULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$android$server$backup$restore$UnifiedRestoreState[UnifiedRestoreState.RESTORE_FINISHED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$android$server$backup$restore$UnifiedRestoreState[UnifiedRestoreState.FINAL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void execute() {
        switch (AnonymousClass1.$SwitchMap$com$android$server$backup$restore$UnifiedRestoreState[this.mState.ordinal()]) {
            case 1:
                startRestore();
                break;
            case 2:
                dispatchNextRestore();
                break;
            case 3:
                restoreKeyValue();
                break;
            case 4:
                restoreFull();
                break;
            case 5:
                restoreFinished();
                break;
            case 6:
                if (!this.mFinished) {
                    finalizeRestore();
                } else {
                    Slog.e(BackupManagerService.TAG, "Duplicate finish");
                }
                this.mFinished = true;
                break;
        }
    }

    private void startRestore() {
        sendStartRestore(this.mAcceptSet.size());
        if (this.mIsSystemRestore) {
            AppWidgetBackupBridge.restoreStarting(this.mUserId);
        }
        try {
            String transportDirName = this.mTransportManager.getTransportDirName(this.mTransportClient.getTransportComponent());
            this.mStateDir = new File(this.backupManagerService.getBaseStateDir(), transportDirName);
            PackageInfo pmPackage = new PackageInfo();
            pmPackage.packageName = UserBackupManagerService.PACKAGE_MANAGER_SENTINEL;
            this.mAcceptSet.add(0, pmPackage);
            PackageInfo[] packages = (PackageInfo[]) this.mAcceptSet.toArray(new PackageInfo[0]);
            IBackupTransport transport = this.mTransportClient.connectOrThrow("PerformUnifiedRestoreTask.startRestore()");
            int iStartRestore = transport.startRestore(this.mToken, packages);
            this.mStatus = iStartRestore;
            if (iStartRestore != 0) {
                Slog.e(BackupManagerService.TAG, "Transport error " + this.mStatus + "; no restore possible");
                this.mStatus = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                executeNextState(UnifiedRestoreState.FINAL);
                return;
            }
            RestoreDescription desc = transport.nextRestorePackage();
            if (desc == null) {
                Slog.e(BackupManagerService.TAG, "No restore metadata available; halting");
                this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 22, this.mCurrentPackage, 3, null);
                this.mStatus = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                executeNextState(UnifiedRestoreState.FINAL);
                return;
            }
            if (!UserBackupManagerService.PACKAGE_MANAGER_SENTINEL.equals(desc.getPackageName())) {
                Slog.e(BackupManagerService.TAG, "Required package metadata but got " + desc.getPackageName());
                this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 23, this.mCurrentPackage, 3, null);
                this.mStatus = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                executeNextState(UnifiedRestoreState.FINAL);
                return;
            }
            PackageInfo packageInfo = new PackageInfo();
            this.mCurrentPackage = packageInfo;
            packageInfo.packageName = UserBackupManagerService.PACKAGE_MANAGER_SENTINEL;
            PackageManagerBackupAgent packageManagerBackupAgentMakeMetadataAgent = this.backupManagerService.makeMetadataAgent(null);
            this.mPmAgent = packageManagerBackupAgentMakeMetadataAgent;
            this.mAgent = IBackupAgent.Stub.asInterface(packageManagerBackupAgentMakeMetadataAgent.onBind());
            initiateOneRestore(this.mCurrentPackage, 0L);
            this.backupManagerService.getBackupHandler().removeMessages(18);
            if (!this.mPmAgent.hasMetadata()) {
                Slog.e(BackupManagerService.TAG, "PM agent has no metadata, so not restoring");
                this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 24, this.mCurrentPackage, 3, null);
                EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, UserBackupManagerService.PACKAGE_MANAGER_SENTINEL, "Package manager restore metadata missing");
                this.mStatus = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                this.backupManagerService.getBackupHandler().removeMessages(20, this);
                executeNextState(UnifiedRestoreState.FINAL);
            }
        } catch (Exception e) {
            Slog.e(BackupManagerService.TAG, "Unable to contact transport for restore: " + e.getMessage());
            this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 25, null, 1, null);
            this.mStatus = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
            this.backupManagerService.getBackupHandler().removeMessages(20, this);
            executeNextState(UnifiedRestoreState.FINAL);
        }
    }

    private void dispatchNextRestore() {
        UnifiedRestoreState nextState;
        UnifiedRestoreState nextState2 = UnifiedRestoreState.FINAL;
        try {
            IBackupTransport transport = this.mTransportClient.connectOrThrow("PerformUnifiedRestoreTask.dispatchNextRestore()");
            RestoreDescription restoreDescriptionNextRestorePackage = transport.nextRestorePackage();
            this.mRestoreDescription = restoreDescriptionNextRestorePackage;
            String pkgName = restoreDescriptionNextRestorePackage != null ? restoreDescriptionNextRestorePackage.getPackageName() : null;
            if (pkgName == null) {
                Slog.e(BackupManagerService.TAG, "Failure getting next package name");
                EventLog.writeEvent(EventLogTags.RESTORE_TRANSPORT_FAILURE, new Object[0]);
                nextState2 = UnifiedRestoreState.FINAL;
                return;
            }
            if (this.mRestoreDescription == RestoreDescription.NO_MORE_PACKAGES) {
                Slog.v(BackupManagerService.TAG, "No more packages; finishing restore");
                int millis = (int) (SystemClock.elapsedRealtime() - this.mStartRealtime);
                EventLog.writeEvent(EventLogTags.RESTORE_SUCCESS, Integer.valueOf(this.mCount), Integer.valueOf(millis));
                nextState2 = UnifiedRestoreState.FINAL;
                return;
            }
            Slog.i(BackupManagerService.TAG, "Next restore package: " + this.mRestoreDescription);
            sendOnRestorePackage(pkgName);
            PackageManagerBackupAgent.Metadata metaInfo = this.mPmAgent.getRestoredMetadata(pkgName);
            if (metaInfo == null) {
                Slog.e(BackupManagerService.TAG, "No metadata for " + pkgName);
                EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, pkgName, "Package metadata missing");
                nextState2 = UnifiedRestoreState.RUNNING_QUEUE;
                return;
            }
            try {
                this.mCurrentPackage = this.backupManagerService.getPackageManager().getPackageInfoAsUser(pkgName, AudioFormat.OPUS, this.mUserId);
                if (metaInfo.versionCode > this.mCurrentPackage.getLongVersionCode()) {
                    if ((this.mCurrentPackage.applicationInfo.flags & 131072) == 0) {
                        String message = "Source version " + metaInfo.versionCode + " > installed version " + this.mCurrentPackage.getLongVersionCode();
                        Slog.w(BackupManagerService.TAG, "Package " + pkgName + ": " + message);
                        Bundle monitoringExtras = BackupManagerMonitorUtils.putMonitoringExtra((Bundle) null, "android.app.backup.extra.LOG_RESTORE_VERSION", metaInfo.versionCode);
                        this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 27, this.mCurrentPackage, 3, BackupManagerMonitorUtils.putMonitoringExtra(monitoringExtras, "android.app.backup.extra.LOG_RESTORE_ANYWAY", false));
                        EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, pkgName, message);
                        nextState2 = UnifiedRestoreState.RUNNING_QUEUE;
                        return;
                    }
                    Slog.v(BackupManagerService.TAG, "Source version " + metaInfo.versionCode + " > installed version " + this.mCurrentPackage.getLongVersionCode() + " but restoreAnyVersion");
                    Bundle monitoringExtras2 = BackupManagerMonitorUtils.putMonitoringExtra((Bundle) null, "android.app.backup.extra.LOG_RESTORE_VERSION", metaInfo.versionCode);
                    this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 27, this.mCurrentPackage, 3, BackupManagerMonitorUtils.putMonitoringExtra(monitoringExtras2, "android.app.backup.extra.LOG_RESTORE_ANYWAY", true));
                }
                this.mWidgetData = null;
                int type = this.mRestoreDescription.getDataType();
                if (type == 1) {
                    nextState = UnifiedRestoreState.RESTORE_KEYVALUE;
                } else {
                    if (type != 2) {
                        Slog.e(BackupManagerService.TAG, "Unrecognized restore type " + type);
                        nextState2 = UnifiedRestoreState.RUNNING_QUEUE;
                        return;
                    }
                    nextState = UnifiedRestoreState.RESTORE_FULL;
                }
            } catch (PackageManager.NameNotFoundException e) {
                Slog.e(BackupManagerService.TAG, "Package not present: " + pkgName);
                this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 26, this.mCurrentPackage, 3, null);
                EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, pkgName, "Package missing on device");
                nextState2 = UnifiedRestoreState.RUNNING_QUEUE;
            }
        } catch (Exception e2) {
            Slog.e(BackupManagerService.TAG, "Can't get next restore target from transport; halting: " + e2.getMessage());
            EventLog.writeEvent(EventLogTags.RESTORE_TRANSPORT_FAILURE, new Object[0]);
            nextState2 = UnifiedRestoreState.FINAL;
        } finally {
            executeNextState(nextState2);
        }
    }

    private void restoreKeyValue() {
        String packageName = this.mCurrentPackage.packageName;
        if (this.mCurrentPackage.applicationInfo.backupAgentName == null || "".equals(this.mCurrentPackage.applicationInfo.backupAgentName)) {
            this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 28, this.mCurrentPackage, 2, null);
            EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, packageName, "Package has no agent");
            executeNextState(UnifiedRestoreState.RUNNING_QUEUE);
            return;
        }
        PackageManagerBackupAgent.Metadata metaInfo = this.mPmAgent.getRestoredMetadata(packageName);
        PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        if (!BackupUtils.signaturesMatch(metaInfo.sigHashes, this.mCurrentPackage, pmi)) {
            Slog.w(BackupManagerService.TAG, "Signature mismatch restoring " + packageName);
            this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 29, this.mCurrentPackage, 3, null);
            EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, packageName, "Signature mismatch");
            executeNextState(UnifiedRestoreState.RUNNING_QUEUE);
            return;
        }
        IBackupAgent iBackupAgentBindToAgentSynchronous = this.backupManagerService.bindToAgentSynchronous(this.mCurrentPackage.applicationInfo, 0);
        this.mAgent = iBackupAgentBindToAgentSynchronous;
        if (iBackupAgentBindToAgentSynchronous == null) {
            Slog.w(BackupManagerService.TAG, "Can't find backup agent for " + packageName);
            this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 30, this.mCurrentPackage, 3, null);
            EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, packageName, "Restore agent missing");
            executeNextState(UnifiedRestoreState.RUNNING_QUEUE);
            return;
        }
        this.mDidLaunch = true;
        try {
            initiateOneRestore(this.mCurrentPackage, metaInfo.versionCode);
            this.mCount++;
        } catch (Exception e) {
            Slog.e(BackupManagerService.TAG, "Error when attempting restore: " + e.toString());
            keyValueAgentErrorCleanup(false);
            executeNextState(UnifiedRestoreState.RUNNING_QUEUE);
        }
    }

    private void initiateOneRestore(PackageInfo app, long appVersionCode) {
        ParcelFileDescriptor stage;
        String packageName = app.packageName;
        Slog.d(BackupManagerService.TAG, "initiateOneRestore packageName=" + packageName);
        this.mBackupDataName = new File(this.backupManagerService.getDataDir(), packageName + ".restore");
        this.mStageName = new File(this.backupManagerService.getDataDir(), packageName + ".stage");
        this.mNewStateName = new File(this.mStateDir, packageName + KeyValueBackupTask.NEW_STATE_FILE_SUFFIX);
        boolean staging = shouldStageBackupData(packageName);
        File downloadFile = staging ? this.mStageName : this.mBackupDataName;
        try {
            IBackupTransport transport = this.mTransportClient.connectOrThrow("PerformUnifiedRestoreTask.initiateOneRestore()");
            ParcelFileDescriptor stage2 = ParcelFileDescriptor.open(downloadFile, 1006632960);
            if (transport.getRestoreData(stage2) != 0) {
                Slog.e(BackupManagerService.TAG, "Error getting restore data for " + packageName);
                EventLog.writeEvent(EventLogTags.RESTORE_TRANSPORT_FAILURE, new Object[0]);
                stage2.close();
                downloadFile.delete();
                executeNextState(UnifiedRestoreState.FINAL);
                return;
            }
            if (!staging) {
                stage = stage2;
            } else {
                stage2.close();
                ParcelFileDescriptor stage3 = ParcelFileDescriptor.open(downloadFile, AudioFormat.EVRC);
                this.mBackupData = ParcelFileDescriptor.open(this.mBackupDataName, 1006632960);
                BackupDataInput in = new BackupDataInput(stage3.getFileDescriptor());
                BackupDataOutput out = new BackupDataOutput(this.mBackupData.getFileDescriptor());
                filterExcludedKeys(packageName, in, out);
                this.mBackupData.close();
                stage = stage3;
            }
            stage.close();
            this.mBackupData = ParcelFileDescriptor.open(this.mBackupDataName, AudioFormat.EVRC);
            this.mNewState = ParcelFileDescriptor.open(this.mNewStateName, 1006632960);
            long restoreAgentTimeoutMillis = this.mAgentTimeoutParameters.getRestoreAgentTimeoutMillis();
            this.backupManagerService.prepareOperationTimeout(this.mEphemeralOpToken, restoreAgentTimeoutMillis, this, 1);
            this.mAgent.doRestoreWithExcludedKeys(this.mBackupData, appVersionCode, this.mNewState, this.mEphemeralOpToken, this.backupManagerService.getBackupManagerBinder(), new ArrayList(getExcludedKeysForPackage(packageName)));
        } catch (Exception e) {
            Slog.e(BackupManagerService.TAG, "Unable to call app for restore: " + packageName, e);
            EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, packageName, e.toString());
            keyValueAgentErrorCleanup(false);
            executeNextState(UnifiedRestoreState.RUNNING_QUEUE);
        }
    }

    boolean shouldStageBackupData(String packageName) {
        return (packageName.equals(PackageManagerService.PLATFORM_PACKAGE_NAME) && getExcludedKeysForPackage(PackageManagerService.PLATFORM_PACKAGE_NAME).isEmpty()) ? false : true;
    }

    Set<String> getExcludedKeysForPackage(String packageName) {
        return this.backupManagerService.getExcludedRestoreKeys(packageName);
    }

    void filterExcludedKeys(String packageName, BackupDataInput in, BackupDataOutput out) throws Exception {
        Set<String> excludedKeysForPackage = getExcludedKeysForPackage(packageName);
        byte[] buffer = new byte[8192];
        while (in.readNextHeader()) {
            String key = in.getKey();
            int size = in.getDataSize();
            if (excludedKeysForPackage != null && excludedKeysForPackage.contains(key)) {
                Slog.i(BackupManagerService.TAG, "Skipping blocked key " + key);
                in.skipEntityData();
            } else if (key.equals(UserBackupManagerService.KEY_WIDGET_STATE)) {
                Slog.i(BackupManagerService.TAG, "Restoring widget state for " + packageName);
                byte[] bArr = new byte[size];
                this.mWidgetData = bArr;
                in.readEntityData(bArr, 0, size);
            } else {
                if (size > buffer.length) {
                    buffer = new byte[size];
                }
                in.readEntityData(buffer, 0, size);
                out.writeEntityHeader(key, size);
                out.writeEntityData(buffer, size);
            }
        }
    }

    private void restoreFull() {
        try {
            StreamFeederThread feeder = new StreamFeederThread();
            new Thread(feeder, "unified-stream-feeder").start();
        } catch (IOException e) {
            Slog.e(BackupManagerService.TAG, "Unable to construct pipes for stream restore!");
            executeNextState(UnifiedRestoreState.RUNNING_QUEUE);
        }
    }

    private void restoreFinished() {
        Slog.d(BackupManagerService.TAG, "restoreFinished packageName=" + this.mCurrentPackage.packageName);
        try {
            long restoreAgentFinishedTimeoutMillis = this.mAgentTimeoutParameters.getRestoreAgentFinishedTimeoutMillis();
            this.backupManagerService.prepareOperationTimeout(this.mEphemeralOpToken, restoreAgentFinishedTimeoutMillis, this, 1);
            this.mAgent.doRestoreFinished(this.mEphemeralOpToken, this.backupManagerService.getBackupManagerBinder());
        } catch (Exception e) {
            String packageName = this.mCurrentPackage.packageName;
            Slog.e(BackupManagerService.TAG, "Unable to finalize restore of " + packageName);
            EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, packageName, e.toString());
            keyValueAgentErrorCleanup(true);
            executeNextState(UnifiedRestoreState.RUNNING_QUEUE);
        }
    }

    class StreamFeederThread extends RestoreEngine implements Runnable, BackupRestoreTask {
        FullRestoreEngine mEngine;
        FullRestoreEngineThread mEngineThread;
        private final int mEphemeralOpToken;
        final String TAG = "StreamFeederThread";
        ParcelFileDescriptor[] mTransportPipes = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor[] mEnginePipes = ParcelFileDescriptor.createPipe();

        public StreamFeederThread() throws IOException {
            this.mEphemeralOpToken = PerformUnifiedRestoreTask.this.backupManagerService.generateRandomIntegerToken();
            setRunning(true);
        }

        /* JADX WARN: Code duplicated, block: B:108:0x021e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:113:0x02d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:20:0x00a6  */
        /* JADX WARN: Code duplicated, block: B:57:0x01fb  */
        /* JADX WARN: Code duplicated, block: B:58:0x01fd  */
        /* JADX WARN: Code duplicated, block: B:61:0x0203  */
        /* JADX WARN: Code duplicated, block: B:69:0x025b A[PHI: r2
  0x025b: PHI (r2v17 'status' int) = (r2v16 'status' int), (r2v26 'status' int) binds: [B:68:0x0259, B:86:0x0312] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:70:0x0260 A[PHI: r2
  0x0260: PHI (r2v18 'status' int) = (r2v16 'status' int), (r2v26 'status' int) binds: [B:68:0x0259, B:86:0x0312] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:76:0x02b5  */
        /* JADX WARN: Code duplicated, block: B:77:0x02b7  */
        /* JADX WARN: Code duplicated, block: B:80:0x02bd  */
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            Throwable th;
            UnifiedRestoreState nextState;
            int status;
            boolean z;
            UnifiedRestoreState nextState2;
            boolean z2;
            IBackupTransport transport;
            ParcelFileDescriptor eWriteEnd;
            int toCopy;
            UnifiedRestoreState unifiedRestoreState = UnifiedRestoreState.RUNNING_QUEUE;
            int status2 = 0;
            EventLog.writeEvent(EventLogTags.FULL_RESTORE_PACKAGE, PerformUnifiedRestoreTask.this.mCurrentPackage.packageName);
            FullRestoreEngine fullRestoreEngine = new FullRestoreEngine(PerformUnifiedRestoreTask.this.backupManagerService, this, null, PerformUnifiedRestoreTask.this.mMonitor, PerformUnifiedRestoreTask.this.mCurrentPackage, false, this.mEphemeralOpToken, false);
            this.mEngine = fullRestoreEngine;
            this.mEngineThread = new FullRestoreEngineThread(fullRestoreEngine, this.mEnginePipes[0]);
            ParcelFileDescriptor eWriteEnd2 = this.mEnginePipes[1];
            ParcelFileDescriptor[] parcelFileDescriptorArr = this.mTransportPipes;
            ParcelFileDescriptor tReadEnd = parcelFileDescriptorArr[0];
            ParcelFileDescriptor tWriteEnd = parcelFileDescriptorArr[1];
            int bufferSize = 32768;
            byte[] buffer = new byte[32768];
            FileOutputStream engineOut = new FileOutputStream(eWriteEnd2.getFileDescriptor());
            FileInputStream transportIn = new FileInputStream(tReadEnd.getFileDescriptor());
            new Thread(this.mEngineThread, "unified-restore-engine").start();
            try {
                try {
                    IBackupTransport transport2 = PerformUnifiedRestoreTask.this.mTransportClient.connectOrThrow("PerformUnifiedRestoreTask$StreamFeederThread.run()");
                    while (status2 == 0) {
                        int result = transport2.getNextFullRestoreDataChunk(tWriteEnd);
                        if (result > 0) {
                            if (result > bufferSize) {
                                bufferSize = result;
                                try {
                                    buffer = new byte[bufferSize];
                                    toCopy = result;
                                    while (toCopy > 0) {
                                        ParcelFileDescriptor eWriteEnd3 = eWriteEnd2;
                                        try {
                                            int n = transportIn.read(buffer, 0, toCopy);
                                            engineOut.write(buffer, 0, n);
                                            toCopy -= n;
                                            eWriteEnd2 = eWriteEnd3;
                                            transport2 = transport2;
                                        } catch (IOException e) {
                                            Slog.e("StreamFeederThread", "Unable to route data for restore");
                                            EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, PerformUnifiedRestoreTask.this.mCurrentPackage.packageName, "I/O error on pipes");
                                            status = -1003;
                                            IoUtils.closeQuietly(this.mEnginePipes[1]);
                                            IoUtils.closeQuietly(this.mTransportPipes[0]);
                                            IoUtils.closeQuietly(this.mTransportPipes[1]);
                                            this.mEngineThread.waitForResult();
                                            IoUtils.closeQuietly(this.mEnginePipes[0]);
                                            PerformUnifiedRestoreTask performUnifiedRestoreTask = PerformUnifiedRestoreTask.this;
                                            if (this.mEngine.getAgent() != null) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            performUnifiedRestoreTask.mDidLaunch = z2;
                                            if (-1003 == 0) {
                                                nextState2 = UnifiedRestoreState.RESTORE_FINISHED;
                                                PerformUnifiedRestoreTask.this.mAgent = this.mEngine.getAgent();
                                                PerformUnifiedRestoreTask.this.mWidgetData = this.mEngine.getWidgetData();
                                                PerformUnifiedRestoreTask.this.executeNextState(nextState2);
                                                setRunning(false);
                                            }
                                            try {
                                                IBackupTransport transport3 = PerformUnifiedRestoreTask.this.mTransportClient.connectOrThrow("PerformUnifiedRestoreTask$StreamFeederThread.run()");
                                                transport3.abortFullRestore();
                                            } catch (Exception e2) {
                                                Slog.e("StreamFeederThread", "Transport threw from abortFullRestore: " + e2.getMessage());
                                                status = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                                            }
                                            PerformUnifiedRestoreTask.this.backupManagerService.clearApplicationDataAfterRestoreFailure(PerformUnifiedRestoreTask.this.mCurrentPackage.packageName);
                                            if (status == -1000) {
                                                nextState2 = UnifiedRestoreState.FINAL;
                                            } else {
                                                nextState2 = UnifiedRestoreState.RUNNING_QUEUE;
                                            }
                                            PerformUnifiedRestoreTask.this.executeNextState(nextState2);
                                            setRunning(false);
                                        } catch (Exception e3) {
                                            e = e3;
                                            Slog.e("StreamFeederThread", "Transport failed during restore: " + e.getMessage());
                                            EventLog.writeEvent(EventLogTags.RESTORE_TRANSPORT_FAILURE, new Object[0]);
                                            status = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                                            IoUtils.closeQuietly(this.mEnginePipes[1]);
                                            IoUtils.closeQuietly(this.mTransportPipes[0]);
                                            IoUtils.closeQuietly(this.mTransportPipes[1]);
                                            this.mEngineThread.waitForResult();
                                            IoUtils.closeQuietly(this.mEnginePipes[0]);
                                            PerformUnifiedRestoreTask performUnifiedRestoreTask2 = PerformUnifiedRestoreTask.this;
                                            if (this.mEngine.getAgent() != null) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            performUnifiedRestoreTask2.mDidLaunch = z;
                                            if (-1000 == 0) {
                                                nextState2 = UnifiedRestoreState.RESTORE_FINISHED;
                                                PerformUnifiedRestoreTask.this.mAgent = this.mEngine.getAgent();
                                                PerformUnifiedRestoreTask.this.mWidgetData = this.mEngine.getWidgetData();
                                                PerformUnifiedRestoreTask.this.executeNextState(nextState2);
                                                setRunning(false);
                                            }
                                            try {
                                                IBackupTransport transport4 = PerformUnifiedRestoreTask.this.mTransportClient.connectOrThrow("PerformUnifiedRestoreTask$StreamFeederThread.run()");
                                                transport4.abortFullRestore();
                                            } catch (Exception e4) {
                                                Slog.e("StreamFeederThread", "Transport threw from abortFullRestore: " + e4.getMessage());
                                                status = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                                            }
                                            PerformUnifiedRestoreTask.this.backupManagerService.clearApplicationDataAfterRestoreFailure(PerformUnifiedRestoreTask.this.mCurrentPackage.packageName);
                                            if (status == -1000) {
                                                nextState2 = UnifiedRestoreState.FINAL;
                                            } else {
                                                nextState2 = UnifiedRestoreState.RUNNING_QUEUE;
                                            }
                                            PerformUnifiedRestoreTask.this.executeNextState(nextState2);
                                            setRunning(false);
                                        }
                                    }
                                    transport = transport2;
                                    eWriteEnd = eWriteEnd2;
                                } catch (IOException e5) {
                                    Slog.e("StreamFeederThread", "Unable to route data for restore");
                                    EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, PerformUnifiedRestoreTask.this.mCurrentPackage.packageName, "I/O error on pipes");
                                    status = -1003;
                                    IoUtils.closeQuietly(this.mEnginePipes[1]);
                                    IoUtils.closeQuietly(this.mTransportPipes[0]);
                                    IoUtils.closeQuietly(this.mTransportPipes[1]);
                                    this.mEngineThread.waitForResult();
                                    IoUtils.closeQuietly(this.mEnginePipes[0]);
                                    PerformUnifiedRestoreTask performUnifiedRestoreTask3 = PerformUnifiedRestoreTask.this;
                                    if (this.mEngine.getAgent() != null) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    performUnifiedRestoreTask3.mDidLaunch = z2;
                                    if (-1003 == 0) {
                                        nextState2 = UnifiedRestoreState.RESTORE_FINISHED;
                                        PerformUnifiedRestoreTask.this.mAgent = this.mEngine.getAgent();
                                        PerformUnifiedRestoreTask.this.mWidgetData = this.mEngine.getWidgetData();
                                        PerformUnifiedRestoreTask.this.executeNextState(nextState2);
                                        setRunning(false);
                                    }
                                    IBackupTransport transport5 = PerformUnifiedRestoreTask.this.mTransportClient.connectOrThrow("PerformUnifiedRestoreTask$StreamFeederThread.run()");
                                    transport5.abortFullRestore();
                                    PerformUnifiedRestoreTask.this.backupManagerService.clearApplicationDataAfterRestoreFailure(PerformUnifiedRestoreTask.this.mCurrentPackage.packageName);
                                    if (status == -1000) {
                                        nextState2 = UnifiedRestoreState.FINAL;
                                    } else {
                                        nextState2 = UnifiedRestoreState.RUNNING_QUEUE;
                                    }
                                    PerformUnifiedRestoreTask.this.executeNextState(nextState2);
                                    setRunning(false);
                                } catch (Exception e6) {
                                    e = e6;
                                    Slog.e("StreamFeederThread", "Transport failed during restore: " + e.getMessage());
                                    EventLog.writeEvent(EventLogTags.RESTORE_TRANSPORT_FAILURE, new Object[0]);
                                    status = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                                    IoUtils.closeQuietly(this.mEnginePipes[1]);
                                    IoUtils.closeQuietly(this.mTransportPipes[0]);
                                    IoUtils.closeQuietly(this.mTransportPipes[1]);
                                    this.mEngineThread.waitForResult();
                                    IoUtils.closeQuietly(this.mEnginePipes[0]);
                                    PerformUnifiedRestoreTask performUnifiedRestoreTask4 = PerformUnifiedRestoreTask.this;
                                    if (this.mEngine.getAgent() != null) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    performUnifiedRestoreTask4.mDidLaunch = z;
                                    if (-1000 == 0) {
                                        nextState2 = UnifiedRestoreState.RESTORE_FINISHED;
                                        PerformUnifiedRestoreTask.this.mAgent = this.mEngine.getAgent();
                                        PerformUnifiedRestoreTask.this.mWidgetData = this.mEngine.getWidgetData();
                                        PerformUnifiedRestoreTask.this.executeNextState(nextState2);
                                        setRunning(false);
                                    }
                                    IBackupTransport transport6 = PerformUnifiedRestoreTask.this.mTransportClient.connectOrThrow("PerformUnifiedRestoreTask$StreamFeederThread.run()");
                                    transport6.abortFullRestore();
                                    PerformUnifiedRestoreTask.this.backupManagerService.clearApplicationDataAfterRestoreFailure(PerformUnifiedRestoreTask.this.mCurrentPackage.packageName);
                                    if (status == -1000) {
                                        nextState2 = UnifiedRestoreState.FINAL;
                                    } else {
                                        nextState2 = UnifiedRestoreState.RUNNING_QUEUE;
                                    }
                                    PerformUnifiedRestoreTask.this.executeNextState(nextState2);
                                    setRunning(false);
                                } catch (Throwable th2) {
                                    th = th2;
                                    IoUtils.closeQuietly(this.mEnginePipes[1]);
                                    IoUtils.closeQuietly(this.mTransportPipes[0]);
                                    IoUtils.closeQuietly(this.mTransportPipes[1]);
                                    this.mEngineThread.waitForResult();
                                    IoUtils.closeQuietly(this.mEnginePipes[0]);
                                    PerformUnifiedRestoreTask.this.mDidLaunch = this.mEngine.getAgent() != null;
                                    if (status2 != 0) {
                                        try {
                                            IBackupTransport transport7 = PerformUnifiedRestoreTask.this.mTransportClient.connectOrThrow("PerformUnifiedRestoreTask$StreamFeederThread.run()");
                                            transport7.abortFullRestore();
                                        } catch (Exception e7) {
                                            Slog.e("StreamFeederThread", "Transport threw from abortFullRestore: " + e7.getMessage());
                                            status2 = -1000;
                                        }
                                        PerformUnifiedRestoreTask.this.backupManagerService.clearApplicationDataAfterRestoreFailure(PerformUnifiedRestoreTask.this.mCurrentPackage.packageName);
                                        nextState = status2 == -1000 ? UnifiedRestoreState.FINAL : UnifiedRestoreState.RUNNING_QUEUE;
                                    } else {
                                        nextState = UnifiedRestoreState.RESTORE_FINISHED;
                                        PerformUnifiedRestoreTask.this.mAgent = this.mEngine.getAgent();
                                        PerformUnifiedRestoreTask.this.mWidgetData = this.mEngine.getWidgetData();
                                    }
                                    PerformUnifiedRestoreTask.this.executeNextState(nextState);
                                    setRunning(false);
                                    throw th;
                                }
                            } else {
                                toCopy = result;
                                while (toCopy > 0) {
                                    ParcelFileDescriptor eWriteEnd4 = eWriteEnd2;
                                    int n2 = transportIn.read(buffer, 0, toCopy);
                                    engineOut.write(buffer, 0, n2);
                                    toCopy -= n2;
                                    eWriteEnd2 = eWriteEnd4;
                                    transport2 = transport2;
                                }
                                transport = transport2;
                                eWriteEnd = eWriteEnd2;
                            }
                            PerformUnifiedRestoreTask.this.executeNextState(nextState2);
                            setRunning(false);
                        }
                        transport = transport2;
                        eWriteEnd = eWriteEnd2;
                        if (result == -1) {
                            status2 = 0;
                            break;
                        }
                        Slog.e("StreamFeederThread", "Error " + result + " streaming restore for " + PerformUnifiedRestoreTask.this.mCurrentPackage.packageName);
                        EventLog.writeEvent(EventLogTags.RESTORE_TRANSPORT_FAILURE, new Object[0]);
                        status2 = result;
                        eWriteEnd2 = eWriteEnd;
                        transport2 = transport;
                    }
                    IoUtils.closeQuietly(this.mEnginePipes[1]);
                    IoUtils.closeQuietly(this.mTransportPipes[0]);
                    IoUtils.closeQuietly(this.mTransportPipes[1]);
                    this.mEngineThread.waitForResult();
                    IoUtils.closeQuietly(this.mEnginePipes[0]);
                    PerformUnifiedRestoreTask.this.mDidLaunch = this.mEngine.getAgent() != null;
                    if (status2 == 0) {
                        nextState2 = UnifiedRestoreState.RESTORE_FINISHED;
                        PerformUnifiedRestoreTask.this.mAgent = this.mEngine.getAgent();
                        PerformUnifiedRestoreTask.this.mWidgetData = this.mEngine.getWidgetData();
                    } else {
                        try {
                            IBackupTransport transport8 = PerformUnifiedRestoreTask.this.mTransportClient.connectOrThrow("PerformUnifiedRestoreTask$StreamFeederThread.run()");
                            transport8.abortFullRestore();
                        } catch (Exception e8) {
                            Slog.e("StreamFeederThread", "Transport threw from abortFullRestore: " + e8.getMessage());
                            status2 = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                        }
                        PerformUnifiedRestoreTask.this.backupManagerService.clearApplicationDataAfterRestoreFailure(PerformUnifiedRestoreTask.this.mCurrentPackage.packageName);
                        nextState2 = status2 == -1000 ? UnifiedRestoreState.FINAL : UnifiedRestoreState.RUNNING_QUEUE;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (IOException e9) {
            } catch (Exception e10) {
                e = e10;
            } catch (Throwable th4) {
                th = th4;
            }
            PerformUnifiedRestoreTask.this.executeNextState(nextState2);
            setRunning(false);
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void execute() {
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void operationComplete(long result) {
        }

        @Override // com.android.server.backup.BackupRestoreTask
        public void handleCancel(boolean cancelAll) {
            PerformUnifiedRestoreTask.this.backupManagerService.removeOperation(this.mEphemeralOpToken);
            Slog.w("StreamFeederThread", "Full-data restore target timed out; shutting down");
            PerformUnifiedRestoreTask performUnifiedRestoreTask = PerformUnifiedRestoreTask.this;
            performUnifiedRestoreTask.mMonitor = BackupManagerMonitorUtils.monitorEvent(performUnifiedRestoreTask.mMonitor, 45, PerformUnifiedRestoreTask.this.mCurrentPackage, 2, null);
            this.mEngineThread.handleTimeout();
            IoUtils.closeQuietly(this.mEnginePipes[1]);
            ParcelFileDescriptor[] parcelFileDescriptorArr = this.mEnginePipes;
            parcelFileDescriptorArr[1] = null;
            IoUtils.closeQuietly(parcelFileDescriptorArr[0]);
            this.mEnginePipes[0] = null;
        }
    }

    private void finalizeRestore() {
        PackageManagerBackupAgent packageManagerBackupAgent;
        try {
            IBackupTransport transport = this.mTransportClient.connectOrThrow("PerformUnifiedRestoreTask.finalizeRestore()");
            transport.finishRestore();
        } catch (Exception e) {
            Slog.e(BackupManagerService.TAG, "Error finishing restore", e);
        }
        IRestoreObserver iRestoreObserver = this.mObserver;
        if (iRestoreObserver != null) {
            try {
                iRestoreObserver.restoreFinished(this.mStatus);
            } catch (RemoteException e2) {
                Slog.d(BackupManagerService.TAG, "Restore observer died at restoreFinished");
            }
        }
        this.backupManagerService.getBackupHandler().removeMessages(8);
        if (this.mPmToken > 0) {
            try {
                this.backupManagerService.getPackageManagerBinder().finishPackageInstall(this.mPmToken, this.mDidLaunch);
            } catch (RemoteException e3) {
            }
        } else {
            long restoreAgentTimeoutMillis = this.mAgentTimeoutParameters.getRestoreAgentTimeoutMillis();
            this.backupManagerService.getBackupHandler().sendEmptyMessageDelayed(8, restoreAgentTimeoutMillis);
        }
        AppWidgetBackupBridge.restoreFinished(this.mUserId);
        if (this.mIsSystemRestore && (packageManagerBackupAgent = this.mPmAgent) != null) {
            this.backupManagerService.setAncestralPackages(packageManagerBackupAgent.getRestoredPackages());
            this.backupManagerService.setAncestralToken(this.mToken);
            this.backupManagerService.writeRestoreTokens();
        }
        synchronized (this.backupManagerService.getPendingRestores()) {
            if (this.backupManagerService.getPendingRestores().size() > 0) {
                Slog.d(BackupManagerService.TAG, "Starting next pending restore.");
                PerformUnifiedRestoreTask task = this.backupManagerService.getPendingRestores().remove();
                this.backupManagerService.getBackupHandler().sendMessage(this.backupManagerService.getBackupHandler().obtainMessage(20, task));
            } else {
                this.backupManagerService.setRestoreInProgress(false);
            }
        }
        Slog.i(BackupManagerService.TAG, "Restore complete.");
        this.mListener.onFinished("PerformUnifiedRestoreTask.finalizeRestore()");
    }

    void keyValueAgentErrorCleanup(boolean clearAppData) {
        if (clearAppData) {
            this.backupManagerService.clearApplicationDataAfterRestoreFailure(this.mCurrentPackage.packageName);
        }
        keyValueAgentCleanup();
    }

    void keyValueAgentCleanup() {
        this.mBackupDataName.delete();
        this.mStageName.delete();
        try {
            if (this.mBackupData != null) {
                this.mBackupData.close();
            }
        } catch (IOException e) {
        }
        try {
            if (this.mNewState != null) {
                this.mNewState.close();
            }
        } catch (IOException e2) {
        }
        this.mNewState = null;
        this.mBackupData = null;
        this.mNewStateName.delete();
        if (this.mCurrentPackage.applicationInfo != null) {
            try {
                this.backupManagerService.getActivityManager().unbindBackupAgent(this.mCurrentPackage.applicationInfo);
                int appFlags = this.mCurrentPackage.applicationInfo.flags;
                boolean killAfterRestore = !UserHandle.isCore(this.mCurrentPackage.applicationInfo.uid) && (this.mRestoreDescription.getDataType() == 2 || (65536 & appFlags) != 0);
                if (this.mTargetPackage == null && killAfterRestore) {
                    Slog.d(BackupManagerService.TAG, "Restore complete, killing host process of " + this.mCurrentPackage.applicationInfo.processName);
                    this.backupManagerService.getActivityManager().killApplicationProcess(this.mCurrentPackage.applicationInfo.processName, this.mCurrentPackage.applicationInfo.uid);
                }
            } catch (RemoteException e3) {
            }
        }
        this.backupManagerService.getBackupHandler().removeMessages(18, this);
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void operationComplete(long unusedResult) {
        UnifiedRestoreState nextState;
        this.backupManagerService.removeOperation(this.mEphemeralOpToken);
        int i = AnonymousClass1.$SwitchMap$com$android$server$backup$restore$UnifiedRestoreState[this.mState.ordinal()];
        if (i == 1) {
            nextState = UnifiedRestoreState.RUNNING_QUEUE;
        } else if (i == 3 || i == 4) {
            nextState = UnifiedRestoreState.RESTORE_FINISHED;
        } else if (i == 5) {
            int size = (int) this.mBackupDataName.length();
            EventLog.writeEvent(EventLogTags.RESTORE_PACKAGE, this.mCurrentPackage.packageName, Integer.valueOf(size));
            keyValueAgentCleanup();
            if (this.mWidgetData != null) {
                this.backupManagerService.restoreWidgetData(this.mCurrentPackage.packageName, this.mWidgetData);
            }
            UnifiedRestoreState nextState2 = UnifiedRestoreState.RUNNING_QUEUE;
            nextState = nextState2;
        } else {
            Slog.e(BackupManagerService.TAG, "Unexpected restore callback into state " + this.mState);
            keyValueAgentErrorCleanup(true);
            nextState = UnifiedRestoreState.FINAL;
        }
        executeNextState(nextState);
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void handleCancel(boolean cancelAll) {
        this.backupManagerService.removeOperation(this.mEphemeralOpToken);
        Slog.e(BackupManagerService.TAG, "Timeout restoring application " + this.mCurrentPackage.packageName);
        this.mMonitor = BackupManagerMonitorUtils.monitorEvent(this.mMonitor, 31, this.mCurrentPackage, 2, null);
        EventLog.writeEvent(EventLogTags.RESTORE_AGENT_FAILURE, this.mCurrentPackage.packageName, "restore timeout");
        keyValueAgentErrorCleanup(true);
        executeNextState(UnifiedRestoreState.RUNNING_QUEUE);
    }

    void executeNextState(UnifiedRestoreState nextState) {
        this.mState = nextState;
        Message msg = this.backupManagerService.getBackupHandler().obtainMessage(20, this);
        this.backupManagerService.getBackupHandler().sendMessage(msg);
    }

    void sendStartRestore(int numPackages) {
        IRestoreObserver iRestoreObserver = this.mObserver;
        if (iRestoreObserver != null) {
            try {
                iRestoreObserver.restoreStarting(numPackages);
            } catch (RemoteException e) {
                Slog.w(BackupManagerService.TAG, "Restore observer went away: startRestore");
                this.mObserver = null;
            }
        }
    }

    void sendOnRestorePackage(String name) {
        IRestoreObserver iRestoreObserver = this.mObserver;
        if (iRestoreObserver != null) {
            try {
                iRestoreObserver.onUpdate(this.mCount, name);
            } catch (RemoteException e) {
                Slog.d(BackupManagerService.TAG, "Restore observer died in onUpdate");
                this.mObserver = null;
            }
        }
    }

    void sendEndRestore() {
        IRestoreObserver iRestoreObserver = this.mObserver;
        if (iRestoreObserver != null) {
            try {
                iRestoreObserver.restoreFinished(this.mStatus);
            } catch (RemoteException e) {
                Slog.w(BackupManagerService.TAG, "Restore observer went away: endRestore");
                this.mObserver = null;
            }
        }
    }
}

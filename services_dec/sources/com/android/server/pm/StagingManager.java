package com.android.server.pm;

import android.apex.ApexInfo;
import android.apex.ApexInfoList;
import android.apex.ApexSessionInfo;
import android.apex.ApexSessionParams;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackageParser;
import android.content.pm.parsing.PackageInfoWithoutStateUtils;
import android.content.rollback.IRollbackManager;
import android.content.rollback.RollbackInfo;
import android.content.rollback.RollbackManager;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.ParcelableException;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserManagerInternal;
import android.os.storage.IStorageManager;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import android.util.IntArray;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.apk.ApkSignatureVerifier;
import com.android.internal.content.PackageHelper;
import com.android.internal.os.BackgroundThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.SystemServiceManager;
import com.android.server.pm.parsing.PackageParser2;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import com.android.server.pm.parsing.pkg.ParsedPackage;
import com.android.server.rollback.WatchdogRollbackLogger;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class StagingManager {
    private static final String TAG = "StagingManager";
    private final Context mContext;
    private String mFailureReason;
    private String mNativeFailureReason;
    private final Supplier<PackageParser2> mPackageParserSupplier;
    private final PackageInstallerService mPi;
    private final PowerManager mPowerManager;
    private final File mFailureReasonFile = new File("/metadata/staged-install/failure_reason.txt");
    private final SparseArray<PackageInstallerSession> mStagedSessions = new SparseArray<>();
    private final SparseIntArray mSessionRollbackIds = new SparseIntArray();
    private final List<String> mFailedPackageNames = new ArrayList();
    private final List<Integer> mSuccessfulStagedSessionIds = new ArrayList();
    private final ApexManager mApexManager = ApexManager.getInstance();
    private final PreRebootVerificationHandler mPreRebootVerificationHandler = new PreRebootVerificationHandler(BackgroundThread.get().getLooper());

    StagingManager(PackageInstallerService pi, Context context, Supplier<PackageParser2> packageParserSupplier) {
        this.mPi = pi;
        this.mContext = context;
        this.mPackageParserSupplier = packageParserSupplier;
        this.mPowerManager = (PowerManager) context.getSystemService("power");
        if (this.mFailureReasonFile.exists()) {
            try {
                BufferedReader reader = new BufferedReader(new FileReader(this.mFailureReasonFile));
                try {
                    this.mFailureReason = reader.readLine();
                    reader.close();
                } catch (Throwable th) {
                    try {
                        reader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Exception e) {
            }
        }
    }

    public static final class Lifecycle extends SystemService {
        private static StagingManager sStagingManager;

        public Lifecycle(Context context) {
            super(context);
        }

        void startService(StagingManager stagingManager) {
            sStagingManager = stagingManager;
            ((SystemServiceManager) LocalServices.getService(SystemServiceManager.class)).startService(this);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            StagingManager stagingManager;
            if (phase == 1000 && (stagingManager = sStagingManager) != null) {
                stagingManager.markStagedSessionsAsSuccessful();
            }
        }
    }

    private void updateStoredSession(PackageInstallerSession sessionInfo) {
        synchronized (this.mStagedSessions) {
            PackageInstallerSession storedSession = this.mStagedSessions.get(sessionInfo.sessionId);
            if (storedSession != null) {
                this.mStagedSessions.put(sessionInfo.sessionId, sessionInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void validateApexSignature(PackageInfo newApexPkg) throws PackageManagerException {
        String apexPath = newApexPkg.applicationInfo.sourceDir;
        String packageName = newApexPkg.packageName;
        int minSignatureScheme = ApkSignatureVerifier.getMinimumSignatureSchemeVersionForTargetSdk(newApexPkg.applicationInfo.targetSdkVersion);
        try {
            PackageParser.SigningDetails newSigningDetails = ApkSignatureVerifier.verify(apexPath, minSignatureScheme);
            PackageInfo existingApexPkg = this.mApexManager.getPackageInfo(packageName, 1);
            if (existingApexPkg != null) {
                try {
                    PackageParser.SigningDetails existingSigningDetails = ApkSignatureVerifier.verify(existingApexPkg.applicationInfo.sourceDir, 1);
                    if (newSigningDetails.checkCapability(existingSigningDetails, 1) || existingSigningDetails.checkCapability(newSigningDetails, 8)) {
                        return;
                    }
                    throw new PackageManagerException(1, "APK-container signature of APEX package " + packageName + " with version " + newApexPkg.versionCodeMajor + " and path " + apexPath + " is not compatible with the one currently installed on device");
                } catch (PackageParser.PackageParserException e) {
                    throw new PackageManagerException(1, "Failed to parse APEX package " + existingApexPkg.applicationInfo.sourceDir, e);
                }
            }
            throw new IllegalStateException("Unknown apex package " + packageName);
        } catch (PackageParser.PackageParserException e2) {
            throw new PackageManagerException(1, "Failed to parse APEX package " + apexPath, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<PackageInfo> submitSessionToApexService(PackageInstallerSession session) throws PackageManagerException {
        IntArray childSessionIds = new IntArray();
        boolean z = false;
        if (session.isMultiPackage()) {
            for (int id : session.getChildSessionIds()) {
                if (isApexSession(getStagedSession(id))) {
                    childSessionIds.add(id);
                }
            }
        }
        ApexSessionParams apexSessionParams = new ApexSessionParams();
        apexSessionParams.sessionId = session.sessionId;
        apexSessionParams.childSessionIds = childSessionIds.toArray();
        if (session.params.installReason == 5) {
            apexSessionParams.isRollback = true;
            apexSessionParams.rollbackId = retrieveRollbackIdForCommitSession(session.sessionId);
        } else {
            synchronized (this.mStagedSessions) {
                int rollbackId = this.mSessionRollbackIds.get(session.sessionId, -1);
                if (rollbackId != -1) {
                    apexSessionParams.hasRollbackEnabled = true;
                    apexSessionParams.rollbackId = rollbackId;
                }
            }
        }
        ApexInfoList apexInfoList = this.mApexManager.submitStagedSession(apexSessionParams);
        List<PackageInfo> result = new ArrayList<>();
        List<String> apexPackageNames = new ArrayList<>();
        ApexInfo[] apexInfoArr = apexInfoList.apexInfos;
        int length = apexInfoArr.length;
        int i = 0;
        while (i < length) {
            ApexInfo apexInfo = apexInfoArr[i];
            try {
                PackageParser2 packageParser = this.mPackageParserSupplier.get();
                try {
                    File apexFile = new File(apexInfo.modulePath);
                    ParsedPackage parsedPackage = packageParser.parsePackage(apexFile, 128, z);
                    PackageInfo packageInfo = PackageInfoWithoutStateUtils.generate(parsedPackage, apexInfo, 128);
                    if (packageInfo == null) {
                        throw new PackageManagerException(1, "Unable to generate package info: " + apexInfo.modulePath);
                    }
                    if (packageParser != null) {
                        packageParser.close();
                    }
                    PackageInfo activePackage = this.mApexManager.getPackageInfo(packageInfo.packageName, 1);
                    if (activePackage == null) {
                        Slog.w(TAG, "Attempting to install new APEX package " + packageInfo.packageName);
                        throw new PackageManagerException(1, "It is forbidden to install new APEX packages.");
                    }
                    checkRequiredVersionCode(session, activePackage);
                    checkDowngrade(session, activePackage, packageInfo);
                    result.add(packageInfo);
                    apexPackageNames.add(packageInfo.packageName);
                    i++;
                    z = false;
                } catch (Throwable th) {
                    if (packageParser == null) {
                        throw th;
                    }
                    try {
                        packageParser.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            } catch (PackageParser.PackageParserException e) {
                throw new PackageManagerException(1, "Failed to parse APEX package " + apexInfo.modulePath, e);
            }
            throw new PackageManagerException(1, "Failed to parse APEX package " + apexInfo.modulePath, e);
        }
        Slog.d(TAG, "Session " + session.sessionId + " has following APEX packages: " + apexPackageNames);
        return result;
    }

    private int retrieveRollbackIdForCommitSession(int sessionId) throws PackageManagerException {
        RollbackManager rm = (RollbackManager) this.mContext.getSystemService(RollbackManager.class);
        List<RollbackInfo> rollbacks = rm.getRecentlyCommittedRollbacks();
        int size = rollbacks.size();
        for (int i = 0; i < size; i++) {
            RollbackInfo rollback = rollbacks.get(i);
            if (rollback.getCommittedSessionId() == sessionId) {
                return rollback.getRollbackId();
            }
        }
        throw new PackageManagerException("Could not find rollback id for commit session: " + sessionId);
    }

    private void checkRequiredVersionCode(PackageInstallerSession session, PackageInfo activePackage) throws PackageManagerException {
        if (session.params.requiredInstalledVersionCode == -1) {
            return;
        }
        long activeVersion = activePackage.applicationInfo.longVersionCode;
        if (activeVersion != session.params.requiredInstalledVersionCode) {
            if (!this.mApexManager.abortStagedSession(session.sessionId)) {
                Slog.e(TAG, "Failed to abort apex session " + session.sessionId);
            }
            throw new PackageManagerException(1, "Installed version of APEX package " + activePackage.packageName + " does not match required. Active version: " + activeVersion + " required: " + session.params.requiredInstalledVersionCode);
        }
    }

    private void checkDowngrade(PackageInstallerSession session, PackageInfo activePackage, PackageInfo newPackage) throws PackageManagerException {
        long activeVersion = activePackage.applicationInfo.longVersionCode;
        long newVersionCode = newPackage.applicationInfo.longVersionCode;
        boolean isAppDebuggable = (activePackage.applicationInfo.flags & 2) != 0;
        boolean allowsDowngrade = PackageManagerServiceUtils.isDowngradePermitted(session.params.installFlags, isAppDebuggable);
        if (activeVersion > newVersionCode && !allowsDowngrade) {
            if (!this.mApexManager.abortStagedSession(session.sessionId)) {
                Slog.e(TAG, "Failed to abort apex session " + session.sessionId);
            }
            throw new PackageManagerException(1, "Downgrade of APEX package " + newPackage.packageName + " is not allowed. Active version: " + activeVersion + " attempted: " + newVersionCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isApexSession(PackageInstallerSession session) {
        return (session.params.installFlags & 131072) != 0;
    }

    private boolean sessionContains(PackageInstallerSession session, Predicate<PackageInstallerSession> filter) {
        if (!session.isMultiPackage()) {
            return filter.test(session);
        }
        synchronized (this.mStagedSessions) {
            int[] childSessionIds = session.getChildSessionIds();
            for (int id : childSessionIds) {
                PackageInstallerSession s = this.mStagedSessions.get(id);
                if (filter.test(s)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sessionContainsApex(PackageInstallerSession session) {
        return sessionContains(session, new Predicate() { // from class: com.android.server.pm.-$$Lambda$StagingManager$cCrTSWVAewHcbpkNkEhDosvsa7E
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return StagingManager.isApexSession((PackageInstallerSession) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$sessionContainsApk$1(PackageInstallerSession s) {
        return !isApexSession(s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sessionContainsApk(PackageInstallerSession session) {
        return sessionContains(session, new Predicate() { // from class: com.android.server.pm.-$$Lambda$StagingManager$DPIjX5kTmtybLfpjEIRETYd18kE
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return StagingManager.lambda$sessionContainsApk$1((PackageInstallerSession) obj);
            }
        });
    }

    private void abortCheckpoint(int sessionId, String errorMsg) {
        String failureReason = "Failed to install sessionId: " + sessionId + " Error: " + errorMsg;
        Slog.e(TAG, failureReason);
        try {
            if (supportsCheckpoint() && needsCheckpoint()) {
                try {
                    BufferedWriter writer = new BufferedWriter(new FileWriter(this.mFailureReasonFile));
                    try {
                        writer.write(failureReason);
                        writer.close();
                        if (this.mApexManager.isApexSupported()) {
                            this.mApexManager.revertActiveSessions();
                        }
                        PackageHelper.getStorageManager().abortChanges("StagingManager initiated", false);
                    } catch (Throwable th) {
                        try {
                            writer.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Exception e) {
                    Slog.w(TAG, "Failed to save failure reason: ", e);
                }
            }
        } catch (Exception e2) {
            Slog.wtf(TAG, "Failed to abort checkpoint", e2);
            if (this.mApexManager.isApexSupported()) {
                this.mApexManager.revertActiveSessions();
            }
            this.mPowerManager.reboot(null);
        }
    }

    private boolean supportsCheckpoint() throws RemoteException {
        return PackageHelper.getStorageManager().supportsCheckpoint();
    }

    private boolean needsCheckpoint() throws RemoteException {
        return PackageHelper.getStorageManager().needsCheckpoint();
    }

    private List<PackageInstallerSession> extractApexSessions(PackageInstallerSession session) {
        List<PackageInstallerSession> apexSessions = new ArrayList<>();
        if (session.isMultiPackage()) {
            List<PackageInstallerSession> childrenSessions = new ArrayList<>();
            synchronized (this.mStagedSessions) {
                for (int childSessionId : session.getChildSessionIds()) {
                    PackageInstallerSession childSession = this.mStagedSessions.get(childSessionId);
                    if (childSession != null) {
                        childrenSessions.add(childSession);
                    }
                }
            }
            int size = childrenSessions.size();
            for (int i = 0; i < size; i++) {
                PackageInstallerSession childSession2 = childrenSessions.get(i);
                if (sessionContainsApex(childSession2)) {
                    apexSessions.add(childSession2);
                }
            }
        } else {
            apexSessions.add(session);
        }
        return apexSessions;
    }

    private void checkInstallationOfApkInApexSuccessful(PackageInstallerSession session) throws PackageManagerException {
        List<PackageInstallerSession> apexSessions = extractApexSessions(session);
        if (apexSessions.isEmpty()) {
            return;
        }
        for (PackageInstallerSession apexSession : apexSessions) {
            String packageName = apexSession.getPackageName();
            if (!this.mApexManager.isApkInApexInstallSuccess(packageName)) {
                throw new PackageManagerException(2, "Failed to install apk-in-apex of " + packageName);
            }
        }
    }

    private void snapshotAndRestoreForApexSession(PackageInstallerSession session) {
        boolean doSnapshotOrRestore = (session.params.installFlags & 262144) != 0 || session.params.installReason == 5;
        if (!doSnapshotOrRestore) {
            return;
        }
        List<PackageInstallerSession> apexSessions = extractApexSessions(session);
        if (apexSessions.isEmpty()) {
            return;
        }
        UserManagerInternal um = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        int[] allUsers = um.getUserIds();
        IRollbackManager rm = IRollbackManager.Stub.asInterface(ServiceManager.getService("rollback"));
        int sessionsSize = apexSessions.size();
        for (int i = 0; i < sessionsSize; i++) {
            String packageName = apexSessions.get(i).getPackageName();
            snapshotAndRestoreApexUserData(packageName, allUsers, rm);
            List<String> apksInApex = this.mApexManager.getApksInApex(packageName);
            int apksSize = apksInApex.size();
            for (int j = 0; j < apksSize; j++) {
                snapshotAndRestoreApkInApexUserData(apksInApex.get(j), allUsers, rm);
            }
        }
    }

    private void snapshotAndRestoreApexUserData(String packageName, int[] allUsers, IRollbackManager rm) {
        try {
            rm.snapshotAndRestoreUserData(packageName, allUsers, 0, 0L, (String) null, 0);
        } catch (RemoteException re) {
            Slog.e(TAG, "Error snapshotting/restoring user data: " + re);
        }
    }

    private void snapshotAndRestoreApkInApexUserData(String packageName, int[] allUsers, IRollbackManager rm) {
        PackageManagerInternal mPmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        AndroidPackage pkg = mPmi.getPackage(packageName);
        if (pkg == null) {
            Slog.e(TAG, "Could not find package: " + packageName + "for snapshotting/restoring user data.");
            return;
        }
        PackageSetting ps = mPmi.getPackageSetting(packageName);
        if (ps != null) {
            int appId = ps.appId;
            long ceDataInode = ps.getCeDataInode(0);
            int[] installedUsers = ps.queryInstalledUsers(allUsers, true);
            String seInfo = AndroidPackageUtils.getSeInfo(pkg, ps);
            try {
                rm.snapshotAndRestoreUserData(packageName, installedUsers, appId, ceDataInode, seInfo, 0);
            } catch (RemoteException re) {
                Slog.e(TAG, "Error snapshotting/restoring user data: " + re);
            }
        }
    }

    private void prepareForLoggingApexdRevert(PackageInstallerSession session, String nativeFailureReason) {
        synchronized (this.mFailedPackageNames) {
            this.mNativeFailureReason = nativeFailureReason;
            if (session.getPackageName() != null) {
                this.mFailedPackageNames.add(session.getPackageName());
            }
        }
    }

    private void resumeSession(PackageInstallerSession session) throws PackageManagerException {
        Slog.d(TAG, "Resuming session " + session.sessionId);
        boolean hasApex = sessionContainsApex(session);
        ApexSessionInfo apexSessionInfo = null;
        if (hasApex) {
            apexSessionInfo = this.mApexManager.getStagedSessionInfo(session.sessionId);
            if (apexSessionInfo != null && !TextUtils.isEmpty(apexSessionInfo.crashingNativeProcess)) {
                prepareForLoggingApexdRevert(session, apexSessionInfo.crashingNativeProcess);
            }
            if (apexSessionInfo != null && apexSessionInfo.isVerified) {
                Slog.d(TAG, "Found pending staged session " + session.sessionId + " still to be verified, resuming pre-reboot verification");
                this.mPreRebootVerificationHandler.startPreRebootVerification(session.sessionId);
                return;
            }
        }
        try {
            if (supportsCheckpoint() && !needsCheckpoint()) {
                String errorMsg = "Reverting back to safe state. Marking " + session.sessionId + " as failed";
                if (!TextUtils.isEmpty(this.mFailureReason)) {
                    errorMsg = errorMsg + ": " + this.mFailureReason;
                }
                Slog.d(TAG, errorMsg);
                session.setStagedSessionFailed(3, errorMsg);
                return;
            }
            if (hasApex) {
                if (apexSessionInfo == null) {
                    throw new PackageManagerException(2, "apexd did not know anything about a staged session supposed to be activated");
                }
                if (isApexSessionFailed(apexSessionInfo)) {
                    String errorMsg2 = "APEX activation failed. Check logcat messages from apexd for more information.";
                    if (!TextUtils.isEmpty(this.mNativeFailureReason)) {
                        errorMsg2 = "Session reverted due to crashing native process: " + this.mNativeFailureReason;
                    }
                    throw new PackageManagerException(2, errorMsg2);
                }
                if (!apexSessionInfo.isActivated && !apexSessionInfo.isSuccess) {
                    String errorMsg3 = "Staged session " + session.sessionId + "at boot didn't activate nor fail. Marking it as failed anyway.";
                    throw new PackageManagerException(2, errorMsg3);
                }
            }
            if (hasApex) {
                checkInstallationOfApkInApexSuccessful(session);
                snapshotAndRestoreForApexSession(session);
                Slog.i(TAG, "APEX packages in session " + session.sessionId + " were successfully activated. Proceeding with APK packages, if any");
            }
            Slog.d(TAG, "Installing APK packages in session " + session.sessionId);
            installApksInSession(session);
            Slog.d(TAG, "Marking session " + session.sessionId + " as applied");
            session.setStagedSessionApplied();
            if (hasApex) {
                try {
                    if (supportsCheckpoint()) {
                        synchronized (this.mSuccessfulStagedSessionIds) {
                            this.mSuccessfulStagedSessionIds.add(Integer.valueOf(session.sessionId));
                        }
                        return;
                    }
                    this.mApexManager.markStagedSessionSuccessful(session.sessionId);
                } catch (RemoteException e) {
                    Slog.w(TAG, "Checkpoint support unknown, marking session as successful immediately.");
                    this.mApexManager.markStagedSessionSuccessful(session.sessionId);
                }
            }
        } catch (RemoteException e2) {
            Slog.e(TAG, "Checkpoint support unknown. Aborting staged install for session " + session.sessionId, e2);
            session.setStagedSessionFailed(3, "Checkpoint support unknown. Aborting staged install.");
            if (hasApex) {
                this.mApexManager.revertActiveSessions();
            }
            this.mPowerManager.reboot("Checkpoint support unknown");
        }
    }

    private List<String> findAPKsInDir(File stageDir) {
        List<String> ret = new ArrayList<>();
        if (stageDir != null && stageDir.exists()) {
            for (File file : stageDir.listFiles()) {
                if (file.getAbsolutePath().toLowerCase().endsWith(".apk")) {
                    ret.add(file.getAbsolutePath());
                }
            }
        }
        return ret;
    }

    void onInstallationFailure(PackageInstallerSession session, PackageManagerException e) {
        session.setStagedSessionFailed(e.error, e.getMessage());
        abortCheckpoint(session.sessionId, e.getMessage());
        if (!sessionContainsApex(session)) {
            return;
        }
        if (!this.mApexManager.revertActiveSessions()) {
            Slog.e(TAG, "Failed to abort APEXd session");
        } else {
            Slog.e(TAG, "Successfully aborted apexd session. Rebooting device in order to revert to the previous state of APEXd.");
            this.mPowerManager.reboot(null);
        }
    }

    private PackageInstallerSession createAndWriteApkSession(PackageInstallerSession originalSession, boolean preReboot) throws PackageManagerException {
        int errorCode = preReboot ? 1 : 2;
        if (originalSession.stageDir != null) {
            List<String> apkFilePaths = findAPKsInDir(originalSession.stageDir);
            if (apkFilePaths.isEmpty()) {
                Slog.w(TAG, "Can't find staged APK in " + originalSession.stageDir.getAbsolutePath());
                throw new PackageManagerException(errorCode, "Can't find staged APK in " + originalSession.stageDir.getAbsolutePath());
            }
            PackageInstaller.SessionParams params = originalSession.params.copy();
            params.isStaged = false;
            params.installFlags |= 2097152;
            if (preReboot) {
                params.installFlags &= -262145;
                params.installFlags |= 8388608;
            } else {
                params.installFlags |= 524288;
            }
            try {
                int apkSessionId = this.mPi.createSession(params, originalSession.getInstallerPackageName(), originalSession.userId);
                PackageInstallerSession apkSession = this.mPi.getSession(apkSessionId);
                apkSession.open();
                int i = 0;
                for (int size = apkFilePaths.size(); i < size; size = size) {
                    String apkFilePath = apkFilePaths.get(i);
                    File apkFile = new File(apkFilePath);
                    ParcelFileDescriptor pfd = ParcelFileDescriptor.open(apkFile, AudioFormat.EVRC);
                    long sizeBytes = pfd == null ? -1L : pfd.getStatSize();
                    if (sizeBytes < 0) {
                        Slog.e(TAG, "Unable to get size of: " + apkFilePath);
                        throw new PackageManagerException(errorCode, "Unable to get size of: " + apkFilePath);
                    }
                    apkSession.write(apkFile.getName(), 0L, sizeBytes, pfd);
                    i++;
                }
                return apkSession;
            } catch (IOException | ParcelableException e) {
                Slog.e(TAG, "Failure to install APK staged session " + originalSession.sessionId, e);
                throw new PackageManagerException(errorCode, "Failed to create/write APK session", e);
            }
        }
        Slog.wtf(TAG, "Attempting to install a staged APK session with no staging dir");
        throw new PackageManagerException(errorCode, "Attempting to install a staged APK session with no staging dir");
    }

    private PackageInstallerSession extractApksInSession(PackageInstallerSession session, boolean preReboot) throws PackageManagerException {
        int errorCode = preReboot ? 1 : 2;
        if (!session.isMultiPackage() && !isApexSession(session)) {
            return createAndWriteApkSession(session, preReboot);
        }
        if (!session.isMultiPackage()) {
            return null;
        }
        List<PackageInstallerSession> childSessions = new ArrayList<>();
        synchronized (this.mStagedSessions) {
            int[] childSessionIds = session.getChildSessionIds();
            for (int id : childSessionIds) {
                PackageInstallerSession s = this.mStagedSessions.get(id);
                if (!isApexSession(s)) {
                    childSessions.add(s);
                }
            }
        }
        if (childSessions.isEmpty()) {
            return null;
        }
        PackageInstaller.SessionParams params = session.params.copy();
        params.isStaged = false;
        if (preReboot) {
            params.installFlags &= -262145;
        }
        int apkParentSessionId = this.mPi.createSession(params, session.getInstallerPackageName(), session.userId);
        PackageInstallerSession apkParentSession = this.mPi.getSession(apkParentSessionId);
        try {
            apkParentSession.open();
            int size = childSessions.size();
            for (int i = 0; i < size; i++) {
                PackageInstallerSession apkChildSession = createAndWriteApkSession(childSessions.get(i), preReboot);
                try {
                    apkParentSession.addChildSessionId(apkChildSession.sessionId);
                } catch (IllegalStateException e) {
                    Slog.e(TAG, "Failed to add a child session for installing the APK files", e);
                    throw new PackageManagerException(errorCode, "Failed to add a child session " + apkChildSession.sessionId);
                }
            }
            return apkParentSession;
        } catch (IOException e2) {
            Slog.e(TAG, "Unable to prepare multi-package session for staged session " + session.sessionId);
            throw new PackageManagerException(errorCode, "Unable to prepare multi-package session for staged session");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void verifyApksInSession(final PackageInstallerSession session) throws PackageManagerException {
        PackageInstallerSession apksToVerify = extractApksInSession(session, true);
        if (apksToVerify == null) {
            return;
        }
        LocalIntentReceiverAsync receiver = new LocalIntentReceiverAsync(new Consumer() { // from class: com.android.server.pm.-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$verifyApksInSession$2$StagingManager(session, (Intent) obj);
            }
        });
        apksToVerify.commit(receiver.getIntentSender(), false);
    }

    public /* synthetic */ void lambda$verifyApksInSession$2$StagingManager(PackageInstallerSession session, Intent result) {
        int status = result.getIntExtra("android.content.pm.extra.STATUS", 1);
        if (status != 0) {
            String errorMessage = result.getStringExtra("android.content.pm.extra.STATUS_MESSAGE");
            Slog.e(TAG, "Failure to verify APK staged session " + session.sessionId + " [" + errorMessage + "]");
            session.setStagedSessionFailed(1, errorMessage);
            this.mPreRebootVerificationHandler.onPreRebootVerificationComplete(session.sessionId);
            return;
        }
        this.mPreRebootVerificationHandler.notifyPreRebootVerification_Apk_Complete(session.sessionId);
    }

    private void installApksInSession(PackageInstallerSession session) throws PackageManagerException {
        PackageInstallerSession apksToInstall = extractApksInSession(session, false);
        if (apksToInstall == null) {
            return;
        }
        if ((apksToInstall.params.installFlags & 262144) != 0) {
            IRollbackManager rm = IRollbackManager.Stub.asInterface(ServiceManager.getService("rollback"));
            try {
                rm.notifyStagedApkSession(session.sessionId, apksToInstall.sessionId);
            } catch (RemoteException re) {
                Slog.e(TAG, "Failed to notifyStagedApkSession for session: " + session.sessionId, re);
            }
        }
        LocalIntentReceiverSync receiver = new LocalIntentReceiverSync(null);
        apksToInstall.commit(receiver.getIntentSender(), false);
        Intent result = receiver.getResult();
        int status = result.getIntExtra("android.content.pm.extra.STATUS", 1);
        if (status != 0) {
            String errorMessage = result.getStringExtra("android.content.pm.extra.STATUS_MESSAGE");
            Slog.e(TAG, "Failure to install APK staged session " + session.sessionId + " [" + errorMessage + "]");
            throw new PackageManagerException(2, errorMessage);
        }
    }

    void commitSession(PackageInstallerSession session) {
        updateStoredSession(session);
        this.mPreRebootVerificationHandler.startPreRebootVerification(session.sessionId);
    }

    private int parentOrOwnSessionId(PackageInstallerSession session) {
        return session.hasParentSessionId() ? session.getParentSessionId() : session.sessionId;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006e A[Catch: all -> 0x00ed, TryCatch #0 {, blocks: (B:10:0x0020, B:12:0x0028, B:14:0x0036, B:16:0x003c, B:19:0x0044, B:22:0x004c, B:24:0x0052, B:26:0x0060, B:28:0x0066, B:31:0x006e, B:33:0x0074, B:34:0x0092, B:37:0x00a5, B:40:0x00b0, B:41:0x00b7, B:42:0x00b8, B:43:0x00e6, B:44:0x00e7, B:45:0x00eb), top: B:52:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0074 A[Catch: all -> 0x00ed, TryCatch #0 {, blocks: (B:10:0x0020, B:12:0x0028, B:14:0x0036, B:16:0x003c, B:19:0x0044, B:22:0x004c, B:24:0x0052, B:26:0x0060, B:28:0x0066, B:31:0x006e, B:33:0x0074, B:34:0x0092, B:37:0x00a5, B:40:0x00b0, B:41:0x00b7, B:42:0x00b8, B:43:0x00e6, B:44:0x00e7, B:45:0x00eb), top: B:52:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0092 A[Catch: all -> 0x00ed, TryCatch #0 {, blocks: (B:10:0x0020, B:12:0x0028, B:14:0x0036, B:16:0x003c, B:19:0x0044, B:22:0x004c, B:24:0x0052, B:26:0x0060, B:28:0x0066, B:31:0x006e, B:33:0x0074, B:34:0x0092, B:37:0x00a5, B:40:0x00b0, B:41:0x00b7, B:42:0x00b8, B:43:0x00e6, B:44:0x00e7, B:45:0x00eb), top: B:52:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b8 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:33:0x0074, please report this as an issue */
    void checkNonOverlappingWithStagedSessions(PackageInstallerSession session) throws PackageManagerException {
        int parentId;
        if (session.isMultiPackage()) {
            return;
        }
        if (session.getPackageName() == null) {
            throw new PackageManagerException(-2, "Cannot stage session " + session.sessionId + " with package name null");
        }
        boolean supportsCheckpoint = ((StorageManager) this.mContext.getSystemService("storage")).isCheckpointSupported();
        synchronized (this.mStagedSessions) {
            for (int i = 0; i < this.mStagedSessions.size(); i++) {
                PackageInstallerSession stagedSession = this.mStagedSessions.valueAt(i);
                if (stagedSession.isCommitted() && !stagedSession.isStagedAndInTerminalState() && !stagedSession.isDestroyed() && !stagedSession.isMultiPackage()) {
                    if (stagedSession.hasParentSessionId()) {
                        int parentId2 = stagedSession.getParentSessionId();
                        PackageInstallerSession parentSession = this.mStagedSessions.get(parentId2);
                        if (parentSession != null && !parentSession.isStagedAndInTerminalState() && !parentSession.isDestroyed()) {
                            parentId = session.sessionId;
                            if (parentId == stagedSession.sessionId) {
                                Slog.w(TAG, "Session " + session.sessionId + " is already staged");
                            } else {
                                if (!session.getPackageName().equals(stagedSession.getPackageName())) {
                                    throw new PackageManagerException(-119, "Package: " + session.getPackageName() + " in session: " + session.sessionId + " has been staged already by session: " + stagedSession.sessionId, null);
                                }
                                if (!supportsCheckpoint && parentOrOwnSessionId(session) != parentOrOwnSessionId(stagedSession)) {
                                    throw new PackageManagerException(-119, "Cannot stage multiple sessions without checkpoint support", null);
                                }
                            }
                        }
                    } else {
                        parentId = session.sessionId;
                        if (parentId == stagedSession.sessionId) {
                            Slog.w(TAG, "Session " + session.sessionId + " is already staged");
                        } else {
                            if (!session.getPackageName().equals(stagedSession.getPackageName())) {
                                throw new PackageManagerException(-119, "Package: " + session.getPackageName() + " in session: " + session.sessionId + " has been staged already by session: " + stagedSession.sessionId, null);
                            }
                            if (!supportsCheckpoint) {
                                throw new PackageManagerException(-119, "Cannot stage multiple sessions without checkpoint support", null);
                            }
                            continue;
                        }
                    }
                }
            }
        }
    }

    void createSession(PackageInstallerSession sessionInfo) {
        synchronized (this.mStagedSessions) {
            this.mStagedSessions.append(sessionInfo.sessionId, sessionInfo);
        }
    }

    void abortSession(PackageInstallerSession session) {
        synchronized (this.mStagedSessions) {
            this.mStagedSessions.remove(session.sessionId);
            this.mSessionRollbackIds.delete(session.sessionId);
        }
    }

    boolean abortCommittedSessionLocked(PackageInstallerSession session) {
        int sessionId = session.sessionId;
        if (session.isStagedSessionApplied()) {
            Slog.w(TAG, "Cannot abort applied session : " + sessionId);
            return false;
        }
        if (!session.isDestroyed()) {
            throw new IllegalStateException("Committed session must be destroyed before aborting it from StagingManager");
        }
        if (getStagedSession(sessionId) == null) {
            Slog.w(TAG, "Session " + sessionId + " has been abandoned already");
            return false;
        }
        if (this.mPreRebootVerificationHandler.isVerificationRunning(sessionId)) {
            Slog.w(TAG, "Session " + sessionId + " aborted before pre-reboot verification completed.");
            return false;
        }
        if (session.isStagedSessionReady() && sessionContainsApex(session)) {
            try {
                ApexSessionInfo apexSession = this.mApexManager.getStagedSessionInfo(session.sessionId);
                if (apexSession == null || isApexSessionFinalized(apexSession)) {
                    Slog.w(TAG, "Cannot abort session " + session.sessionId + " because it is not active.");
                } else {
                    this.mApexManager.abortStagedSession(session.sessionId);
                }
            } catch (Exception e) {
                Slog.w(TAG, "Could not contact apexd to abort staged session " + sessionId);
            }
        }
        abortSession(session);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ensureActiveApexSessionIsAborted(PackageInstallerSession session) {
        ApexSessionInfo apexSession;
        if (!sessionContainsApex(session) || (apexSession = this.mApexManager.getStagedSessionInfo(session.sessionId)) == null || isApexSessionFinalized(apexSession)) {
            return true;
        }
        try {
            return this.mApexManager.abortStagedSession(session.sessionId);
        } catch (PackageManagerException e) {
            return false;
        }
    }

    private boolean isApexSessionFinalized(ApexSessionInfo session) {
        return session.isUnknown || session.isActivationFailed || session.isSuccess || session.isReverted;
    }

    private static boolean isApexSessionFailed(ApexSessionInfo apexSessionInfo) {
        return apexSessionInfo.isActivationFailed || apexSessionInfo.isUnknown || apexSessionInfo.isReverted || apexSessionInfo.isRevertInProgress || apexSessionInfo.isRevertFailed;
    }

    private boolean isMultiPackageSessionComplete(PackageInstallerSession session) {
        if (session.isMultiPackage()) {
            for (int childSession : session.getChildSessionIds()) {
                if (this.mStagedSessions.get(childSession) == null) {
                    return false;
                }
            }
            return true;
        }
        if (session.hasParentSessionId()) {
            PackageInstallerSession parent = this.mStagedSessions.get(session.getParentSessionId());
            if (parent == null) {
                return false;
            }
            return isMultiPackageSessionComplete(parent);
        }
        Slog.wtf(TAG, "Attempting to restore an invalid multi-package session.");
        return false;
    }

    void restoreSession(PackageInstallerSession session, boolean isDeviceUpgrading) {
        PackageInstallerSession sessionToResume = session;
        synchronized (this.mStagedSessions) {
            this.mStagedSessions.append(session.sessionId, session);
            if (session.isMultiPackage() || session.hasParentSessionId()) {
                if (!isMultiPackageSessionComplete(session)) {
                    return;
                }
                if (session.hasParentSessionId()) {
                    sessionToResume = this.mStagedSessions.get(session.getParentSessionId());
                }
            }
            if (isDeviceUpgrading && !sessionToResume.isStagedAndInTerminalState()) {
                sessionToResume.setStagedSessionFailed(2, "Build fingerprint has changed");
            } else {
                checkStateAndResume(sessionToResume);
            }
        }
    }

    private void checkStateAndResume(PackageInstallerSession session) {
        if (SystemProperties.getBoolean("sys.boot_completed", false) || !session.isCommitted() || session.isStagedSessionFailed() || session.isStagedSessionApplied()) {
            return;
        }
        if (session.isDestroyed()) {
            session.abandon();
            return;
        }
        if (session.isStagedSessionReady()) {
            try {
                resumeSession(session);
                return;
            } catch (PackageManagerException e) {
                onInstallationFailure(session, e);
                return;
            } catch (Exception e2) {
                Slog.e(TAG, "Staged install failed due to unhandled exception", e2);
                onInstallationFailure(session, new PackageManagerException(2, "Staged install failed due to unhandled exception: " + e2));
                return;
            }
        }
        this.mPreRebootVerificationHandler.startPreRebootVerification(session.sessionId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logFailedApexSessionsIfNecessary() {
        synchronized (this.mFailedPackageNames) {
            if (!this.mFailedPackageNames.isEmpty()) {
                WatchdogRollbackLogger.logApexdRevert(this.mContext, this.mFailedPackageNames, this.mNativeFailureReason);
            }
        }
    }

    void markStagedSessionsAsSuccessful() {
        synchronized (this.mSuccessfulStagedSessionIds) {
            for (int i = 0; i < this.mSuccessfulStagedSessionIds.size(); i++) {
                this.mApexManager.markStagedSessionSuccessful(this.mSuccessfulStagedSessionIds.get(i).intValue());
            }
        }
    }

    void systemReady() {
        new Lifecycle(this.mContext).startService(this);
        this.mContext.registerReceiver(new AnonymousClass1(), new IntentFilter("android.intent.action.BOOT_COMPLETED"));
        this.mFailureReasonFile.delete();
    }

    /* JADX INFO: renamed from: com.android.server.pm.StagingManager$1, reason: invalid class name */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context ctx, Intent intent) {
            StagingManager.this.mPreRebootVerificationHandler.readyToStart();
            BackgroundThread.getExecutor().execute(new Runnable() { // from class: com.android.server.pm.-$$Lambda$StagingManager$1$x6UWz5lz4rW7MnWw4KzvwIRWgsQ
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onReceive$0$StagingManager$1();
                }
            });
            ctx.unregisterReceiver(this);
        }

        public /* synthetic */ void lambda$onReceive$0$StagingManager$1() {
            StagingManager.this.logFailedApexSessionsIfNecessary();
        }
    }

    private static class LocalIntentReceiverAsync {
        final Consumer<Intent> mConsumer;
        private IIntentSender.Stub mLocalSender = new IIntentSender.Stub() { // from class: com.android.server.pm.StagingManager.LocalIntentReceiverAsync.1
            public void send(int code, Intent intent, String resolvedType, IBinder whitelistToken, IIntentReceiver finishedReceiver, String requiredPermission, Bundle options) {
                LocalIntentReceiverAsync.this.mConsumer.accept(intent);
            }
        };

        LocalIntentReceiverAsync(Consumer<Intent> consumer) {
            this.mConsumer = consumer;
        }

        public IntentSender getIntentSender() {
            return new IntentSender(this.mLocalSender);
        }
    }

    private static class LocalIntentReceiverSync {
        private IIntentSender.Stub mLocalSender;
        private final LinkedBlockingQueue<Intent> mResult;

        private LocalIntentReceiverSync() {
            this.mResult = new LinkedBlockingQueue<>();
            this.mLocalSender = new IIntentSender.Stub() { // from class: com.android.server.pm.StagingManager.LocalIntentReceiverSync.1
                public void send(int code, Intent intent, String resolvedType, IBinder whitelistToken, IIntentReceiver finishedReceiver, String requiredPermission, Bundle options) {
                    try {
                        LocalIntentReceiverSync.this.mResult.offer(intent, 5L, TimeUnit.SECONDS);
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                }
            };
        }

        /* synthetic */ LocalIntentReceiverSync(AnonymousClass1 x0) {
            this();
        }

        public IntentSender getIntentSender() {
            return new IntentSender(this.mLocalSender);
        }

        public Intent getResult() {
            try {
                return this.mResult.take();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PackageInstallerSession getStagedSession(int sessionId) {
        PackageInstallerSession session;
        synchronized (this.mStagedSessions) {
            session = this.mStagedSessions.get(sessionId);
        }
        return session;
    }

    private final class PreRebootVerificationHandler extends Handler {
        private static final int MSG_PRE_REBOOT_VERIFICATION_APEX = 2;
        private static final int MSG_PRE_REBOOT_VERIFICATION_APK = 3;
        private static final int MSG_PRE_REBOOT_VERIFICATION_END = 4;
        private static final int MSG_PRE_REBOOT_VERIFICATION_START = 1;
        private boolean mIsReady;
        private IntArray mPendingSessionIds;
        private final SparseBooleanArray mVerificationRunning;

        PreRebootVerificationHandler(Looper looper) {
            super(looper);
            this.mVerificationRunning = new SparseBooleanArray();
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int sessionId = msg.arg1;
            PackageInstallerSession session = StagingManager.this.getStagedSession(sessionId);
            if (session == null) {
                Slog.wtf(StagingManager.TAG, "Session disappeared in the middle of pre-reboot verification: " + sessionId);
                return;
            }
            if (session.isDestroyed()) {
                onPreRebootVerificationComplete(sessionId);
                return;
            }
            try {
                int i = msg.what;
                if (i != 1) {
                    if (i == 2) {
                        handlePreRebootVerification_Apex(session);
                    } else if (i == 3) {
                        handlePreRebootVerification_Apk(session);
                    } else if (i == 4) {
                        handlePreRebootVerification_End(session);
                    }
                } else {
                    handlePreRebootVerification_Start(session);
                }
            } catch (Exception e) {
                Slog.e(StagingManager.TAG, "Pre-reboot verification failed due to unhandled exception", e);
                onPreRebootVerificationFailure(session, 2, "Pre-reboot verification failed due to unhandled exception: " + e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void readyToStart() {
            this.mIsReady = true;
            if (this.mPendingSessionIds != null) {
                for (int i = 0; i < this.mPendingSessionIds.size(); i++) {
                    startPreRebootVerification(this.mPendingSessionIds.get(i));
                }
                this.mPendingSessionIds = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void startPreRebootVerification(int sessionId) {
            if (this.mIsReady) {
                PackageInstallerSession session = StagingManager.this.getStagedSession(sessionId);
                synchronized (this.mVerificationRunning) {
                    try {
                        if (session != null && !session.isDestroyed()) {
                            Slog.d(StagingManager.TAG, "Starting preRebootVerification for session " + sessionId);
                            this.mVerificationRunning.put(sessionId, true);
                            obtainMessage(1, sessionId, 0).sendToTarget();
                            return;
                        }
                        try {
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } else {
                if (this.mPendingSessionIds == null) {
                    this.mPendingSessionIds = new IntArray();
                }
                this.mPendingSessionIds.add(sessionId);
            }
        }

        private void onPreRebootVerificationFailure(PackageInstallerSession session, int errorCode, String errorMessage) {
            if (!StagingManager.this.ensureActiveApexSessionIsAborted(session)) {
                Slog.e(StagingManager.TAG, "Failed to abort apex session " + session.sessionId);
            }
            session.setStagedSessionFailed(errorCode, errorMessage);
            onPreRebootVerificationComplete(session.sessionId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onPreRebootVerificationComplete(int sessionId) {
            synchronized (this.mVerificationRunning) {
                Slog.d(StagingManager.TAG, "Stopping preRebootVerification for session " + sessionId);
                this.mVerificationRunning.delete(sessionId);
            }
            PackageInstallerSession session = StagingManager.this.getStagedSession(sessionId);
            if (session != null && session.isDestroyed()) {
                session.abandon();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isVerificationRunning(int sessionId) {
            boolean z;
            synchronized (this.mVerificationRunning) {
                z = this.mVerificationRunning.get(sessionId);
            }
            return z;
        }

        private void notifyPreRebootVerification_Start_Complete(int sessionId) {
            obtainMessage(2, sessionId, 0).sendToTarget();
        }

        private void notifyPreRebootVerification_Apex_Complete(int sessionId) {
            obtainMessage(3, sessionId, 0).sendToTarget();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyPreRebootVerification_Apk_Complete(int sessionId) {
            obtainMessage(4, sessionId, 0).sendToTarget();
        }

        private void handlePreRebootVerification_Start(PackageInstallerSession session) {
            if ((session.params.installFlags & 262144) != 0) {
                IRollbackManager rm = IRollbackManager.Stub.asInterface(ServiceManager.getService("rollback"));
                try {
                    int rollbackId = rm.notifyStagedSession(session.sessionId);
                    if (rollbackId != -1) {
                        synchronized (StagingManager.this.mStagedSessions) {
                            StagingManager.this.mSessionRollbackIds.put(session.sessionId, rollbackId);
                        }
                    }
                } catch (RemoteException re) {
                    Slog.e(StagingManager.TAG, "Failed to notifyStagedSession for session: " + session.sessionId, re);
                }
            }
            notifyPreRebootVerification_Start_Complete(session.sessionId);
        }

        private void handlePreRebootVerification_Apex(PackageInstallerSession session) {
            boolean hasApex = StagingManager.this.sessionContainsApex(session);
            if (hasApex) {
                try {
                    List<PackageInfo> apexPackages = StagingManager.this.submitSessionToApexService(session);
                    int size = apexPackages.size();
                    for (int i = 0; i < size; i++) {
                        StagingManager.this.validateApexSignature(apexPackages.get(i));
                    }
                    PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                    packageManagerInternal.pruneCachedApksInApex(apexPackages);
                } catch (PackageManagerException e) {
                    session.setStagedSessionFailed(e.error, e.getMessage());
                    onPreRebootVerificationComplete(session.sessionId);
                    return;
                }
            }
            notifyPreRebootVerification_Apex_Complete(session.sessionId);
        }

        private void handlePreRebootVerification_Apk(PackageInstallerSession session) {
            if (!StagingManager.this.sessionContainsApk(session)) {
                notifyPreRebootVerification_Apk_Complete(session.sessionId);
                return;
            }
            try {
                Slog.d(StagingManager.TAG, "Running a pre-reboot verification for APKs in session " + session.sessionId + " by performing a dry-run install");
                StagingManager.this.verifyApksInSession(session);
            } catch (PackageManagerException e) {
                session.setStagedSessionFailed(e.error, e.getMessage());
                onPreRebootVerificationComplete(session.sessionId);
            }
        }

        private void handlePreRebootVerification_End(PackageInstallerSession session) {
            try {
                IStorageManager storageManager = PackageHelper.getStorageManager();
                if (storageManager.supportsCheckpoint()) {
                    storageManager.startCheckpoint(2);
                }
                onPreRebootVerificationComplete(session.sessionId);
                Slog.d(StagingManager.TAG, "Marking session " + session.sessionId + " as ready");
                session.setStagedSessionReady();
                if (session.isStagedSessionReady()) {
                    boolean hasApex = StagingManager.this.sessionContainsApex(session);
                    if (hasApex) {
                        try {
                            StagingManager.this.mApexManager.markStagedSessionReady(session.sessionId);
                        } catch (PackageManagerException e) {
                            session.setStagedSessionFailed(e.error, e.getMessage());
                        }
                    }
                }
            } catch (Exception e2) {
                Slog.e(StagingManager.TAG, "Failed to get hold of StorageManager", e2);
                session.setStagedSessionFailed(3, "Failed to get hold of StorageManager");
                onPreRebootVerificationComplete(session.sessionId);
            }
        }
    }
}
